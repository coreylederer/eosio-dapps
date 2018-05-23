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
using eosio::indexed_by;
using eosio::const_mem_fun;
using eosio::permission_level;
using eosio::action;

class arbitration : public eosio::contract {
    public:
        explicit arbitration(action_name self) : contract(self) {}

        //@abi action
        void submitclaim(const account_name claimant, const account_name respondent,
                         const string& tx_id, const checksum256& docs, const asset& fee) {
            require_auth(claimant);
            validate_asset(fee);
            //check_fee(fee);
            //send_eos(claimant, _self, fee, "Paying fee to submit claim.");

            uint64_t claim_id;
            claim_index claims(_self, _self);
            claims.emplace(claimant, [&](auto& claim) {
                claim.id = next_claim_id();
                claim_id = claim.id;
                claim.claimant = claimant;
                claim.respondent = respondent;
                claim.tx_id = tx_id;
                claim.documents = docs;
                claim.fee = fee;
                claim.fee_paid = true;
            });
            print("Your claim id is ",claim_id,".");
        }
        
        // TODO: put guards on when a claimant can delete a claim
        //@abi action
        void deleteclaim(uint64_t claim_id, const account_name claimant) {
            require_auth(claimant);
            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr != claims.end(), "Claim id not found.");
            eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");
            claims.erase(claims_itr);
        }

        // TODO: put guards on when an arbitrator can delete a case
        //@abi action
        void deletecase(uint64_t arbcase_id, const account_name arbitrator) {
            //require_auth(arbitrator);
            arbcase_index arbcases(_self, _self);
            auto arbcases_itr = arbcases.find(arbcase_id);
            eosio_assert(arbcases_itr != arbcases.end(), "Case id not found.");
            //eosio_assert(arbcases_itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");
            arbcases.erase(arbcases_itr);
        }

        //@abi action
        void postbond(const uint64_t claim_id, const account_name claimant, const asset& bond) {
            require_auth(_self);
            validate_asset(bond);
            eosio_assert(bond.amount > 0, "Bond must be greater than zero.");

            claim_index claims(_self, claimant);
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
            check_bond(claim_id, claimant, bond);
            
            claim_index claims(_self, claimant);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr->claimant == claimant, "You are not the claimant in this claim.");
            
            //send_eos(claimant, _self, bond, "Fronting bond for case.");
            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.bond_fronted = true;
            });
        }

        //@abi action
        void opencase(const uint64_t claim_id) {
            require_auth(_self);

            claim_index claims(_self, _self);
            auto ctoac = claims.get(claim_id); // claim to open as case
            //eosio_assert(ctoac.bond_fronted, "Bond has not been fronted, cannot open case.");

            uint64_t case_id;
            arbcase_index arbcases(_self, _self);
            arbcases.emplace(_self, [&](auto& arbcase) {
                arbcase.id              = next_case_id();
                case_id                 = arbcase.id;
                arbcase.claimant        = ctoac.claimant;
                arbcase.respondent      = ctoac.respondent;
                arbcase.fee             = ctoac.fee;
                arbcase.fee_paid        = ctoac.fee_paid;
                arbcase.bond            = ctoac.bond;
                arbcase.bond_fronted    = ctoac.bond_fronted;
                arbcase.documents       = ctoac.documents;
                arbcase.tx_id           = ctoac.tx_id;
            });
            
            print("The case id is ",case_id,".");
            log_claimant(case_id, ctoac.claimant);
            log_respondent(case_id, ctoac.respondent);
        }

        //@abi action
        void dropclaim(const uint64_t claim_id, const account_name claimant){
            require_auth(claimant);

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr != claims.end(), "Claim id not found.");
            eosio_assert(claims_itr->claimant == claimant, "You are not the claimant in this claim.");

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
                arbcase.case_dropped = true;
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
        void submitruling(const uint64_t case_id, const account_name party, const checksum256& ruling, const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);
            eosio_assert(arbcase_itr != arbcases.end(), "Filing id not found.");
            eosio_assert(arbcase_itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.in_favor_of = party;
                arbcase.ruling = ruling;
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
                arbcase.is_resolved = true;
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

            // if (to_claimant.amount > 0)     { send_eos(_self, arbcase_itr->claimant, to_claimant, "Dispersal of bond to claimant."); }
            // if (to_respondent.amount > 0)   { send_eos(_self, arbcase_itr->respondent, to_respondent, "Dispersal of bond to respondent."); }
            // if (to_arbitrator.amount > 0)   { send_eos(_self, arbcase_itr->arbitrator, to_arbitrator, "Dispersal of bond to arbitrator."); }

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
            //require_auth(arbitrator);

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
        void setarbfee(const asset& fee) {
            require_auth(_self);

            validate_asset(fee);
            eosio_assert(fee.amount > 0, "Fee must be greater than zero.");

            arbfee_index arbfees(_self, _self);
            arbfee new_arbfee{0,fee};
            arbfees.set(new_arbfee, _self);
        }

        void log_claimant(const uint64_t case_id, const account_name claimant){
            caselog_index caselogs(_self, claimant);
            auto caselog_itr = caselogs.find(claimant);
            if (caselog_itr == caselogs.end()){
                caselogs.emplace(_self, [&](auto& caselog) {
                    caselog.id = claimant;
                    caselog.claimant_on_case_id.push_back(case_id);
                });
            } else {
                caselogs.modify( caselog_itr, 0, [&]( auto& caselog ) {
                    caselog.claimant_on_case_id.push_back(case_id);
                });
            }
        }

        void log_respondent(const uint64_t case_id, const account_name respondent){
            caselog_index caselogs(_self, respondent);
            auto caselog_itr = caselogs.find(respondent);
            if (caselog_itr == caselogs.end()){
                caselogs.emplace(_self, [&](auto& caselog) {
                    caselog.id = respondent;
                    caselog.respondent_on_case_id.push_back(case_id);
                });
            } else {
                caselogs.modify( caselog_itr, 0, [&]( auto& caselog ) {
                    caselog.respondent_on_case_id.push_back(case_id);
                });
            }
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
            bool claim_dropped = false;
            bool is_rejected = false;
            checksum256 rejection_reason;
            asset fee;
            bool fee_paid = false;
            asset bond;
            bool bond_fronted = false;
            checksum256 documents;
            string tx_id;

            uint64_t primary_key() const { return id; }
            account_name by_claimant() const { return claimant; }
            account_name by_respondent() const { return respondent; }

            EOSLIB_SERIALIZE( claim, (id)(claimant)(respondent)(claim_dropped)(is_rejected)
                            (rejection_reason)(fee)(fee_paid)(bond)(bond_fronted)(documents)
                            (tx_id) )
        };
        typedef eosio::multi_index< N(claim), claim,
            indexed_by< N(byClaimant), const_mem_fun< claim, account_name, &claim::by_claimant> >,
            indexed_by< N(byRespondent), const_mem_fun< claim, account_name, &claim::by_respondent> >
        > claim_index;

        //@abi table arbcase i64
        struct arbcase {
            uint64_t id;
            account_name claimant;
            account_name respondent;
            account_name arbitrator;
            bool case_dropped = false;
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
            account_name in_favor_of;
            checksum256 ruling;
            checksum256 remedy;
            bool requested_remedy = false;
            bool remedy_fulfilled = false;
            checksum256 documents;
            string tx_id;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( arbcase, (id)(claimant)(respondent)(arbitrator)(case_dropped)
                            (is_resolved)(fee)(fee_paid)(bond)(bond_fronted)(bond_dispersed)
                            (to_claimant)(to_respondent)(to_arbitrator)(to_arbitration_forum)
                            (in_favor_of)(ruling)(remedy)(requested_remedy)(remedy_fulfilled)
                            (documents)(tx_id) )
        };
        typedef eosio::multi_index< N(arbcase), arbcase > arbcase_index;

        //@abi table caselog i64
        struct caselog {
            account_name id;
            vector<uint64_t> claimant_on_case_id;
            vector<uint64_t> respondent_on_case_id;

            account_name primary_key() const { return id; }

            EOSLIB_SERIALIZE( caselog, (id)(claimant_on_case_id)(respondent_on_case_id) )
        };
        typedef eosio::multi_index< N(caselog), caselog > caselog_index;

        //@abi table arbfee i64
        struct arbfee {
            uint64_t id;
            asset fee;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( arbfee, (id)(fee) )
        };

        typedef eosio::singleton< N(arbfee), arbfee > arbfee_index;

        typedef uint64_t id;
        typedef eosio::singleton<N(claimid), id>  claim_id_index;
        typedef eosio::singleton<N(caseid), id>  case_id_index;

        id next_claim_id(){
            claim_id_index last_claim_id(_self, _self);
            id lcid = last_claim_id.exists() ? last_claim_id.get() + 1 : 0;
            last_claim_id.set(lcid,_self);
            return lcid;
        }

        id next_case_id(){
            case_id_index last_case_id(_self, _self);
            id lcid = last_case_id.exists() ? last_case_id.get() + 1 : 0;
            last_case_id.set(lcid,_self);
            return lcid;
        }
};

EOSIO_ABI( arbitration, (submitclaim)(deleteclaim)(deletecase)(postbond)(frontbond)(opencase)(dropclaim)(dropcase)(rejectclaim)(submitruling)(closecase)(assignarb)(dispersebond)(remedyr)(remedyf)(setarbfee) )

// TODO: GUARDS on when a claim and case can be deleted