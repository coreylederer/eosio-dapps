/**
 *  by Jon-Eric Cook
 */
#include <eosiolib/singleton.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <string>

using eosio::const_mem_fun;
using eosio::indexed_by;
using eosio::asset;
using std::string;

namespace controls {
    enum Monies {bond, fee, submittalfee, bondowed};
    enum Person {arbitrator, claimant, respondent};
    enum Item   {document, rejection, transaction};
    enum Entity {arbcase, claim};
}

class arbitration : public eosio::contract {
    public:
        explicit arbitration(action_name self) : contract(self) {}

        /**
         * In the functions below, entity_id can either be an arbcase id, a
         * claim id or _self. entity_id is being used as the scope during
         * table access.
         */ 

        /**
         * arbcase + claim + document + transaction + rejection + 
         * bond + fee + payment + arbitrator + claimant + respondent
        */
        template <typename T, typename U, typename G>
        bool exists(G entity_id, U item_id) {
            T table(_self, entity_id);
            return table.find(item_id) != table.end();
        }

        /**
         * arbcase + claim + arbitrator + claimant + respondent
         */
        template <typename T, typename U, typename G>
        bool add(G entity_id, U item_id, const account_name payer) {
            T table(_self, entity_id);
            table.emplace(payer, [&](auto& person) {
                person.id = item_id;
            });
            return true;
        }

        /**
         * document + transaction + rejection
         */ 
        template <typename T>
        bool add(const uint64_t entity_id, const uint64_t item_id,
                 const account_name owner, const string description, string link,
                 const checksum256 contents, const account_name payer) {
            T table(_self, entity_id);
            table.emplace(payer, [&](auto& person) {
                doc.id = item_id;
                doc.owner = owner;
                doc.description = description;
                doc.link = link;
                doc.contents = contents;
            });
            return true;
        }

        /**
         * bond + fee
         */ 
        template <typename T>
        bool add(const uint64_t entity_id, const uint64_t item_id,
                 const asset amount, const uint8_t current,
                 const account_name payer) {
            T table(_self, entity_id);
            table.emplace(payer, [&](auto& person) {
                doc.id = item_id;
                doc.amount = amount;
                doc.current = current;
            });
            return true;
        }

        /**
         * payment
         */ 
        template <typename T>
        bool add(const uint64_t entity_id, const uint64_t item_id,
                 const account_name owner, const asset amount,
                 const account_name payer) {
            T table(_self, entity_id);
            table.emplace(payer, [&](auto& pymnt) {
                pymnt.id = item_id;
                pymnt.owner = owner;
                pymnt.amount = amount;
            });
            return true;
        }

        /**
         * arbcase + claim + document + transaction + rejection + 
         * bond + fee + payment + arbitrator + claimant + respondent
        */
        template <typename T, typename U, typename G>
        bool remove(G entity_id, U item) {
            T table(_self, entity_id); 
            auto itr = table.find(item);
            table.erase(itr);
            return true;
        }

        /**
         * arbcase + claim
         */
        template <typename T>
        bool close(const uint64_t entity_id) {
            T table(_self, _self);
            auto itr = table.find(entity_id);
            table.modify(itr, 0, [&](auto& entity) {
                entity.closed = true;
            });
            return true;
        }

        /**
         * arbcase + claim
         */
        template <typename T>
        bool reopen(const uint64_t entity_id) {
            T table(_self, _self);
            auto itr = table.find(entity_id);
            table.modify(itr, 0, [&](auto& entity) {
                entity.closed = false;
            });
            return true;
        }

        /**
         * claim
         */
        bool reject(const uint64_t claim_id) {
            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);
            claims.modify(claims_itr, 0, [&](auto& entity) {
                entity.rejected = true;
            });
            return true;
        }

        /**
         * document + transaction
         */
        template <typename T>
        bool transfer_items(const uint64_t claim_id, const uint64_t arbcase_id,
                            const account_name payer) {
            T table(_self, claim_id);
            for(const auto& item : table) {
                if(!add<T>(arbcase_id, item.id, item.owner, item.description,
                    item.link, item.contents, payer)) {
                        return false;
                }
            }
            return true;
        }

        /**
         * bond + fee + payment
         */
        template <typename T>
        bool transfer_items(const uint64_t claim_id, const uint64_t arbcase_id,
                            const account_name payer) {
            T table(_self, claim_id);
            if (payment_index == typeid(T)) {
                for(const auto& item : table) {
                    if(!add<T>(arbcase_id, item.id, item.owner, item.amount, payer)) {
                            return false;
                    }
                }
            } else {
                for(const auto& item : table) {
                    if(!add<T>(arbcase_id, item.id, item.amount, item.current, payer)) {
                            return false;
                    }
                }
            }
            return true;
        }

        /**
         * bond + fee
         */
        template <typename T>
        bool flip_current(const uint64_t entity_id) {
            T table(_self, entity_id);
            if (table.end() != table.begin()) {
                auto current_index = table.get_index<N(bycurrent)>();
                auto currents_itr = current_index.find(1);
                table.modify(currents_itr, 0, [&](auto& f) {
                    f.current = 0;
                });
            }
            return true;
        }


        bool setsf(const asset amount, const account_name authority) {
            submittalfee_index sf(_self,_self);
            submittalfee new_submittalfee{amount};
            sf.set(new_submittalfee,authority);
            return true;
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

        //@abit action
        void setbond() {

        }

        //@abit action
        void setfee() {

        }

        //@abit action
        void setsubfee() {

        }

        //@abi action
        void setbondowed() {

        }

        //@abit action
        void paybond() {

        }

        //@abit action
        void payfee() {

        }

        //@abit action
        void paysubfee() {

        }

        //@abi action
        void paybondowed() {
            
        }

    private:
        //@abi table claim i64
        struct claim {
            uint64_t id;
            bool closed = false;
            bool rejected = false;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( claim, (id)(closed)(rejected) )
        };
        typedef eosio::multi_index< N(claim), claim > claim_index;

        //@abi table arbcase i64
        struct arbcase {
            uint64_t id;
            bool closed = false;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( arbcase, (id)(closed) )
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
            checksum256 contents;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( document, (id)(owner)(description)(link)(contents) )
        };
        typedef eosio::multi_index< N(document), document,
            indexed_by< N(byowner), const_mem_fun<document, account_name, &document::by_owner> >
            > document_index;

        //@abi table rejection i64
        struct rejection {
            uint64_t id;
            account_name owner;
            string description;
            string link;
            checksum256 contents;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( rejection, (id)(owner)(description)(link)(contents) )
        };
        typedef eosio::multi_index< N(rejection), rejection > rejection_index;

        //@abi table transaction i64
        struct transaction {
            uint64_t id;
            account_name owner;
            string description;
            string link;
            checksum256 contents;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( transaction, (id)(owner)(description)(link)(contents) )
        };
        typedef eosio::multi_index< N(transaction), transaction,
            indexed_by< N(byowner), const_mem_fun<transaction, account_name, &transaction::by_owner> >
            > transaction_index;

        //@abi table payment i64
        struct payment {
            uint64_t id;
            account_name owner;
            asset amount;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( transaction, (id)(owner)(amount) )
        };
        typedef eosio::multi_index< N(payment), payment,
            indexed_by< N(byowner), const_mem_fun<payment, account_name, &payment::by_owner> >
            > payment_index; 

        //@abi table fee i64
        struct fee {
            uint64_t id;
            asset amount;
            uint8_t current;
            uint64_t primary_key() const { return id; }
            uint8_t by_current() const { return current; }
            EOSLIB_SERIALIZE( transaction, (id)(amount)(current) )
        };
        typedef eosio::multi_index< N(fee), fee,
            indexed_by< N(bycurrent), const_mem_fun<fee, uint8_t, &fee::by_current> >
            > fee_index;

        //@abi table bond i64
        struct bond {
            uint64_t id;
            asset amount;
            uint8_t current;
            uint64_t primary_key() const { return id; }
            uint8_t by_current() const { return current; }
            EOSLIB_SERIALIZE( transaction, (id)(amount)(current) )
        };
        typedef eosio::multi_index< N(bond), bond,
            indexed_by< N(bycurrent), const_mem_fun<bond, uint8_t, &bond::by_current> >
            > bond_index;

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
            id lindexid = last_index_id.exists() ? last_index_id.get() + 1 : 1;
            last_index_id.set(lindexid,_self);
            return lindexid;
        }
};

EOSIO_ABI( arbitration,  )