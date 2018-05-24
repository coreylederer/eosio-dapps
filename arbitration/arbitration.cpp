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

        struct claim_docs {
            vector<document> submitted_claim_docs;
            time time_submitted;
        };

        //@abi action
        void submitclaim(const account_name claimant, const vector<account_name>& respondents,
                         bool join_claim, const uint64_t claim_to_join, const vector<string>& tx_ids,
                         const vector<document>& docs, const asset& fee) {
            require_auth(claimant);
            // TODO: validate_asset
            // TODO: check_fee
            // TODO: payfee
            // TODO: is_valid_claim

            uint64_t claim_id;
            claim_docs docs_to_submit{docs,now()};
            claim_index claims(_self,_self);
            claims.emplace(claimant, [&](auto& claim) {
                claim.id = 1; // TODO: next_claim_id
                claim_id = claim.id;
                claim.claimant = claimant;
                claim.respondents = respondents;
                claim.join_claim = join_claim;
                claim.claim_to_join = claim_to_join;
                claim.tx_ids = tx_ids;
                claim.documents.push_back(docs_to_submit);
                claim.fee = fee;
                claim.fee_paid = true;
            });
            print("Your claim id is ",claim_id,".");
        }

    private:
        //@abi table claim i64
        struct claim {
            uint64_t id;
            account_name claimant;
            vector<account_name> respondents;
            bool join_claim = false;
            uint64_t claim_to_join;
            vector<string> tx_ids;
            vector<claim_docs> documents;
            bool claim_dropped = false;
            bool can_delete = false;
            bool is_rejected = false;
            checksum256 rejection_reason;
            asset fee;
            bool fee_paid = false;
            asset bond;
            bool bond_fronted = false;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( claim, (id)(claimant)(respondents)(join_claim)(claim_to_join)
                                     (tx_ids)(documents)(claim_dropped)(can_delete)(is_rejected)
                                     (rejection_reason)(fee)(fee_paid)(bond)(bond_fronted) )
        };
        typedef eosio::multi_index< N(claim), claim > claim_index;
};

EOSIO_ABI( arbitration, (submitclaim) )