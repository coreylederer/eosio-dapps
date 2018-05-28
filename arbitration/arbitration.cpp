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

            claim_index claims(_self,_self);

            // TODO: pay_fee

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
        void submitfiling(const account_name party, const uint64_t case_id, const vector<string>& tx_ids,
                          const vector<document>& documents) {
            require_auth(party);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);

            eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");
            eosio_assert(!arbcase_itr->is_resolved, "Cannot submit a filing on a case that has already been resolved.");
            eosio_assert(!arbcase_itr->can_delete, "Cannot submit a filing on a case that is set to be deleted.");
            eosio_assert(std::find(arbcase_itr->claimants.begin(), arbcase_itr->claimants.end(), party) != arbcase_itr->claimants.end() || 
                         std::find(arbcase_itr->respondents.begin(), arbcase_itr->respondents.end(), party) != arbcase_itr->respondents.end(), "You are not authorized to submit a filing to this case.");
            
            uint64_t submitted_filing_id;
            sbmttdflng_index sbmttdflngs(_self,_self);

            sbmttdflngs.emplace(party, [&](auto& sbmttdflng) {
                sbmttdflng.id = next_sf_id();
                sbmttdflng_id = sbmttdflng.id;
                sbmttdflng.belongs_to = party;
                sbmttdflng.for_case = case_id;
                sbmttdflng.tx_ids = tx_ids;
                sbmttdflng.documents = documents;
            });
            print("Your submitted filing id is ", submitted_filing_id, ".");
        }

        //@abi action
        void deletefiling(const uint64_t sf_id, const account_name party) {
            require_auth(party);

            sbmttdflng_index sbmttdflngs(_self, _self);
            auto sbmttdflng_itr = sbmttdflngs.find(sf_id);

            eosio_assert(sbmttdflng_itr != sbmttdflngs.end(), "Filing id not found.");
            eosio_assert(sbmttdflng_itr->can_delete, "Filing cannot be deleted at this time.");

            sbmttdflngs.erase(sbmttdflng_itr);
        }

        //@abi action
        void addfiling(const uint64_t sf_id, const uint64_t case_id, const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);

            eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");
            eosio_assert(!arbcase_itr->is_resolved, "Cannot submit a filing on a case that has already been resolved.");
            eosio_assert(!arbcase_itr->can_delete, "Cannot submit a filing on a case that is set to be deleted.");
            eosio_assert(std::find(arbcase_itr->arbitrators.begin(), arbcase_itr->arbitrators.end(), arbitrator) != arbcase_itr->arbitrators.end(), "You are not an arbitrator assigned to this case.");

            sbmttdflng_index sbmttdflngs(_self, _self);
            auto sbmttdflng_itr = sbmttdflngs.find(sf_id);

            eosio_assert(sbmttdflng_itr != sbmttdflngs.end(), "Submitted filing id not found.");
            eosio_assert(!sbmttdflng_itr->can_delete, "Cannot submit a filing that is set to be deleted.");
            eosio_assert(sbmttdflng_itr->for_case == case_id, "Case ids do not match.");

            int counter = 0;
            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                for (auto &filing : arbcase.filings) {
                    if (filing.belongs_to == sbmttdflng_itr->belongs_to) {
                        for (auto &docs : sbmttdflng_itr->documents) {
                            arbcase.filings[counter].push_back(docs);
                        }
                        for (auto &tx_id : sbmttdflng_itr->tx_ids) {
                            arbcase.filings[counter].push_back(tx_id);
                        }
                    }
                    counter++;
                }
            });

            sbmttdflngs.modify( sbmttdflng_itr, 0, [&]( auto& sbmttdflng ) {
                sbmttdflng.can_delete = true;
            });
        }

        //@abi action
        void dropclaim(const uint64_t claim_id, const account_name claimant){
            require_auth(claimant);

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);

            eosio_assert(claims_itr != claims.end(), "Claim id not found.");
            eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");
            eosio_assert(!claims_itr->claim_dropped, "Cannot drop a claim that has already been dropped.");
            eosio_assert(!claims_itr->can_delete, "Cannot drop a claim that has been set to be deleted.");
            eosio_assert(!claims_itr->is_rejected, "Cannot drop a claim that has already been rejected.");

            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.claim_dropped = true;
                claim.can_delete = true;
            });
        }

        // TODO: make a vector of drops for each claimant
        //@abi action
        // void dropcase(const uint64_t case_id, const account_name claimant){
        //     require_auth(claimant);

        //     arbcase_index arbcases(_self, _self);
        //     auto arbcase_itr = arbcases.find(case_id);
        //     eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");
        //     eosio_assert(arbcase_itr->claimants.front() == claimant, "You are not the claimant on this case.");

        //     arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
        //         arbcase.case_dropped = true;
        //     });
        // }

        //@abi action
        void deleteclaim(uint64_t claim_id, const account_name claimant) {
            require_auth(claimant);

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);

            eosio_assert(claims_itr != claims.end(), "Claim id not found.");
            eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");
            eosio_assert(claims_itr->can_delete,"Claim cannot be deleted at this time.");

            claims.erase(claims_itr);
        }

        //@abi action
        void deletecase(uint64_t case_id, const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcases_itr = arbcases.find(case_id);

            eosio_assert(arbcases_itr != arbcases.end(), "Case id not found.");
            eosio_assert(std::find(arbcases_itr->arbitrators.begin(), arbcases_itr->arbitrators.end(), arbitrator) != arbcases_itr->arbitrators.end(), "You are not an arbitrator assigned to this case.");
            eosio_assert(arbcases_itr->can_delete,"Case cannot be deleted at this time.");

            arbcases.erase(arbcases_itr);
        }

        // can delete case
        //@abi action
        void candltcase(uint64_t case_id, const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcases_itr = arbcases.find(case_id);

            eosio_assert(arbcases_itr != arbcases.end(), "Case id not found.");
            eosio_assert(std::find(arbcases_itr->arbitrators.begin(), arbcases_itr->arbitrators.end(), arbitrator) != arbcases_itr->arbitrators.end(), "You are not an arbitrator assigned to this case.");
            eosio_assert(!arbcases_itr->can_delete,"Case is already set to be deleted.");

            arbcases.modify( arbcases_itr, 0, [&]( auto& arbcase ) {
                arbcase.can_delete = true;
            });
        }

        //@abi action
        void rejectclaim(const uint64_t claim_id, const document rr){
            require_auth(_self);

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr != claims.end(), "Claim id not found.");
            eosio_assert(!claims_itr->claim_dropped, "Cannot reject a claim that has already been dropped.");
            eosio_assert(!claims_itr->can_delete, "Cannot reject a claim that has been set to be deleted.");
            eosio_assert(!claims_itr->is_rejected, "Cannot reject a claim that has already been rejected.");

            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.is_rejected = true;
                claim.rejection_reason = rr;
                claim.can_delete = true;
            });
        }

        //@abi action
        void submitruling(const uint64_t case_id, const document ruling, const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);

            eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");
            eosio_assert(!arbcase_itr->is_resolved, "Cannot submit a ruling on a case that has already been resolved.");
            eosio_assert(!arbcase_itr->can_delete, "Cannot submit a ruling on a case that is set to be deleted.");
            eosio_assert(std::find(arbcase_itr->arbitrators.begin(), arbcase_itr->arbitrators.end(), arbitrator) != arbcase_itr->arbitrators.end(), "You are not an arbitrator assigned to this case.");
            
            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.ruling = ruling;
            });
        }

        // TODO: does only the claimant pay a fee or do the other claimants pay? What about bonds for the respondents?
        //@abi action
        // void dispersebond(const uint64_t case_id, const asset& to_claimant, const asset& to_respondent,
        //                   const asset& to_arbitrator, const asset& to_arbitration_forum,
        //                   const account_name arbitrator) {
        //     require_auth(arbitrator);

        //     arbcase_index arbcases(_self, _self);
        //     auto arbcase_itr = arbcases.find(case_id);
        //     eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");
        //     eosio_assert(!arbcase_itr->is_resolved, "Cannot disperse a bond on a case that has already been resolved.");
        //     eosio_assert(!arbcase_itr->can_delete, "Cannot disperse a bond on a case that is set to be deleted.");
        //     eosio_assert(std::find(arbcase_itr->arbitrators.begin(), arbcase_itr->arbitrators.end(), arbitrator) != arbcase_itr->arbitrators.end(), "You are not an arbitrator assigned to this case.");
            
        //     validate_asset(to_claimant);
        //     validate_asset(to_respondent);
        //     validate_asset(to_arbitrator);
        //     validate_asset(to_arbitration_forum);
            
        //     auto total_amount = to_claimant.amount + to_respondent.amount + to_arbitrator.amount + to_arbitration_forum.amount;
        //     eosio_assert(total_amount <= arbcase_itr->bond.amount, "Attempting to disperse a bond amount that is greater than the fronted bond.");

        //     // TODO: send eos to appropriate parties

        //     arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
        //         arbcase.bond_dispersed = true;
        //         arbcase.to_claimant = to_claimant;
        //         arbcase.to_respondent = to_respondent;
        //         arbcase.to_arbitrator = to_arbitrator;
        //         arbcase.to_arbitration_forum = to_arbitration_forum;
        //     });
        // }

        //@abi action
        void closecase(const uint64_t case_id, const account_name arbitrator) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);

            eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");
            eosio_assert(std::find(arbcase_itr->arbitrators.begin(), arbcase_itr->arbitrators.end(), arbitrator) != arbcase_itr->arbitrators.end(), "You are not an arbitrator assigned to this case.");
            eosio_assert(arbcase_itr->bond_dispersed,"Bond has not yet been dispersed.");
            eosio_assert(arbcase_itr->remedy_fulfilled,"Remedy has not yet been fulfilled.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.is_resolved = true;
                arbcase.case_dropped = true;
                arbcase.time_closed = now();
            });
        }

        //@abi action
        void assignarb(const uint64_t arbcase_id, const account_name arbitrator) {
            require_auth(_self);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(arbcase_id);

            eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");
            eosio_assert(!arbcase_itr->is_resolved, "Cannot assign an arbitrator to a case that has already been resolved.");
            eosio_assert(!arbcase_itr->can_delete, "Cannot assign an arbitrator to a case that is set to be deleted.");
            eosio_assert(!arbcase_itr->case_dropped, "Cannot assign an arbitrator to a case that has been dropped.");
            eosio_assert(std::find(arbcase_itr->arbitrators.begin(), arbcase_itr->arbitrators.end(), arbitrator) == arbcase_itr->arbitrators.end(), "That arbitrator is already assigned to this case.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.arbitrators.push_back(arbitrator);
            });
        }

        //@abi action
        void removearb(const uint64_t arbcase_id, const account_name arbitrator) {
            require_auth(_self);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(arbcase_id);
            eosio_assert(arbcase_itr != arbcases.end(), "Case id not found.");
            eosio_assert(!arbcase_itr->can_delete, "Cannot remove an arbitrator from a case that is set to be deleted.");
            eosio_assert(std::find(arbcase_itr->arbitrators.begin(), arbcase_itr->arbitrators.end(), arbitrator) != arbcase_itr->arbitrators.end(), "That arbitrator is not assigned to this case.");

            int counter = 0;
            for (auto &arb : arbcase_itr->arbitrators) {
                if (arb == arbitrator) {
                    arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                        arbcase.arbitrators.erase(counter);
                    });
                }
                counter++;
            }
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
            log_claimant(case_id, ctoac.claimant);
            for (auto &respondent : ctoac.respondents) {
                log_respondent(case_id, respondent);
            }
        }

        // remedy requested
        //@abi action
        void remedyr(const uint64_t case_id, const account_name arbitrator, const document remedy) {
            require_auth(arbitrator);

            arbcase_index arbcases(_self, _self);
            auto arbcase_itr = arbcases.find(case_id);

            eosio_assert(!arbcase_itr->is_resolved, "Cannot request a remedy for a case that was already resolved.");
            eosio_assert(!arbcase_itr->case_dropped, "Cannot request a remedy for a case that was dropped.");
            eosio_assert(arbcase_itr != arbcases.end(), "Filing id not found.");
            eosio_assert(std::find(arbcase_itr->arbitrators.begin(), arbcase_itr->arbitrators.end(), arbitrator) != arbcase_itr->arbitrators.end(), "You are not an arbitrator assigned to this case.");

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
            eosio_assert(arbcase_itr->requested_remedy, "Remedy must first be requested.");
            eosio_assert(arbcase_itr != arbcases.end(), "Filing id not found.");
            eosio_assert(std::find(arbcase_itr->arbitrators.begin(), arbcase_itr->arbitrators.end(), arbitrator) != arbcase_itr->arbitrators.end(), "You are not an arbitrator assigned to this case.");

            arbcases.modify( arbcase_itr, 0, [&]( auto& arbcase ) {
                arbcase.remedy_fulfilled = true;
            });
        }

        //@abi action
        void setbond(const uint64_t claim_id, const asset& bond) {
            require_auth(_self);

            validate_asset(bond);
            eosio_assert(bond.amount > 0, "Bond must be greater than zero.");

            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);

            eosio_assert(claims_itr != claims.end(), "Claim id not found.");
            eosio_assert(!claims_itr->claim_dropped, "Cannot post a bond for a claim that has been dropped.");
            eosio_assert(!claims_itr->is_rejected, "Cannot post a bond for a claim that has been rejected.");

            claims.modify( claims_itr, 0, [&]( auto& claim ) {
                claim.bond = bond;
            });
        }

        //@abi action
        void frontbond(const uint64_t claim_id, const account_name claimant, const asset& bond) {
            require_auth(claimant);

            validate_asset(bond);
            check_bond(claim_id, bond);

            claim_index claims(_self, claimant);
            auto claims_itr = claims.find(claim_id);
            eosio_assert(claims_itr != claims.end(), "Filing id not found.");
            eosio_assert(!claims_itr->claim_dropped, "Cannot front the bond for a claim that was dropped.");
            eosio_assert(!claims_itr->is_rejected, "Cannot front the bond for a claim that was rejected.");
            eosio_assert(claims_itr->claimant == claimant, "You are not the claimant on this claim.");
            
            // TODO: pay_bond

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

        void log_claimant(const uint64_t case_id, const account_name claimant){
            crlog_index crlogs(_self, claimant);
            auto crlog_itr = crlogs.find(claimant);
            if (crlog_itr == crlogs.end()){
                crlogs.emplace(_self, [&](auto& crlog) {
                    crlog.id = claimant;
                    crlog.claimant_on_case_id.push_back(case_id);
                });
            } else {
                crlogs.modify( crlog_itr, 0, [&]( auto& crlog ) {
                    crlog.claimant_on_case_id.push_back(case_id);
                });
            }
        }

        void log_respondent(const uint64_t case_id, const account_name respondent){
            crlog_index crlogs(_self, respondent);
            auto crlog_itr = crlogs.find(respondent);
            if (crlog_itr == crlogs.end()){
                crlogs.emplace(_self, [&](auto& crlog) {
                    crlog.id = respondent;
                    crlog.respondent_on_case_id.push_back(case_id);
                });
            } else {
                crlogs.modify( crlog_itr, 0, [&]( auto& crlog ) {
                    crlog.respondent_on_case_id.push_back(case_id);
                });
            }
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

        void check_bond(const uint64_t claim_id, const asset& bond){
            claim_index claims(_self, _self);
            eosio_assert(claims.get(claim_id).bond.amount > 0, "Arbitration forum still needs to post the bond amount.");
            eosio_assert(bond.amount == claims.get(claim_id).bond.amount, "Bond amount is not adequate.");
        }

    private:
        //@abi table sbmttdflng i64
        struct sbmttdflng {
            uint64_t id;
            uint64_t for_case;
            account_name belongs_to;
            vector<document> documents;
            vector<string> tx_ids;
            bool can_delete = false;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( sbmttdflng, (id)(for_case)(belongs_to)(documents)(tx_ids)(can_delete)(time_submitted) )
        };
        typedef eosio::multi_index< N(sbmttdflng), sbmttdflng > sbmttdflng_index;

        //@abi table claim i64
        struct claim {
            uint64_t id;
            account_name claimant;
            vector<account_name> respondents;
            vector<string> tx_ids;
            vector<document> documents;
            bool claim_dropped = false;
            bool can_delete = false;
            bool is_rejected = false;
            document rejection_reason;
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
            document ruling;
            document remedy;
            bool requested_remedy = false;
            bool remedy_fulfilled = false;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( arbcase, (id)(claimants)(respondents)(arbitrators)(filings)
                            (time_opened)(case_dropped)(can_delete)(is_resolved)(time_closed)(fee)
                            (fee_paid)(bond)(bond_fronted)(bond_dispersed)(to_claimant)
                            (to_respondent)(to_arbitrator)(to_arbitration_forum)
                            (ruling)(remedy)(requested_remedy)(remedy_fulfilled) )
        };
        typedef eosio::multi_index< N(arbcase), arbcase > arbcase_index;

        // Claimant Respondent Log
        //@abi table crlog i64
        struct crlog {
            account_name id;
            vector<uint64_t> claimant_on_case_id;
            vector<uint64_t> respondent_on_case_id;

            account_name primary_key() const { return id; }

            EOSLIB_SERIALIZE( crlog, (id)(claimant_on_case_id)(respondent_on_case_id) )
        };
        typedef eosio::multi_index< N(crlog), crlog > crlog_index;

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
        typedef eosio::singleton<N(sfid), id>  sf_id_index; // submitted filing

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

        id next_sf_id(){
            sf_id_index last_sf_id(_self, _self);
            id lsfid = last_sf_id.exists() ? last_sf_id.get() + 1 : 0;
            last_sf_id.set(lsfid,_self);
            return lsfid;
        }
};

EOSIO_ABI( arbitration, (submitclaim)(opencase) )