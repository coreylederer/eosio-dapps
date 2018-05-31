/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/singleton.hpp>
#include <string>
#include <algorithm>
#include <vector>

using eosio::asset;
using eosio::print;
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
            std::vector<document> documents;
            std::vector<string> tx_ids;
        };

        //@abi action
        void submitclaim(const account_name claimant, const std::vector<account_name>& respondents,
                         const std::vector<string>& tx_ids, const std::vector<document>& documents,
                         const asset& fee) {
            require_auth(claimant);

            claim_index claims(_self,_self);

            uint64_t claim_id;
            claims.emplace(claimant, [&](auto& claim) {
                claim.id = next_claim_id();
                claim_id = claim.id;
                claim.claimant = claimant;
                claim.respondents = respondents;
                claim.tx_ids = tx_ids;
                claim.documents = documents;
                claim.fee = fee;
                claim.fee_paid = true;
            });
            print("Your claim id is ", claim_id, ".");
        }

        //@abi action
        void opencase(const uint64_t claim_id) {
            require_auth(_self);

            claim_index claims(_self, _self);
            auto ctoac = claims.get(claim_id); // claim to open as case

            eosio_assert(ctoac.fee_paid, "Cannot open a case if the filing fee has not been paid.");
            eosio_assert(ctoac.bond_fronted, "Cannot open a case if the required bond has not been fronted.");
            eosio_assert(!ctoac.is_rejected, "Cannot open a case for a claim that was rejected.");
            eosio_assert(!ctoac.claim_dropped, "Cannot open a case for a claim that was dropped.");

            uint64_t case_id;
            arbcase_index arbcases(_self, _self);
            arbcases.emplace(_self, [&](auto& arbcase) {
                arbcase.id              = next_case_id();
                case_id                 = arbcase.id;
                arbcase.claimants.push_back(ctoac.claimant);
                for (auto &respondent : ctoac.respondents) {
                    filing respondent_filing;
                    respondent_filing.belongs_to = respondent;
                    arbcase.filings.push_back(respondent_filing);
                    arbcase.respondents.push_back(respondent);
                }
                filing claimant_filing{ctoac.claimant,ctoac.documents,ctoac.tx_ids};
                arbcase.filings.push_back(claimant_filing);
                arbcase.time_opened = now();
            });

            auto claims_itr = claims.find(claim_id);

            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.can_delete = true;
            });
            
            print("The case id is ", case_id, ".");
        }

    private:
        //@abi table claim i64
        struct claim {
            uint64_t id;
            account_name claimant;
            std::vector<account_name> respondents;
            std::vector<string> tx_ids;
            std::vector<document> documents;
            bool claim_dropped = false;
            bool can_delete = false;
            bool is_rejected = false;
            document rejection_reason;
            asset fee;
            bool fee_paid = false;
            asset bond;
            bool bond_fronted = false;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( claim, (id)(claimant)(respondents)(tx_ids)(documents)(claim_dropped)
                                     (can_delete)(is_rejected)(rejection_reason)(fee)(fee_paid)(bond)
                                     (bond_fronted) )
        };
        typedef eosio::multi_index< N(claim), claim > claim_index;

        //@abi table arbcase i64
        struct arbcase {
            uint64_t id;
            std::vector<account_name> claimants;
            std::vector<account_name> respondents;
            std::vector<account_name> arbitrators;
            std::vector<filing> filings;
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
            document ruling;
            document remedy;
            bool requested_remedy = false;
            bool remedy_fulfilled = false;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( arbcase, (id)(claimants)(respondents)(arbitrators)(filings)
                            (time_opened)(case_dropped)(can_delete)(is_resolved)(time_closed)(fee)
                            (fee_paid)(bond)(bond_fronted)(bond_dispersed)(ruling)(remedy)
                            (requested_remedy)(remedy_fulfilled) )
        };
        typedef eosio::multi_index< N(arbcase), arbcase > arbcase_index;

        typedef uint64_t id;
        typedef eosio::singleton<N(claimid), id>  claim_id_index;
        typedef eosio::singleton<N(caseid), id>  case_id_index;

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
};

EOSIO_ABI( arbitration, (submitclaim)(opencase) )