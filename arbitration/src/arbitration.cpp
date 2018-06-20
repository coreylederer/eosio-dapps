/**
 *  by Jon-Eric Cook
 */
#include <eosiolib/singleton.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <string>

#define DEBUG
#include "logger.hpp"

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

        void validate_asset(const asset& quantity){
            eosio_assert(quantity.is_valid(), "ERROR: Not a valid asset.");
            eosio_assert(quantity.symbol == S(4,EOS), "ERROR: Only EOS tokens may be used.");
            eosio_assert(quantity.amount > 0,"ERROR: Asset amount must be greater than 0.");
        }

        /**
         * In the functions below, entity_id can either be an arbcase id, a
         * claim id or _self. entity_id is being used as the scope during
         * table access.
         */ 

        /**
         * document + transaction + rejection + 
         * bond + fee + payment + paymentdue + arbitrator + 
         * claimant + respondent
        */
        template <typename T, typename U>
        bool exists(const uint64_t entity_id, U item_id) {
            T table(_self, toname(entity_id));
            return table.find(item_id) != table.end();
        }

        /**
         * arbcase + claim
        */
        template <typename T>
        bool exists(const uint64_t entity_id) {
            T table(_self, _self);
            return table.find(entity_id) != table.end();
        }

        bool is_arbcase(const uint64_t arbcase_id) {
            return exists<arbcase_index>(arbcase_id);
        }

        bool is_claim(const uint64_t claim_id) {
            return exists<claim_index>(claim_id);
        }

        bool is_arbitrator(const uint64_t entity_id, const account_name arb) {
            return exists<arbitrator_index, account_name>(entity_id, arb);
        }

        bool is_claimant(const uint64_t entity_id, const account_name clmnt) {
            return exists<claimant_index, account_name>(entity_id, clmnt);
        }

        bool is_respondent(const uint64_t entity_id, const account_name rspndnt) {
            return exists<respondent_index, account_name>(entity_id, rspndnt);
        }

        bool is_document(const uint64_t entity_id, const uint64_t doc) {
            return exists<document_index, uint64_t>(entity_id, doc);
        }

        bool is_rejection(const uint64_t entity_id, const uint64_t rej) {
            return exists<rejection_index, uint64_t>(entity_id, rej);
        }

        bool is_transaction(const uint64_t entity_id, const uint64_t tx) {
            return exists<transaction_index, uint64_t>(entity_id, tx);
        }

        bool is_bond(const uint64_t entity_id, const uint64_t bnd) {
            return exists<bond_index, uint64_t>(entity_id, bnd);
        }

        bool is_fee(const uint64_t entity_id, const uint64_t f) {
            return exists<fee_index, uint64_t>(entity_id, f);
        }

        bool is_paymentdue(const uint64_t entity_id, const account_name id) {
            return exists<paymentdue_index, account_name>(entity_id, id);
        }

        template<typename T>
        bool is_owner(const uint64_t entity_id, const uint64_t item_id,
                      const account_name owner) {
            T table(_self, toname(entity_id));
            auto item = table.get(item_id);
            return item.owner == owner;
        }

        /**
         * arbcase + claim
         */
        template <typename T>
        void add(const uint64_t entity_id, const account_name payer) {
            T table(_self, _self);
            table.emplace(payer, [&](auto& entity) {
                entity.id = entity_id;
            });
        }

        /**
         * arbitrator + claimant + respondent
         */
        template <typename T>
        void add(const uint64_t entity_id, const account_name item_id,
                 const account_name payer) {
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& entity) {
                entity.id = item_id;
            });
        }

        /**
         * document + rejection + transaction
         */ 
        template <typename T>
        void add(const uint64_t entity_id, const uint64_t item_id, const account_name owner,
                 const string description, const string link, const checksum256 contents,
                 const account_name payer) {
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& item) {
                item.id = item_id;
                item.owner = owner;
                item.description = description;
                item.link = link;
                item.contents = contents;
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
                 const asset amount, const uint64_t current,
                 const account_name payer) {
            T table(_self, toname(entity_id));
            table.emplace(payer, [&](auto& item) {
                item.id = item_id;
                item.amount = amount;
                item.current = current;
            });
        }

        /**
         * arbcase + claim
        */
        template <typename T>
        void remove(const uint64_t entity_id) {
            T table(_self, _self); 
            auto itr = table.find(entity_id);
            table.erase(itr);
        }

        /**
         * document + transaction + rejection + bond + fee + payment +
         * paymentdue + arbitrator + claimant + respondent
        */
        template <typename T, typename U>
        void remove(const uint64_t entity_id, U item_id) {
            T table(_self, toname(entity_id)); 
            auto itr = table.find(item_id);
            table.erase(itr);
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

        void transfer_paymentsdue(const uint64_t claim_id, const uint64_t arbcase_id,
                                const account_name payer) {
            paymentdue_index paymentsdue(_self, toname(claim_id));
            for(const auto& item : paymentsdue) {
                add<paymentdue_index>(arbcase_id, item.id, item.amount, payer);
            }
        }

        void transfer_payments(const uint64_t claim_id, const uint64_t arbcase_id,
                                const account_name payer) {
            payment_index payments(_self, toname(claim_id));
            for(const auto& item : payments) {
                add<payment_index>(arbcase_id, item.id, item.owner, item.amount, payer);
            }
        }

        void transfer_documents(const uint64_t claim_id, const uint64_t arbcase_id,
                                const account_name payer) {
            document_index documents(_self, toname(claim_id));
            for(const auto& item : documents) {
                add<document_index>(arbcase_id, item.id, item.owner, item.description,
                                    item.link, item.contents, payer);
            }
        }

        void transfer_transactions(const uint64_t claim_id, const uint64_t arbcase_id,
                                const account_name payer) {
            transaction_index transactions(_self, toname(claim_id));
            for(const auto& item : transactions) {
                add<transaction_index>(arbcase_id, item.id, item.owner, item.description,
                                    item.link, item.contents, payer);
            }
        }

        void transfer_bonds(const uint64_t claim_id, const uint64_t arbcase_id,
                            const account_name payer) {
            bond_index bonds(_self, toname(claim_id));
                for(const auto& item : bonds) {
                    add<bond_index>(arbcase_id, item.id, item.amount, item.current, payer);
                }
        }

        void transfer_fees(const uint64_t claim_id, const uint64_t arbcase_id,
                            const account_name payer) {
            fee_index fees(_self, toname(claim_id));
                for(const auto& item : fees) {
                    add<fee_index>(arbcase_id, item.id, item.amount, item.current, payer);
                }
        }

        void flip_bond(const uint64_t entity_id) {
            bond_index bonds(_self, toname(entity_id));
            if (bonds.end() != bonds.begin()) {
                auto current_index = bonds.get_index<N(bycurrent)>();
                auto currents_itr = current_index.find(1);
                current_index.modify(currents_itr, 0, [&](auto& b) {
                    b.current = 0;
                });
            }
        }

        void flip_fee(const uint64_t entity_id) {
            fee_index fees(_self, toname(entity_id));
            if (fees.end() != fees.begin()) {
                auto current_index = fees.get_index<N(bycurrent)>();
                auto currents_itr = current_index.find(1);
                current_index.modify(currents_itr, 0, [&](auto& f) {
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
            add<arbcase_index>(arbcase_id, authority);
            eosio_assert(is_arbcase(arbcase_id),
            "ERROR: Something went wrong. The case could not be opened.");
            transfer_documents(claim_id, arbcase_id, authority);
            transfer_transactions(claim_id, arbcase_id, authority);
            transfer_bonds(claim_id, arbcase_id, authority);
            transfer_fees(claim_id, arbcase_id, authority);
            transfer_payments(claim_id, arbcase_id, authority);
            transfer_paymentsdue(claim_id, arbcase_id, authority);
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
            add<claim_index>(claim_id, payer);
            eosio_assert(is_claim(claim_id),
            "ERROR: Something went wrong. The case could not be opened.");
            add<claimant_index>(claim_id, payer);
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
                    const checksum256 contents) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_claimant(entity_id, owner) || is_respondent(entity_id, owner),
            "ERROR: You are not authorized to add a document.");
            require_auth(owner);
            const uint64_t doc_id = next_index_id();
            add<document_index>(entity_id, doc_id, owner, description,
                                link, contents, owner);
            eosio_assert(is_document(entity_id, doc_id), "ERROR: Document could not be added.");
            print("Document #", doc_id, " was successfully added.");
        }

        //@abi action
        // void removedoc(const uint64_t entity_id, const uint64_t doc_id, const account_name authority) {
        // }

        //@abi action
        void addrjctn(const uint64_t entity_id, const account_name owner,
                      const string description, const string link,
                      const checksum256 contents) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_arbitrator(entity_id, owner) || _self == owner,
            "ERROR: You are not authorized to add a rejection.");
            require_auth(owner);
            const uint64_t rejection_id = next_index_id();
            add<rejection_index>(entity_id, rejection_id, owner, description,
                                link, contents, owner);
            eosio_assert(is_rejection(entity_id, rejection_id), "ERROR: Document could not be added.");
            print("Rejection #", rejection_id, " was successfully added.");
        }

        //@abi action
        // void removerjctn() {
        // }

        //@abi action
        void addtx(const uint64_t entity_id, const account_name owner,
                   const string description, const string link,
                   const checksum256 tx_id) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_claimant(entity_id, owner) || is_respondent(entity_id, owner),
            "ERROR: You are not authorized to add a transaction.");
            require_auth(owner);
            const uint64_t txid = next_index_id();
            add<transaction_index>(entity_id, txid, owner, description,
                                   link, tx_id, owner);
            eosio_assert(is_transaction(entity_id, txid), "ERROR: transaction could not be added.");
            print("Transaction #", txid, " was successfully added.");
        }

        //@abi action
        // void removetx() {
        // }

        //@abi action
        void addarb(const uint64_t entity_id, const account_name arb, const account_name authority) {
            eosio_assert(_self == authority, "ERROR: Only ECAF can add an arbitrator to a case.");
            require_auth(authority);
            eosio_assert(is_arbcase(entity_id), "ERROR: Case does not exist.");
            eosio_assert(!is_arbitrator(entity_id, arb),
            "ERROR: Arbitrator has already been assigned to the specified case.");
            add<arbitrator_index>(entity_id, arb, _self);
            eosio_assert(is_arbitrator(entity_id, arb),
            "ERROR: Arbitrator could not be assigned to the specified case.");
            print("Arbitrator ", eosio::name{arb}, " was successfully assigned to Case #", entity_id, ".");
        }

        //@abi action
        // void removearb() {
        // }

        //@abi action
        void addclmnt(const uint64_t entity_id, const account_name clmnt, const account_name authority) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_arbitrator(entity_id, authority) || _self == authority,
            "ERROR: You are not authorized to add a claimant.");
            require_auth(authority);
            add<claimant_index>(entity_id, clmnt, authority);
            eosio_assert(is_claimant(entity_id, clmnt),
            "ERROR: Claimant could not be added.");
        }

        //@abi action
        // void removeclmnt() {
        // }

        //@abi action
        void addresp(const uint64_t entity_id, const account_name resp, const account_name authority) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_arbitrator(entity_id, authority) || _self == authority,
            "ERROR: You are not authorized to add a respondent.");
            require_auth(authority);
            add<respondent_index>(entity_id, resp, authority);
            eosio_assert(is_respondent(entity_id, resp),
            "ERROR: Respondent could not be added.");
        }
        
        //@abi action
        // void removeresp() {
        // }

        //@abit action
        void setbond(const uint64_t entity_id, const asset amount, const account_name authority) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_arbitrator(entity_id, authority) || _self == authority,
            "ERROR: You are not authorized to set the bond.");
            require_auth(authority);
            validate_asset(amount);
            flip_bond(entity_id);
            const uint64_t bond_id = next_index_id();
            add<bond_index>(entity_id,bond_id, amount, 1, authority);
            eosio_assert(is_bond(entity_id, bond_id),
            "ERROR: Bond could not be set.");
        }

        //@abit action
        void setfee(const uint64_t entity_id, const asset amount, const account_name authority) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_arbitrator(entity_id, authority) || _self == authority,
            "ERROR: You are not authorized to set the fee.");
            require_auth(authority);
            validate_asset(amount);
            flip_fee(entity_id);
            const uint64_t fee_id = next_index_id();
            add<fee_index>(entity_id,fee_id, amount, 1, authority);
            eosio_assert(is_fee(entity_id, fee_id),
            "ERROR: Fee could not be set.");
        }

        //@abit action
        void setsubfee(const asset amount, const account_name authority) {
            eosio_assert(_self == authority,
            "ERROR: You are not authorized to set the submittal fee.");
            require_auth(authority);
            validate_asset(amount);
            setsf(amount, authority);
        }

        //@abi action
        void setpymntdue(const uint64_t entity_id, const account_name item_id,
                         const asset amount, const account_name authority) {
            eosio_assert(is_arbcase(entity_id) || is_claim(entity_id), "ERROR: Neither a case or claim.");
            eosio_assert(is_arbitrator(entity_id, authority) || _self == authority,
            "ERROR: You are not authorized to set the payment due.");
            require_auth(authority);
            validate_asset(amount);
            add<paymentdue_index>(entity_id, item_id, amount, authority);
            eosio_assert(is_paymentdue(entity_id, item_id),
            "ERROR: Payment due could not be set.");
        }

        //@abit action
        // void paypymntdue() {
        // }

        //@abit action
        // void paysubfee() {
        // }

        // void transferhandler() {
        // }

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
            EOSLIB_SERIALIZE( payment, (id)(owner)(amount) )
        };
        typedef eosio::multi_index< N(payment), payment,
            indexed_by< N(byowner), const_mem_fun<payment, account_name, &payment::by_owner> >
            > payment_index; 

        //@abi table paymentdue i64
        struct paymentdue {
            account_name id;
            asset amount;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( paymentdue, (id)(amount) )
        };
        typedef eosio::multi_index< N(paymentdue), paymentdue > paymentdue_index; 

        //@abi table fee i64
        struct fee {
            uint64_t id;
            asset amount;
            uint64_t current;
            uint64_t primary_key() const { return id; }
            uint64_t by_current() const { return current; }
            EOSLIB_SERIALIZE( fee, (id)(amount)(current) )
        };
        typedef eosio::multi_index< N(fee), fee,
            indexed_by< N(bycurrent), const_mem_fun<fee, uint64_t, &fee::by_current> >
            > fee_index;

        //@abi table bond i64
        struct bond {
            uint64_t id;
            asset amount;
            uint64_t current;
            uint64_t primary_key() const { return id; }
            uint64_t by_current() const { return current; }
            EOSLIB_SERIALIZE( bond, (id)(amount)(current) )
        };
        typedef eosio::multi_index< N(bond), bond,
            indexed_by< N(bycurrent), const_mem_fun<bond, uint64_t, &bond::by_current> >
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

EOSIO_ABI( arbitration, (opencase)(closecase)(openclaim)(closeclaim)(rejectclaim)
                        (adddoc)(addrjctn)(addtx)(addarb)(addclmnt)(addresp)(setbond)
                        (setfee)(setsubfee)(setpymntdue) )