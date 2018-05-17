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
using std::vector;
using std::string;
using eosio::permission_level;
using eosio::action;

class arbitration : public eosio::contract {
    public:
        explicit arbitration(action_name self) : contract(self) {}

        //@abi action
        void submitclaim(const account_name claimant, const account_name respondent,
                         const string& tx_id, const string& sig, const checksum256& docs,
                         const asset& fee) {
            require_auth(claimant);
            validate_asset(fee);
            check_fee(fee);
            send_eos(claimant, _self, fee, "Paying fee to submit claim.");
  
            claim_index claims(_self, _self);
            claims.emplace(claimant, [&](auto& claim) {
                claim.id = claims.available_primary_key();
                claim.claimant = claimant;
                claim.respondent = respondent;
                claim.tx_id = tx_id;
                claim.documents = docs;
                claim.sig = sig;
                claim.fee = fee;
                claim.fee_paid = true;
            });
        }

        //@abi action
        void postbond(const uint64_t claim_id, const asset& bond) {
            require_auth(_self);
            validate_asset(bond);
            eosio_assert(bond.amount > 0, "Bond must be greater than zero.");

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr != claims.end(), "Claim id not found.");

            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.bond = bond;
            });
        }

        //@abi action
        void frontbond(const uint64_t claim_id, const account_name claimant, const asset& bond) {
            require_auth(claimant);

            validate_asset(bond);
            check_bond(claim_id, bond);
            send_eos(claimant, _self, bond, "Fronting bond for case.");

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr != claims.end(), "Filing id not found.");

            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.bond_fronted = true;
            });
        }

        //@abi action
        void opencase(const uint64_t claim_id) {
            require_auth(_self);

            claim_index claims(_self, _self);
            auto ctoac = claims.get(claim_id); // claim to open as case
            eosio_assert(ctoac.bond_fronted, "Bond has not been fronted, cannot open case.");

            arbcase_index arbcases(_self, _self);
            arbcases.emplace(_self, [&](auto& arbcase) {
                arbcase.id              = arbcase.available_primary_key();
                arbcase.claimant        = ctoac.claimant;
                arbcase.respondent      = ctoac.respondent;
                arbcase.fee             = ctoac.fee;
                arbcase.fee_paid        = ctoac.fee_paid;
                arbcase.bond            = ctoac.bond;
                arbcase.bond_fronted    = ctoac.bond_fronted;
                arbcase.documents       = ctoac.documents;
                arbcase.tx_id           = ctoac.tx_id;
                arbcase.sig             = ctoac.sig;
            });
            
            log_claimant(claim_id, ctoac.claimant);
            log_respondent(claim_id, ctoac.respondent);
        }

        //@abi action
        void dropclaim(const uint64_t claim_id, const account_name claimant){
            require_auth(claimant);

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr != claims.end(), "Claim id not found.");

            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.claim_dropped = true;
            });
        }

        //@abi action
        void dropcase(const uint64_t case_id, const account_name claimant){
            require_auth(claimant);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);
            eosio_assert(arbcase_itr != arbcases.end(), "Filing id not found.");
            eosio_assert(arbcase_itr->claimant == claimant, "You are not the claimant in this case.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.clase_dropped = true;
            });
        }

        //@abi action
        void rejectclaim(const uint64_t claim_id, const checksum256& reason){
            require_auth(_self);

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr != claims.end(), "Claim id not found.");

            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.is_rejected = true;
                claim.rejection_reason = reason;
            });
        }

        //@abi action
        void submitruling(const uint64_t case_id, const account_name winner, const checksum256& ruling, const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);
            eosio_assert(arbcase_itr != arbcases.end(), "Filing id not found.");
            eosio_assert(arbcase_itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.winner = winner;
                arbcae.ruling = ruling;
            });
        }

        //@abi action
        void closecase(const uint64_t case_id, const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);
            eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");

            eosio_assert(arbcase_itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");
            eosio_assert(arbcase_itr->bond_dispersed,"Bond has not yet been dispersed.");
            eosio_assert(arbcase_itr->remedy_fulfilled,"Remedy has not yet been fulfilled.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.status = closed;
            });
        }

        //@abi action
        void assignarb(const uint64_t arbcase_id, const account_name arbitrator) {
            require_auth(_self);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(arbcase_id);
            eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.arbitrator = arbitrator;
            });
        }

        //@abi action
        void dispersebond(const uint64_t case_id, const asset& to_claimant, const asset& to_respondent,
                          const asset& to_arbitrator, const asset& to_arbitration_forum,
                          const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);
            eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");
            eosio_assert(arbitrator == arbcase_itr->arbitrator, "You are not the arbitrator assigned to this case.");

            validate_asset(to_claimant);
            validate_asset(to_respondent);
            validate_asset(to_arbitrator);
            validate_asset(to_arbitration_forum);
            auto total_amount = to_claimant.amount + to_respondent.amount + to_arbitrator.amount + to_arbitration_forum.amount;
            eosio_assert(total_amount <= arbcase_itr->bond.amount, "Attempting to disperse a bond amount that is greater than the fronted bond.");

            if (to_claimant.amount > 0)     { send_eos(_self, arbcase_itr->claimant, to_claimant, "Dispersal of bond to claimant."); }
            if (to_respondent.amount > 0)   { send_eos(_self, arbcase_itr->respondent, to_respondent, "Dispersal of bond to respondent."); }
            if (to_arbitrator.amount > 0)   { send_eos(_self, arbcase_itr->arbitrator, to_arbitrator, "Dispersal of bond to arbitrator."); }

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.bond_dispersed = true;
                arbcase.to_claimant = to_claimant;
                arbcase.to_respondent = to_respondent;
                arbcase.to_arbitrator = to_arbitrator;
                arbcase.to_arbitration_forum = to_arbitration_forum;
            });
        }

        // remedy requested
        //@abi action
        void remedyr(const uint64_t case_id, const account_name arbitrator, const checksum256& remedy) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);

            auto arbcase_itr = arbcases.find(case_id);
            eosio_assert(arbcase_itr != arbcases.end(), "Filing id not found.");
            eosio_assert(arbcase_itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.requested_remedy = true;
                arbcase.remedy = remedy;
            });
        }

        // remedy fulfilled
        //@abi action
        void remedyf(const uint64_t id, const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);

            auto arbcase_itr = arbcases.find(id);
            eosio_assert(arbcase_itr != arbcases.end(), "Filing id not found.");
            eosio_assert(arbcase_itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.remedy_fulfilled = true;
            });
        }

        //@abi action
        void setarbfee(const asset& fee){
            require_auth(_self);
            eosio_assert(fee.amount > 0, "Fee must be greater than zero.");
            arbfee new_arbfee{fee};
            arbfee_index current_arbfee(_self, _self);
            current_arbfee.set(new_arbfee, _self);
        }

        void log_claimant(const uint64_t id, const account_name claimant){
            participant_index participants(_self, _self);
            auto participant_itr = participants.find(claimant);
            if (participant_itr == participants.end()){
                participants.emplace(_self, [&](auto& participant) {
                    participant.id = claimant;
                    participant.as_claimant.push_back(id);
                });
            } else {
                participants.modify( participant_itr, 0, [&]( auto& participant ) {
                    participant.as_claimant.push_back(id);
                });
            }
        }

        void log_respondent(const uint64_t id, const account_name respondent){
            participant_index participants(_self, _self);
            auto participant_itr = participants.find(respondent);
            if (participant_itr == participants.end()){
                participants.emplace(_self, [&](auto& participant) {
                    participant.id = respondent;
                    participant.as_respondent.push_back(id);
                });
            } else {
                participants.modify( participant_itr, 0, [&]( auto& participant ) {
                    participant.as_claimant.push_back(id);
                });
            }
        }

        void check_fee(const asset& fee){
            arbfee_index current_arbfee(_self,_self);
            eosio_assert(fee.amount == current_arbfee.get().fee.amount, "Fee amount is not adequate.");
        }

        void check_bond(const uint64_t claim_id, const asset& bond){
            claim_index claims(_self, _self);
            auto claim_to_check = claims.get(claim_id);
            eosio_assert(bond.amount == claim_to_check.bond.amount, "Bond amount is not adequate.");
        }

        void validate_asset(const asset& quantity){
            eosio_assert(quantity.symbol == S(4,EOS), "Only EOS tokens may be used." );
            eosio_assert(quantity.is_valid(), "Not a valid asset.");
        }

        void send_eos(const account_name from, const account_name to, const asset& quantity, const string& memo){            
            action(
                permission_level{ from, N(active) },
                N(eosio.token), N(transfer),
                std::make_tuple(from, to, quantity, std::string(memo))
            ).send();
        }

    private:
        //@abi table claim i64
        struct claim {
            uint64_t id;
            account_name claimant;
            account_name respondent;
            string tx_id = "0000000000000000000000000000000000000000000000000000000000000000";
            string sig = "0000000000000000000000000000000000000000000000000000000000000000";
            bool claim_dropped = false;
            bool is_rejected = false;
            checksum256 rejection_reason;
            asset fee;
            bool fee_paid = false;
            asset bond;
            bool bond_fronted = false;
            checksum256 documents;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( claim, (id)(claimant)(respondent)(tx_id)(sig)
                            (claim_dropped)(is_rejected)(fee)(fee_paid)(bond)
                            (bond_fronted)(documents) )
        };
        typedef eosio::multi_index< N(claim), claim > claim_index;

        //@abi table arbcase i64
        struct arbcase {
            uint64_t id;
            account_name claimant;
            account_name respondent;
            account_name arbitrator;
            bool drop_case = false;
            bool is_resolved = false;
            asset fee;
            bool fee_paid = false;
            asset bond;
            bool bond_fronted = false;
            bool bond_dispersed = false;
            asset to_claimant;
            asset to_respondent;
            asset to_arbitrator;
            asset to_arbitration_forum;
            account_name winner;
            checksum256 ruling;
            checksum256 remedy;
            bool requested_remedy = false;
            bool remedy_fulfilled = false;
            checksum256 documents;
            string tx_id = "0000000000000000000000000000000000000000000000000000000000000000";
            string sig = "0000000000000000000000000000000000000000000000000000000000000000";

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( arbcase, (id)(tx_id)(sig)(claimant)(respondent)(arbitrator)
                            (drop_case)(is_resolved)(fee)(fee_paid)(bond)(bond_fronted)
                            (bond_dispersed)(to_claimant)(to_respondent)(to_arbitrator)
                            (to_arbitration_forum)(winner)(ruling)(remedy)(documents)
                            (requested_remedy)(remedy_fulfilled) )
        };
        typedef eosio::multi_index< N(arbcase), arbcase > arbcase_index;

        //@abi table participant i64
        struct participant {
            account_name id;
            vector<uint64_t> as_claimant;
            vector<uint64_t> as_respondent;

            account_name primary_key() const { return id; }

            EOSLIB_SERIALIZE( participant, (id)(as_claimant)(as_respondent) )
        };
        typedef eosio::multi_index< N(participant), participant > participant_index;

        //@abi table arbfee
        struct arbfee {
            asset fee{2};
            EOSLIB_SERIALIZE( arbfee, (fee) )
        };

        typedef eosio::singleton< N(arbfee), arbfee > arbfee_index;
};

EOSIO_ABI( arbitration, (submitclaim)(postbond)(frontbond)(opencase)(submitruling)(closecase)(changearbitrator)(dispersebond)(remedyr)(remedyf) )

// TODO: remove claim row