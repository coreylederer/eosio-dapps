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
    enum Place  {arbcase, claim};
}

class arbitration : public eosio::contract {
    public:
        explicit arbitration(action_name self) : contract(self) {}

        void add(controls::Person who, const account_name person_to_add,
                 const uint64_t arbcase_id, const account_name authority) {
            switch(who) {
                case controls::arbitrator:
                case controls::claimant:
                case controls::respondent:
            }
        }

        void remove(controls::Person who, const account_name person_to_remove,
                    const uint64_t arbcase_id, const account_name authority) {
            switch(who) {
                case controls::arbitrator:
                case controls::claimant:
                case controls::respondent:
            }
        }

        void add(controls::Item what, controls::Place where, const account_name owner,
                 const uint64_t item_id_to_add, const uint64_t arbcase_id,
                 const account_name authority) {
            switch(what) {
                case controls::document:
                    switch(where) {
                        case controls::arbcase:
                        case controls::claim:
                    }
                case controls::transaction:
                    switch(where) {
                        case controls::arbcase:
                        case controls::claim:
                    }
            }
        }

        void remove(controls::Item what, controls::Place where, const account_name owner,
                 const uint64_t item_id_to_remove, const uint64_t arbcase_id,
                 const account_name authority) {
            switch(what) {
                case controls::document:
                    switch(where) {
                        case controls::arbcase:
                        case controls::claim:
                    }
                case controls::transaction:
                    switch(where) {
                        case controls::arbcase:
                        case controls::claim:
                    }
            }
        }

        void submit() {

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

        typedef uint64_t id;
        typedef eosio::singleton<N(claimid), id>  claim_id_index;
        typedef eosio::singleton<N(arbcaseid), id>  arbcase_id_index;
        typedef eosio::singleton<N(documentid), id>  document_id_index;
        typedef eosio::singleton<N(transactionid), id>  transaction_id_index;
        typedef eosio::singleton<N(bondpaymentid), id>  bondpayment_id_index;
        typedef eosio::singleton<N(arbcasefeeid), id>  arbcasefee_id_index;
        typedef eosio::singleton<N(arbcasebondid), id>  arbcasebond_id_index;

        id next_claim_id(){
            claim_id_index last_claim_id(_self, _self);
            id lclaimid = last_claim_id.exists() ? last_claim_id.get() + 1 : 0;
            last_claim_id.set(lclaimid,_self);
            return lclaimid;
        }

        id next_arbcase_id(){
            arbcase_id_index last_arbcase_id(_self, _self);
            id larbcaseid = last_arbcase_id.exists() ? last_arbcase_id.get() + 1 : 0;
            last_arbcase_id.set(larbcaseid,_self);
            return larbcaseid;
        }

        id next_document_id(){
            document_id_index last_document_id(_self, _self);
            id ldocumentid = last_document_id.exists() ? last_document_id.get() + 1 : 0;
            last_document_id.set(ldocumentid,_self);
            return ldocumentid;
        }

        id next_transaction_id(){
            transaction_id_index last_transaction_id(_self, _self);
            id ltransactionid = last_transaction_id.exists() ? last_transaction_id.get() + 1 : 0;
            last_transaction_id.set(ltransactionid,_self);
            return ltransactionid;
        }

        id next_bondpayment_id(){
            bondpayment_id_index last_bondpayment_id(_self, _self);
            id lbondpaymentid = last_bondpayment_id.exists() ? last_bondpayment_id.get() + 1 : 0;
            last_bondpayment_id.set(lbondpaymentid,_self);
            return lbondpaymentid;
        }

        id next_arbcasefee_id(){
            arbcasefee_id_index last_arbcasefee_id(_self, _self);
            id larbcasefeeid = last_arbcasefee_id.exists() ? last_arbcasefee_id.get() + 1 : 0;
            last_arbcasefee_id.set(larbcasefeeid,_self);
            return larbcasefeeid;
        }

        id next_arbcasebond_id(){
            arbcasebond_id_index last_arbcasebond_id(_self, _self);
            id larbcasebondid = last_arbcasebond_id.exists() ? last_arbcasebond_id.get() + 1 : 0;
            last_arbcasebond_id.set(larbcasebondid,_self);
            return larbcasebondid;
        }
};

EOSIO_ABI( arbitration,  )