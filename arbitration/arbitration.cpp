/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/singleton.hpp>
#include <string>
#include <vector>

using eosio::asset;
using eosio::print;
using std::vector;
using std::string;

class arbitration : public eosio::contract {
    public:
        explicit arbitration(action_name self) : contract(self) {}

        struct document {
            string description;
            string link;
            checksum256 hash_of_contents;
        };

        struct time_stamped_docs {
            vector<document> documents;
            time time_submitted;
        };

        //@abi action
        void submitclaim(const account_name claimant, const vector<account_name>& respondents,
                         const vector<string>& tx_ids, const vector<document>& docs, const asset& fee) {
            require_auth(claimant);
            validate_asset(fee);
            check_fee(fee);
            // TODO: pay_fee

            uint64_t claim_id;
            time_stamped_docs docs_to_submit{docs,now()};
            claim_index claims(_self,_self);

            claims.emplace(claimant, [&](auto& claim) {
                claim.id = next_claim_id();
                claim_id = claim.id;
                claim.claimant = claimant;
                claim.respondents = respondents;
                claim.tx_ids = tx_ids;
                claim.supporting.push_back(docs_to_submit);
                claim.fee = fee;
                claim.fee_paid = true;
            });
            print("Your claim id is ", claim_id, ".");
        }

        //@abi action
        void dropclaim(const uint64_t claim_id, const account_name claimant) {
            require_auth(claimant);

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);

            eosio_assert(claims_itr != claims.end(), "Claim id not found.");
            eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");

            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.claim_dropped = true;
            });
        }

        //@abi action
        void deleteclaim(uint64_t claim_id, const account_name claimant) {
            require_auth(claimant);

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);

            eosio_assert(claims_itr != claims.end(), "Claim id not found.");
            eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");
            eosio_assert(claims_itr->can_delete,"Claim cannot be deleted.");

            claims.erase(claims_itr);
        }

        //@abi action
        void frontbond(const uint64_t claim_id, const account_name claimant, const asset& bond) {
            require_auth(claimant);

            validate_asset(bond);
            check_bond(claim_id, claimant, bond);

            claim_index claims(_self, claimant);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr != claims.end(), "Filing id not found.");
            eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");
            
            //TODO: pay_bond
            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.bond_fronted = true;
            });
        }

        //@abi action
        void setarbfee(const asset& fee) {
            require_auth(_self);

            validate_asset(fee);
            eosio_assert(fee.amount > 0, "Fee must be greater than zero.");

            arbfee_index arbfees(_self, _self);
            arbfee new_arbfee{fee};
            arbfees.set(new_arbfee, _self);
        }
        
        void validate_asset(const asset& quantity){
            eosio_assert(quantity.symbol == S(4,EOS), "Only EOS tokens may be used." );
            eosio_assert(quantity.is_valid(), "Not a valid asset.");
        }

        void check_fee(const asset& fee){
            arbfee_index arbfees(_self, _self);
            eosio_assert(arbfees.exists(), "Arbitration forum needs to set the fee.");
            eosio_assert(fee.amount == arbfees.get().fee.amount, "Fee amount is not adequate.");
        }

        void check_bond(const uint64_t claim_id, const account_name claimant, const asset& bond){
            claim_index claims(_self, claimant);
            eosio_assert(bond.amount == claims.get(claim_id).bond.amount, "Bond amount is not adequate.");
        }

    private:
        //@abi table claim i64
        struct claim {
            uint64_t id;
            account_name claimant;
            vector<account_name> respondents;
            vector<string> tx_ids;
            vector<time_stamped_docs> supporting;
            bool claim_dropped = false;
            bool can_delete = false;
            bool is_rejected = false;
            checksum256 rejection_reason;
            asset fee;
            bool fee_paid = false;
            asset bond;
            bool bond_fronted = false;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( claim, (id)(claimant)(respondents)(tx_ids)(supporting)(claim_dropped)
                                     (can_delete)(is_rejected)(rejection_reason)(fee)(fee_paid)
                                     (bond)(bond_fronted) )
        };
        typedef eosio::multi_index< N(claim), claim > claim_index;

        //@abi table arbfee i64
        struct arbfee {
            asset fee;

            int64_t primary_key() const { return fee.amount; }

            EOSLIB_SERIALIZE( arbfee, (fee) )
        };

        typedef eosio::singleton< N(arbfee), arbfee > arbfee_index;

        typedef uint64_t id;
        typedef eosio::singleton<N(claimid), id>  claim_id_index;
        typedef eosio::singleton<N(caseid), id>  case_id_index;
        typedef eosio::singleton<N(rtjcid), id>  rtjc_id_index;

        id next_claim_id(){
            claim_id_index last_claim_id(_self, _self);
            id lclaimid = last_claim_id.exists() ? last_claim_id.get() + 1 : 0;
            last_claim_id.set(lclaimid,_self);
            return lclaimid;
        }

        id next_case_id(){
            case_id_index last_case_id(_self, _self);
            id lcaseid = last_case_id.exists() ? last_case_id.get() + 1 : 0;
            last_case_id.set(lcaseid,_self);
            return lcaseid;
        }

        id next_rtjc_id(){
            rtjc_id_index last_rtjc_id(_self, _self);
            id lrtjcid = last_rtjc_id.exists() ? last_rtjc_id.get() + 1 : 0;
            last_rtjc_id.set(lrtjcid,_self);
            return lrtjcid;
}
};

EOSIO_ABI( arbitration, (submitclaim)(dropclaim)(deleteclaim) )