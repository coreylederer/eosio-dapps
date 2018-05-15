/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <vector>

using eosio::asset;
using std::vector;
using eosio::permission_level;
using eosio::action;

class arbitration : public eosio::contract {
    public:
        enum Status {claim, arbcase, rejected, open, closed};
        explicit arbitration(action_name self) : contract(self) {}

        //@abi action
        void submitclaim(const account_name claimant, const account_name respondent, const asset& fee) {

            require_auth(claimant);
            eosio_assert(fee.is_valid(), "Submitted fee is not a valid asset.");
            eosio_assert(fee.amount == 10, "Filing fee is 10 EOS.");

            filing_index filings(_self, _self);

            action(
                permission_level{ claimant, N(active) },
                N(eosio.token), N(transfer),
                std::make_tuple(claimant, _self, fee, std::string("Paying fee to submit claim."))
            ).send();

            filings.emplace(claimant, [&](auto& filing) {
                filing.id = filings.available_primary_key();
                filing.claimant = claimant;
                filing.respondent = respondent;
                filing.state = claim;
                filing.fee = fee;
                filing.fee_paid = true;
            });
        }

        //@abi action
        void postbond(const uint64_t id, const asset& bond) {

            require_auth(_self);

            filing_index filings(_self, _self);

            auto itr = filings.find(id);
            eosio_assert(itr != filings.end(), "Filing id not found.");

            filings.modify( itr, 0, [&]( auto& filing ) {
                filing.bond = bond;
            });
        }

        //@abi action
        void updatestatus(const uint64_t id, const Status status) {

            require_auth(_self);

            filing_index filings(_self, _self);

            auto itr = filings.find(id);
            eosio_assert(itr != filings.end(), "Filing id not found.");

            filings.modify( itr, 0, [&]( auto& filing ) {
                filing.status = status;
            });
        }

        //@abi action
        void frontbond(const uint64_t id, const asset& bond, const account_name claimant) {

            require_auth(claimant);
            eosio_assert(bond.is_valid(), "Submitted bond is not a valid asset.");

            filing_index filings(_self, _self);
            auto itr = filings.find(id);
            eosio_assert(itr != filings.end(), "Filing id not found.");
            eosio_assert(bond.amount == itr->bond.amount, "Fronted bond amount is not adequate.");

            action(
                permission_level{ claimant, N(active) },
                N(eosio.token), N(transfer),
                std::make_tuple(claimant, _self, bond, std::string("Fronting bond for claim."))
            ).send();

            filings.modify( itr, 0, [&]( auto& filing ) {
                filing.bond_fronted = true;
            });
        }

        //@abi action
        void opencase(const uint64_t id, const account_name arbitrator) {

            require_auth(_self);

            filing_index filings(_self, _self);

            auto filing_itr = filings.find(id);
            eosio_assert(filing_itr != filings.end(), "Filing id not found.");
            eosio_assert(filing_itr->bond_fronted, "Bond has not been fronted, cannot open case.");

            filings.modify( filing_itr, 0, [&]( auto& filing ) {
                filing.status = open;
                filing.state = arbcase;
                filing.arbitrator = arbitrator;
            });

            participant_index participants(_self, _self);

            auto participant_itr = participants.find(filing_itr->claimant);
            if (participant_itr == participants.end()){
                participants.emplace(_self, [&](auto& participant) {
                    participant.id = filing_itr->claimant;
                    participant.as_claimant.push_back(filing_itr->id);
                });
            } else {
                participants.modify( participant_itr, 0, [&]( auto& participant ) {
                    participant.as_claimant.push_back(filing_itr->id);
                });
            }

            participant_itr = participants.find(filing_itr->respondent);
            if (participant_itr == participants.end()){
                participants.emplace(_self, [&](auto& participant) {
                    participant.id = filing_itr->respondent;
                    participant.as_respondent.push_back(filing_itr->id);
                });
            } else {
                participants.modify( participant_itr, 0, [&]( auto& participant ) {
                    participant.as_respondent.push_back(filing_itr->id);
                });
            }
        }

        //@abi action
        void submitruling(const uint64_t id, const account_name victor, const account_name arbitrator) {

            require_auth(arbitrator);

            filing_index filings(_self, _self);

            auto itr = filings.find(id);
            eosio_assert(itr != filings.end(), "Filing id not found.");

            eosio_assert(itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");

            filings.modify( itr, 0, [&]( auto& filing ) {
                filing.ruling_for = victor;
            });
        }

        //@abi action
        void closecase(const uint64_t id, const account_name arbitrator) {

            require_auth(arbitrator);

            filing_index filings(_self, _self);

            auto itr = filings.find(id);
            eosio_assert(itr != filings.end(), "Filing id not found.");
            eosio_assert(itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");
            eosio_assert(itr->bond_dispersed,"Bond has not yet been dispersed.");
            eosio_assert(itr->remedy_fulfilled,"Remedy has not yet been fulfilled.");

            filings.modify( itr, 0, [&]( auto& filing ) {
                filing.status = closed;
            });
        }

        //@abi action
        void changearbitrator(const uint64_t id, const account_name arbitrator) {

            require_auth(_self);

            filing_index filings(_self, _self);

            auto itr = filings.find(id);
            eosio_assert(itr != filings.end(), "Filing id not found.");

            filings.modify( itr, 0, [&]( auto& filing ) {
                filing.arbitrator = arbitrator;
            });
        }

        //@abi action
        void dispersebond(  const uint64_t id, const asset& toclaimant, const asset& torespondent,
                            const asset& toarbitrator, const account_name arbitrator) {

            require_auth(arbitrator);

            filing_index filings(_self, _self);
            auto itr = filings.find(id);
            eosio_assert(itr != filings.end(), "Filing id not found.");
            auto total = toclaimant + torespondent + toarbitrator;
            eosio_assert(total.amount <= itr->bond.amount, "Amount to disperse does not equal amount fronted for the bond.");
            eosio_assert(arbitrator == itr->arbitrator, "You are not the arbitrator assigned to this case.");

            if (toclaimant.amount != 0) {
                action(
                    permission_level{ _self, N(active) },
                    N(eosio.token), N(transfer),
                    std::make_tuple(_self, itr->claimant, toclaimant, std::string("Dispersal of bond to claimant."))
                ).send();
            }

            if (torespondent.amount != 0) {
                action(
                    permission_level{ _self, N(active) },
                    N(eosio.token), N(transfer),
                    std::make_tuple(_self, itr->respondent, torespondent, std::string("Dispersal of bond to respondent."))
                ).send();
            }

            if (toarbitrator.amount != 0) {
                action(
                    permission_level{ _self, N(active) },
                    N(eosio.token), N(transfer),
                    std::make_tuple(_self, itr->arbitrator, toarbitrator, std::string("Dispersal of bond to arbitrator."))
                ).send();
            }

            filings.modify( itr, 0, [&]( auto& filing ) {
                filing.bonds_dispersed = true;
            });
        }

        //@abi action
        void requestremedy(const uint64_t id, const account_name arbitrator) {

            require_auth(arbitrator);

            filing_index filings(_self, _self);

            auto itr = filings.find(id);
            eosio_assert(itr != filings.end(), "Filing id not found.");
            eosio_assert(itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");

            filings.modify( itr, 0, [&]( auto& filing ) {
                filing.requested_remedy = true;
            });
        }

        //@abi action
        void remedyfulfilled(const uint64_t id, const account_name arbitrator) {

            require_auth(arbitrator);

            filing_index filings(_self, _self);

            auto itr = filings.find(id);
            eosio_assert(itr != filings.end(), "Filing id not found.");
            eosio_assert(itr->arbitrator == arbitrator, "You are not the arbitrator assigned to this case.");

            filings.modify( itr, 0, [&]( auto& filing ) {
                filing.remedy_fulfilled = true;
            });
        }

    private:
        //@abi table filing i64
        struct filing {
            uint64_t id;
            account_name claimant;
            account_name respondent;
            account_name arbitrator;
            Status status;
            Status state = claim;
            asset fee;
            bool fee_paid = false;
            asset bond;
            bool bond_fronted = false;
            account_name ruling_for;
            bool requested_remedy = false;
            bool remedy_fulfilled = false;
            bool bond_dispersed = false;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE( filing, (id)(status)(claimant)(respondent)(arbitrator)(status)(state)(fee)(fee_paid)(bond)(bond_fronted)(ruling_for) )
        };
        typedef eosio::multi_index< N(filing), filing > filing_index;

        //@abi table participant i64
        struct participant {
            account_name id;
            vector<uint64_t> as_claimant;
            vector<uint64_t> as_respondent;

            account_name primary_key() const { return id; }

            EOSLIB_SERIALIZE( participant, (id)(as_claimant)(as_respondent) )
        };
        typedef eosio::multi_index< N(participant), participant > participant_index;
};

EOSIO_ABI( arbitration, (submit)(status)(assign)(remove) )