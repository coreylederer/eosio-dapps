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
            eosio::name filing_id;
            filing_id.value = value;
            return filing_id;
        }

        /**
         * filing + ecafarb
         */
        template<typename T, typename U>
        bool exists(U id) {
            T table(_self, _self);
            return table.find(id) != table.end();
        }

        bool is_filing(const uint64_t filing_id) {
            return exists<filing_index, uint64_t>(filing_id);
        }

        bool is_ecafarb(const account_name arb) {
            return exists<ecafarb_index, account_name>(arb);
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

        /**
         * document + transaction + rejection + bond + fee + payment +
         * paymentdue + arbitrator + claimant + respondent
        */
        template <typename T, typename U>
        bool exists(const uint64_t filing_id, U item_id) {
            T table(_self, toname(filing_id));
            return table.find(item_id) != table.end();
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
         * document + transaction
         */   
        template<typename T>
        bool is_owner(const uint64_t filing_id, const uint64_t item_id,
                      const account_name owner) {
            T table(_self, toname(filing_id));
            auto item = table.get(item_id);
            return item.owner == owner;
        }

        /**
         * document + transaction
         */        
        template<typename T>
        void verify(const uint64_t filing_id, const uint64_t item_id,
                    const account_name owner) {
            T table(_self, toname(filing_id));
            auto itr = table.find(item_id);
            table.modify(itr, 0, [&](auto& item) {
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
        void add(const uint64_t filing_id, const uint64_t id,
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
            filings.modify(itr, 0, [&](auto& f) {
                f.suspended = 1;
            });
        }

        /**
         * filing
         */
        void unsuspend(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, 0, [&](auto& f) {
                f.suspended = 0;
            });
        }

        /**
         * filing
         */
        void reject(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, 0, [&](auto& f) {
                f.rejected = 1;
            });
        }

        /**
         * filing
         */
        void drop(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, 0, [&](auto& f) {
                f.dropped = 1;
            });
        }

        /**
         * filing
         */
        void undrop(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, 0, [&](auto& f) {
                f.dropped = 0;
            });
        }

        /**
         * filing
         */
        void close(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, 0, [&](auto& f) {
                f.closed = 1;
            });
        }

        /**
         * filing
         */
        void unclose(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, 0, [&](auto& f) {
                f.closed = 0;
            });
        }

        /**
         * filing
         */
        void setasclaim(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, 0, [&](auto& f) {
                f.Claim = 1;
            });
        }

        /**
         * filing
         */
        void setascase(const uint64_t filing_id) {
            filing_index filings(_self, _self);
            auto itr = filings.find(filing_id);
            filings.modify(itr, 0, [&](auto& f) {
                f.Claim = 0;
                f.Case = 1;
            });
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


        //-----------------------------------------------------------------------------------------//


        //@abi action
        void createclaim(const account_name authority) {
            eosio_assert(is_ecafarb(authority) || _self == authority,
            "ERROR: You are not authorized to create a claim.");
            require_auth(authority);
            const uint64_t id = next_index_id();
            add<filing_index>(id);
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
            eosio_assert(_self == authority, "ERROR: You are not authorized to add an arbitrator.");
            add<arbitrator_index>(filing_id, arb);
            eosio_assert(is_arbitrator(filing_id, arb), "ERROR: Arbitrator could not be added.");
            print("Arbitrator ", eosio::name{arb}, " was successfully added.");
        }

        //@abi action
        void addecafarb(const account_name arb, const account_name authority) {
            eosio_assert(_self == authority, "ERROR: You are not authorized to add an ECAF arbitrator.");
            eosio_assert(!is_ecafarb(arb), "ERROR: That ECAF arbitrator already exists.");
            add<ecafarb_index>(arb);
            eosio_assert(is_ecafarb(arb), "ERROR: ECAF arbitrator could not be added.");
            print("ECAF Arbitrator ", eosio::name{arb}, " was successfully added.");
        }

        //@abi action
        void addclmnt(const uint64_t filing_id, const account_name clmnt, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to add a claimant.");
            add<claimant_index>(filing_id, clmnt);
            eosio_assert(is_claimant(filing_id, clmnt), "ERROR: Claimant could not be added.");
            print("Claimant ", eosio::name{clmnt}, " was successfully added.");
        }

        //@abi action
        void addresp(const uint64_t filing_id, const account_name resp, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to add a respondent.");
            add<respondent_index>(filing_id, resp);
            eosio_assert(is_respondent(filing_id, resp), "ERROR: respondent could not be added.");
            print("respondent ", eosio::name{resp}, " was successfully added.");
        }

        //@abi action
        void setbond(const uint64_t filing_id, const asset amount, const account_name authority) {
            eosio_assert(is_filing(filing_id), "ERROR: Filing does not exist.");
            eosio_assert(is_arbitrator(filing_id, authority) || _self == authority,
            "ERROR: You are not authorized to set the bond.");
            require_auth(authority);
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
            setsf(amount, authority);
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

EOSIO_ABI( arbitration, (createclaim)(opencase)(closecase)(unclosecase)(rejectclaim)(unrjctclaim)
                        (suspendcase)(unsspndcase)(dropcase)(undropcase)(adddoc)(addtx)(addrjctn)
                        (addarb)(addecafarb)(addclmnt)(addresp)(setbond)(setfee)(setsubfee) )