#include <boost/test/unit_test.hpp>
#include <eosio/testing/tester.hpp>
#include <eosio/chain/abi_serializer.hpp>
#include <eosio/chain/contract_table_objects.hpp>

#include <arbitration/arbitration.wast.hpp>
#include <arbitration/arbitration.abi.hpp>

#include <Runtime/Runtime.h>

#include <fc/variant_object.hpp>

#ifdef NON_VALIDATING_TEST
#define TESTER tester
#else
#define TESTER validating_tester
#endif

using namespace eosio;
using namespace eosio::chain;
using namespace eosio::testing;
using namespace fc;
using namespace std;
using mvo = fc::mutable_variant_object;

struct submit_claim_t {
    account_name claimant;
    std::vector<account_name> respondents;
    std::vector<string> tx_ids;
    std::vector<document> documents;
    asset fee;

   static account_name get_account() { return N(arbitration); }
   static action_name get_name() {return N(submitclaim); }
};
FC_REFLECT( submit_claim_t, (claimant)(respondents)(tx_ids)(documents)(fee) );

struct open_case_t {
    uint64_t claim_id;

   static account_name get_account() { return N(arbitration); }
   static action_name get_name() {return N(opencase); }
};
FC_REFLECT( open_case_t, (claim_id) );

struct __attribute((packed)) claim_t {
    uint64_t id;
    account_name claimant;
    std::vector<account_name> respondents;
    std::vector<string> tx_ids;
    std::vector<document> documents;
    bool claim_dropped = false;
    bool can_delete = false;
    bool is_rejected = false;
    document rejection_reason;
    asset fee;
    bool fee_paid = false;
    asset bond;
    bool bond_fronted = false;
};
FC_REFLECT( claim_t,    (id)(claimant)(respondents)(tx_ids)(documents)(claim_dropped)
                        (can_delete)(is_rejected)(rejection_reason)(fee)(fee_paid)(bond)
                        (bond_fronted) );

struct __attribute((packed)) arbcase_t {
    uint64_t id;
    std::vector<account_name> claimants;
    std::vector<account_name> respondents;
    std::vector<account_name> arbitrators;
    std::vector<filing> filings;
    time time_opened;
    bool case_dropped = false;
    bool can_delete = false;
    bool is_resolved = false;
    time time_closed;
    asset fee;
    bool fee_paid = false;
    asset bond;
    bool bond_fronted = false;
    bool bond_dispersed = false;
    document ruling;
    document remedy;
    bool requested_remedy = false;
    bool remedy_fulfilled = false;
};
FC_REFLECT( arbcase_t,  (id)(claimants)(respondents)(arbitrators)(filings)
                        (time_opened)(case_dropped)(can_delete)(is_resolved)(time_closed)(fee)
                        (fee_paid)(bond)(bond_fronted)(bond_dispersed)(ruling)(remedy)
                        (requested_remedy)(remedy_fulfilled) );


struct dice_tester : TESTER {

   template<typename IndexType, typename Scope>
   const auto& get_index() {
      return control->db().get_index<IndexType,Scope>();
   }

   void submit_claim(const account_name claimant, const std::vector<account_name>& respondents,
                     const std::vector<string>& tx_ids, const std::vector<document>& documents,
                     const asset& fee) {
      signed_transaction trx;
      action act( {{claimant, config::active_name}},
        submit_claim_t{claimant, respondents, tx_ids, documents, fee} );
      trx.actions.push_back(act);
      set_transaction_headers(trx);
      trx.sign(get_private_key( claimant, "active" ), control->get_chain_id());
      auto ptrx = packed_transaction(trx,packed_transaction::none);
      push_transaction(ptrx);
   }

   void open_case(const uint64_t claim_id) {
      signed_transaction trx;
      action act( {{_self, config::active_name}},
        submit_claim_t{claim_id} );
      trx.actions.push_back(act);
      set_transaction_headers(trx);
      trx.sign(get_private_key( _self, "active" ), control->get_chain_id());
      auto ptrx = packed_transaction(trx,packed_transaction::none);
      push_transaction(ptrx);
   }
};

BOOST_AUTO_TEST_SUITE(arbitration_tests)

BOOST_FIXTURE_TEST_CASE( arbitration_test, arbitration_tester ) try {

   create_accounts( { N(arbitration),N(alice),N(bob),N(carol),N(david) }, false );

   set_code(N(arbitration), arbitration_wast);
   set_abi(N(arbitration), arbitration_abi);

   produce_block();

   // Alice submits a claim
   submit_claim(N(alice),[N(bob),N(sam)],
                [commitment_for("98c31382f25c8e23be967ecfdf6be943631608975d2709a51bfab680982f782e"),
                commitment_for("98c31382f25c8e23be967ecfdf6be943631608975d2709a51bfab680982f782e")],
                [["False claims!","google.com",commitment_for("913d07d002338bf3658138eb20dd2427e5195c9bed52eac7dd639ac13891e75c")],
                ["Super false claims!","amazon.com",commitment_for("913d07d002338bf3658138eb20dd2427e5195c9bed52eac7dd639ac13891e75c")]],
                core_from_string("1000.0000"));
   produce_block();

   BOOST_REQUIRE_EQUAL( balance_of(N(alice)), core_from_string("1000.0000"));
   BOOST_REQUIRE_EQUAL( open_games(N(alice)), 0);

   // Alice tries to bet 0 (fail)
   // secret : 9b886346e1351d4144d0b8392a975612eb0f8b6de7eae1cc9bcc55eb52be343c
   BOOST_CHECK_THROW( offer_bet( N(alice), core_from_string("0.0000"),
      commitment_for("9b886346e1351d4144d0b8392a975612eb0f8b6de7eae1cc9bcc55eb52be343c")
   ), fc::exception);

   // Alice bets 10 (success)
   // secret : 0ba044d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46
   offer_bet( N(alice), core_from_string("10.0000"),
      commitment_for("0ba044d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46")
   );
   produce_block();

   // Bob tries to bet using a secret previously used by Alice (fail)
   // secret : 00000000000000000000000000000002c334abe6ce13219a4cf3b862abb03c46
   BOOST_CHECK_THROW( offer_bet( N(bob), core_from_string("10.0000"),
      commitment_for("0ba044d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46")
   ), fc::exception);
   produce_block();

   // Alice tries to bet 1000 (fail)
   // secret : a512f6b1b589a8906d574e9de74a529e504a5c53a760f0991a3e00256c027971
   BOOST_CHECK_THROW( offer_bet( N(alice), core_from_string("1000.0000"),
      commitment_for("a512f6b1b589a8906d574e9de74a529e504a5c53a760f0991a3e00256c027971")
   ), fc::exception);
   produce_block();

   // Bob tries to bet 90 without deposit
   // secret : 4facfc98932dde46fdc4403125a16337f6879a842a7ff8b0dc8e1ecddd59f3c8
   BOOST_CHECK_THROW( offer_bet( N(bob), core_from_string("90.0000"),
      commitment_for("4facfc98932dde46fdc4403125a16337f6879a842a7ff8b0dc8e1ecddd59f3c8")
   ), fc::exception);
   produce_block();

   // Bob deposits 500
   deposit( N(bob), core_from_string("500.0000"));
   BOOST_REQUIRE_EQUAL( balance_of(N(bob)), core_from_string("500.0000"));

   // Bob bets 11 (success)
   // secret : eec3272712d974c474a3e7b4028b53081344a5f50008e9ccf918ba0725a8d784
   offer_bet( N(bob), core_from_string("11.0000"),
      commitment_for("eec3272712d974c474a3e7b4028b53081344a5f50008e9ccf918ba0725a8d784")
   );
   produce_block();

   // Bob cancels (success)
   BOOST_REQUIRE_EQUAL( open_offers(N(bob)), 1);
   cancel_offer( N(bob), commitment_for("eec3272712d974c474a3e7b4028b53081344a5f50008e9ccf918ba0725a8d784") );
   BOOST_REQUIRE_EQUAL( open_offers(N(bob)), 0);

   // Carol deposits 300
   deposit( N(carol), core_from_string("300.0000"));

   // Carol bets 10 (success)
   // secret : 3efb4bd5e19b780f4980c919330c0306f8157f93db1fc72c7cefec63e0e7f37a
   offer_bet( N(carol), core_from_string("10.0000"),
      commitment_for("3efb4bd5e19b780f4980c919330c0306f8157f93db1fc72c7cefec63e0e7f37a")
   );
   produce_block();

   BOOST_REQUIRE_EQUAL( open_games(N(alice)), 1);
   BOOST_REQUIRE_EQUAL( open_offers(N(alice)), 0);

   BOOST_REQUIRE_EQUAL( open_games(N(carol)), 1);
   BOOST_REQUIRE_EQUAL( open_offers(N(carol)), 0);

   BOOST_REQUIRE_EQUAL( game_bet(1), core_from_string("10.0000"));


   // Alice tries to cancel a nonexistent bet (fail)
   BOOST_CHECK_THROW( cancel_offer( N(alice),
      commitment_for("00000000000000000000000000000000000000000000000000000000abb03c46")
   ), fc::exception);

   // Alice tries to cancel an in-game bet (fail)
   BOOST_CHECK_THROW( cancel_offer( N(alice),
      commitment_for("0ba044d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46")
   ), fc::exception);

   // Alice reveals secret (success)
   reveal( N(alice),
      commitment_for("0ba044d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46"),
      checksum_type("0ba044d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46")
   );
   produce_block();

   // Alice tries to reveal again (fail)
   BOOST_CHECK_THROW( reveal( N(alice),
      commitment_for("0ba044d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46"),
      checksum_type("0ba044d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46")
   ), fc::exception);

   // Bob tries to reveal an invalid (secret,commitment) pair (fail)
   BOOST_CHECK_THROW( reveal( N(bob),
      commitment_for("121344d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46"),
      checksum_type("141544d2833758ee2c8f24d8a3f70c82c334abe6ce13219a4cf3b862abb03c46")
   ), fc::exception);

   // Bob tries to reveal a valid (secret,commitment) pair that has no offer/game (fail)
   BOOST_CHECK_THROW( reveal( N(bob),
      commitment_for("e48c6884bb97ac5f5951df6012ce79f63bb8549ad0111315ad9ecbaf4c9b1eb8"),
      checksum_type("e48c6884bb97ac5f5951df6012ce79f63bb8549ad0111315ad9ecbaf4c9b1eb8")
   ), fc::exception);

   // Bob reveals Carol's secret (success)
   reveal( N(bob),
      commitment_for("3efb4bd5e19b780f4980c919330c0306f8157f93db1fc72c7cefec63e0e7f37a"),
      checksum_type("3efb4bd5e19b780f4980c919330c0306f8157f93db1fc72c7cefec63e0e7f37a")
   );

   BOOST_REQUIRE_EQUAL( open_games(N(alice)), 0);
   BOOST_REQUIRE_EQUAL( open_offers(N(alice)), 0);
   BOOST_REQUIRE_EQUAL( balance_of(N(alice)), core_from_string("1010.0000"));

   BOOST_REQUIRE_EQUAL( open_games(N(carol)), 0);
   BOOST_REQUIRE_EQUAL( open_offers(N(carol)), 0);
   BOOST_REQUIRE_EQUAL( balance_of(N(carol)), core_from_string("290.0000"));

   // Alice withdraw 1009 (success)
   withdraw( N(alice), core_from_string("1009.0000"));
   BOOST_REQUIRE_EQUAL( balance_of(N(alice)), core_from_string("1.0000"));

   BOOST_REQUIRE_EQUAL(
      get_currency_balance(N(eosio.token), symbol(CORE_SYMBOL), N(alice)),
      core_from_string("10009.0000")
   );

   // Alice withdraw 2 (fail)
   BOOST_CHECK_THROW( withdraw( N(alice), core_from_string("2.0000")),
      fc::exception);

   // Alice withdraw 1 (success)
   withdraw( N(alice), core_from_string("1.0000"));

   BOOST_REQUIRE_EQUAL(
      get_currency_balance(N(eosio.token), symbol(CORE_SYMBOL), N(alice)),
      core_from_string("10010.0000")
   );

   // Verify alice account was deleted
   account_t alice_account;
   BOOST_CHECK(dice_account(N(alice), alice_account) == false);

   // No games in table
   auto* game_tid = find_table(N(dice), N(dice), N(game));
   BOOST_CHECK(game_tid == nullptr);

   // No offers in table
   auto* offer_tid = find_table(N(dice), N(dice), N(offer));
   BOOST_CHECK(offer_tid == nullptr);

   // 2 records in account table (Bob & Carol)
   auto* account_tid = find_table(N(dice), N(dice), N(account));
   BOOST_CHECK(account_tid != nullptr);
   BOOST_CHECK(account_tid->count == 2);

} FC_LOG_AND_RETHROW() /// basic_test

BOOST_AUTO_TEST_SUITE_END()