#include <boost/test/unit_test.hpp>
#include <Users/joneric/eos/libraries/testing/include/eosio/testing/tester.hpp>
#include <eosio/chain/abi_serializer.hpp>
#include <eosio/chain/contract_table_objects.hpp>

#include <dice/dice.wast.hpp>
#include <dice/dice.abi.hpp>

#include <eosio.token/eosio.token.wast.hpp>
#include <eosio.token/eosio.token.abi.hpp>

#include <Runtime/Runtime.h>

#include <fc/variant_object.hpp>

#ifdef NON_VALIDATING_TEST
#define TESTER tester
#else
#define TESTER validating_tester
#endif
// on line 30 in Cmake file in unittest folder, not in build, add arbitration
// add sub directory to Cmake file in contracts folder
using namespace eosio;
using namespace eosio::chain;
using namespace eosio::testing;
using namespace fc;
using namespace std;
using mvo = fc::mutable_variant_object;