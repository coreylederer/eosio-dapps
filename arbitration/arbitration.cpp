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

        struct filing {
            account_name belongs_to;
            vector<document> documents;
            vector<string> tx_ids;
        };

        //@abi action
        void submitclaim(const account_name claimant, const vector<account_name>& respondents,
                         const vector<string>& tx_ids, const vector<document>& documents,
                         const asset& fee) {
            require_auth(claimant);

            uint64_t claim_id;
            claim_index claims(_self,_self);

            claims.emplace(claimant, [&](auto& claim) {
                claim.id = next_claim_id();
                claim_id = claim.id;
                claim.claimant = claimant;
                claim.respondents = respondents;
                claim.tx_ids = tx_ids;
                claim.documents = documents;
                claim.time_submitted = now();
                claim.fee = fee;
                claim.fee_paid = true;
            });
            print("Your claim id is ", claim_id, ".");
            print("Your claim id is ", claim_id, ".");
        }

        //@abi action
        void opencase(const uint64_t claim_id) {
            require_auth(_self);

            claim_index claims(_self, _self);
            auto ctoac = claims.get(claim_id); // claim to open as case

            uint64_t case_id;
            arbcase_index arbcases(_self, _self);
            arbcases.emplace(_self, [&](auto& arbcase) {
                arbcase.id              = next_case_id();
                case_id                 = arbcase.id;
                arbcase.claimants.push_back(ctoac.claimant);
                for (auto &respondent : ctoac.respondents) {
                    arbcase.respondents.push_back(respondent);
                }
                filing claimant_filing{ctoac.claimant,ctoac.documents,ctoac.tx_ids};
                arbcase.filings.push_back(claimant_filing);
                for (auto &respondent : ctoac.respondents) {
                    filing respondent_filing;
                    respondent_filing.belongs_to = respondent;
                    arbcase.filings.push_back(respondent_filing);
                }
                arbcase.time_opened = now();
            });
            
            print("The case id is ",case_id,".");
            // log_claimant(case_id, ctoac.claimant);
            // log_respondent(case_id, ctoac.respondent);
        }

        //@abi action
        // void dropclaim(const uint64_t claim_id, const account_name claimant) {
        //     require_auth(claimant);

        //     claim_index claims(_self, _self);
        //     auto claims_itr = claims.find(claim_id);

        //     eosio_assert(claims_itr != claims.end(), "Claim id not found.");
        //     eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");

        //     claims.modify( claims_itr, 0, [&]( auto& claim ) {
        //         claim.claim_dropped = true;
        //     });
        // }

        //@abi action
        // void deleteclaim(uint64_t claim_id, const account_name claimant) {
        //     require_auth(claimant);

        //     claim_index claims(_self, _self);
        //     auto claims_itr = claims.find(claim_id);

        //     eosio_assert(claims_itr != claims.end(), "Claim id not found.");
        //     eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");
        //     eosio_assert(claims_itr->can_delete,"Claim cannot be deleted.");

        //     claims.erase(claims_itr);
        // }

        //@abi action
        // void frontbond(const uint64_t claim_id, const account_name claimant, const asset& bond) {
        //     require_auth(claimant);

        //     validate_asset(bond);
        //     check_bond(claim_id, claimant, bond);

        //     claim_index claims(_self, claimant);
        //     auto claims_itr = claims.find(claim_id);
        //     eosio_assert(claims_itr != claims.end(), "Filing id not found.");
        //     eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");
            
        //     //TODO: pay_bond
        //     claims.modify( claims_itr, 0, [&]( auto& claim ) {
        //         claim.bond_fronted = true;
        //     });
        // }

        //@abi action
        // void setarbfee(const asset& fee) {
        //     require_auth(_self);

        //     validate_asset(fee);
        //     eosio_assert(fee.amount > 0, "Fee must be greater than zero.");

        //     arbfee_index arbfees(_self, _self);
        //     arbfee new_arbfee{fee};
        //     arbfees.set(new_arbfee, _self);
        // }
        
        // void validate_asset(const asset& quantity){
        //     eosio_assert(quantity.symbol == S(4,EOS), "Only EOS tokens may be used." );
        //     eosio_assert(quantity.is_valid(), "Not a valid asset.");
        // }

        // void check_fee(const asset& fee){
        //     arbfee_index arbfees(_self, _self);
        //     eosio_assert(arbfees.exists(), "Arbitration forum needs to set the fee.");
        //     eosio_assert(fee.amount == arbfees.get().fee.amount, "Fee amount is not adequate.");
        // }

        // void check_bond(const uint64_t claim_id, const account_name claimant, const asset& bond){
        //     claim_index claims(_self, claimant);
        //     eosio_assert(bond.amount == claims.get(claim_id).bond.amount, "Bond amount is not adequate.");
        // }

    private:
        //@abi table claim i64
        struct claim {
            uint64_t id;
            account_name claimant;
            vector<account_name> respondents;
            vector<string> tx_ids;
            vector<document> documents;
            time time_submitted;
            bool claim_dropped = false;
            bool can_delete = false;
            bool is_rejected = false;
            checksum256 rejection_reason;
            asset fee;
            bool fee_paid = false;
            asset bond;
            bool bond_fronted = false;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( claim, (id)(claimant)(respondents)(tx_ids)(documents)(time_submitted)
                                     (claim_dropped)(can_delete)(is_rejected)(rejection_reason)(fee)
                                     (fee_paid)(bond)(bond_fronted) )
        };
        typedef eosio::multi_index< N(claim), claim > claim_index;

        //@abi table arbcase i64
        struct arbcase {
            uint64_t id;
            vector<account_name> claimants;
            vector<account_name> respondents;
            vector<account_name> arbitrators;
            vector<filing> filings;
            time time_opened;
            bool case_dropped = false;
            bool can_delete = false;
            bool is_resolved = false;
            time time_closed;
            asset fee;
            bool fee_paid = false;
            asset bond;
            bool bond_fronted = false;
            bool bond_dispersed = false;
            asset to_claimant;
            asset to_respondent;
            asset to_arbitrator;
            asset to_arbitration_forum;
            account_name in_favor_of;
            checksum256 ruling;
            checksum256 remedy;
            bool requested_remedy = false;
            bool remedy_fulfilled = false;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( arbcase, (id)(claimants)(respondents)(arbitrators)(filings)
                            (time_opened)(case_dropped)(can_delete)(is_resolved)(time_closed)(fee)
                            (fee_paid)(bond)(bond_fronted)(bond_dispersed)(to_claimant)
                            (to_respondent)(to_arbitrator)(to_arbitration_forum)(in_favor_of)
                            (ruling)(remedy)(requested_remedy)(remedy_fulfilled) )
        };
        typedef eosio::multi_index< N(arbcase), arbcase > arbcase_index;

        //@abi table arbfee i64
        // struct arbfee {
        //     asset fee;

        //     int64_t primary_key() const { return fee.amount; }

        //     EOSLIB_SERIALIZE( arbfee, (fee) )
        // };
        // typedef eosio::singleton< N(arbfee), arbfee > arbfee_index;

        typedef uint64_t id;
        typedef eosio::singleton<N(claimid), id>  claim_id_index;
        typedef eosio::singleton<N(caseid), id>  case_id_index;
        // typedef eosio::singleton<N(rtjcid), id>  rtjc_id_index;

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

        // id next_rtjc_id(){
        //     rtjc_id_index last_rtjc_id(_self, _self);
        //     id lrtjcid = last_rtjc_id.exists() ? last_rtjc_id.get() + 1 : 0;
        //     last_rtjc_id.set(lrtjcid,_self);
        //     return lrtjcid;
        // }
};

EOSIO_ABI( arbitration, (submitclaim)(opencase) )