/**
 *  by Jon-Eric Cook
 */

#include <eosiolib/singleton.hpp>
#include <eosiolib/currency.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>

using eosio::const_mem_fun;
using eosio::indexed_by;
using eosio::currency;
using eosio::print;
using eosio::asset;

class arbitration : public eosio::contract {
    public:
        explicit arbitration(action_name self) : contract(self) {}

        eosio::name toname(uint64_t value) {
            eosio::name filing_id;
            filing_id.value = value;
            return filing_id;
        }

        /**
         * filing + ecafarb + balance + subfeecredit
         */
        template<typename T, typename U>
        bool exists(U id) {
            T table(_self, _self);
            return table.find(id) != table.end();
        }

        /**
         * document + transaction + rejection + bond + fee +
         * payment + arbitrator + claimant + respondent
        */
        template <typename T, typename U>
        bool exists(const uint64_t filing_id, U item_id) {
            T table(_self, toname(filing_id));
            return table.find(item_id) != table.end();
        }

        bool is_filing(const uint64_t filing_id) {
            return exists<filing_index, uint64_t>(filing_id);
        }

        bool is_ecafarb(const account_name arb) {
            return exists<ecafarb_index, account_name>(arb);
        }

        bool is_balance(const account_name user) {
            return exists<balance_index, account_name>(user);
        }

        bool is_subfeecredit(const account_name user) {
            return exists<subfeecredit_index, account_name>(user);
        }

        bool is_suspended(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto f = filings.get(filing_id);
            return f.suspended == 1;
        }

        bool is_rejected(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto f = filings.get(filing_id);
            return f.rejected == 1;
        }

        bool is_dropped(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto f = filings.get(filing_id);
            return f.dropped == 1;
        }

        bool is_closed(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto f = filings.get(filing_id);
            return f.closed == 1;
        }

        bool is_claim(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto f = filings.get(filing_id);
            return f.Claim == 1;
        }

        bool is_case(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto f = filings.get(filing_id);
            return f.Case == 1;
        }

        bool is_arbitrator(const uint64_t filing_id, const account_name arb) {
            return exists<arbitrator_index, account_name>(filing_id, arb);
        }

        bool is_claimant(const uint64_t filing_id, const account_name clmnt) {
            return exists<claimant_index, account_name>(filing_id, clmnt);
        }

        bool is_respondent(const uint64_t filing_id, const account_name rspndnt) {
            return exists<respondent_index, account_name>(filing_id, rspndnt);
        }

        bool is_document(const uint64_t filing_id, const uint64_t doc) {
            return exists<document_index, uint64_t>(filing_id, doc);
        }

        bool is_rejection(const uint64_t filing_id, const uint64_t rej) {
            return exists<rejection_index, uint64_t>(filing_id, rej);
        }

        bool is_transaction(const uint64_t filing_id, const uint64_t tx) {
            return exists<transaction_index, uint64_t>(filing_id, tx);
        }

        bool is_bond(const uint64_t filing_id, const uint64_t bnd) {
            return exists<bond_index, uint64_t>(filing_id, bnd);
        }

        bool is_fee(const uint64_t filing_id, const uint64_t f) {
            return exists<fee_index, uint64_t>(filing_id, f);
        }

        bool is_payment(const uint64_t filing_id, const uint64_t pymnt) {
            return exists<payment_index, uint64_t>(filing_id, pymnt);
        }

        /**
         * document + transaction
         */   
        template<typename T>
        bool is_verified(const uint64_t filing_id, const uint64_t item_id) {
            T table(_self, toname(filing_id));
            auto item = table.get(item_id);
            return item.confirmed_by_owner;
        }

        /**
         * document + transaction + payment
         */   
        template<typename T>
        bool is_owner(const uint64_t filing_id, const uint64_t item_id,
                      const account_name owner) {
            T table(_self, toname(filing_id));
            auto item = table.get(item_id);
            return item.owner == owner;
        }

        void validate_asset(const asset quantity){
            eosio_assert(quantity.symbol == S(4,EOS), "ERROR: Only EOS tokens may be used." );
            eosio_assert(quantity.is_valid(), "ERROR: Not a valid asset.");
            eosio_assert(quantity.amount > 0, "ERROR: Amount must be greater than zero.");
        }

        /**
         * document + transaction
         */        
        template<typename T>
        void verify(const uint64_t filing_id, const uint64_t item_id,
                    const account_name owner) {
            T table(_self, toname(filing_id));
            auto itr = table.find(item_id);
            table.modify(itr, _self, [&](auto& item) {
                item.confirmed_by_owner = true;
            }); 
        }

        /**
         * filing + ecafarb
         */
        template<typename T, typename U>
        void add(U id) {
            T table(_self, _self);
            table.emplace(_self, [&](auto& item) {
                item.id = id;
            });
        }

        /**
         * arbitrator + claimant + respondent
         */
        template <typename T>
        void add(const uint64_t filing_id, const account_name person_id) {
            T table(_self, toname(filing_id));
            table.emplace(_self, [&](auto& p) {
                p.id = person_id;
            });
        }

        /**
         * document + rejection + transaction
         */ 
        template <typename T>
        void add(const uint64_t filing_id, const uint64_t id,
                 const account_name owner, const checksum256 contents) {
            T table(_self, toname(filing_id));
            table.emplace(_self, [&](auto& item) {
                item.id = id;
                item.owner = owner;
                item.contents = contents;
            });
        }

        /**
         * payment
         */
        void add_payment(const uint64_t filing_id, const uint64_t id,
                 const account_name owner, const asset amount) {
            payment_index payments(_self, toname(filing_id));
            payments.emplace(_self, [&](auto& pymnt) {
                pymnt.id = id;
                pymnt.owner = owner;
                pymnt.amount = amount;
            });
        }

        /**
         * bond + fee
         */ 
        template <typename T>
        void add(const uint64_t filing_id, const uint64_t id,
                 const asset amount) {
            T table(_self, toname(filing_id));
            table.emplace(_self, [&](auto& item) {
                item.id = id;
                item.amount = amount;
            });
        }

        /**
         * filing
         */
        void suspend(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, _self, [&](auto& f) {
                f.suspended = 1;
            });
        }

        /**
         * filing
         */
        void unsuspend(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, _self, [&](auto& f) {
                f.suspended = 0;
            });
        }

        /**
         * filing
         */
        void reject(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, _self, [&](auto& f) {
                f.rejected = 1;
            });
        }

        /**
         * filing
         */
        void drop(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, _self, [&](auto& f) {
                f.dropped = 1;
            });
        }

        /**
         * filing
         */
        void undrop(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, _self, [&](auto& f) {
                f.dropped = 0;
            });
        }

        /**
         * filing
         */
        void close(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, _self, [&](auto& f) {
                f.closed = 1;
            });
        }

        /**
         * filing
         */
        void unclose(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, _self, [&](auto& f) {
                f.closed = 0;
            });
        }

        /**
         * filing
         */
        void setasclaim(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, _self, [&](auto& f) {
                f.Claim = 1;
            });
        }

        /**
         * filing
         */
        void setascase(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, _self, [&](auto& f) {
                f.Claim = 0;
                f.Case = 1;
            });
        }

        void flip_bond(const uint64_t entity_id) {
            bond_index bonds(_self, toname(entity_id));
            if (bonds.end() != bonds.begin()) {
                auto current_index = bonds.get_index<N(bycurrent)>();
                auto currents_itr = current_index.find(1);
                current_index.modify(currents_itr, _self, [&](auto& b) {
                    b.current = 0;
                });
            }
        }

        void flip_fee(const uint64_t entity_id) {
            fee_index fees(_self, toname(entity_id));
            if (fees.end() != fees.begin()) {
                auto current_index = fees.get_index<N(bycurrent)>();
                auto currents_itr = current_index.find(1);
                current_index.modify(currents_itr, _self, [&](auto& f) {
                    f.current = 0;
                });
            }
        }

        void setsf(const asset amount) {
            submittalfee_index sf(_self,_self);
            submittalfee new_submittalfee{amount};
            sf.set(new_submittalfee,_self);
        }

        void settopaid(const uint64_t filing_id, const uint64_t item_id,
                       const account_name user) {
            payment_index payments(_self, _self);
        }

        bool enough_for_payment(const uint64_t filing_id, const uint64_t item_id,
                                const account_name user) {
            payment_index payments(_self, toname(filing_id));
            auto pymnt = payments.get(item_id);
            balance_index balances(_self, _self);
            auto b = balances.get(user);
            return b.amount >= pymnt.amount;
        }

        bool enough_for_subfee(const account_name user) {
            submittalfee_index submittalfees(_self, _self);
            auto sf = submittalfees.get();
            balance_index balances(_self, _self);
            auto b = balances.get(user);
            return b.amount >= sf.amount;
        }

        void add_balance(const account_name user, const asset amount) {
            balance_index balances(_self, _self);
            if (is_balance(user)) {
                auto b_itr = balances.find(user);
                balances.modify(b_itr, _self, [&](auto& b) {
                    b.amount += amount;
                });
            } else {
                balances.emplace(_self, [&](auto& b) {
                    b.id = user;
                    b.amount = amount;
                });
            }
        }

        void sub_balance(const account_name user, const asset amount) {
            balance_index balances(_self, _self);
            auto b_itr = balances.find(user);
            if (b_itr->amount == amount) {
                balances.erase(b_itr);
            } else {
                balances.modify(b_itr, _self, [&](auto& b) {
                    b.amount -= amount;
                });  
            }
        }

        void increment_sfcredit(const account_name user) {
            subfeecredit_index subfeecredits(_self, _self);
            auto sfcredit_itr = subfeecredits.find(user);
            if (is_subfeecredit(user)) {
                subfeecredits.modify(sfcredit_itr, _self, [&](auto& sfc) {
                    sfc.credits++;
                });
            } else {
                subfeecredits.emplace(_self, [&](auto& sfc) {
                    sfc.id = user;
                    sfc.credits = 1;
                });
            }
        }

        void decrement_sfcredit(const account_name user) {
            subfeecredit_index subfeecredits(_self, _self);
            auto sfcredit_itr = subfeecredits.find(user);
            if (sfcredit_itr->credits > 1) {
                subfeecredits.modify(sfcredit_itr, _self, [&](auto& sfc) {
                    sfc.credits--;
                });
            } else {
                subfeecredits.erase(sfcredit_itr);
            }
        }

        asset get_sf() {
            submittalfee_index submittalfees(_self, _self);
            return submittalfees.get().amount;
        }

        asset get_ad(const uint64_t filing_id, const uint64_t item_id) {
            payment_index payments(_self, toname(filing_id));
            return payments.get(item_id).amount;
        }

        //@abi action
        void createclaim(const account_name authority) {
            eosio_assert(is_ecafarb(authority) || _self == authority,
            "ERROR: You are not authorized to create a claim.");
            require_auth(authority);
            const uint64_t id = next_index_id();
            add<filing_index, uint64_t>(id);
            eosio_assert(is_filing(id), "ERROR: Filing could not be created.");
            setasclaim(id);
            eosio_assert(is_claim(id), "ERROR: Filing could be set as claim.");
            print("Claim #", id, " was successfully created.");
        }

        //@abi action
        void opencase(const uint64_t filing_id, const account_name authority) {
            eosio_assert(is_ecafarb(authority) || _self == authority,
            "ERROR: You are not authorized to open a case.");
            require_auth(authority);
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_claim(filing_id), "ERROR: Claim does not exist.");
            setascase(filing_id);
            eosio_assert(is_case(filing_id), "ERROR: Claim could not be set as case.");
            print("Case #", filing_id, " was successfully opened.");
        }

        //@abi action
        void closecase(const uint64_t filing_id, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_case(filing_id), "ERROR: Case does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to close this case.");
            require_auth(authority);
            eosio_assert(!is_closed(filing_id), "ERROR: Case is already closed.");
            close(filing_id);
            eosio_assert(is_closed(filing_id), "ERROR: Case could not be closed.");
            print("Case #", filing_id, " was successfully closed.");
        }

        //@abi action
        void unclosecase(const uint64_t filing_id, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_case(filing_id), "ERROR: Case does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to unclose this case.");
            require_auth(authority);
            eosio_assert(is_closed(filing_id), "ERROR: Case is not closed.");
            unclose(filing_id);
            eosio_assert(!is_closed(filing_id), "ERROR: Case could not be unclosed.");
            print("Case #", filing_id, " was successfully unclosed.");
        }

        //@abi action
        void rejectclaim(const uint64_t filing_id, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_claim(filing_id), "ERROR: Claim does not exist.");
            eosio_assert(is_ecafarb(authority) || _self == authority,
            "ERROR: You are not authorized to reject this claim.");
            require_auth(authority);
            eosio_assert(!is_rejected(filing_id), "ERROR: Claim is already rejected.");
            reject(filing_id);
            eosio_assert(is_rejected(filing_id), "ERROR: Claim could not be rejected.");
            print("Claim #", filing_id, " was successfully rejected.");
        }

        //@abi action
        void unrjctclaim(const uint64_t filing_id, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_claim(filing_id), "ERROR: Claim does not exist.");
            eosio_assert(is_ecafarb(authority) || _self == authority,
            "ERROR: You are not authorized to unreject this claim.");
            require_auth(authority);
            eosio_assert(is_rejected(filing_id), "ERROR: Claim has not been rejected.");
            reject(filing_id);
            eosio_assert(is_rejected(filing_id), "ERROR: Claim could not be unrejected.");
            print("Claim #", filing_id, " was successfully unrejected.");
        }

        //@abi action
        void suspendcase(const uint64_t filing_id, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_case(filing_id), "ERROR: Case does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to suspend this case.");
            require_auth(authority);
            eosio_assert(!is_suspended(filing_id), "ERROR: Case is already suspended.");
            suspend(filing_id);
            eosio_assert(is_suspended(filing_id), "ERROR: Case could not be suspended.");
            print("Case #", filing_id, " was successfully suspended.");
        }

        //@abi action
        void unsspndcase(const uint64_t filing_id, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_case(filing_id), "ERROR: Case does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to unsuspend this case.");
            require_auth(authority);
            eosio_assert(is_suspended(filing_id), "ERROR: Case has not been suspended.");
            unsuspend(filing_id);
            eosio_assert(!is_suspended(filing_id), "ERROR: Case could not be unsuspended.");
            print("Case #", filing_id, " was successfully unsuspended.");
        }

        //@abi action
        void dropcase(const uint64_t filing_id, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_case(filing_id), "ERROR: Case does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to drop this case.");
            require_auth(authority);
            eosio_assert(!is_dropped(filing_id), "ERROR: Case is already dropped.");
            drop(filing_id);
            eosio_assert(is_dropped(filing_id), "ERROR: Case could not be dropped.");
            print("Case #", filing_id, " was successfully dropped.");
        }

        //@abi action
        void undropcase(const uint64_t filing_id, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_case(filing_id), "ERROR: Case does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to undrop this case.");
            require_auth(authority);
            eosio_assert(is_dropped(filing_id), "ERROR: Case has not been dropped.");
            undrop(filing_id);
            eosio_assert(!is_dropped(filing_id), "ERROR: Case could not be undropped.");
            print("Case #", filing_id, " was successfully undropped.");
        }

        //@abi action
        void adddoc(const uint64_t filing_id, const account_name owner, const checksum256 contents,
                    const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to add a document to this case.");
            require_auth(authority);
            const uint64_t doc_id = next_index_id();
            add<document_index>(filing_id, doc_id, owner, contents);
            eosio_assert(is_document(filing_id, doc_id), "ERROR: Document could not be added.");
            print("Document #", doc_id, " was successfully added.");
        }

        //@abi action
        void verifydoc(const uint64_t filing_id, const uint64_t doc_id, const account_name owner) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_document(filing_id, doc_id), "ERROR: Document does not exist.");
            eosio_assert(is_owner<document_index>(filing_id, doc_id, owner), "ERROR: You do not own this document.");
            eosio_assert(is_claimant(filing_id, owner) || is_respondent(filing_id, owner),
            "ERROR: You are not authorized to verify this document.");
            require_auth(owner);
            eosio_assert(!is_verified<document_index>(filing_id, doc_id), "ERROR: Document has already been verified.");
            verify<document_index>(filing_id, doc_id, owner);
            eosio_assert(is_verified<document_index>(filing_id, doc_id), "ERROR: Document could not be verified.");
            print("Document #", doc_id, " was successfully verified.");
        }

        //@abi action
        void addtx(const uint64_t filing_id, const account_name owner, const checksum256 contents,
                   const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to add a transaction to this case.");
            require_auth(authority);
            const uint64_t tx_id = next_index_id();
            add<transaction_index>(filing_id, tx_id, owner, contents);
            eosio_assert(is_transaction(filing_id, tx_id), "ERROR: Transaction could not be added.");
            print("Transaction #", tx_id, " was successfully added.");
        }

        //@abi action
        void verifytx(const uint64_t filing_id, const uint64_t tx_id, const account_name owner) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_transaction(filing_id, tx_id), "ERROR: Transaction does not exist.");
            eosio_assert(is_owner<transaction_index>(filing_id, tx_id, owner), "ERROR: You do not own this transaction.");
            eosio_assert(is_claimant(filing_id, owner) || is_respondent(filing_id, owner),
            "ERROR: You are not authorized to verify this transaction.");
            require_auth(owner);
            eosio_assert(!is_verified<transaction_index>(filing_id, tx_id), "ERROR: Transaction has already been verified.");
            verify<transaction_index>(filing_id, tx_id, owner);
            eosio_assert(is_verified<transaction_index>(filing_id, tx_id), "ERROR: Transaction could not be verified.");
            print("Transaction #", tx_id, " was successfully verified.");
        }

        //@abi action
        void addrjctn(const uint64_t filing_id, const account_name owner, const checksum256 contents,
                      const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_claim(filing_id), "ERROR: Claim does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to add a rejection to this claim.");
            require_auth(authority);
            const uint64_t rejection_id = next_index_id();
            add<rejection_index>(filing_id, rejection_id, owner, contents);
            eosio_assert(is_document(filing_id, rejection_id), "ERROR: Document could not be added.");
            print("Rejection #", rejection_id, " was successfully added.");
        }

        //@abi action
        void addarb(const uint64_t filing_id, const account_name arb, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_ecafarb(arb), "ERROR: Not an authorized arbitrator.");
            eosio_assert(!is_claimant(filing_id, arb), "ERROR: That person is already a claimant.");
            eosio_assert(!is_respondent(filing_id, arb), "ERROR: That person is already a respondent.");
            eosio_assert(!is_arbitrator(filing_id, arb), "ERROR: That person is already an arbitrator.");
            eosio_assert(_self == authority, "ERROR: You are not authorized to add an arbitrator.");
            require_auth(authority);
            add<arbitrator_index>(filing_id, arb);
            eosio_assert(is_arbitrator(filing_id, arb), "ERROR: Arbitrator could not be added.");
            print("Arbitrator ", eosio::name{arb}, " was successfully added.");
        }

        //@abi action
        void addecafarb(const account_name arb, const account_name authority) {
            eosio_assert(_self == authority, "ERROR: You are not authorized to add an ECAF arbitrator.");
            eosio_assert(!is_ecafarb(arb), "ERROR: That ECAF arbitrator already exists.");
            require_auth(authority);
            add<ecafarb_index>(arb);
            eosio_assert(is_ecafarb(arb), "ERROR: ECAF arbitrator could not be added.");
            print("ECAF Arbitrator ", eosio::name{arb}, " was successfully added.");
        }

        //@abi action
        void addclmnt(const uint64_t filing_id, const account_name clmnt, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to add a claimant.");
            eosio_assert(!is_claimant(filing_id, clmnt), "ERROR: That person is already a claimant.");
            eosio_assert(!is_respondent(filing_id, clmnt), "ERROR: That person is already a respondent.");
            eosio_assert(!is_arbitrator(filing_id, clmnt), "ERROR: That person is already an arbitrator.");
            require_auth(authority);
            add<claimant_index>(filing_id, clmnt);
            eosio_assert(is_claimant(filing_id, clmnt), "ERROR: Claimant could not be added.");
            print("Claimant ", eosio::name{clmnt}, " was successfully added.");
        }

        //@abi action
        void addresp(const uint64_t filing_id, const account_name resp, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to add a respondent.");
            eosio_assert(!is_claimant(filing_id, resp), "ERROR: That person is already a claimant.");
            eosio_assert(!is_respondent(filing_id, resp), "ERROR: That person is already a respondent.");
            eosio_assert(!is_arbitrator(filing_id, resp), "ERROR: That person is already an arbitrator.");
            require_auth(authority);
            add<respondent_index>(filing_id, resp);
            eosio_assert(is_respondent(filing_id, resp), "ERROR: respondent could not be added.");
            print("Respondent ", eosio::name{resp}, " was successfully added.");
        }

        //@abi action
        void setbond(const uint64_t filing_id, const asset amount, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to set the bond.");
            require_auth(authority);
            validate_asset(amount);
            flip_bond(filing_id);
            const uint64_t bond_id = next_index_id();
            add<bond_index>(filing_id, bond_id, amount);
            eosio_assert(is_bond(filing_id, bond_id), "ERROR: Bond could not be set.");
            print("Bond #", bond_id, " was successfully set.");
        }

        //@abi action
        void setfee(const uint64_t filing_id, const asset amount, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to set the fee.");
            require_auth(authority);
            validate_asset(amount);
            flip_fee(filing_id);
            const uint64_t fee_id = next_index_id();
            add<fee_index>(filing_id, fee_id, amount);
            eosio_assert(is_fee(filing_id, fee_id), "ERROR: Fee could not be set.");
            print("Fee #", fee_id, " was successfully set.");
        }

        //@abi action
        void setsubfee(const asset amount, const account_name authority) {
            eosio_assert(is_ecafarb(authority) || _self == authority,
            "ERROR: You are not authorized to set the submittal fee.");
            require_auth(authority);
            validate_asset(amount);
            setsf(amount);
            print("Submittal Fee was successfully set to ", amount);
        }

        //@abit action
        void setpymntdue(const uint64_t filing_id, const asset amount,
                         const account_name user, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to set the amount due.");
            require_auth(authority);
            validate_asset(amount);
            const uint64_t pd_id = next_index_id();
            add_payment(filing_id, pd_id, user, amount);
            print("Payment due #", pd_id, " was successfully set.");
        }

        //@abit action
        void verifyuser(const account_name user) {
            require_auth(user);
        }

        //@abi action
        void paysubfee(const account_name user) {
            require_auth(user);
            eosio_assert(is_balance(user),"ERROR: No balance was found.");
            eosio_assert(enough_for_subfee(user),
            "ERROR: Your balance is below the submittal fee amount.");
            sub_balance(user, get_sf());
            add_balance(_self, get_sf());
            increment_sfcredit(user);
        }

        //@abit action
        void payamountdue(const uint64_t filing_id, const uint64_t item_id, const account_name user) {
            require_auth(user);
            eosio_assert(is_balance(user),"ERROR: No balance was found.");
            eosio_assert(is_payment(filing_id, item_id),"ERROR: No payment was found.");
            eosio_assert(enough_for_payment(filing_id, item_id, user),
            "ERROR: Your balance is below the amount due.");
            sub_balance(user, get_sf());
            add_balance(_self, get_sf());
        }

        //@abi action
        void decsfcredits(const uint64_t filing_id, const account_name user,
                          const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to set the amount due.");
            eosio_assert(is_claimant(filing_id, user) ||
                         is_respondent(filing_id, user),
            "ERROR: That user is not related to this filing.");
            eosio_assert(is_subfeecredit(user),
            "ERROR: That user does not have any submittal fee credits.");
            decrement_sfcredit(user);
        }

        //@abi action
        void withdraw(const account_name user) {
            require_auth(user);
            eosio_assert(is_balance(user),"ERROR: No balance was found.");
            balance_index balances(_self, _self);
            auto b_itr = balances.find(user);
            
            eosio::action {
                eosio::permission_level{_self, N(active)},
                N(eosio.token),
                N(transfer),
                eosio::currency::transfer {
                    .from=_self, .to=user, .quantity=b_itr->amount,
                    .memo="Withdrawl from ECAF Arbitration Smart Contract."}
            }.send();  

            balances.erase(b_itr);
        }

        //@abi action
        void ecafwithdraw(const account_name to) {
            require_auth(_self);
            eosio_assert(is_balance(_self),"ERROR: No balance was found.");
            balance_index balances(_self, _self);
            auto b_itr = balances.find(_self);

            eosio::action {
                eosio::permission_level{_self, N(active)},
                N(eosio.token),
                N(transfer),
                eosio::currency::transfer {
                    .from=_self, .to=to, .quantity=b_itr->amount,
                    .memo="Withdrawl from ECAF Arbitration Smart Contract."}
            }.send();

            balances.erase(b_itr);
        }

        void transferhandler(const uint64_t code) {
            eosio_assert(code == N(eosio.token),
            "ERROR: Cannot accept non-eosio.token deposit.");
            auto data = eosio::unpack_action_data<currency::transfer>();
            eosio_assert(data.from != _self, "ERROR: From account cannot be _self.");
            eosio_assert(data.to == _self, "ERROR: To account must be _self.");
            validate_asset(data.quantity);
            add_balance(data.from, data.quantity);
        }

        void runit(const uint64_t code, const account_name action) {
            switch(action) {
                case N(transfer): return transferhandler(code);
            }
            auto& thiscontract = *this;
            switch( action ) {
                EOSIO_API( arbitration, (createclaim)(opencase)(closecase)(unclosecase)(rejectclaim)(unrjctclaim)(suspendcase)(unsspndcase)(dropcase)(undropcase)(adddoc)(verifydoc)(addtx)(verifytx)(addrjctn)(addarb)(addecafarb)(addclmnt)(addresp)(setbond)(setfee)(setsubfee)(setpymntdue)(verifyuser)(paysubfee)(payamountdue)(decsfcredits)(withdraw)(ecafwithdraw) )
            };
        }

    private:
        //@abi table filing i64
        struct filing {
            uint64_t id;
            uint64_t suspended = 0;
            uint64_t rejected = 0;
            uint64_t dropped = 0;
            uint64_t closed = 0;
            uint64_t Claim = 0;
            uint64_t Case = 0;
            uint64_t primary_key() const { return id; }
            uint64_t by_suspended() const { return suspended; }
            uint64_t by_rejected() const { return rejected; }
            uint64_t by_dropped() const { return dropped; }
            uint64_t by_closed() const { return closed; }
            uint64_t by_claim() const { return Claim; }
            uint64_t by_case() const { return Case; }
            EOSLIB_SERIALIZE( filing, (id)(suspended)(rejected)(dropped)
                                      (closed)(Claim)(Case) )
        };
        typedef eosio::multi_index< N(filing), filing,
            indexed_by< N(bysuspended), const_mem_fun< filing, uint64_t, &filing::by_suspended > >,
            indexed_by< N(byrejected), const_mem_fun< filing, uint64_t, &filing::by_rejected > >,
            indexed_by< N(bydropped), const_mem_fun< filing, uint64_t, &filing::by_dropped > >,
            indexed_by< N(byclosed), const_mem_fun< filing, uint64_t, &filing::by_suspended > >,
            indexed_by< N(byclaim), const_mem_fun< filing, uint64_t, &filing::by_claim > >,
            indexed_by< N(bycase), const_mem_fun< filing, uint64_t, &filing::by_case > >
            > filing_index;

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

        //@abi table ecafarb i64
        struct ecafarb {
            account_name id;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( ecafarb, (id) )
        };
        typedef eosio::multi_index< N(ecafarb), ecafarb > ecafarb_index;

        //@abi table document i64
        struct document {
            uint64_t id;
            account_name owner;
            checksum256 contents;
            bool confirmed_by_owner = false;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( document, (id)(owner)(contents)(confirmed_by_owner) )
        };
        typedef eosio::multi_index< N(document), document,
            indexed_by< N(byowner), const_mem_fun<document, account_name, &document::by_owner> >
            > document_index;

        //@abi table rejection i64
        struct rejection {
            uint64_t id;
            account_name owner;
            checksum256 contents;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( rejection, (id)(owner)(contents) )
        };
        typedef eosio::multi_index< N(rejection), rejection > rejection_index;

        //@abi table transaction i64
        struct transaction {
            uint64_t id;
            account_name owner;
            checksum256 contents;
            bool confirmed_by_owner = false;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( transaction, (id)(owner)(contents)(confirmed_by_owner) )
        };
        typedef eosio::multi_index< N(transaction), transaction,
            indexed_by< N(byowner), const_mem_fun<transaction, account_name, &transaction::by_owner> >
            > transaction_index;

        //@abi table payment i64
        struct payment {
            uint64_t id;
            account_name owner;
            asset amount;
            uint64_t paid = 0;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            uint64_t by_paid() const { return paid; }
            EOSLIB_SERIALIZE( payment, (id)(owner)(amount) )
        };
        typedef eosio::multi_index< N(payment), payment,
            indexed_by< N(byowner), const_mem_fun<payment, account_name, &payment::by_owner> >,
            indexed_by< N(bypaid), const_mem_fun<payment, uint64_t, &payment::by_paid> >
            > payment_index; 

        //@abi table fee i64
        struct fee {
            uint64_t id;
            asset amount;
            uint64_t current = 1;
            uint64_t primary_key() const { return id; }
            uint64_t by_current() const { return current; }
            EOSLIB_SERIALIZE( fee, (id)(amount)(current) )
        };
        typedef eosio::multi_index< N(fee), fee,
            indexed_by< N(bycurrent), const_mem_fun<fee, uint64_t, &fee::by_current> >
            > fee_index;

        //@abi table subfeecredit i64
        struct subfeecredit {
            account_name id;
            uint64_t credits = 0;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( subfeecredit, (id)(credits) )
        };
        typedef eosio::multi_index< N(subfeecredit), subfeecredit > subfeecredit_index;

        //@abi table balance i64
        struct balance {
            account_name id;
            asset amount;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( balance, (id)(amount) )
        };
        typedef eosio::multi_index< N(balance), balance > balance_index;

        //@abi table bond i64
        struct bond {
            uint64_t id;
            asset amount;
            uint64_t current = 1;
            uint64_t primary_key() const { return id; }
            uint64_t by_current() const { return current; }
            EOSLIB_SERIALIZE( bond, (id)(amount)(current) )
        };
        typedef eosio::multi_index< N(bond), bond,
            indexed_by< N(bycurrent), const_mem_fun<bond, uint64_t, &bond::by_current> >
            > bond_index;

        //@abi table submittalfee i64
        struct submittalfee {
            asset amount;
            int64_t primary_key() const { return amount.amount; }
            EOSLIB_SERIALIZE( submittalfee, (amount) )
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

extern "C" {
    void apply( uint64_t receiver, uint64_t code, uint64_t action ) {
        arbitration  a( receiver );
        a.runit(code, action);
        eosio_exit(0);
    }
}

//EOSIO_ABI( arbitration, (createclaim)(opencase)(closecase)(unclosecase)(rejectclaim)(unrjctclaim)(suspendcase)(unsspndcase)(dropcase)(undropcase)(adddoc)(verifydoc)(addtx)(verifytx)(addrjctn)(addarb)(addecafarb)(addclmnt)(addresp)(setbond)(setfee)(setsubfee)(setpymntdue)(verifyuser)(paysubfee)(payamountdue)(decsfcredits)(withdraw)(ecafwithdraw) )