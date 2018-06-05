/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eosiolib/singleton.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <vector>
#include <string>

using eosio::const_mem_fun;
using eosio::indexed_by;
using eosio::asset;
using eosio::vector;
using std::string;

namespace controls {
    enum Person {arbitrator, claimant, respondent};
    enum Item   {document, transaction};
    enum Entity {arbcase, claim};
    enum Monies {bond, fee, submittalfee};
}

class arbitration : public eosio::contract {
    public:
        explicit arbitration(action_name self) : contract(self) {}

        bool exists(controls::Entity what, const uint64_t entity_id) {
            switch(what) {
                case controls::arbcase: {
                    arbcase_index arbcases(_self, _self);
                    auto arbcases_itr = arbcases.find(entity_id);
                    return arbcases_itr != arbcases.end();
                }
                case controls::claim: {
                    claim_index claims(_self, _self);
                    auto claims_itr = claims.find(entity_id);
                    return claims_itr != claims.end();
                }
                default: {
                    return false;
                }
            }
        }

        bool exists(controls::Person who, controls::Entity where, const uint64_t entity_id,
                    const account_name person) {
            switch(who) {
                case controls::arbitrator: {
                    switch(where) {
                        case controls::arbcase: {
                            arbitrator_index arbitrators(_self, entity_id);
                            auto arbitrators_itr = arbitrators.find(person);
                            return arbitrators_itr != arbitrators.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::claimant: {
                    switch(where) {
                        case controls::arbcase: {
                            claimant_index claimants(_self, entity_id); // entity_id is an arbcase id being used as scope
                            auto claimants_itr = claimants.find(person);
                            return claimants_itr != claimants.end();
                        }
                        case controls::claim: {
                            claimant_index claimants(_self, entity_id); // entity_id is a claim id being used as scope
                            auto claimants_itr = claimants.find(person);
                            return claimants_itr != claimants.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::respondent: {
                    switch(where) {
                        case controls::arbcase: {
                            respondent_index respondents(_self, entity_id); // entity_id is an arbcase id being used as scope
                            auto respondents_itr = respondents.find(person);
                            return respondents_itr != respondents.end();
                        }
                        case controls::claim: {
                            respondent_index respondents(_self, entity_id); // entity_id is a claim id being used as scope
                            auto respondents_itr = respondents.find(person);
                            return respondents_itr != respondents.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool exists(controls::Item what, controls::Entity where, const uint64_t entity_id,
                    const uint64_t item_id) {
            switch(what) {
                case controls::document: {
                    switch(where) {
                        case controls::arbcase: {
                            document_index documents(_self, entity_id); // entity_id is an arbcase id being used as scope
                            auto documents_itr = documents.find(item_id);
                            return documents_itr != documents.end();
                        }
                        case controls::claim: {
                            document_index documents(_self, entity_id); // entity_id is a claim id being used as scope
                            auto documents_itr = documents.find(item_id);
                            return documents_itr != documents.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::transaction: {
                    switch(where) {
                        case controls::arbcase: {

                        }
                        case controls::claim: {

                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        void add(controls::Person who, const account_name person_to_add,
                 const uint64_t arbcase_id, const account_name authority) {
            switch(who) {
                case controls::arbitrator:
                    break;
                case controls::claimant:
                    break;
                case controls::respondent:
                    break;
            }
        }

        void remove(controls::Person who, const account_name person_to_remove,
                    const uint64_t arbcase_id, const account_name authority) {
            switch(who) {
                case controls::arbitrator:
                    break;
                case controls::claimant:
                    break;
                case controls::respondent:
                    break;
            }
        }

        void add(controls::Item what, controls::Entity where, const account_name owner,
                 const uint64_t item_id_to_add, const uint64_t arbcase_id,
                 const account_name authority) {
            switch(what) {
                case controls::document:
                    switch(where) {
                        case controls::arbcase:
                            break;
                        case controls::claim:
                            break;
                    }
                    break;
                case controls::transaction:
                    switch(where) {
                        case controls::arbcase:
                            break;
                        case controls::claim:
                            break;
                    }
                    break;
            }
        }

        void remove(controls::Item what, controls::Entity where, const account_name owner,
                 const uint64_t item_id_to_remove, const uint64_t arbcase_id,
                 const account_name authority) {
            switch(what) {
                case controls::document:
                    switch(where) {
                        case controls::arbcase:
                            break;
                        case controls::claim:
                            break;
                    }
                    break;
                case controls::transaction:
                    switch(where) {
                        case controls::arbcase:
                            break;
                        case controls::claim:
                            break;
                    }
                    break;
            }
        }

        void open(controls::Entity what, const account_name authority, uint64_t claim_id = 0) {
            switch(what) {
                case controls::arbcase:
                case controls::claim:
            }
        }

        void close(controls::Entity what, const account_name authority, uint64_t entity_id) {
            switch(what) {
                case controls::arbcase:
                    break;
                case controls::claim:
                    break;
            }
        }

        void set(controls::Monies what, asset amount, const account_name authority,
                 const uint64_t entity_id = 0) {
            switch(what) {
                case controls::fee:
                    break;
                case controls::bond:
                    break;
                case controls::submittalfee:
                    break;
            }
        }

        void pay(controls::Monies what, asset amount, const account_name who,
                 const uint64_t entity_id = 0) {
            switch(what) {
                case controls::fee:
                    break;
                case controls::bond:
                    break;
                case controls::submittalfee:
                    break;
            }
        }

        //@abi action
        void opencase() {

        }

        //@abi action
        void closecase() {

        }

        //@abi action
        void openclaim() {

        }

        //@abi action
        void closeclaim() {

        }

        //@abi action
        void adddoc() {

        }

        //@abi action
        void removedoc() {

        }

        //@abi action
        void addtx() {

        }

        //@abi action
        void removetx() {

        }

        //@abi action
        void addarb() {

        }

        //@abi action
        void removearb() {

        }

        //@abi action
        void addclmnt() {

        }

        //@abi action
        void removeclmnt() {

        }

        //@abi action
        void addresp() {

        }

        //@abi action
        void removeresp() {

        }

    private:
        //@abi table claim i64
        struct claim {
            uint64_t id;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( claim, (id) )
        };
        typedef eosio::multi_index< N(claim), claim > claim_index;

        //@abi table arbcase i64
        struct arbcase {
            uint64_t id;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( arbcase, (id) )
        };
        typedef eosio::multi_index< N(arbcase), arbcase > arbcase_index;

        //@abi table claimant i64
        struct claimant {
            account_name id;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( claimant, (id) )
        };
        typedef eosio::multi_index< N(claimant), claimant > claimant_index;

        //@abi table respondent i64
        struct respondent {
            account_name id;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( respondent, (id) )
        };
        typedef eosio::multi_index< N(respondent), respondent > respondent_index;

        //@abi table arbitrator i64
        struct arbitrator {
            account_name id;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( arbitrator, (id) )
        };
        typedef eosio::multi_index< N(arbitrator), arbitrator > arbitrator_index;

        //@abi table document i64
        struct document {
            uint64_t id;
            account_name owner;
            string description;
            string link;
            checksum256 hash_of_contents;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( document, (id)(owner)(description)(link)(hash_of_contents) )
        };
        typedef eosio::multi_index< N(document), document,
            indexed_by< N(byowner), const_mem_fun<document, account_name, &document::by_owner> >
            > document_index;

        //@abi table transaction i64
        struct transaction {
            uint64_t id;
            account_name owner;
            string description;
            string link;
            checksum256 tx_id;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( transaction, (id)(owner)(description)(link)(tx_id) )
        };
        typedef eosio::multi_index< N(transaction), transaction,
            indexed_by< N(byowner), const_mem_fun<transaction, account_name, &transaction::by_owner> >
            > transaction_index;

        //@abi table bondpayment i64
        struct bondpayment {
            uint64_t id;
            account_name owner;
            asset amount;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( transaction, (id)(owner)(amount) )
        };
        typedef eosio::multi_index< N(bondpayment), bondpayment,
            indexed_by< N(byowner), const_mem_fun<bondpayment, account_name, &bondpayment::by_owner> >
            > bondpayment_index;

        //@abi table bondowed i64
        struct bondowed {
            account_name id;
            asset amount;
            bool paid = false;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( transaction, (id)(amount)(paid) )
        };
        typedef eosio::multi_index< N(bondowed), bondowed > bondowed_index;

        //@abi table arbcasefee i64
        struct arbcasefee {
            uint64_t id;
            asset fee;
            bool current = false;
            uint64_t primary_key() const { return id; }
            bool by_current() const { return current; }
            EOSLIB_SERIALIZE( transaction, (id)(fee)(bond) )
        };
        typedef eosio::multi_index< N(arbcasefee), arbcasefee,
            indexed_by< N(byowner), const_mem_fun<arbcasefee, bool, &arbcasefee::by_current> >
            > arbcasefee_index;

        //@abi table arbcasebond i64
        struct arbcasebond {
            uint64_t id;
            asset bond;
            bool current = false;
            uint64_t primary_key() const { return id; }
            bool by_current() const { return current; }
            EOSLIB_SERIALIZE( transaction, (id)(fee)(bond) )
        };
        typedef eosio::multi_index< N(arbcasebond), arbcasebond,
            indexed_by< N(byowner), const_mem_fun<arbcasebond, bool, &arbcasebond::by_current> >
            > arbcasebond_index;

        //@abi table submittalfee i64
        struct submittalfee {
            asset fee;
            int64_t primary_key() const { return fee.amount; }
            EOSLIB_SERIALIZE( submittalfee, (fee) )
        };
        typedef eosio::singleton< N(submittalfee), submittalfee > submittalfee_index;

        typedef uint64_t id;
        typedef eosio::singleton<N(indexid), id>  index_id_index;

        id next_index_id(){
            index_id_index last_index_id(_self, _self);
            id lindexid = last_index_id.exists() ? last_index_id.get() + 1 : 0;
            last_index_id.set(lindexid,_self);
            return lindexid;
        }
};

EOSIO_ABI( arbitration,  )