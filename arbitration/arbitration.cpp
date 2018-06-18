/**
 *  by Jon-Eric Cook
 */
#include <eosiolib/singleton.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <string>

using eosio::const_mem_fun;
using eosio::indexed_by;
using eosio::print;
using eosio::asset;
using std::string;

class arbitration : public eosio::contract {
    public:
        explicit arbitration(action_name self) : contract(self) {}

        /**
         * Converts a unint64_t to a name. The returned value is used
         * as the scope of a multi index table.
         */
        eosio::name toname(uint64_t value) {
            eosio::name entity_id;
            entity_id.value = value;
            return entity_id;
        }

        /**
         * In the functions below, entity_id can either be an arbcase id, a
         * claim id or _self. entity_id is being used as the scope during
         * table access.
         */ 

        /**
         * arbcase + claim + document + transaction + rejection + 
         * bond + fee + payment + paymentdue + arbitrator + 
         * claimant + respondent
        */
        template <typename T, typename G, typename U>
        bool exists(G entity_id, U item_id) {
            if (typeid(G) == typeid(account_name)) {
                T table(_self, entity_id);
                return table.find(item_id) != table.end();
            } else {
                T table(_self, toname(entity_id));
                return table.find(item_id) != table.end();
            }
        }

        /**
         * arbcase + claim + arbitrator + claimant + respondent
         */
        template <typename T, typename G, typename U>
        void add(G entity_id, U item_id, const account_name payer) {
            if (typeid(G) == typeid(account_name)) {
                T table(_self, entity_id);
                table.emplace(payer, [&](auto& entity) {
                    entity.id = item_id;
                });
            } else {
                T table(_self, toname(entity_id));
                table.emplace(payer, [&](auto& entity) {
                    entity.id = item_id;
                });
            }
        }

        /**
         * document + rejection
         */ 
        template <typename T>
        bool add(const uint64_t entity_id, const uint64_t item_id,
                 const account_name owner, const string description, const string link,
                 const checksum256 hash_of_contents, const account_name payer) {
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& item) {
                item.id = item_id;
                item.owner = owner;
                item.description = description;
                item.link = link;
                item.hash_of_contents = hash_of_contents;
            });
            return true;
        }

       /**
         * transaction
         */ 
        template <typename T>
        bool add(const uint64_t entity_id, const uint64_t item_id, const account_name owner,
                 const string description, const string link, const checksum256 tx_id,
                 const account_name payer) {
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& item) {
                item.id = item_id;
                item.owner = owner;
                item.description = description;
                item.link = link;
                item.tx_id = tx_id;
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
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& pymnt) {
                pymnt.id = item_id;
                pymnt.owner = owner;
                pymnt.amount = amount;
            });
            return true;
        }

        /**
         * paymentdue
         */ 
        template <typename T>
        bool add(const uint64_t entity_id, const account_name item_id,
                 const asset amount, const account_name payer) {
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& pymntdue) {
                pymntdue.id = item_id;
                pymntdue.amount = amount;
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
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& item) {
                item.id = item_id;
                item.amount = amount;
                item.current = current;
            });
            return true;
        }

        /**
         * arbcase + claim + document + transaction + rejection + 
         * bond + fee + payment + paymentdue + arbitrator + claimant + 
         * respondent
        */
        template <typename T, typename G, typename U>
        bool remove(G entity_id, U item_id) {
            if (typeid(G) == typeid(account_name)) {
                T table(_self, entity_id); 
                auto itr = table.find(item_id);
                table.erase(itr);
                return true;
            } else {
                T table(_self, toname(entity_id)); 
                auto itr = table.find(item_id);
                table.erase(itr);
                return true;
            }
        }

        /**
         * arbcase + claim
         */
        template <typename T>
        void close(const uint64_t entity_id) {
            T table(_self, _self);
            auto itr = table.find(entity_id);
            table.modify(itr, 0, [&](auto& entity) {
                entity.closed = true;
            });
        }

        /**
         * arbcase + claim
         */
        template <typename T>
        void reopen(const uint64_t entity_id) {
            T table(_self, _self);
            auto itr = table.find(entity_id);
            table.modify(itr, 0, [&](auto& entity) {
                entity.closed = false;
            });
        }

        /**
         * claim
         */
        void reject(const uint64_t claim_id) {
            claim_index claims(_self, _self);
            auto claims_itr = claims.find(claim_id);
            claims.modify(claims_itr, 0, [&](auto& entity) {
                entity.rejected = true;
            });
        }

        /**
         * document + transaction + rejection + bond + fee + payment + paymentdue
         */
        template <typename T>
        bool transfer_items(const uint64_t claim_id, const uint64_t arbcase_id,
                            const account_name payer) {
            T table(_self, toname(claim_id));
            if (payment_index == typeid(T)) {
                for(const auto& item : table) {
                    if(!add<T>(arbcase_id, item.id, item.owner, item.amount, payer)) {
                        return false;
                    }
                }
            } else if (paymentdue_index == typeid(T)) {
                for(const auto& item : table) {
                    if(!add<T>(arbcase_id, item.id, item.amount, payer)) {
                        return false;
                    }
                }
            } else if (document_index == typeid(T)) {
                for(const auto& item : table) {
                    if(!add<T>(arbcase_id, item.id, item.owner, item.description,
                            item.link, item.hash_of_contents, payer)) {
                                return false;
                    }
                }
            } else if (transaction_index == typeid(T)) {
                for(const auto& item : table) {
                    if(!add<T>(arbcase_id, item.id, item.owner, item.description,
                            item.link, item.tx_id, payer)) {
                        return false;
                    }
                }
            } else if (bond_index == typeid(T) || fee_index == typeid(T)) {
                for(const auto& item : table) {
                    if(!add<T>(arbcase_id, item.id, item.amount, item.current, payer)) {
                        return false;
                    }
                }
            } else {
                return false;
            }
            return true;
        }

        /**
         * bond + fee
         */
        template <typename T>
        void flip_current(const uint64_t entity_id) {
            T table(_self, toname(entity_id));
            if (table.end() != table.begin()) {
                auto current_index = table.get_index<N(bycurrent)>();
                auto currents_itr = current_index.find(1);
                table.modify(currents_itr, 0, [&](auto& f) {
                    f.current = 0;
                });
            }
        }

        /**
         * submittalfee
         */
        bool setsf(const asset amount, const account_name authority) {
            submittalfee_index sf(_self,_self);
            submittalfee new_submittalfee{amount};
            sf.set(new_submittalfee,authority);
            return true;
        }

        //@abi action
        void opencase(const uint64_t claim_id, const account_name authority) {
            eosio_assert(_self == authority,
            "ERROR: Only ECAF can open a case.");
            require_auth(authority);
            eosio_assert(exists<claim_index, account_name, uint64_t>(_self, claim_id),
            "ERROR: Claim does not exist.");
            const uint64_t arbcase_id = next_index_id();
            add<arbcase_index, account_name, uint64_t>(_self, arbcase_id, authority);
            eosio_assert(exists<arbcase_index>(_self, arbcase_id),
            "ERROR: Something went wrong. The case could not be opened.");
            eosio_assert(transfer_items<document_index>(claim_id, arbcase_id, authority),
            "ERROR: Claim documents could not be transfered.");
            eosio_assert(transfer_items<transaction_index>(claim_id, arbcase_id, authority),
            "ERROR: Claim transactions could not be transfered.");
            eosio_assert(transfer_items<bond_index>(claim_id, arbcase_id, authority),
            "ERROR: Claim bonds could not be transfered.");
            eosio_assert(transfer_items<fee_index>(claim_id, arbcase_id, authority),
            "ERROR: Claim fees could not be transfered.");
            eosio_assert(transfer_items<payment_index>(claim_id, arbcase_id, authority),
            "ERROR: Claim payments could not be transfered.");
            eosio_assert(transfer_items<paymentdue_index>(claim_id, arbcase_id, authority),
            "ERROR: Claim payments due could not be transfered.");
            print("Case #", arbcase_id, " was successfully opened.");
        }

        //@abi action
        void closecase(const uint64_t arbcase_id, const account_name authority) {
            eosio_assert(exists<arbitrator_index, uint64_t, account_name>(arbcase_id, authority),
            "ERROR: You are not an arbitrator on this case.");
            require_auth(authority);
            close<arbcase_index>(arbcase_id);
            print("Case #", arbcase_id, " was successfully closed.");
        }

        //@abi action
        void openclaim(const account_name payer) {
            // TODO: make sure they paid the submittal fee
            require_auth(payer);
            const uint64_t claim_id = next_index_id();
            add<claim_index, account_name, uint64_t>(_self, claim_id, payer);
            eosio_assert(exists<claim_index, account_name, uint64_t>(_self, claim_id),
            "ERROR: Something went wrong. The case could not be opened.");
            print("Claim #", claim_id, " was successfully opened.");
        }

        // TODO: how to close claim if more than one claimant?

        //@abi action
        void rejectclaim(const uint64_t claim_id, const account_name authority) {
            eosio_assert(_self == authority,
            "ERROR: Only ECAF can reject a claim.");
            require_auth(authority);
            eosio_assert(exists<claim_index, account_name, uint64_t>(_self, claim_id),
            "ERROR: Claim does not exist.");
            reject(claim_id);
            print("Claim #", claim_id, " was successfully rejected.");
        }

        //@abi action
        void adddocument() {

        }

        //@abi action
        void removedocument() {

        }

        //@abi action
        void addrejection() {

        }

        //@abi action
        void removerejection() {

        }

        //@abi action
        void addtransaction() {

        }

        //@abi action
        void removetransaction() {

        }

        //@abi action
        void addarbitrator() {

        }

        //@abi action
        void removearbitrator() {

        }

        //@abi action
        void addclaimant() {

        }

        //@abi action
        void removeclaimant() {

        }

        //@abi action
        void addrespondent() {

        }

        //@abi action
        void removerespondent() {

        }

        //@abit action
        void setbond() {

        }

        //@abit action
        void setfee() {

        }

        //@abit action
        void setssubmittalfee() {

        }

        //@abi action
        void setpaymentdue() {

        }

        //@abit action
        void paypaymentdue() {

        }

        //@abit action
        void paysubmittalfee() {

        }

        void transferhandler() {

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
            checksum256 hash_of_contents;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( document, (id)(owner)(description)(link)(hash_of_contents) )
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
            checksum256 hash_of_contents;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( rejection, (id)(owner)(description)(link)(hash_of_contents) )
        };
        typedef eosio::multi_index< N(rejection), rejection > rejection_index;

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

        //@abi table paymentdue i64
        struct paymentdue {
            account_name id;
            asset amount;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( transaction, (id)(owner)(amount) )
        };
        typedef eosio::multi_index< N(paymentdue), paymentdue > paymentdue_index; 

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