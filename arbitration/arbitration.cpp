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

        bool is_arbcase(const uint64_t arbcase_id) {
            return exists<arbcase_index, account_name, uint64_t>(_self, arbcase_id);
        }

        bool is_claim(const uint64_t claim_id) {
            return exists<claim_index, account_name, uint64_t>(_self, claim_id);
        }

        bool is_arbitrator(const uint64_t entity_id, const account_name arb) {
            return exists<arbitrator_index, uint64_t, account_name>(entity_id, arb);
        }

        bool is_claimant(const uint64_t entity_id, const account_name clmnt) {
            return exists<claimant_index, uint64_t, account_name>(entity_id, clmnt);
        }

        bool is_respondent(const uint64_t entity_id, const account_name rspndnt) {
            return exists<respondent_index, uint64_t, account_name>(entity_id, rspndnt);
        }

        bool is_document(const uint64_t entity_id, const uint64_t doc) {
            return exists<document_index, uint64_t, uint64_t>(entity_id, doc);
        }

        bool is_rejection(const uint64_t entity_id, const uint64_t rej) {
            return exists<rejection_index, uint64_t, uint64_t>(entity_id, rej);
        }

        bool is_transaction(const uint64_t entity_id, const uint64_t tx) {
            return exists<transaction_index, uint64_t, uint64_t>(entity_id, tx);
        }

        template<typename T>
        bool is_owner(const uint64_t entity_id, const uint64_t item_id,
                      const account_name owner) {
            T table(_self, toname(entity_id));
            auto item = table.get(item_id);
            return item.owner == owner;
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
        void add(const uint64_t entity_id, const uint64_t item_id,
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
        }

       /**
         * transaction
         */ 
        template <typename T>
        void add(const uint64_t entity_id, const uint64_t item_id, const account_name owner,
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
        }

        /**
         * payment
         */ 
        template <typename T>
        void add(const uint64_t entity_id, const uint64_t item_id,
                 const account_name owner, const asset amount,
                 const account_name payer) {
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& pymnt) {
                pymnt.id = item_id;
                pymnt.owner = owner;
                pymnt.amount = amount;
            });
        }

        /**
         * paymentdue
         */ 
        template <typename T>
        void add(const uint64_t entity_id, const account_name item_id,
                 const asset amount, const account_name payer) {
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& pymntdue) {
                pymntdue.id = item_id;
                pymntdue.amount = amount;
            });
        }

        /**
         * bond + fee
         */ 
        template <typename T>
        void add(const uint64_t entity_id, const uint64_t item_id,
                 const asset amount, const uint8_t current,
                 const account_name payer) {
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& item) {
                item.id = item_id;
                item.amount = amount;
                item.current = current;
            });
        }

        /**
         * arbcase + claim + document + transaction + rejection + 
         * bond + fee + payment + paymentdue + arbitrator + claimant + 
         * respondent
        */
        template <typename T, typename G, typename U>
        void remove(G entity_id, U item_id) {
            if (typeid(G) == typeid(account_name)) {
                T table(_self, entity_id); 
                auto itr = table.find(item_id);
                table.erase(itr);
            } else {
                T table(_self, toname(entity_id)); 
                auto itr = table.find(item_id);
                table.erase(itr);
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
        void transfer_items(const uint64_t claim_id, const uint64_t arbcase_id,
                            const account_name payer) {
            T table(_self, toname(claim_id));
            if (payment_index == typeid(T)) {
                for(const auto& item : table) {
                    add<T>(arbcase_id, item.id, item.owner, item.amount, payer);
                }
            } else if (paymentdue_index == typeid(T)) {
                for(const auto& item : table) {
                    add<T>(arbcase_id, item.id, item.amount, payer);
                }
            } else if (document_index == typeid(T)) {
                for(const auto& item : table) {
                    add<T>(arbcase_id, item.id, item.owner, item.description,
                           item.link, item.hash_of_contents, payer);
                }
            } else if (transaction_index == typeid(T)) {
                for(const auto& item : table) {
                    add<T>(arbcase_id, item.id, item.owner, item.description,
                           item.link, item.tx_id, payer);
                    }
                }
            } else if (bond_index == typeid(T) || fee_index == typeid(T)) {
                for(const auto& item : table) {
                    add<T>(arbcase_id, item.id, item.amount, item.current, payer);
                }
            }
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
        }

        //@abi action
        void opencase(const uint64_t claim_id, const account_name authority) {
            eosio_assert(_self == authority, "ERROR: Only ECAF can open a case.");
            require_auth(authority);
            eosio_assert(is_claim(claim_id), "ERROR: Claim does not exist.");
            const uint64_t arbcase_id = next_index_id();
            add<arbcase_index, account_name, uint64_t>(_self, arbcase_id, authority);
            eosio_assert(is_arbcase(arbcase_id),
            "ERROR: Something went wrong. The case could not be opened.");
            transfer_items<document_index>(claim_id, arbcase_id, authority);
            transfer_items<transaction_index>(claim_id, arbcase_id, authority);
            transfer_items<bond_index>(claim_id, arbcase_id, authority);
            transfer_items<fee_index>(claim_id, arbcase_id, authority);
            transfer_items<payment_index>(claim_id, arbcase_id, authority);
            transfer_items<paymentdue_index>(claim_id, arbcase_id, authority);
            print("Case #", arbcase_id, " was successfully opened.");
        }

        //@abi action
        void closecase(const uint64_t arbcase_id, const account_name authority) {
            eosio_assert(is_arbcase(arbcase_id), "ERROR: Case does not exist.");
            eosio_assert(is_arbitrator(arbcase_id, authority),
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
            eosio_assert(is_claim(claim_id),
            "ERROR: Something went wrong. The case could not be opened.");
            add<claimant_index, uint64_t, account_name>(claim_id, payer, payer);
            eosio_assert(is_claimant(claim_id, payer),
            "ERROR: Something went wrong. You could not be added as a claimant on the claim.");
            print("Claim #", claim_id, " was successfully opened.");
        }

        //@abi action
        void closeclaim(const uint64_t claim_id, const account_name authority) {
            eosio_assert(_self == authority, "ERROR: Only ECAF can close a claim.");
            eosio_assert(is_claim(claim_id), "ERROR: Claim does not exist.");
            require_auth(authority);
            close<claim_index>(claim_id);
            print("Claim #", claim_id, " was successfully closed.");
        }

        //@abi action
        void rejectclaim(const uint64_t claim_id, const account_name authority) {
            eosio_assert(_self == authority, "ERROR: Only ECAF can reject a claim.");
            require_auth(authority);
            eosio_assert(is_claim(claim_id), "ERROR: Claim does not exist.");
            reject(claim_id);
            print("Claim #", claim_id, " was successfully rejected.");
        }

        //@abi action
        void adddoc(const uint64_t entity_id, const account_name owner,
                    const string description, const string link,
                    const checksum256 hash_of_contents) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_claimant(entity_id, owner) || is_respondent(entity_id, owner),
            "ERROR: You are not authorized to add a document.")
            const uint64_t doc_id = next_index_id();
            add<document_index>(entity_id, doc_id, owner, description,
                                link, hash_of_contents, owner);
            eosio_assert(is_document(entity_id, doc_id), "ERROR: Document could not be added.");
            print("Document #", doc_id, " was successfully added.");
        }

        //@abi action
        void removedoc(const uint64_t entity_id, const uint64_t doc_id, const account_name authority) {

        }

        //@abi action
        void addrjctn(const uint64_t entity_id, const account_name owner,
                      const string description, const string link,
                      const checksum256 hash_of_contents) {
            print("Rejection #", rejection_id, " was successfully added.");
        }

        //@abi action
        void removerjctn() {

        }

        //@abi action
        void addtx(const uint64_t entity_id, const account_name owner,
                   const string description, const string link,
                   const checksum256 tx_id) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_claimant(entity_id, owner) || is_respondent(entity_id, owner),
            "ERROR: You are not authorized to add a transaction.")
            const uint64_t txid = next_index_id();
            add<transaction_index>(entity_id, txid, owner, description,
                                   link, tx_id, owner);
            eosio_assert(is_transaction(entity_id, txid), "ERROR: transaction could not be added.");
            print("Transaction #", txid, " was successfully added.");
        }

        //@abi action
        void removetx() {

        }

        //@abi action
        void addarb(const uint64_t entity_id, const account_name arb, const account_name authority) {
            eosio_assert(_self == authority, "ERROR: Only ECAF can add an arbitrator to a case.");
            require_auth(authority);
            eosio_assert(is_arbcase(entity_id), "ERROR: Case does not exist.");
            eosio_assert(!is_arbitrator(entity_id, arb),
            "ERROR: Arbitrator has already been assigned to the specified case.");
            add<arbitrator_index, uint64_t, account_name>(entity_id, arb, _self);
            eosio_assert(is_arbitrator(entity_id, arb),
            "ERROR: Arbitrator could not be assigned to the specified case.");
            print("Arbitrator ", eosio::name{arb}, " was successfully assigned to Case #", entity_id, ".");
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
        void setpymntdue() {

        }

        //@abit action
        void paypymntdue() {

        }

        //@abit action
        void paysubfee() {

        }

        void transferhandler() {

        }

    private:
        //@abi table claim i64
        struct claim {
            uint64_t id;
            bool closed = false;
            bool rejected = false;
            bool dropped = false;
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