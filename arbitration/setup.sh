#!/bin/bash

cleos --wallet-url http://localhost:8899 create account eosio alice EOS5rxttfUM3Mb3dbD45yArWrwqznMubxQaASR1oS3886GaxeaQZ4 EOS7qdCVGfEBt3MonTYiGKQqnrYciLsFfaRWTyLCu5VtsH339tBZp

cleos --wallet-url http://localhost:8899 create account eosio bob EOS5LT4R2eiRhj7AgSNURby6JtqVnB26BCk8CwcBhPYzTFAkqKyzf EOS6iLK2UuhUetFeYnS7eY4SNksckspcabcfA9LXmFaQ2iE6Qy395

cleos --wallet-url http://localhost:8899 create account eosio sam EOS5816xzZKjt8RTKThtAWKcshZmvKUN6k5FtpSRUtuBh54swYUR7 EOS5yGV6BWw3Fa5rDv8zNWZbC9i99GvuxL6S8JuLbeLZwEkXffWmG

cleos --wallet-url http://localhost:8899 create account eosio doug EOS59Nz6coSb1pw4DejNfhwwyQu2XjhDF4gzN22bYAeGJDMKqVvje EOS7CTwANAWRnPuub2J4wgiV4qn2ZUY6wSw8oQrp75z4JJqycJeqM

cleos --wallet-url http://localhost:8899 create account eosio arbitration EOS6Kt3j6zqtY7RMttXftAcxa7HcqZVtecdu6ctFz6LWepFXr4j8K EOS5ct4PaxviT8EGKt3DCjnsdEjMctysTgiBTT13RQ46XsBaY13k3

cleos --wallet-url http://localhost:8899 create account eosio eosio.token EOS8i5AWoDuG2szDqHGpjWppuiSWzPqBTBSApgmvpgPPAv572ytT9 EOS8DXKH2PYSvJ3iu4mJdEjWaZjdKZWH18zFnQ6G3tRMm43nfAsnw

cleos --wallet-url http://localhost:8899 set contract eosio /Users/joneric/eos/build/contracts/eosio.bios -p eosio

cleos --wallet-url http://localhost:8899 set contract eosio.token /Users/joneric/eos/build/contracts/eosio.token -p eosio.token

cleos --wallet-url http://localhost:8899 push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token

cleos --wallet-url http://localhost:8899 push action eosio.token issue '[ "alice", "1000.0000 EOS", "" ]' -p eosio

cleos --wallet-url http://localhost:8899 push action eosio.token issue '[ "bob", "1000.0000 EOS", "" ]' -p eosio

cleos --wallet-url http://localhost:8899 push action eosio.token issue '[ "sam", "1000.0000 EOS", "" ]' -p eosio

cleos --wallet-url http://localhost:8899 push action eosio.token issue '[ "doug", "1000.0000 EOS", "" ]' -p eosio

cleos --wallet-url http://localhost:8899 push action eosio.token issue '[ "arbitration", "1000.0000 EOS", "" ]' -p eosio