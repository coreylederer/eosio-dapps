/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eosiolib/eosio.hpp>
#include <sstream>
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

        //@abi action
        void opencase(const account_name claimant) {

            eosio::name arbcase_id;
            arbcase_index arbcases(_self, _self);
            arbcases.emplace(_self, [&](auto& arbcase) {
                arbcase.id = next_claim_id();
                arbcase_id.value = arbcase.id;
            });

            claimant_index claimants(_self, arbcase_id);
            claimants.emplace(_self, [&](auto& clmnt) {
                clmnt.id = claimant;
            });
        }

    private:
        //@abi table claimant i64
        struct claimant {
            account_name id;
            account_name primary_key() const { return id; }

            EOSLIB_SERIALIZE( claimant, (id))
        };
        typedef eosio::multi_index< N(claimant), claimant > claimant_index;

        //@abi table arbcase i64
        struct arbcase {
            uint64_t id;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( arbcase, (id) )
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

EOSIO_ABI( arbitration, (opencase) )