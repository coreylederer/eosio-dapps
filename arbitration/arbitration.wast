(module
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$vijj (func (param i32 i64 i64)))
 (type $FUNCSIG$vijjij (func (param i32 i64 i64 i32 i64)))
 (type $FUNCSIG$vijjj (func (param i32 i64 i64 i64)))
 (type $FUNCSIG$vijij (func (param i32 i64 i32 i64)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$vijijj (func (param i32 i64 i32 i64 i64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ijjjji (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $FUNCSIG$ijjjij (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$ijjjii (func (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "current_receiver" (func $current_receiver (result i64)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "db_find_i64" (func $db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_idx64_find_primary" (func $db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_lowerbound" (func $db_idx64_lowerbound (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_idx64_store" (func $db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_update" (func $db_idx64_update (param i32 i64 i32)))
 (import "env" "db_lowerbound_i64" (func $db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_next_i64" (func $db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $db_remove_i64 (param i32)))
 (import "env" "db_store_i64" (func $db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "eosio_exit" (func $eosio_exit (param i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "printi" (func $printi (param i64)))
 (import "env" "printn" (func $printn (param i64)))
 (import "env" "prints" (func $prints (param i32)))
 (import "env" "prints_l" (func $prints_l (param i32 i32)))
 (import "env" "printui" (func $printui (param i64)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (import "env" "send_inline" (func $send_inline (param i32 i32)))
 (table 30 30 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $_ZN11arbitration11suspendcaseEyy $_ZN11arbitration8addrjctnEyy11checksum256y $_ZN11arbitration7setbondEyN5eosio5assetEy $_ZN11arbitration8addclmntEyyy $_ZN11arbitration11unrjctclaimEyy $_ZN11arbitration12decsfcreditsEyyy $_ZN11arbitration9paysubfeeEy $_ZN11arbitration8withdrawEy $_ZN11arbitration11unclosecaseEyy $_ZN11arbitration9closecaseEyy $_ZN11arbitration11setpymntdueEyN5eosio5assetEyy $_ZN11arbitration10addecafarbEyy $_ZN11arbitration9verifydocEyyy $_ZN11arbitration12ecafwithdrawEy $_ZN11arbitration9setsubfeeEN5eosio5assetEy $_ZN11arbitration7addrespEyyy $_ZN11arbitration11rejectclaimEyy $_ZN11arbitration6addarbEyyy $_ZN11arbitration10undropcaseEyy $_ZN11arbitration11createclaimEy $_ZN11arbitration8opencaseEyy $_ZN11arbitration12payamountdueEyyy $_ZN11arbitration8verifytxEyyy $_ZN11arbitration10verifyuserEy $_ZN11arbitration5addtxEyy11checksum256y $_ZN11arbitration6setfeeEyN5eosio5assetEy $_ZN11arbitration6adddocEyy11checksum256y $_ZN11arbitration11unsspndcaseEyy $_ZN11arbitration8dropcaseEyy)
 (memory $0 1)
 (data (i32.const 4) "\c0w\00\00")
 (data (i32.const 16) "ERROR: No balance was found.\00")
 (data (i32.const 48) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 112) "active\00")
 (data (i32.const 128) "eosio.token\00")
 (data (i32.const 144) "transfer\00")
 (data (i32.const 160) "Withdrawl from ECAF Arbitration Smart Contract.\00")
 (data (i32.const 208) "cannot pass end iterator to erase\00")
 (data (i32.const 256) "cannot increment end iterator\00")
 (data (i32.const 288) "object passed to erase is not in multi_index\00")
 (data (i32.const 336) "cannot erase objects in table of another contract\00")
 (data (i32.const 400) "attempt to remove object that was not in multi_index\00")
 (data (i32.const 464) "write\00")
 (data (i32.const 480) "error reading iterator\00")
 (data (i32.const 512) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 576) "invalid symbol name\00")
 (data (i32.const 608) "read\00")
 (data (i32.const 624) "ERROR: Filing does not exist.\00")
 (data (i32.const 656) "ERROR: You are not authorized to set the amount due.\00")
 (data (i32.const 720) "ERROR: That user is not related to this filing.\00")
 (data (i32.const 768) "ERROR: That user does not have any submittal fee credits.\00")
 (data (i32.const 832) "cannot pass end iterator to modify\00")
 (data (i32.const 880) "object passed to modify is not in multi_index\00")
 (data (i32.const 928) "cannot modify objects in table of another contract\00")
 (data (i32.const 992) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 1056) "ERROR: No payment was found.\00")
 (data (i32.const 1088) "ERROR: Your balance is below the amount due.\00")
 (data (i32.const 1136) "cannot create objects in table of another contract\00")
 (data (i32.const 1200) "attempt to add asset with different symbol\00")
 (data (i32.const 1248) "addition underflow\00")
 (data (i32.const 1280) "addition overflow\00")
 (data (i32.const 1312) "comparison of assets with different symbols is not allowed\00")
 (data (i32.const 1376) "attempt to subtract asset with different symbol\00")
 (data (i32.const 1424) "subtraction underflow\00")
 (data (i32.const 1456) "subtraction overflow\00")
 (data (i32.const 1488) "singleton does not exist\00")
 (data (i32.const 1520) "unable to find key\00")
 (data (i32.const 1552) "ERROR: Your balance is below the submittal fee amount.\00")
 (data (i32.const 1616) "Payment due #\00")
 (data (i32.const 1632) " was successfully set.\00")
 (data (i32.const 1664) "ERROR: Not a valid asset.\00")
 (data (i32.const 1696) "ERROR: Amount must be greater than zero.\00")
 (data (i32.const 1744) "ERROR: Only EOS tokens may be used.\00")
 (data (i32.const 1792) "ERROR: You are not authorized to set the submittal fee.\00")
 (data (i32.const 1856) "Submittal Fee was successfully set to \00")
 (data (i32.const 1904) ".\00")
 (data (i32.const 1920) " \00")
 (data (i32.const 1936) ",\00")
 (data (i32.const 1952) "ERROR: You are not authorized to set the fee.\00")
 (data (i32.const 2000) "ERROR: Fee could not be set.\00")
 (data (i32.const 2032) "Fee #\00")
 (data (i32.const 2048) "ERROR: You are not authorized to set the bond.\00")
 (data (i32.const 2096) "ERROR: Bond could not be set.\00")
 (data (i32.const 2128) "Bond #\00")
 (data (i32.const 2144) "ERROR: You are not authorized to add a respondent.\00")
 (data (i32.const 2208) "ERROR: That person is already a claimant.\00")
 (data (i32.const 2256) "ERROR: That person is already a respondent.\00")
 (data (i32.const 2304) "ERROR: That person is already an arbitrator.\00")
 (data (i32.const 2352) "ERROR: respondent could not be added.\00")
 (data (i32.const 2400) "Respondent \00")
 (data (i32.const 2416) " was successfully added.\00")
 (data (i32.const 2448) "ERROR: You are not authorized to add a claimant.\00")
 (data (i32.const 2512) "ERROR: Claimant could not be added.\00")
 (data (i32.const 2560) "Claimant \00")
 (data (i32.const 2576) "ERROR: You are not authorized to add an ECAF arbitrator.\00")
 (data (i32.const 2640) "ERROR: That ECAF arbitrator already exists.\00")
 (data (i32.const 2688) "ERROR: ECAF arbitrator could not be added.\00")
 (data (i32.const 2736) "ECAF Arbitrator \00")
 (data (i32.const 2768) "ERROR: Not an authorized arbitrator.\00")
 (data (i32.const 2816) "ERROR: You are not authorized to add an arbitrator.\00")
 (data (i32.const 2880) "ERROR: Arbitrator could not be added.\00")
 (data (i32.const 2928) "Arbitrator \00")
 (data (i32.const 2944) "ERROR: Claim does not exist.\00")
 (data (i32.const 2976) "ERROR: You are not authorized to add a rejection to this claim.\00")
 (data (i32.const 3040) "ERROR: Document could not be added.\00")
 (data (i32.const 3088) "Rejection #\00")
 (data (i32.const 3104) "ERROR: Transaction does not exist.\00")
 (data (i32.const 3152) "ERROR: You do not own this transaction.\00")
 (data (i32.const 3200) "ERROR: You are not authorized to verify this transaction.\00")
 (data (i32.const 3264) "ERROR: Transaction has already been verified.\00")
 (data (i32.const 3312) "ERROR: Transaction could not be verified.\00")
 (data (i32.const 3360) "Transaction #\00")
 (data (i32.const 3376) " was successfully verified.\00")
 (data (i32.const 3408) "ERROR: You are not authorized to add a transaction to this case.\00")
 (data (i32.const 3488) "ERROR: Transaction could not be added.\00")
 (data (i32.const 3536) "ERROR: Document does not exist.\00")
 (data (i32.const 3568) "ERROR: You do not own this document.\00")
 (data (i32.const 3616) "ERROR: You are not authorized to verify this document.\00")
 (data (i32.const 3680) "ERROR: Document has already been verified.\00")
 (data (i32.const 3728) "ERROR: Document could not be verified.\00")
 (data (i32.const 3776) "Document #\00")
 (data (i32.const 3792) "ERROR: You are not authorized to add a document to this case.\00")
 (data (i32.const 3856) "ERROR: Case does not exist.\00")
 (data (i32.const 3888) "ERROR: You are not authorized to undrop this case.\00")
 (data (i32.const 3952) "ERROR: Case has not been dropped.\00")
 (data (i32.const 4000) "ERROR: Case could not be undropped.\00")
 (data (i32.const 4048) "Case #\00")
 (data (i32.const 4064) " was successfully undropped.\00")
 (data (i32.const 4096) "ERROR: You are not authorized to drop this case.\00")
 (data (i32.const 4160) "ERROR: Case is already dropped.\00")
 (data (i32.const 4192) "ERROR: Case could not be dropped.\00")
 (data (i32.const 4240) " was successfully dropped.\00")
 (data (i32.const 4272) "ERROR: You are not authorized to unsuspend this case.\00")
 (data (i32.const 4336) "ERROR: Case has not been suspended.\00")
 (data (i32.const 4384) "ERROR: Case could not be unsuspended.\00")
 (data (i32.const 4432) " was successfully unsuspended.\00")
 (data (i32.const 4464) "ERROR: You are not authorized to suspend this case.\00")
 (data (i32.const 4528) "ERROR: Case is already suspended.\00")
 (data (i32.const 4576) "ERROR: Case could not be suspended.\00")
 (data (i32.const 4624) " was successfully suspended.\00")
 (data (i32.const 4656) "ERROR: You are not authorized to unreject this claim.\00")
 (data (i32.const 4720) "ERROR: Claim has not been rejected.\00")
 (data (i32.const 4768) "ERROR: Claim could not be unrejected.\00")
 (data (i32.const 4816) "Claim #\00")
 (data (i32.const 4832) " was successfully unrejected.\00")
 (data (i32.const 4864) "ERROR: You are not authorized to reject this claim.\00")
 (data (i32.const 4928) "ERROR: Claim is already rejected.\00")
 (data (i32.const 4976) "ERROR: Claim could not be rejected.\00")
 (data (i32.const 5024) " was successfully rejected.\00")
 (data (i32.const 5056) "ERROR: You are not authorized to unclose this case.\00")
 (data (i32.const 5120) "ERROR: Case is not closed.\00")
 (data (i32.const 5152) "ERROR: Case could not be unclosed.\00")
 (data (i32.const 5200) " was successfully unclosed.\00")
 (data (i32.const 5232) "ERROR: You are not authorized to close this case.\00")
 (data (i32.const 5296) "ERROR: Case is already closed.\00")
 (data (i32.const 5328) "ERROR: Case could not be closed.\00")
 (data (i32.const 5376) " was successfully closed.\00")
 (data (i32.const 5408) "ERROR: You are not authorized to open a case.\00")
 (data (i32.const 5456) "ERROR: Claim could not be set as case.\00")
 (data (i32.const 5504) " was successfully opened.\00")
 (data (i32.const 5536) "ERROR: You are not authorized to create a claim.\00")
 (data (i32.const 5600) "ERROR: Filing could not be created.\00")
 (data (i32.const 5648) "ERROR: Filing could be set as claim.\00")
 (data (i32.const 5696) " was successfully created.\00")
 (data (i32.const 5728) "ERROR: Cannot accept non-eosio.token deposit.\00")
 (data (i32.const 5776) "get\00")
 (data (i32.const 14176) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "now" (func $now))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "apply" (func $apply))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (export "memcmp" (func $memcmp))
 (export "strlen" (func $strlen))
 (func $now (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $_ZeqRK11checksum256S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZeqRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZneRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $_ZN5eosio12require_authERKNS_16permission_levelE (param $0 i32)
  (call $require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $3)
   (get_local $0)
  )
  (call $_ZN11arbitration5runitEyy
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (get_local $1)
   (get_local $2)
  )
  (call $eosio_exit
   (i32.const 0)
  )
  (unreachable)
 )
 (func $_ZN11arbitration5runitEyy (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 464)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (block $label$9
            (block $label$10
             (block $label$11
              (block $label$12
               (block $label$13
                (block $label$14
                 (block $label$15
                  (block $label$16
                   (block $label$17
                    (block $label$18
                     (block $label$19
                      (block $label$20
                       (block $label$21
                        (block $label$22
                         (block $label$23
                          (block $label$24
                           (block $label$25
                            (block $label$26
                             (block $label$27
                              (block $label$28
                               (block $label$29
                                (br_if $label$29
                                 (i64.gt_s
                                  (get_local $2)
                                  (i64.const -2688959060270645249)
                                 )
                                )
                                (br_if $label$28
                                 (i64.le_s
                                  (get_local $2)
                                  (i64.const -4417031652043128833)
                                 )
                                )
                                (br_if $label$26
                                 (i64.gt_s
                                  (get_local $2)
                                  (i64.const -3111008411978661889)
                                 )
                                )
                                (br_if $label$22
                                 (i64.gt_s
                                  (get_local $2)
                                  (i64.const -3617168760277827585)
                                 )
                                )
                                (br_if $label$16
                                 (i64.eq
                                  (get_local $2)
                                  (i64.const -4417031652043128832)
                                 )
                                )
                                (br_if $label$0
                                 (i64.ne
                                  (get_local $2)
                                  (i64.const -4129425593446558720)
                                 )
                                )
                                (i32.store offset=412
                                 (get_local $3)
                                 (i32.const 0)
                                )
                                (i32.store offset=408
                                 (get_local $3)
                                 (i32.const 1)
                                )
                                (i64.store offset=48 align=4
                                 (get_local $3)
                                 (i64.load offset=408
                                  (get_local $3)
                                 )
                                )
                                (drop
                                 (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
                                  (get_local $0)
                                  (i32.add
                                   (get_local $3)
                                   (i32.const 48)
                                  )
                                 )
                                )
                                (br $label$0)
                               )
                               (br_if $label$27
                                (i64.le_s
                                 (get_local $2)
                                 (i64.const 3626371191414980607)
                                )
                               )
                               (br_if $label$25
                                (i64.gt_s
                                 (get_local $2)
                                 (i64.const 5031766157073556479)
                                )
                               )
                               (br_if $label$21
                                (i64.gt_s
                                 (get_local $2)
                                 (i64.const 3626416397556383743)
                                )
                               )
                               (br_if $label$15
                                (i64.eq
                                 (get_local $2)
                                 (i64.const 3626371191414980608)
                                )
                               )
                               (br_if $label$0
                                (i64.ne
                                 (get_local $2)
                                 (i64.const 3626373667782393856)
                                )
                               )
                               (i32.store offset=348
                                (get_local $3)
                                (i32.const 0)
                               )
                               (i32.store offset=344
                                (get_local $3)
                                (i32.const 2)
                               )
                               (i64.store offset=112 align=4
                                (get_local $3)
                                (i64.load offset=344
                                 (get_local $3)
                                )
                               )
                               (drop
                                (call $_ZN5eosio14execute_actionI11arbitrationS1_Jyy11checksum256yEEEbPT_MT0_FvDpT1_E
                                 (get_local $0)
                                 (i32.add
                                  (get_local $3)
                                  (i32.const 112)
                                 )
                                )
                               )
                               (br $label$0)
                              )
                              (br_if $label$24
                               (i64.le_s
                                (get_local $2)
                                (i64.const -4999377782347422721)
                               )
                              )
                              (br_if $label$20
                               (i64.gt_s
                                (get_local $2)
                                (i64.const -4417269101093715969)
                               )
                              )
                              (br_if $label$14
                               (i64.eq
                                (get_local $2)
                                (i64.const -4999377782347422720)
                               )
                              )
                              (br_if $label$0
                               (i64.ne
                                (get_local $2)
                                (i64.const -4417333812829093888)
                               )
                              )
                              (i32.store offset=308
                               (get_local $3)
                               (i32.const 0)
                              )
                              (i32.store offset=304
                               (get_local $3)
                               (i32.const 3)
                              )
                              (i64.store offset=152 align=4
                               (get_local $3)
                               (i64.load offset=304
                                (get_local $3)
                               )
                              )
                              (drop
                               (call $_ZN5eosio14execute_actionI11arbitrationS1_JyNS_5assetEyEEEbPT_MT0_FvDpT1_E
                                (get_local $0)
                                (i32.add
                                 (get_local $3)
                                 (i32.const 152)
                                )
                               )
                              )
                              (br $label$0)
                             )
                             (br_if $label$23
                              (i64.le_s
                               (get_local $2)
                               (i64.const 3626078967745740799)
                              )
                             )
                             (br_if $label$19
                              (i64.gt_s
                               (get_local $2)
                               (i64.const 3626130112216301567)
                              )
                             )
                             (br_if $label$13
                              (i64.eq
                               (get_local $2)
                               (i64.const 3626078967745740800)
                              )
                             )
                             (br_if $label$0
                              (i64.ne
                               (get_local $2)
                               (i64.const 3626111053181485056)
                              )
                             )
                             (i32.store offset=324
                              (get_local $3)
                              (i32.const 0)
                             )
                             (i32.store offset=320
                              (get_local $3)
                              (i32.const 4)
                             )
                             (i64.store offset=136 align=4
                              (get_local $3)
                              (i64.load offset=320
                               (get_local $3)
                              )
                             )
                             (drop
                              (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyyEEEbPT_MT0_FvDpT1_E
                               (get_local $0)
                               (i32.add
                                (get_local $3)
                                (i32.const 136)
                               )
                              )
                             )
                             (br $label$0)
                            )
                            (br_if $label$18
                             (i64.gt_s
                              (get_local $2)
                              (i64.const -3102546054533999617)
                             )
                            )
                            (br_if $label$12
                             (i64.eq
                              (get_local $2)
                              (i64.const -3111008411978661888)
                             )
                            )
                            (br_if $label$0
                             (i64.ne
                              (get_local $2)
                              (i64.const -3103274378294221824)
                             )
                            )
                            (i32.store offset=420
                             (get_local $3)
                             (i32.const 0)
                            )
                            (i32.store offset=416
                             (get_local $3)
                             (i32.const 5)
                            )
                            (i64.store offset=40 align=4
                             (get_local $3)
                             (i64.load offset=416
                              (get_local $3)
                             )
                            )
                            (drop
                             (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
                              (get_local $0)
                              (i32.add
                               (get_local $3)
                               (i32.const 40)
                              )
                             )
                            )
                            (br $label$0)
                           )
                           (br_if $label$17
                            (i64.gt_s
                             (get_local $2)
                             (i64.const 5614110885602656255)
                            )
                           )
                           (br_if $label$11
                            (i64.eq
                             (get_local $2)
                             (i64.const 5031766157073556480)
                            )
                           )
                           (br_if $label$0
                            (i64.ne
                             (get_local $2)
                             (i64.const 5373222765191738240)
                            )
                           )
                           (i32.store offset=252
                            (get_local $3)
                            (i32.const 0)
                           )
                           (i32.store offset=248
                            (get_local $3)
                            (i32.const 6)
                           )
                           (i64.store offset=208 align=4
                            (get_local $3)
                            (i64.load offset=248
                             (get_local $3)
                            )
                           )
                           (drop
                            (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyyEEEbPT_MT0_FvDpT1_E
                             (get_local $0)
                             (i32.add
                              (get_local $3)
                              (i32.const 208)
                             )
                            )
                           )
                           (br $label$0)
                          )
                          (br_if $label$10
                           (i64.eq
                            (get_local $2)
                            (i64.const -6533258393694502912)
                           )
                          )
                          (br_if $label$9
                           (i64.eq
                            (get_local $2)
                            (i64.const -6215977579069148000)
                           )
                          )
                          (br_if $label$0
                           (i64.ne
                            (get_local $2)
                            (i64.const -6215656753224220672)
                           )
                          )
                          (i32.store offset=268
                           (get_local $3)
                           (i32.const 0)
                          )
                          (i32.store offset=264
                           (get_local $3)
                           (i32.const 7)
                          )
                          (i64.store offset=192 align=4
                           (get_local $3)
                           (i64.load offset=264
                            (get_local $3)
                           )
                          )
                          (drop
                           (call $_ZN5eosio14execute_actionI11arbitrationS1_JyEEEbPT_MT0_FvDpT1_E
                            (get_local $0)
                            (i32.add
                             (get_local $3)
                             (i32.const 192)
                            )
                           )
                          )
                          (br $label$0)
                         )
                         (br_if $label$8
                          (i64.eq
                           (get_local $2)
                           (i64.const -2688959060270645248)
                          )
                         )
                         (br_if $label$7
                          (i64.eq
                           (get_local $2)
                           (i64.const -2688959059812040704)
                          )
                         )
                         (br_if $label$0
                          (i64.ne
                           (get_local $2)
                           (i64.const -2039333636196532224)
                          )
                         )
                         (i32.store offset=244
                          (get_local $3)
                          (i32.const 0)
                         )
                         (i32.store offset=240
                          (get_local $3)
                          (i32.const 8)
                         )
                         (i64.store offset=216 align=4
                          (get_local $3)
                          (i64.load offset=240
                           (get_local $3)
                          )
                         )
                         (drop
                          (call $_ZN5eosio14execute_actionI11arbitrationS1_JyEEEbPT_MT0_FvDpT1_E
                           (get_local $0)
                           (i32.add
                            (get_local $3)
                            (i32.const 216)
                           )
                          )
                         )
                         (br $label$0)
                        )
                        (br_if $label$6
                         (i64.eq
                          (get_local $2)
                          (i64.const -3617168760277827584)
                         )
                        )
                        (br_if $label$0
                         (i64.ne
                          (get_local $2)
                          (i64.const -3111676862410648576)
                         )
                        )
                        (i32.store offset=436
                         (get_local $3)
                         (i32.const 0)
                        )
                        (i32.store offset=432
                         (get_local $3)
                         (i32.const 9)
                        )
                        (i64.store offset=24 align=4
                         (get_local $3)
                         (i64.load offset=432
                          (get_local $3)
                         )
                        )
                        (drop
                         (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
                          (get_local $0)
                          (i32.add
                           (get_local $3)
                           (i32.const 24)
                          )
                         )
                        )
                        (br $label$0)
                       )
                       (br_if $label$5
                        (i64.eq
                         (get_local $2)
                         (i64.const 3626416397556383744)
                        )
                       )
                       (br_if $label$0
                        (i64.ne
                         (get_local $2)
                         (i64.const 4929617643248287744)
                        )
                       )
                       (i32.store offset=444
                        (get_local $3)
                        (i32.const 0)
                       )
                       (i32.store offset=440
                        (get_local $3)
                        (i32.const 10)
                       )
                       (i64.store offset=16 align=4
                        (get_local $3)
                        (i64.load offset=440
                         (get_local $3)
                        )
                       )
                       (drop
                        (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
                         (get_local $0)
                         (i32.add
                          (get_local $3)
                          (i32.const 16)
                         )
                        )
                       )
                       (br $label$0)
                      )
                      (br_if $label$4
                       (i64.eq
                        (get_local $2)
                        (i64.const -4417269101093715968)
                       )
                      )
                      (br_if $label$0
                       (i64.ne
                        (get_local $2)
                        (i64.const -4417082036052913152)
                       )
                      )
                      (i32.store offset=284
                       (get_local $3)
                       (i32.const 0)
                      )
                      (i32.store offset=280
                       (get_local $3)
                       (i32.const 11)
                      )
                      (i64.store offset=176 align=4
                       (get_local $3)
                       (i64.load offset=280
                        (get_local $3)
                       )
                      )
                      (drop
                       (call $_ZN5eosio14execute_actionI11arbitrationS1_JyNS_5assetEyyEEEbPT_MT0_FvDpT1_E
                        (get_local $0)
                        (i32.add
                         (get_local $3)
                         (i32.const 176)
                        )
                       )
                      )
                      (br $label$0)
                     )
                     (br_if $label$3
                      (i64.eq
                       (get_local $2)
                       (i64.const 3626130112216301568)
                      )
                     )
                     (br_if $label$0
                      (i64.ne
                       (get_local $2)
                       (i64.const 3626141078991257600)
                      )
                     )
                     (i32.store offset=332
                      (get_local $3)
                      (i32.const 0)
                     )
                     (i32.store offset=328
                      (get_local $3)
                      (i32.const 12)
                     )
                     (i64.store offset=128 align=4
                      (get_local $3)
                      (i64.load offset=328
                       (get_local $3)
                      )
                     )
                     (drop
                      (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
                       (get_local $0)
                       (i32.add
                        (get_local $3)
                        (i32.const 128)
                       )
                      )
                     )
                     (br $label$0)
                    )
                    (br_if $label$2
                     (i64.eq
                      (get_local $2)
                      (i64.const -3102546054533999616)
                     )
                    )
                    (br_if $label$0
                     (i64.ne
                      (get_local $2)
                      (i64.const -2688959069007380480)
                     )
                    )
                    (i32.store offset=372
                     (get_local $3)
                     (i32.const 0)
                    )
                    (i32.store offset=368
                     (get_local $3)
                     (i32.const 13)
                    )
                    (i64.store offset=88 align=4
                     (get_local $3)
                     (i64.load offset=368
                      (get_local $3)
                     )
                    )
                    (drop
                     (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyyEEEbPT_MT0_FvDpT1_E
                      (get_local $0)
                      (i32.add
                       (get_local $3)
                       (i32.const 88)
                      )
                     )
                    )
                    (br $label$0)
                   )
                   (br_if $label$1
                    (i64.eq
                     (get_local $2)
                     (i64.const 5614110885602656256)
                    )
                   )
                   (br_if $label$0
                    (i64.ne
                     (get_local $2)
                     (i64.const 5912309572203040192)
                    )
                   )
                   (i32.store offset=236
                    (get_local $3)
                    (i32.const 0)
                   )
                   (i32.store offset=232
                    (get_local $3)
                    (i32.const 14)
                   )
                   (i64.store offset=224 align=4
                    (get_local $3)
                    (i64.load offset=232
                     (get_local $3)
                    )
                   )
                   (drop
                    (call $_ZN5eosio14execute_actionI11arbitrationS1_JyEEEbPT_MT0_FvDpT1_E
                     (get_local $0)
                     (i32.add
                      (get_local $3)
                      (i32.const 224)
                     )
                    )
                   )
                   (br $label$0)
                  )
                  (i32.store offset=292
                   (get_local $3)
                   (i32.const 0)
                  )
                  (i32.store offset=288
                   (get_local $3)
                   (i32.const 15)
                  )
                  (i64.store offset=168 align=4
                   (get_local $3)
                   (i64.load offset=288
                    (get_local $3)
                   )
                  )
                  (drop
                   (call $_ZN5eosio14execute_actionI11arbitrationS1_JNS_5assetEyEEEbPT_MT0_FvDpT1_E
                    (get_local $0)
                    (i32.add
                     (get_local $3)
                     (i32.const 168)
                    )
                   )
                  )
                  (br $label$0)
                 )
                 (i32.store offset=316
                  (get_local $3)
                  (i32.const 0)
                 )
                 (i32.store offset=312
                  (get_local $3)
                  (i32.const 16)
                 )
                 (i64.store offset=144 align=4
                  (get_local $3)
                  (i64.load offset=312
                   (get_local $3)
                  )
                 )
                 (drop
                  (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyyEEEbPT_MT0_FvDpT1_E
                   (get_local $0)
                   (i32.add
                    (get_local $3)
                    (i32.const 144)
                   )
                  )
                 )
                 (br $label$0)
                )
                (i32.store offset=428
                 (get_local $3)
                 (i32.const 0)
                )
                (i32.store offset=424
                 (get_local $3)
                 (i32.const 17)
                )
                (i64.store offset=32 align=4
                 (get_local $3)
                 (i64.load offset=424
                  (get_local $3)
                 )
                )
                (drop
                 (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
                  (get_local $0)
                  (i32.add
                   (get_local $3)
                   (i32.const 32)
                  )
                 )
                )
                (br $label$0)
               )
               (i32.store offset=340
                (get_local $3)
                (i32.const 0)
               )
               (i32.store offset=336
                (get_local $3)
                (i32.const 18)
               )
               (i64.store offset=120 align=4
                (get_local $3)
                (i64.load offset=336
                 (get_local $3)
                )
               )
               (drop
                (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyyEEEbPT_MT0_FvDpT1_E
                 (get_local $0)
                 (i32.add
                  (get_local $3)
                  (i32.const 120)
                 )
                )
               )
               (br $label$0)
              )
              (i32.store offset=388
               (get_local $3)
               (i32.const 0)
              )
              (i32.store offset=384
               (get_local $3)
               (i32.const 19)
              )
              (i64.store offset=72 align=4
               (get_local $3)
               (i64.load offset=384
                (get_local $3)
               )
              )
              (drop
               (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
                (get_local $0)
                (i32.add
                 (get_local $3)
                 (i32.const 72)
                )
               )
              )
              (br $label$0)
             )
             (i32.store offset=460
              (get_local $3)
              (i32.const 0)
             )
             (i32.store offset=456
              (get_local $3)
              (i32.const 20)
             )
             (i64.store align=4
              (get_local $3)
              (i64.load offset=456
               (get_local $3)
              )
             )
             (drop
              (call $_ZN5eosio14execute_actionI11arbitrationS1_JyEEEbPT_MT0_FvDpT1_E
               (get_local $0)
               (get_local $3)
              )
             )
             (br $label$0)
            )
            (i32.store offset=452
             (get_local $3)
             (i32.const 0)
            )
            (i32.store offset=448
             (get_local $3)
             (i32.const 21)
            )
            (i64.store offset=8 align=4
             (get_local $3)
             (i64.load offset=448
              (get_local $3)
             )
            )
            (drop
             (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
              (get_local $0)
              (i32.add
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (br $label$0)
           )
           (i32.store offset=260
            (get_local $3)
            (i32.const 0)
           )
           (i32.store offset=256
            (get_local $3)
            (i32.const 22)
           )
           (i64.store offset=200 align=4
            (get_local $3)
            (i64.load offset=256
             (get_local $3)
            )
           )
           (drop
            (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyyEEEbPT_MT0_FvDpT1_E
             (get_local $0)
             (i32.add
              (get_local $3)
              (i32.const 200)
             )
            )
           )
           (br $label$0)
          )
          (i32.store offset=356
           (get_local $3)
           (i32.const 0)
          )
          (i32.store offset=352
           (get_local $3)
           (i32.const 23)
          )
          (i64.store offset=104 align=4
           (get_local $3)
           (i64.load offset=352
            (get_local $3)
           )
          )
          (drop
           (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyyEEEbPT_MT0_FvDpT1_E
            (get_local $0)
            (i32.add
             (get_local $3)
             (i32.const 104)
            )
           )
          )
          (br $label$0)
         )
         (i32.store offset=276
          (get_local $3)
          (i32.const 0)
         )
         (i32.store offset=272
          (get_local $3)
          (i32.const 24)
         )
         (i64.store offset=184 align=4
          (get_local $3)
          (i64.load offset=272
           (get_local $3)
          )
         )
         (drop
          (call $_ZN5eosio14execute_actionI11arbitrationS1_JyEEEbPT_MT0_FvDpT1_E
           (get_local $0)
           (i32.add
            (get_local $3)
            (i32.const 184)
           )
          )
         )
         (br $label$0)
        )
        (call $_ZN11arbitration15transferhandlerEy
         (get_local $0)
         (get_local $1)
        )
        (br $label$0)
       )
       (i32.store offset=364
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=360
        (get_local $3)
        (i32.const 25)
       )
       (i64.store offset=96 align=4
        (get_local $3)
        (i64.load offset=360
         (get_local $3)
        )
       )
       (drop
        (call $_ZN5eosio14execute_actionI11arbitrationS1_Jyy11checksum256yEEEbPT_MT0_FvDpT1_E
         (get_local $0)
         (i32.add
          (get_local $3)
          (i32.const 96)
         )
        )
       )
       (br $label$0)
      )
      (i32.store offset=300
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=296
       (get_local $3)
       (i32.const 26)
      )
      (i64.store offset=160 align=4
       (get_local $3)
       (i64.load offset=296
        (get_local $3)
       )
      )
      (drop
       (call $_ZN5eosio14execute_actionI11arbitrationS1_JyNS_5assetEyEEEbPT_MT0_FvDpT1_E
        (get_local $0)
        (i32.add
         (get_local $3)
         (i32.const 160)
        )
       )
      )
      (br $label$0)
     )
     (i32.store offset=380
      (get_local $3)
      (i32.const 0)
     )
     (i32.store offset=376
      (get_local $3)
      (i32.const 27)
     )
     (i64.store offset=80 align=4
      (get_local $3)
      (i64.load offset=376
       (get_local $3)
      )
     )
     (drop
      (call $_ZN5eosio14execute_actionI11arbitrationS1_Jyy11checksum256yEEEbPT_MT0_FvDpT1_E
       (get_local $0)
       (i32.add
        (get_local $3)
        (i32.const 80)
       )
      )
     )
     (br $label$0)
    )
    (i32.store offset=404
     (get_local $3)
     (i32.const 0)
    )
    (i32.store offset=400
     (get_local $3)
     (i32.const 28)
    )
    (i64.store offset=56 align=4
     (get_local $3)
     (i64.load offset=400
      (get_local $3)
     )
    )
    (drop
     (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
      (get_local $0)
      (i32.add
       (get_local $3)
       (i32.const 56)
      )
     )
    )
    (br $label$0)
   )
   (i32.store offset=396
    (get_local $3)
    (i32.const 0)
   )
   (i32.store offset=392
    (get_local $3)
    (i32.const 29)
   )
   (i64.store offset=64 align=4
    (get_local $3)
    (i64.load offset=392
     (get_local $3)
    )
   )
   (drop
    (call $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E
     (get_local $0)
     (i32.add
      (get_local $3)
      (i32.const 64)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 464)
   )
  )
 )
 (func $_ZN11arbitration15transferhandlerEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 128)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $5)
          (i64.const 10)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$2
        (i64.eq
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $2
       (select
        (i32.add
         (get_local $2)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $2)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $2)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $4
    (i64.add
     (get_local $4)
     (i64.const -5)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.add
       (get_local $5)
       (i64.const 1)
      )
     )
     (i64.const 13)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $6)
    (get_local $1)
   )
   (i32.const 5728)
  )
  (call $_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (i64.load offset=72
      (get_local $8)
     )
     (i64.load
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 48)
     )
     (i32.const 8)
    )
    (tee_local $5
     (i64.load
      (tee_local $3
       (i32.add
        (get_local $8)
        (i32.const 88)
       )
      )
     )
    )
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.const 8)
    )
    (get_local $5)
   )
   (i64.store offset=48
    (get_local $8)
    (i64.load offset=80
     (get_local $8)
    )
   )
   (i32.store offset=16
    (get_local $8)
    (i32.load offset=48
     (get_local $8)
    )
   )
   (i32.store offset=20
    (get_local $8)
    (i32.load offset=52
     (get_local $8)
    )
   )
   (call $_ZN11arbitration14validate_assetEN5eosio5assetE
    (get_local $0)
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
   )
   (i32.store
    (i32.add
     (get_local $8)
     (i32.const 44)
    )
    (i32.load
     (i32.add
      (get_local $8)
      (i32.const 92)
     )
    )
   )
   (i32.store
    (tee_local $2
     (i32.add
      (i32.add
       (get_local $8)
       (i32.const 32)
      )
      (i32.const 8)
     )
    )
    (i32.load
     (get_local $3)
    )
   )
   (set_local $5
    (i64.load offset=64
     (get_local $8)
    )
   )
   (i64.store offset=32
    (get_local $8)
    (i64.load offset=80
     (get_local $8)
    )
   )
   (i64.store
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i64.load
     (get_local $2)
    )
   )
   (i64.store
    (get_local $8)
    (i64.load offset=32
     (get_local $8)
    )
   )
   (call $_ZN11arbitration11add_balanceEyN5eosio5assetE
    (get_local $0)
    (get_local $5)
    (get_local $8)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (i32.and
      (i32.load8_u offset=96
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $8)
      (i32.const 104)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
 )
 (func $_ZN11arbitration11createclaimEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (set_local $8
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5912297622307078144ENS_7ecafarbEJEEEyEEbT0_
     (get_local $0)
     (get_local $1)
    )
   )
   (set_local $8
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 5536)
  )
  (call $require_auth
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $9)
   (tee_local $1
    (call $_ZN11arbitration13next_index_idEv
     (get_local $0)
    )
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $9)
     (i32.const 64)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=48
   (get_local $9)
   (i64.const -1)
  )
  (i64.store offset=56
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $9)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=40
   (get_local $9)
   (get_local $5)
  )
  (i32.store16
   (tee_local $6
    (i32.add
     (get_local $9)
     (i32.const 72)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=68
   (get_local $9)
   (i32.const 0)
  )
  (i32.store offset=16
   (get_local $9)
   (i32.add
    (get_local $9)
    (i32.const 24)
   )
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE7emplaceIZNS1_3addISI_yEEvT0_EUlRT_E_EENSI_14const_iteratorEyOSM_
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
   (get_local $5)
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=56
       (get_local $9)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $8
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $9)
           (i32.const 60)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $3
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $8)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $8)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $8)
       )
      )
     )
     (set_local $8
      (i32.load
       (i32.add
        (get_local $9)
        (i32.const 56)
       )
      )
     )
     (br $label$2)
    )
    (set_local $8
     (get_local $2)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $8)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 5600)
  )
  (call $_ZN11arbitration10setasclaimEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $4)
   (i32.const 0)
  )
  (i64.store offset=48
   (get_local $9)
   (i64.const -1)
  )
  (i64.store offset=56
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $9)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=40
   (get_local $9)
   (get_local $5)
  )
  (i32.store16
   (get_local $6)
   (i32.const 0)
  )
  (i32.store offset=68
   (get_local $9)
   (i32.const 0)
  )
  (set_local $5
   (i64.load offset=40
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (i32.add
      (get_local $9)
      (i32.const 32)
     )
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $2
      (i32.load offset=56
       (get_local $9)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $8
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $9)
           (i32.const 60)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$9
      (set_local $3
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $8)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $8)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $2)
        (get_local $8)
       )
      )
     )
     (set_local $8
      (i32.load
       (i32.add
        (get_local $9)
        (i32.const 56)
       )
      )
     )
     (br $label$7)
    )
    (set_local $8
     (get_local $2)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $8)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.const 1)
   )
   (i32.const 5648)
  )
  (call $prints
   (i32.const 4816)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 5696)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 80)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI11arbitrationS1_JyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $4
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $4
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $4)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $4)
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $6)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (set_local $3
   (i64.load offset=8
    (get_local $6)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $4)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $5)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vij)
   (get_local $1)
   (get_local $3)
   (get_local $5)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN11arbitration8opencaseEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $8
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5912297622307078144ENS_7ecafarbEJEEEyEEbT0_
     (get_local $0)
     (get_local $2)
    )
   )
   (set_local $8
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 5408)
  )
  (call $require_auth
   (get_local $2)
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $9)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $9)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $9)
   (i64.const 0)
  )
  (i64.store
   (get_local $9)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $9)
   (get_local $2)
  )
  (i32.store16
   (tee_local $6
    (i32.add
     (get_local $9)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $9)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=40
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $9)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $9)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $8
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $9)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$4
      (set_local $4
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $8)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $8)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $3)
        (get_local $8)
       )
      )
     )
     (set_local $8
      (i32.load
       (i32.add
        (get_local $9)
        (i32.const 24)
       )
      )
     )
     (br $label$2)
    )
    (set_local $8
     (get_local $3)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $8)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 2944)
  )
  (call $_ZN11arbitration9setascaseEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $5)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $9)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $9)
   (i64.const 0)
  )
  (i64.store
   (get_local $9)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $9)
   (get_local $2)
  )
  (i32.store16
   (get_local $6)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $9)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=48
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $9)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $9)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $8
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $9)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$9
      (set_local $4
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $8)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $8)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $3)
        (get_local $8)
       )
      )
     )
     (set_local $8
      (i32.load
       (i32.add
        (get_local $9)
        (i32.const 24)
       )
      )
     )
     (br $label$7)
    )
    (set_local $8
     (get_local $3)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $8)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 5456)
  )
  (call $prints
   (i32.const 4048)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 5504)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI11arbitrationS1_JyyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $8
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $7
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $6
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $6
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $6
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $6)
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.const 0)
  )
  (i64.store
   (get_local $8)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $6)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.and
     (get_local $1)
     (i32.const -8)
    )
    (i32.const 8)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (tee_local $5
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $6)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $5)
   )
  )
  (set_local $3
   (i64.load
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $7
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $7)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijj)
   (get_local $1)
   (get_local $3)
   (get_local $4)
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN11arbitration9closecaseEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $5)
  )
  (i32.store16
   (i32.add
    (get_local $10)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $5
   (i64.load offset=48
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.const 1)
   )
   (i32.const 3856)
  )
  (set_local $9
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
   (set_local $9
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 5232)
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (tee_local $7
    (i32.add
     (get_local $10)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=32
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$9
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$7)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 5296)
  )
  (call $_ZN11arbitration5closeEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=32
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$14
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$12)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 5328)
  )
  (call $prints
   (i32.const 4048)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 5376)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration11unclosecaseEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $5)
  )
  (i32.store16
   (i32.add
    (get_local $10)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $5
   (i64.load offset=48
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.const 1)
   )
   (i32.const 3856)
  )
  (set_local $9
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
   (set_local $9
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 5056)
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (tee_local $7
    (i32.add
     (get_local $10)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=32
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$9
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$7)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 5120)
  )
  (call $_ZN11arbitration7uncloseEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=32
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$14
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$12)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 5152)
  )
  (call $prints
   (i32.const 4048)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 5200)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration11rejectclaimEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $5)
  )
  (i32.store16
   (i32.add
    (get_local $10)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $5
   (i64.load offset=40
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.const 1)
   )
   (i32.const 2944)
  )
  (set_local $9
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5912297622307078144ENS_7ecafarbEJEEEyEEbT0_
     (get_local $0)
     (get_local $2)
    )
   )
   (set_local $9
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 4864)
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (tee_local $7
    (i32.add
     (get_local $10)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=16
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$9
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$7)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4928)
  )
  (call $_ZN11arbitration6rejectEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=16
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$14
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$12)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4976)
  )
  (call $prints
   (i32.const 4816)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 5024)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration11unrjctclaimEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $5)
  )
  (i32.store16
   (i32.add
    (get_local $10)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $5
   (i64.load offset=40
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.const 1)
   )
   (i32.const 2944)
  )
  (set_local $9
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5912297622307078144ENS_7ecafarbEJEEEyEEbT0_
     (get_local $0)
     (get_local $2)
    )
   )
   (set_local $9
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 4656)
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (tee_local $7
    (i32.add
     (get_local $10)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=16
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$9
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$7)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4720)
  )
  (call $_ZN11arbitration6rejectEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=16
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$14
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$12)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4768)
  )
  (call $prints
   (i32.const 4816)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 4832)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration11suspendcaseEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $5)
  )
  (i32.store16
   (i32.add
    (get_local $10)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $5
   (i64.load offset=48
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.const 1)
   )
   (i32.const 3856)
  )
  (set_local $9
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
   (set_local $9
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 4464)
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (tee_local $7
    (i32.add
     (get_local $10)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=8
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$9
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$7)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4528)
  )
  (call $_ZN11arbitration7suspendEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=8
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$14
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$12)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4576)
  )
  (call $prints
   (i32.const 4048)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 4624)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration11unsspndcaseEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $5)
  )
  (i32.store16
   (i32.add
    (get_local $10)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $5
   (i64.load offset=48
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.const 1)
   )
   (i32.const 3856)
  )
  (set_local $9
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
   (set_local $9
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 4272)
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (tee_local $7
    (i32.add
     (get_local $10)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=8
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$9
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$7)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4336)
  )
  (call $_ZN11arbitration9unsuspendEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=8
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$14
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$12)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4384)
  )
  (call $prints
   (i32.const 4048)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 4432)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration8dropcaseEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $5)
  )
  (i32.store16
   (i32.add
    (get_local $10)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $5
   (i64.load offset=48
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.const 1)
   )
   (i32.const 3856)
  )
  (set_local $9
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
   (set_local $9
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 4096)
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (tee_local $7
    (i32.add
     (get_local $10)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=24
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$9
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$7)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4160)
  )
  (call $_ZN11arbitration4dropEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=24
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$14
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$12)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4192)
  )
  (call $prints
   (i32.const 4048)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 4240)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration10undropcaseEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $5)
  )
  (i32.store16
   (i32.add
    (get_local $10)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $5
   (i64.load offset=48
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.const 1)
   )
   (i32.const 3856)
  )
  (set_local $9
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
   (set_local $9
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 3888)
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (tee_local $7
    (i32.add
     (get_local $10)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=24
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$9
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$7)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 3952)
  )
  (call $_ZN11arbitration6undropEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (i32.store16
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=24
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (get_local $10)
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $3
      (i32.load offset=24
       (get_local $10)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $10)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$14
      (set_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $3)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
      )
     )
     (br $label$12)
    )
    (set_local $9
     (get_local $3)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $2)
    (i64.const 1)
   )
   (i32.const 4000)
  )
  (call $prints
   (i32.const 4048)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 4064)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration6adddocEyy11checksum256y (type $FUNCSIG$vijjij) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (set_local $6
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $4)
    )
   )
   (set_local $6
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $4)
    )
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 3792)
  )
  (call $require_auth
   (get_local $4)
  )
  (set_local $4
   (call $_ZN11arbitration13next_index_idEv
    (get_local $0)
   )
  )
  (i64.store
   (tee_local $6
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $8)
   (i64.load
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.const 24)
   )
   (i64.load
    (get_local $6)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.const 16)
   )
   (i64.load
    (get_local $5)
   )
  )
  (i64.store offset=40
   (get_local $8)
   (i64.load offset=8
    (get_local $8)
   )
  )
  (i64.store offset=32
   (get_local $8)
   (i64.load
    (get_local $8)
   )
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 120)
   )
   (i32.const 0)
  )
  (i64.store offset=96
   (get_local $8)
   (get_local $1)
  )
  (i64.store offset=104
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=112
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $8)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=124
   (get_local $8)
   (i32.const 0)
  )
  (i32.store offset=76
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 128)
   )
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 136)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (call $_ZN5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyy11checksum256EUlRT_E_EENS9_14const_iteratorEyOSD_
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
   (i32.add
    (get_local $8)
    (i32.const 88)
   )
   (get_local $2)
   (i32.add
    (get_local $8)
    (i32.const 72)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $5
      (i32.load offset=112
       (get_local $8)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $3
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $8)
           (i32.const 116)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$4
      (set_local $6
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $3)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $5)
        (get_local $3)
       )
      )
     )
     (set_local $3
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 112)
       )
      )
     )
     (br $label$2)
    )
    (set_local $3
     (get_local $5)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5553405815408295936ENS_8documentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $4)
   )
   (i32.const 3040)
  )
  (call $prints
   (i32.const 3776)
  )
  (call $printui
   (get_local $4)
  )
  (call $prints
   (i32.const 2416)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI11arbitrationS1_Jyy11checksum256yEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $9
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 192)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $7)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $3
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $3)
        (i32.const 513)
       )
      )
      (set_local $7
       (call $malloc
        (get_local $3)
       )
      )
      (br $label$1)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $7)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $7)
     (get_local $3)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $9)
    (i32.const 72)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $9)
    (i32.const 64)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 32)
    )
    (i32.const 24)
   )
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=80
   (get_local $9)
   (i64.const 0)
  )
  (i32.store offset=164
   (get_local $9)
   (get_local $7)
  )
  (i32.store offset=160
   (get_local $9)
   (get_local $7)
  )
  (i32.store offset=168
   (get_local $9)
   (i32.add
    (get_local $7)
    (get_local $3)
   )
  )
  (i32.store offset=96
   (get_local $9)
   (i32.add
    (get_local $9)
    (i32.const 160)
   )
  )
  (i32.store offset=128
   (get_local $9)
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
  )
  (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyy11checksum256yEEELi0EEEZN5eosiorsINSB_10datastreamIPKcEEJyyS8_yEEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_
   (i32.add
    (get_local $9)
    (i32.const 128)
   )
   (i32.add
    (get_local $9)
    (i32.const 96)
   )
  )
  (set_local $1
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 32)
    )
    (i32.const 16)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $7)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 96)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 28)
    )
   )
  )
  (i32.store
   (tee_local $7
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 96)
     )
     (i32.const 24)
    )
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 96)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 96)
     )
     (i32.const 16)
    )
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i64.load offset=32
    (get_local $9)
   )
  )
  (i32.store offset=96
   (get_local $9)
   (i32.load
    (get_local $1)
   )
  )
  (i32.store offset=108
   (get_local $9)
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=104
   (get_local $9)
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=100
   (get_local $9)
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
   )
  )
  (set_local $5
   (i64.load offset=40
    (get_local $9)
   )
  )
  (set_local $6
   (i64.load
    (i32.add
     (get_local $9)
     (i32.const 80)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 128)
    )
    (i32.const 24)
   )
   (i64.load
    (get_local $7)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 128)
    )
    (i32.const 16)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=136
   (get_local $9)
   (i64.load offset=104
    (get_local $9)
   )
  )
  (i64.store offset=128
   (get_local $9)
   (i64.load offset=96
    (get_local $9)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $8
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $8)
     )
    )
   )
  )
  (i64.store
   (tee_local $7
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 160)
     )
     (i32.const 24)
    )
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 128)
     )
     (i32.const 24)
    )
   )
  )
  (i64.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 160)
     )
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 128)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=168
   (get_local $9)
   (i64.load offset=136
    (get_local $9)
   )
  )
  (i64.store offset=160
   (get_local $9)
   (i64.load offset=128
    (get_local $9)
   )
  )
  (i64.store
   (i32.add
    (get_local $9)
    (i32.const 24)
   )
   (i64.load
    (get_local $7)
   )
  )
  (i64.store
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store
   (get_local $9)
   (i64.load offset=160
    (get_local $9)
   )
  )
  (i64.store offset=8
   (get_local $9)
   (i64.load offset=168
    (get_local $9)
   )
  )
  (call_indirect (type $FUNCSIG$vijjij)
   (get_local $1)
   (get_local $4)
   (get_local $5)
   (get_local $9)
   (get_local $6)
   (get_local $8)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 192)
   )
  )
  (i32.const 1)
 )
 (func $_ZN11arbitration9verifydocEyyy (type $FUNCSIG$vijjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5553405815408295936ENS_8documentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const 3536)
  )
  (i32.store
   (i32.add
    (get_local $11)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $11)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $11)
   (i64.load
    (get_local $0)
   )
  )
  (i32.store8 offset=44
   (get_local $11)
   (i32.const 0)
  )
  (set_local $4
   (i64.load offset=8
    (call $_ZNK5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE3getEyPKc
     (i32.add
      (get_local $11)
      (i32.const 8)
     )
     (get_local $2)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $11)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $10
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $11)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$3
      (set_local $6
       (i32.load
        (tee_local $10
         (i32.add
          (get_local $10)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $10)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $5)
        (get_local $10)
       )
      )
     )
     (set_local $10
      (i32.load
       (i32.add
        (get_local $11)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $10
     (get_local $5)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $10)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (get_local $3)
   )
   (i32.const 3568)
  )
  (set_local $10
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4921564792717574144ENS_8claimantEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $3)
    )
   )
   (set_local $10
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy13452632849406377984ENS_10respondentEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (get_local $10)
   (i32.const 3616)
  )
  (call $require_auth
   (get_local $3)
  )
  (i32.store
   (tee_local $8
    (i32.add
     (get_local $11)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $11)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $11)
   (i64.load
    (get_local $0)
   )
  )
  (i32.store8 offset=44
   (get_local $11)
   (i32.const 0)
  )
  (set_local $7
   (i32.and
    (i32.load8_u offset=48
     (call $_ZNK5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE3getEyPKc
      (i32.add
       (get_local $11)
       (i32.const 8)
      )
      (get_local $2)
      (i32.const 1520)
     )
    )
    (i32.const 1)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $11)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $10
        (i32.load
         (tee_local $9
          (i32.add
           (get_local $11)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$9
      (set_local $6
       (i32.load
        (tee_local $10
         (i32.add
          (get_local $10)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $10)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $5)
        (get_local $10)
       )
      )
     )
     (set_local $10
      (i32.load
       (i32.add
        (get_local $11)
        (i32.const 32)
       )
      )
     )
     (br $label$7)
    )
    (set_local $10
     (get_local $5)
    )
   )
   (i32.store
    (get_local $9)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $10)
   )
  )
  (call $eosio_assert
   (i32.xor
    (get_local $7)
    (i32.const 1)
   )
   (i32.const 3680)
  )
  (call $_ZN11arbitration6verifyIN5eosio11multi_indexILy5553405815408295936ENS_8documentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEEEvyyy
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
  (i32.store
   (get_local $8)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $11)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $11)
   (i64.load
    (get_local $0)
   )
  )
  (i32.store8 offset=44
   (get_local $11)
   (i32.const 0)
  )
  (set_local $0
   (i32.and
    (i32.load8_u offset=48
     (call $_ZNK5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE3getEyPKc
      (i32.add
       (get_local $11)
       (i32.const 8)
      )
      (get_local $2)
      (i32.const 1520)
     )
    )
    (i32.const 1)
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $11)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $10
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $11)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$14
      (set_local $6
       (i32.load
        (tee_local $10
         (i32.add
          (get_local $10)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $10)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $5)
        (get_local $10)
       )
      )
     )
     (set_local $10
      (i32.load
       (i32.add
        (get_local $11)
        (i32.const 32)
       )
      )
     )
     (br $label$12)
    )
    (set_local $10
     (get_local $5)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $10)
   )
  )
  (call $eosio_assert
   (get_local $0)
   (i32.const 3728)
  )
  (call $prints
   (i32.const 3776)
  )
  (call $printui
   (get_local $2)
  )
  (call $prints
   (i32.const 3376)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI11arbitrationS1_JyyyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (set_local $10
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $8)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $9
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $8
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $8
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $8
      (i32.sub
       (get_local $8)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $8)
     (get_local $1)
    )
   )
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $10)
     (i32.const 8)
    )
    (get_local $8)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (tee_local $6
     (i32.and
      (get_local $1)
      (i32.const -8)
     )
    )
    (i32.const 8)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (tee_local $7
     (i32.add
      (i32.add
       (get_local $10)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 16)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (tee_local $6
     (i32.add
      (i32.add
       (get_local $10)
       (i32.const 8)
      )
      (i32.const 16)
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $8)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $6)
   )
  )
  (set_local $4
   (i64.load
    (get_local $7)
   )
  )
  (set_local $3
   (i64.load offset=8
    (get_local $10)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $9
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $9)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijjj)
   (get_local $1)
   (get_local $3)
   (get_local $4)
   (get_local $5)
   (get_local $9)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
  )
  (i32.const 1)
 )
 (func $_ZN11arbitration5addtxEyy11checksum256y (type $FUNCSIG$vijjij) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (set_local $6
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $4)
    )
   )
   (set_local $6
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $4)
    )
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 3408)
  )
  (call $require_auth
   (get_local $4)
  )
  (set_local $4
   (call $_ZN11arbitration13next_index_idEv
    (get_local $0)
   )
  )
  (i64.store
   (tee_local $6
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $8)
   (i64.load
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.const 24)
   )
   (i64.load
    (get_local $6)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.const 16)
   )
   (i64.load
    (get_local $5)
   )
  )
  (i64.store offset=40
   (get_local $8)
   (i64.load offset=8
    (get_local $8)
   )
  )
  (i64.store offset=32
   (get_local $8)
   (i64.load
    (get_local $8)
   )
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 120)
   )
   (i32.const 0)
  )
  (i64.store offset=96
   (get_local $8)
   (get_local $1)
  )
  (i64.store offset=104
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=112
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $8)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=124
   (get_local $8)
   (i32.const 0)
  )
  (i32.store offset=76
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 128)
   )
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 136)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (call $_ZN5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyy11checksum256EUlRT_E_EENS9_14const_iteratorEyOSD_
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
   (i32.add
    (get_local $8)
    (i32.const 88)
   )
   (get_local $2)
   (i32.add
    (get_local $8)
    (i32.const 72)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $5
      (i32.load offset=112
       (get_local $8)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $3
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $8)
           (i32.const 116)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$4
      (set_local $6
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $3)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $5)
        (get_local $3)
       )
      )
     )
     (set_local $3
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 112)
       )
      )
     )
     (br $label$2)
    )
    (set_local $3
     (get_local $5)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy14829575226499868160ENS_11transactionEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $4)
   )
   (i32.const 3488)
  )
  (call $prints
   (i32.const 3360)
  )
  (call $printui
   (get_local $4)
  )
  (call $prints
   (i32.const 2416)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 144)
   )
  )
 )
 (func $_ZN11arbitration8verifytxEyyy (type $FUNCSIG$vijjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy14829575226499868160ENS_11transactionEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const 3104)
  )
  (i32.store
   (i32.add
    (get_local $11)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $11)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $11)
   (i64.load
    (get_local $0)
   )
  )
  (i32.store8 offset=44
   (get_local $11)
   (i32.const 0)
  )
  (set_local $4
   (i64.load offset=8
    (call $_ZNK5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE3getEyPKc
     (i32.add
      (get_local $11)
      (i32.const 8)
     )
     (get_local $2)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $11)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $10
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $11)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$3
      (set_local $6
       (i32.load
        (tee_local $10
         (i32.add
          (get_local $10)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $10)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $5)
        (get_local $10)
       )
      )
     )
     (set_local $10
      (i32.load
       (i32.add
        (get_local $11)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $10
     (get_local $5)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $10)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (get_local $3)
   )
   (i32.const 3152)
  )
  (set_local $10
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4921564792717574144ENS_8claimantEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $3)
    )
   )
   (set_local $10
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy13452632849406377984ENS_10respondentEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (get_local $10)
   (i32.const 3200)
  )
  (call $require_auth
   (get_local $3)
  )
  (i32.store
   (tee_local $8
    (i32.add
     (get_local $11)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $11)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $11)
   (i64.load
    (get_local $0)
   )
  )
  (i32.store8 offset=44
   (get_local $11)
   (i32.const 0)
  )
  (set_local $7
   (i32.and
    (i32.load8_u offset=48
     (call $_ZNK5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE3getEyPKc
      (i32.add
       (get_local $11)
       (i32.const 8)
      )
      (get_local $2)
      (i32.const 1520)
     )
    )
    (i32.const 1)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $11)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $10
        (i32.load
         (tee_local $9
          (i32.add
           (get_local $11)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$9
      (set_local $6
       (i32.load
        (tee_local $10
         (i32.add
          (get_local $10)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $10)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $5)
        (get_local $10)
       )
      )
     )
     (set_local $10
      (i32.load
       (i32.add
        (get_local $11)
        (i32.const 32)
       )
      )
     )
     (br $label$7)
    )
    (set_local $10
     (get_local $5)
    )
   )
   (i32.store
    (get_local $9)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $10)
   )
  )
  (call $eosio_assert
   (i32.xor
    (get_local $7)
    (i32.const 1)
   )
   (i32.const 3264)
  )
  (call $_ZN11arbitration6verifyIN5eosio11multi_indexILy14829575226499868160ENS_11transactionEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEEEvyyy
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
  (i32.store
   (get_local $8)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $11)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $11)
   (i64.load
    (get_local $0)
   )
  )
  (i32.store8 offset=44
   (get_local $11)
   (i32.const 0)
  )
  (set_local $0
   (i32.and
    (i32.load8_u offset=48
     (call $_ZNK5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE3getEyPKc
      (i32.add
       (get_local $11)
       (i32.const 8)
      )
      (get_local $2)
      (i32.const 1520)
     )
    )
    (i32.const 1)
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $11)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $10
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $11)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$14
      (set_local $6
       (i32.load
        (tee_local $10
         (i32.add
          (get_local $10)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $10)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $5)
        (get_local $10)
       )
      )
     )
     (set_local $10
      (i32.load
       (i32.add
        (get_local $11)
        (i32.const 32)
       )
      )
     )
     (br $label$12)
    )
    (set_local $10
     (get_local $5)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $10)
   )
  )
  (call $eosio_assert
   (get_local $0)
   (i32.const 3312)
  )
  (call $prints
   (i32.const 3360)
  )
  (call $printui
   (get_local $2)
  )
  (call $prints
   (i32.const 3376)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration8addrjctnEyy11checksum256y (type $FUNCSIG$vijjij) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 160)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 64)
   )
   (i32.const 0)
  )
  (i64.store offset=48
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=56
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $10)
   (tee_local $7
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=40
   (get_local $10)
   (get_local $7)
  )
  (i32.store16
   (i32.add
    (get_local $10)
    (i32.const 72)
   )
   (i32.const 0)
  )
  (i32.store offset=68
   (get_local $10)
   (i32.const 0)
  )
  (set_local $7
   (i64.load offset=40
    (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc
     (i32.add
      (get_local $10)
      (i32.const 32)
     )
     (get_local $1)
     (i32.const 1520)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $5
      (i32.load offset=56
       (get_local $10)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $10)
           (i32.const 60)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$3
      (set_local $6
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $5)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 56)
       )
      )
     )
     (br $label$1)
    )
    (set_local $9
     (get_local $5)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $7)
    (i64.const 1)
   )
   (i32.const 2944)
  )
  (set_local $9
   (i32.const 1)
  )
  (block $label$5
   (br_if $label$5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $4)
    )
   )
   (set_local $9
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $4)
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 2976)
  )
  (call $require_auth
   (get_local $4)
  )
  (set_local $4
   (call $_ZN11arbitration13next_index_idEv
    (get_local $0)
   )
  )
  (i64.store
   (tee_local $9
    (i32.add
     (get_local $10)
     (i32.const 24)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (tee_local $6
    (i32.add
     (get_local $10)
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 80)
    )
    (i32.const 24)
   )
   (i64.load
    (get_local $9)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 80)
    )
    (i32.const 16)
   )
   (i64.load
    (get_local $6)
   )
  )
  (i64.store offset=88
   (get_local $10)
   (i64.load offset=8
    (get_local $10)
   )
  )
  (i64.store offset=80
   (get_local $10)
   (i64.load
    (get_local $10)
   )
  )
  (i64.store offset=152
   (get_local $10)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $10)
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 64)
   )
   (i32.const 0)
  )
  (i64.store offset=40
   (get_local $10)
   (get_local $1)
  )
  (i64.store offset=48
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=56
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $10)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store offset=132
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 144)
   )
  )
  (i32.store offset=128
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 152)
   )
  )
  (i32.store offset=136
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 80)
   )
  )
  (call $_ZN5eosio11multi_indexILy13447366294640263168EN11arbitration9rejectionEJEE7emplaceIZNS1_3addIS3_EEvyyy11checksum256EUlRT_E_EENS3_14const_iteratorEyOS7_
   (i32.add
    (get_local $10)
    (i32.const 120)
   )
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (get_local $2)
   (i32.add
    (get_local $10)
    (i32.const 128)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $5
      (i32.load offset=56
       (get_local $10)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $10)
           (i32.const 60)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$9
      (set_local $6
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $5)
        (get_local $9)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 56)
       )
      )
     )
     (br $label$7)
    )
    (set_local $9
     (get_local $5)
    )
   )
   (i32.store
    (get_local $3)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5553405815408295936ENS_8documentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $4)
   )
   (i32.const 3040)
  )
  (call $prints
   (i32.const 3088)
  )
  (call $printui
   (get_local $4)
  )
  (call $prints
   (i32.const 2416)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 160)
   )
  )
 )
 (func $_ZN11arbitration6addarbEyyy (type $FUNCSIG$vijjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5912297622307078144ENS_7ecafarbEJEEEyEEbT0_
    (get_local $0)
    (get_local $2)
   )
   (i32.const 2768)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4921564792717574144ENS_8claimantEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 2208)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy13452632849406377984ENS_10respondentEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 2256)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 2304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (get_local $3)
   )
   (i32.const 2816)
  )
  (call $require_auth
   (get_local $3)
  )
  (i64.store offset=56
   (get_local $8)
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (get_local $1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $8)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store offset=8
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (call $_ZN5eosio11multi_indexILy3877296762501054464EN11arbitration10arbitratorEJEE7emplaceIZNS1_3addIS3_EEvyyEUlRT_E_EENS3_14const_iteratorEyOS6_
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
   (get_local $3)
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $4
      (i32.load offset=40
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$3
      (set_local $5
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $7)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $4)
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 40)
       )
      )
     )
     (br $label$1)
    )
    (set_local $7
     (get_local $4)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const 2880)
  )
  (call $prints
   (i32.const 2928)
  )
  (call $printn
   (get_local $2)
  )
  (call $prints
   (i32.const 2416)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
 )
 (func $_ZN11arbitration10addecafarbEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (get_local $2)
   )
   (i32.const 2576)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5912297622307078144ENS_7ecafarbEJEEEyEEbT0_
     (get_local $0)
     (get_local $1)
    )
    (i32.const 1)
   )
   (i32.const 2640)
  )
  (call $require_auth
   (get_local $2)
  )
  (i64.store offset=56
   (get_local $7)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $7)
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 56)
   )
  )
  (call $_ZN5eosio11multi_indexILy5912297622307078144EN11arbitration7ecafarbEJEE7emplaceIZNS1_3addIS3_yEEvT0_EUlRT_E_EENS3_14const_iteratorEyOS7_
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $2)
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=40
       (get_local $7)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $6
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $7)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $6)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $6)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $6)
       )
      )
     )
     (set_local $6
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 40)
       )
      )
     )
     (br $label$1)
    )
    (set_local $6
     (get_local $3)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5912297622307078144ENS_7ecafarbEJEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 2688)
  )
  (call $prints
   (i32.const 2736)
  )
  (call $printn
   (get_local $1)
  )
  (call $prints
   (i32.const 2416)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
  )
 )
 (func $_ZN11arbitration8addclmntEyyy (type $FUNCSIG$vijjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (set_local $7
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $3)
    )
   )
   (set_local $7
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (get_local $7)
   (i32.const 2448)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4921564792717574144ENS_8claimantEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 2208)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy13452632849406377984ENS_10respondentEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 2256)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 2304)
  )
  (call $require_auth
   (get_local $3)
  )
  (i64.store offset=56
   (get_local $8)
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (get_local $1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $8)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store offset=8
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (call $_ZN5eosio11multi_indexILy4921564792717574144EN11arbitration8claimantEJEE7emplaceIZNS1_3addIS3_EEvyyEUlRT_E_EENS3_14const_iteratorEyOS6_
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
   (get_local $3)
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $4
      (i32.load offset=40
       (get_local $8)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$4
      (set_local $5
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $7)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $4)
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $7
     (get_local $4)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4921564792717574144ENS_8claimantEJEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const 2512)
  )
  (call $prints
   (i32.const 2560)
  )
  (call $printn
   (get_local $2)
  )
  (call $prints
   (i32.const 2416)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
 )
 (func $_ZN11arbitration7addrespEyyy (type $FUNCSIG$vijjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (set_local $7
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $3)
    )
   )
   (set_local $7
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (get_local $7)
   (i32.const 2144)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4921564792717574144ENS_8claimantEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 2208)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy13452632849406377984ENS_10respondentEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 2256)
  )
  (call $eosio_assert
   (i32.xor
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 2304)
  )
  (call $require_auth
   (get_local $3)
  )
  (i64.store offset=56
   (get_local $8)
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (get_local $1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $8)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store offset=8
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (call $_ZN5eosio11multi_indexILy13452632849406377984EN11arbitration10respondentEJEE7emplaceIZNS1_3addIS3_EEvyyEUlRT_E_EENS3_14const_iteratorEyOS6_
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
   (get_local $3)
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $4
      (i32.load offset=40
       (get_local $8)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$4
      (set_local $5
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $7)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $4)
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $7
     (get_local $4)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy13452632849406377984ENS_10respondentEJEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const 2352)
  )
  (call $prints
   (i32.const 2400)
  )
  (call $printn
   (get_local $2)
  )
  (call $prints
   (i32.const 2416)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
 )
 (func $_ZN11arbitration7setbondEyN5eosio5assetEy (type $FUNCSIG$vijij) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 128)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (set_local $5
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $3)
    )
   )
   (set_local $5
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 2048)
  )
  (call $require_auth
   (get_local $3)
  )
  (i64.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (tee_local $4
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $3
   (i64.load
    (get_local $2)
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 12)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.const 12)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
   (i32.load
    (get_local $5)
   )
  )
  (i64.store offset=32
   (get_local $8)
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $8)
   (i32.load offset=36
    (get_local $8)
   )
  )
  (i32.store
   (get_local $8)
   (i32.load offset=32
    (get_local $8)
   )
  )
  (call $_ZN11arbitration14validate_assetEN5eosio5assetE
   (get_local $0)
   (get_local $8)
  )
  (call $_ZN11arbitration9flip_bondEy
   (get_local $0)
   (get_local $1)
  )
  (set_local $3
   (call $_ZN11arbitration13next_index_idEv
    (get_local $0)
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (get_local $4)
   )
  )
  (i64.store offset=16
   (get_local $8)
   (i64.load
    (get_local $2)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 48)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $5)
   )
  )
  (i64.store offset=48
   (get_local $8)
   (i64.load offset=16
    (get_local $8)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (get_local $3)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
   (i32.const 0)
  )
  (i64.store offset=88
   (get_local $8)
   (get_local $1)
  )
  (i64.store offset=96
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=104
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=80
   (get_local $8)
   (tee_local $6
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=116
   (get_local $8)
   (i32.const 0)
  )
  (i32.store offset=76
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 120)
   )
  )
  (call $_ZN5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyNS_5assetEEUlRT_E_EENS9_14const_iteratorEyOSD_
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
   (get_local $6)
   (i32.add
    (get_local $8)
    (i32.const 72)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $4
      (i32.load offset=104
       (get_local $8)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $2
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $8)
           (i32.const 108)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$4
      (set_local $5
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $2)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $2)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $4)
        (get_local $2)
       )
      )
     )
     (set_local $2
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 104)
       )
      )
     )
     (br $label$2)
    )
    (set_local $2
     (get_local $4)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4406367615103008768ENS_4bondEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_10by_currentEvEEEEEEEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
   (i32.const 2096)
  )
  (call $prints
   (i32.const 2128)
  )
  (call $printui
   (get_local $3)
  )
  (call $prints
   (i32.const 1632)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 128)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI11arbitrationS1_JyNS_5assetEyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (set_local $10
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 96)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $8)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $9
   (i32.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (set_local $6
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $6
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $6
      (i32.sub
       (get_local $8)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $6)
     (get_local $3)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i64.const 1398362884)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $7
   (i64.const 5462355)
  )
  (block $label$3
   (loop $label$4
    (set_local $8
     (i32.const 0)
    )
    (br_if $label$3
     (i32.gt_u
      (i32.add
       (i32.shl
        (i32.wrap/i64
         (get_local $7)
        )
        (i32.const 24)
       )
       (i32.const -1073741825)
      )
      (i32.const 452984830)
     )
    )
    (block $label$5
     (br_if $label$5
      (i64.ne
       (i64.and
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 8)
         )
        )
        (i64.const 255)
       )
       (i64.const 0)
      )
     )
     (loop $label$6
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $7
          (i64.shr_u
           (get_local $7)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (br_if $label$6
       (i32.lt_s
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
     )
    )
    (set_local $8
     (i32.const 1)
    )
    (br_if $label$4
     (i32.lt_s
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 7)
     )
    )
   )
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 576)
  )
  (i64.store offset=40
   (get_local $10)
   (i64.const 0)
  )
  (i32.store offset=84
   (get_local $10)
   (get_local $6)
  )
  (i32.store offset=80
   (get_local $10)
   (get_local $6)
  )
  (i32.store offset=88
   (get_local $10)
   (i32.add
    (get_local $6)
    (get_local $3)
   )
  )
  (i32.store offset=48
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 80)
   )
  )
  (i32.store offset=64
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
  (call $_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEyEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_yEEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_
   (i32.add
    (get_local $10)
    (i32.const 64)
   )
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $6)
   )
  )
  (i64.store
   (tee_local $1
    (i32.add
     (i32.add
      (get_local $10)
      (i32.const 48)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (set_local $7
   (i64.load offset=16
    (get_local $10)
   )
  )
  (i64.store offset=48
   (get_local $10)
   (i64.load offset=24
    (get_local $10)
   )
  )
  (set_local $4
   (i64.load
    (i32.add
     (get_local $10)
     (i32.const 40)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 64)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=64
   (get_local $10)
   (i64.load offset=48
    (get_local $10)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $9
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $9)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 80)
    )
    (i32.const 8)
   )
   (tee_local $5
    (i64.load
     (i32.add
      (i32.add
       (get_local $10)
       (i32.const 64)
      )
      (i32.const 8)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $10)
    (i32.const 8)
   )
   (get_local $5)
  )
  (i64.store offset=80
   (get_local $10)
   (tee_local $5
    (i64.load offset=64
     (get_local $10)
    )
   )
  )
  (i64.store
   (get_local $10)
   (get_local $5)
  )
  (call_indirect (type $FUNCSIG$vijij)
   (get_local $1)
   (get_local $7)
   (get_local $10)
   (get_local $4)
   (get_local $9)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 96)
   )
  )
  (i32.const 1)
 )
 (func $_ZN11arbitration6setfeeEyN5eosio5assetEy (type $FUNCSIG$vijij) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 128)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (set_local $5
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $3)
    )
   )
   (set_local $5
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 1952)
  )
  (call $require_auth
   (get_local $3)
  )
  (i64.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (tee_local $4
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $3
   (i64.load
    (get_local $2)
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 12)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.const 12)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
   (i32.load
    (get_local $5)
   )
  )
  (i64.store offset=32
   (get_local $8)
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $8)
   (i32.load offset=36
    (get_local $8)
   )
  )
  (i32.store
   (get_local $8)
   (i32.load offset=32
    (get_local $8)
   )
  )
  (call $_ZN11arbitration14validate_assetEN5eosio5assetE
   (get_local $0)
   (get_local $8)
  )
  (call $_ZN11arbitration8flip_feeEy
   (get_local $0)
   (get_local $1)
  )
  (set_local $3
   (call $_ZN11arbitration13next_index_idEv
    (get_local $0)
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (get_local $4)
   )
  )
  (i64.store offset=16
   (get_local $8)
   (i64.load
    (get_local $2)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 48)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $5)
   )
  )
  (i64.store offset=48
   (get_local $8)
   (i64.load offset=16
    (get_local $8)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (get_local $3)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
   (i32.const 0)
  )
  (i64.store offset=88
   (get_local $8)
   (get_local $1)
  )
  (i64.store offset=96
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=104
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=80
   (get_local $8)
   (tee_local $6
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=116
   (get_local $8)
   (i32.const 0)
  )
  (i32.store offset=76
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 120)
   )
  )
  (call $_ZN5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyNS_5assetEEUlRT_E_EENS9_14const_iteratorEyOSD_
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
   (get_local $6)
   (i32.add
    (get_local $8)
    (i32.const 72)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $4
      (i32.load offset=104
       (get_local $8)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $2
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $8)
           (i32.const 108)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$4
      (set_local $5
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $2)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $2)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $4)
        (get_local $2)
       )
      )
     )
     (set_local $2
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 104)
       )
      )
     )
     (br $label$2)
    )
    (set_local $2
     (get_local $4)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6526841759966691328ENS_3feeEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_10by_currentEvEEEEEEEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
   (i32.const 2000)
  )
  (call $prints
   (i32.const 2032)
  )
  (call $printui
   (get_local $3)
  )
  (call $prints
   (i32.const 1632)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 128)
   )
  )
 )
 (func $_ZN11arbitration9setsubfeeEN5eosio5assetEy (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 128)
    )
   )
  )
  (set_local $4
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy5912297622307078144ENS_7ecafarbEJEEEyEEbT0_
     (get_local $0)
     (get_local $2)
    )
   )
   (set_local $4
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $4)
   (i32.const 1792)
  )
  (call $require_auth
   (get_local $2)
  )
  (i64.store
   (tee_local $4
    (i32.add
     (i32.add
      (get_local $6)
      (i32.const 40)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (tee_local $3
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $2
   (i64.load
    (get_local $1)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 12)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $6)
      (i32.const 40)
     )
     (i32.const 12)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 8)
   )
   (i32.load
    (get_local $4)
   )
  )
  (i64.store offset=40
   (get_local $6)
   (get_local $2)
  )
  (i32.store offset=12
   (get_local $6)
   (i32.load offset=44
    (get_local $6)
   )
  )
  (i32.store offset=8
   (get_local $6)
   (i32.load offset=40
    (get_local $6)
   )
  )
  (call $_ZN11arbitration14validate_assetEN5eosio5assetE
   (get_local $0)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (i64.store
   (tee_local $4
    (i32.add
     (i32.add
      (get_local $6)
      (i32.const 24)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=24
   (get_local $6)
   (i64.load
    (get_local $1)
   )
  )
  (i64.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $6)
      (i32.const 56)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (get_local $4)
   )
  )
  (i64.store offset=56
   (get_local $6)
   (i64.load offset=24
    (get_local $6)
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 120)
   )
   (i32.const 0)
  )
  (i64.store offset=104
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=112
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $6)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=96
   (get_local $6)
   (get_local $2)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $6)
     (i32.const 72)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=72
   (get_local $6)
   (i64.load offset=56
    (get_local $6)
   )
  )
  (call $_ZN5eosio9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3setERKS2_y
   (i32.add
    (get_local $6)
    (i32.const 88)
   )
   (i32.add
    (get_local $6)
    (i32.const 72)
   )
   (get_local $2)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $3
      (i32.load offset=112
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $6)
           (i32.const 116)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$4
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 112)
       )
      )
     )
     (br $label$2)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (call $prints
   (i32.const 1856)
  )
  (call $_ZNK5eosio5asset5printEv
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 128)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI11arbitrationS1_JNS_5assetEyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $9
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 96)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $7)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $5
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $5
      (i32.sub
       (get_local $7)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $5)
     (get_local $3)
    )
   )
  )
  (i64.store offset=32
   (get_local $9)
   (i64.const 1398362884)
  )
  (i64.store offset=24
   (get_local $9)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $6
   (i64.const 5462355)
  )
  (block $label$3
   (loop $label$4
    (set_local $7
     (i32.const 0)
    )
    (br_if $label$3
     (i32.gt_u
      (i32.add
       (i32.shl
        (i32.wrap/i64
         (get_local $6)
        )
        (i32.const 24)
       )
       (i32.const -1073741825)
      )
      (i32.const 452984830)
     )
    )
    (block $label$5
     (br_if $label$5
      (i64.ne
       (i64.and
        (tee_local $6
         (i64.shr_u
          (get_local $6)
          (i64.const 8)
         )
        )
        (i64.const 255)
       )
       (i64.const 0)
      )
     )
     (loop $label$6
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $6
          (i64.shr_u
           (get_local $6)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (br_if $label$6
       (i32.lt_s
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
     )
    )
    (set_local $7
     (i32.const 1)
    )
    (br_if $label$4
     (i32.lt_s
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 7)
     )
    )
   )
  )
  (call $eosio_assert
   (get_local $7)
   (i32.const 576)
  )
  (i64.store offset=40
   (get_local $9)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $3)
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (tee_local $1
     (i32.and
      (get_local $3)
      (i32.const -8)
     )
    )
    (i32.const 8)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (tee_local $7
     (i32.add
      (i32.add
       (get_local $9)
       (i32.const 24)
      )
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $1)
    (i32.const 16)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (tee_local $1
     (i32.add
      (i32.add
       (get_local $9)
       (i32.const 24)
      )
      (i32.const 16)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $5)
   )
  )
  (i64.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 48)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (get_local $7)
   )
  )
  (i64.store offset=48
   (get_local $9)
   (i64.load offset=24
    (get_local $9)
   )
  )
  (set_local $6
   (i64.load
    (get_local $1)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 64)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=64
   (get_local $9)
   (i64.load offset=48
    (get_local $9)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $8
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $8)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 80)
    )
    (i32.const 8)
   )
   (tee_local $4
    (i64.load
     (i32.add
      (i32.add
       (get_local $9)
       (i32.const 64)
      )
      (i32.const 8)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
    (i32.const 8)
   )
   (get_local $4)
  )
  (i64.store offset=80
   (get_local $9)
   (tee_local $4
    (i64.load offset=64
     (get_local $9)
    )
   )
  )
  (i64.store offset=8
   (get_local $9)
   (get_local $4)
  )
  (call_indirect (type $FUNCSIG$viij)
   (get_local $1)
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
   (get_local $6)
   (get_local $8)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 96)
   )
  )
  (i32.const 1)
 )
 (func $_ZN11arbitration11setpymntdueEyN5eosio5assetEyy (type $FUNCSIG$vijijj) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (set_local $5
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $4)
    )
   )
   (set_local $5
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $4)
    )
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 656)
  )
  (call $require_auth
   (get_local $4)
  )
  (i64.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 32)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (tee_local $6
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $2)
   )
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 12)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 32)
     )
     (i32.const 12)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
   (i32.load
    (get_local $5)
   )
  )
  (i64.store offset=32
   (get_local $7)
   (get_local $4)
  )
  (i32.store offset=4
   (get_local $7)
   (i32.load offset=36
    (get_local $7)
   )
  )
  (i32.store
   (get_local $7)
   (i32.load offset=32
    (get_local $7)
   )
  )
  (call $_ZN11arbitration14validate_assetEN5eosio5assetE
   (get_local $0)
   (get_local $7)
  )
  (set_local $4
   (call $_ZN11arbitration13next_index_idEv
    (get_local $0)
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (get_local $6)
   )
  )
  (i64.store offset=16
   (get_local $7)
   (i64.load
    (get_local $2)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 48)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $5)
   )
  )
  (i64.store offset=48
   (get_local $7)
   (i64.load offset=16
    (get_local $7)
   )
  )
  (i64.store offset=136
   (get_local $7)
   (get_local $4)
  )
  (i64.store offset=128
   (get_local $7)
   (get_local $3)
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 120)
   )
   (i32.const 0)
  )
  (i64.store offset=96
   (get_local $7)
   (get_local $1)
  )
  (i64.store offset=104
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=112
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $7)
   (tee_local $1
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store16 offset=124
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=76
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 128)
   )
  )
  (i32.store offset=72
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 136)
   )
  )
  (i32.store offset=80
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (call $_ZN5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEENS3_ILy4587592574746755072ENS6_IS2_yXadL_ZNKS2_7by_paidEvEEEEEEEE7emplaceIZNS1_11add_paymentEyyyNS_5assetEEUlRT_E_EENSB_14const_iteratorEyOSE_
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
   (i32.add
    (get_local $7)
    (i32.const 88)
   )
   (get_local $1)
   (i32.add
    (get_local $7)
    (i32.const 72)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $5
      (i32.load offset=112
       (get_local $7)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $7)
           (i32.const 116)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$4
      (set_local $2
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $2)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $5)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 112)
       )
      )
     )
     (br $label$2)
    )
    (set_local $0
     (get_local $5)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (call $prints
   (i32.const 1616)
  )
  (call $printui
   (get_local $4)
  )
  (call $prints
   (i32.const 1632)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI11arbitrationS1_JyNS_5assetEyyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (set_local $11
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $10
   (i32.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $7
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $7)
     (get_local $3)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $11)
    (i32.const 40)
   )
   (i64.const 1398362884)
  )
  (i64.store offset=32
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $8
   (i64.const 5462355)
  )
  (block $label$3
   (loop $label$4
    (set_local $9
     (i32.const 0)
    )
    (br_if $label$3
     (i32.gt_u
      (i32.add
       (i32.shl
        (i32.wrap/i64
         (get_local $8)
        )
        (i32.const 24)
       )
       (i32.const -1073741825)
      )
      (i32.const 452984830)
     )
    )
    (block $label$5
     (br_if $label$5
      (i64.ne
       (i64.and
        (tee_local $8
         (i64.shr_u
          (get_local $8)
          (i64.const 8)
         )
        )
        (i64.const 255)
       )
       (i64.const 0)
      )
     )
     (loop $label$6
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $8
          (i64.shr_u
           (get_local $8)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (br_if $label$6
       (i32.lt_s
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
     )
    )
    (set_local $9
     (i32.const 1)
    )
    (br_if $label$4
     (i32.lt_s
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 7)
     )
    )
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 576)
  )
  (i64.store offset=56
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $11)
   (i64.const 0)
  )
  (i32.store offset=100
   (get_local $11)
   (get_local $7)
  )
  (i32.store offset=96
   (get_local $11)
   (get_local $7)
  )
  (i32.store offset=104
   (get_local $11)
   (i32.add
    (get_local $7)
    (get_local $3)
   )
  )
  (i32.store offset=64
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 96)
   )
  )
  (i32.store offset=80
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 24)
   )
  )
  (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEyyEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_yyEEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_
   (i32.add
    (get_local $11)
    (i32.const 80)
   )
   (i32.add
    (get_local $11)
    (i32.const 64)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $7)
   )
  )
  (i64.store
   (tee_local $1
    (i32.add
     (i32.add
      (get_local $11)
      (i32.const 64)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (i32.add
     (get_local $11)
     (i32.const 40)
    )
   )
  )
  (set_local $8
   (i64.load offset=24
    (get_local $11)
   )
  )
  (i64.store offset=64
   (get_local $11)
   (i64.load offset=32
    (get_local $11)
   )
  )
  (set_local $5
   (i64.load
    (i32.add
     (get_local $11)
     (i32.const 56)
    )
   )
  )
  (set_local $4
   (i64.load
    (i32.add
     (get_local $11)
     (i32.const 48)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $11)
     (i32.const 80)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=80
   (get_local $11)
   (i64.load offset=64
    (get_local $11)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $10
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $10)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $11)
     (i32.const 96)
    )
    (i32.const 8)
   )
   (tee_local $6
    (i64.load
     (i32.add
      (i32.add
       (get_local $11)
       (i32.const 80)
      )
      (i32.const 8)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $11)
     (i32.const 8)
    )
    (i32.const 8)
   )
   (get_local $6)
  )
  (i64.store offset=96
   (get_local $11)
   (tee_local $6
    (i64.load offset=80
     (get_local $11)
    )
   )
  )
  (i64.store offset=8
   (get_local $11)
   (get_local $6)
  )
  (call_indirect (type $FUNCSIG$vijijj)
   (get_local $1)
   (get_local $8)
   (i32.add
    (get_local $11)
    (i32.const 8)
   )
   (get_local $4)
   (get_local $5)
   (get_local $10)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 112)
   )
  )
  (i32.const 1)
 )
 (func $_ZN11arbitration10verifyuserEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (call $require_auth
   (get_local $1)
  )
 )
 (func $_ZN11arbitration9paysubfeeEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $require_auth
   (get_local $1)
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4152997947673411584ENS_7balanceEJEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 16)
  )
  (call $eosio_assert
   (call $_ZN11arbitration17enough_for_subfeeEy
    (get_local $0)
    (get_local $1)
   )
   (i32.const 1552)
  )
  (call $_ZN11arbitration6get_sfEv
   (i32.add
    (get_local $3)
    (i32.const 48)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 48)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=16
   (get_local $3)
   (i64.load offset=48
    (get_local $3)
   )
  )
  (call $_ZN11arbitration11sub_balanceEyN5eosio5assetE
   (get_local $0)
   (get_local $1)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (set_local $2
   (i64.load
    (get_local $0)
   )
  )
  (call $_ZN11arbitration6get_sfEv
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 32)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $3)
   (i64.load offset=32
    (get_local $3)
   )
  )
  (call $_ZN11arbitration11add_balanceEyN5eosio5assetE
   (get_local $0)
   (get_local $2)
   (get_local $3)
  )
  (call $_ZN11arbitration18increment_sfcreditEy
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
  )
 )
 (func $_ZN11arbitration12payamountdueEyyy (type $FUNCSIG$vijjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $require_auth
   (get_local $3)
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4152997947673411584ENS_7balanceEJEEEyEEbT0_
    (get_local $0)
    (get_local $3)
   )
   (i32.const 16)
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy12230973184777650176ENS_7paymentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEENS4_ILy4587592574746755072ENS7_IS3_yXadL_ZNKS3_7by_paidEvEEEEEEEEEyEEbyT0_
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const 1056)
  )
  (call $eosio_assert
   (call $_ZN11arbitration18enough_for_paymentEyyy
    (get_local $0)
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
   (i32.const 1088)
  )
  (call $_ZN11arbitration6get_sfEv
   (i32.add
    (get_local $4)
    (i32.const 48)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $4)
      (i32.const 48)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=16
   (get_local $4)
   (i64.load offset=48
    (get_local $4)
   )
  )
  (call $_ZN11arbitration11sub_balanceEyN5eosio5assetE
   (get_local $0)
   (get_local $3)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $_ZN11arbitration6get_sfEv
   (i32.add
    (get_local $4)
    (i32.const 32)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $4)
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $4)
      (i32.const 32)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $4)
   (i64.load offset=32
    (get_local $4)
   )
  )
  (call $_ZN11arbitration11add_balanceEyN5eosio5assetE
   (get_local $0)
   (get_local $3)
   (get_local $4)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 64)
   )
  )
 )
 (func $_ZN11arbitration12decsfcreditsEyyy (type $FUNCSIG$vijjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 624)
  )
  (set_local $5
   (i32.const 1)
  )
  (set_local $4
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $3)
    )
   )
   (set_local $4
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (get_local $4)
   (i32.const 656)
  )
  (block $label$1
   (br_if $label$1
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4921564792717574144ENS_8claimantEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
   (set_local $5
    (call $_ZN11arbitration6existsIN5eosio11multi_indexILy13452632849406377984ENS_10respondentEJEEEyEEbyT0_
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 720)
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy14307572254292204944ENS_12subfeecreditEJEEEyEEbT0_
    (get_local $0)
    (get_local $2)
   )
   (i32.const 768)
  )
  (call $_ZN11arbitration18decrement_sfcreditEy
   (get_local $0)
   (get_local $2)
  )
 )
 (func $_ZN11arbitration8withdrawEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $require_auth
   (get_local $1)
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4152997947673411584ENS_7balanceEJEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
   (i32.const 16)
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 120)
   )
   (i32.const 0)
  )
  (i64.store offset=104
   (get_local $12)
   (i64.const -1)
  )
  (set_local $7
   (i64.const 0)
  )
  (i64.store offset=112
   (get_local $12)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $12)
   (tee_local $9
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=96
   (get_local $12)
   (get_local $9)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_find_i64
       (get_local $9)
       (get_local $9)
       (i64.const 4152997947673411584)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=24
      (tee_local $4
       (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $12)
         (i32.const 88)
        )
        (get_local $3)
       )
      )
     )
     (i32.add
      (get_local $12)
      (i32.const 88)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $2
   (i64.load
    (get_local $0)
   )
  )
  (set_local $6
   (i64.const 59)
  )
  (set_local $0
   (i32.const 112)
  )
  (set_local $8
   (i64.const 0)
  )
  (loop $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i64.gt_u
          (get_local $7)
          (i64.const 5)
         )
        )
        (br_if $label$5
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$4)
       )
       (set_local $9
        (i64.const 0)
       )
       (br_if $label$3
        (i64.le_u
         (get_local $7)
         (i64.const 11)
        )
       )
       (br $label$2)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $9
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $9
     (i64.shl
      (i64.and
       (get_local $9)
       (i64.const 31)
      )
      (i64.and
       (get_local $6)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $7
    (i64.add
     (get_local $7)
     (i64.const 1)
    )
   )
   (set_local $8
    (i64.or
     (get_local $9)
     (get_local $8)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $6
      (i64.add
       (get_local $6)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $7
   (i64.const 0)
  )
  (set_local $6
   (i64.const 59)
  )
  (set_local $0
   (i32.const 128)
  )
  (set_local $10
   (i64.const 0)
  )
  (loop $label$7
   (block $label$8
    (block $label$9
     (block $label$10
      (block $label$11
       (block $label$12
        (br_if $label$12
         (i64.gt_u
          (get_local $7)
          (i64.const 10)
         )
        )
        (br_if $label$11
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$10)
       )
       (set_local $9
        (i64.const 0)
       )
       (br_if $label$9
        (i64.eq
         (get_local $7)
         (i64.const 11)
        )
       )
       (br $label$8)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $9
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $9
     (i64.shl
      (i64.and
       (get_local $9)
       (i64.const 31)
      )
      (i64.and
       (get_local $6)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $6
    (i64.add
     (get_local $6)
     (i64.const -5)
    )
   )
   (set_local $10
    (i64.or
     (get_local $9)
     (get_local $10)
    )
   )
   (br_if $label$7
    (i64.ne
     (tee_local $7
      (i64.add
       (get_local $7)
       (i64.const 1)
      )
     )
     (i64.const 13)
    )
   )
  )
  (set_local $7
   (i64.const 0)
  )
  (set_local $6
   (i64.const 59)
  )
  (set_local $0
   (i32.const 144)
  )
  (set_local $11
   (i64.const 0)
  )
  (loop $label$13
   (block $label$14
    (block $label$15
     (block $label$16
      (block $label$17
       (block $label$18
        (br_if $label$18
         (i64.gt_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (br_if $label$17
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$16)
       )
       (set_local $9
        (i64.const 0)
       )
       (br_if $label$15
        (i64.le_u
         (get_local $7)
         (i64.const 11)
        )
       )
       (br $label$14)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $9
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $9
     (i64.shl
      (i64.and
       (get_local $9)
       (i64.const 31)
      )
      (i64.and
       (get_local $6)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $7
    (i64.add
     (get_local $7)
     (i64.const 1)
    )
   )
   (set_local $11
    (i64.or
     (get_local $9)
     (get_local $11)
    )
   )
   (br_if $label$13
    (i64.ne
     (tee_local $6
      (i64.add
       (get_local $6)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store offset=8
   (get_local $12)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (get_local $4)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $4)
     (i32.const 12)
    )
   )
  )
  (i64.store
   (get_local $12)
   (get_local $2)
  )
  (i32.store offset=16
   (get_local $12)
   (i32.load offset=8
    (get_local $4)
   )
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $12)
   (i64.const 0)
  )
  (set_local $3
   (i32.add
    (get_local $12)
    (i32.const 32)
   )
  )
  (block $label$19
   (br_if $label$19
    (i32.ge_u
     (tee_local $0
      (call $strlen
       (i32.const 160)
      )
     )
     (i32.const -16)
    )
   )
   (block $label$20
    (block $label$21
     (block $label$22
      (br_if $label$22
       (i32.ge_u
        (get_local $0)
        (i32.const 11)
       )
      )
      (i32.store8
       (i32.add
        (get_local $12)
        (i32.const 32)
       )
       (i32.shl
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br_if $label$21
       (get_local $0)
      )
      (br $label$20)
     )
     (set_local $3
      (call $_Znwj
       (tee_local $5
        (i32.and
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $12)
       (i32.const 32)
      )
      (i32.or
       (get_local $5)
       (i32.const 1)
      )
     )
     (i32.store
      (i32.add
       (get_local $12)
       (i32.const 40)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $12)
       (i32.const 36)
      )
      (get_local $0)
     )
    )
    (drop
     (call $memcpy
      (get_local $3)
      (i32.const 160)
      (get_local $0)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $3)
     (get_local $0)
    )
    (i32.const 0)
   )
   (i64.store offset=56
    (get_local $12)
    (get_local $11)
   )
   (i64.store offset=48
    (get_local $12)
    (get_local $10)
   )
   (i64.store
    (tee_local $0
     (call $_Znwj
      (i32.const 16)
     )
    )
    (get_local $2)
   )
   (i64.store offset=8
    (get_local $0)
    (get_local $8)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 48)
     )
     (i32.const 32)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $12)
     (i32.const 72)
    )
    (tee_local $3
     (i32.add
      (get_local $0)
      (i32.const 16)
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $12)
     (i32.const 68)
    )
    (get_local $3)
   )
   (i32.store offset=64
    (get_local $12)
    (get_local $0)
   )
   (i32.store offset=76
    (get_local $12)
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 48)
     )
     (i32.const 36)
    )
    (i32.const 0)
   )
   (set_local $0
    (i32.add
     (tee_local $3
      (select
       (i32.load
        (i32.add
         (get_local $12)
         (i32.const 36)
        )
       )
       (i32.shr_u
        (tee_local $0
         (i32.load8_u
          (i32.add
           (get_local $12)
           (i32.const 32)
          )
         )
        )
        (i32.const 1)
       )
       (i32.and
        (get_local $0)
        (i32.const 1)
       )
      )
     )
     (i32.const 32)
    )
   )
   (set_local $7
    (i64.extend_u/i32
     (get_local $3)
    )
   )
   (set_local $3
    (i32.add
     (get_local $12)
     (i32.const 76)
    )
   )
   (loop $label$23
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br_if $label$23
     (i64.ne
      (tee_local $7
       (i64.shr_u
        (get_local $7)
        (i64.const 7)
       )
      )
      (i64.const 0)
     )
    )
   )
   (block $label$24
    (block $label$25
     (br_if $label$25
      (i32.eqz
       (get_local $0)
      )
     )
     (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
      (get_local $3)
      (get_local $0)
     )
     (set_local $3
      (i32.load
       (i32.add
        (get_local $12)
        (i32.const 80)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $12)
        (i32.const 76)
       )
      )
     )
     (br $label$24)
    )
    (set_local $3
     (i32.const 0)
    )
    (set_local $0
     (i32.const 0)
    )
   )
   (i32.store offset=132
    (get_local $12)
    (get_local $0)
   )
   (i32.store offset=128
    (get_local $12)
    (get_local $0)
   )
   (i32.store offset=136
    (get_local $12)
    (get_local $3)
   )
   (drop
    (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE
     (i32.add
      (get_local $12)
      (i32.const 128)
     )
     (get_local $12)
    )
   )
   (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
    (i32.add
     (get_local $12)
     (i32.const 128)
    )
    (i32.add
     (get_local $12)
     (i32.const 48)
    )
   )
   (call $send_inline
    (tee_local $0
     (i32.load offset=128
      (get_local $12)
     )
    )
    (i32.sub
     (i32.load offset=132
      (get_local $12)
     )
     (get_local $0)
    )
   )
   (block $label$26
    (br_if $label$26
     (i32.eqz
      (tee_local $0
       (i32.load offset=128
        (get_local $12)
       )
      )
     )
    )
    (i32.store offset=132
     (get_local $12)
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $0)
    )
   )
   (block $label$27
    (br_if $label$27
     (i32.eqz
      (tee_local $0
       (i32.load offset=76
        (get_local $12)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $12)
      (i32.const 80)
     )
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $0)
    )
   )
   (block $label$28
    (br_if $label$28
     (i32.eqz
      (tee_local $0
       (i32.load offset=64
        (get_local $12)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $12)
      (i32.const 68)
     )
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $0)
    )
   )
   (block $label$29
    (br_if $label$29
     (i32.eqz
      (i32.and
       (i32.load8_u
        (i32.add
         (get_local $12)
         (i32.const 32)
        )
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $12)
       (i32.const 40)
      )
     )
    )
   )
   (call $eosio_assert
    (tee_local $0
     (i32.ne
      (get_local $4)
      (i32.const 0)
     )
    )
    (i32.const 208)
   )
   (call $eosio_assert
    (get_local $0)
    (i32.const 256)
   )
   (block $label$30
    (br_if $label$30
     (i32.lt_s
      (tee_local $0
       (call $db_next_i64
        (i32.load offset=28
         (get_local $4)
        )
        (get_local $12)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl
      (i32.add
       (get_local $12)
       (i32.const 88)
      )
      (get_local $0)
     )
    )
   )
   (call $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE5eraseERKS2_
    (i32.add
     (get_local $12)
     (i32.const 88)
    )
    (get_local $4)
   )
   (block $label$31
    (br_if $label$31
     (i32.eqz
      (tee_local $4
       (i32.load offset=112
        (get_local $12)
       )
      )
     )
    )
    (block $label$32
     (block $label$33
      (br_if $label$33
       (i32.eq
        (tee_local $0
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $12)
            (i32.const 116)
           )
          )
         )
        )
        (get_local $4)
       )
      )
      (loop $label$34
       (set_local $3
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $0)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $0)
        (i32.const 0)
       )
       (block $label$35
        (br_if $label$35
         (i32.eqz
          (get_local $3)
         )
        )
        (call $_ZdlPv
         (get_local $3)
        )
       )
       (br_if $label$34
        (i32.ne
         (get_local $4)
         (get_local $0)
        )
       )
      )
      (set_local $0
       (i32.load
        (i32.add
         (get_local $12)
         (i32.const 112)
        )
       )
      )
      (br $label$32)
     )
     (set_local $0
      (get_local $4)
     )
    )
    (i32.store
     (get_local $5)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $0)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $12)
     (i32.const 144)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $3)
  )
  (unreachable)
 )
 (func $_ZN11arbitration12ecafwithdrawEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4152997947673411584ENS_7balanceEJEEEyEEbT0_
    (get_local $0)
    (i64.load
     (get_local $0)
    )
   )
   (i32.const 16)
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 120)
   )
   (i32.const 0)
  )
  (i64.store offset=104
   (get_local $12)
   (i64.const -1)
  )
  (set_local $7
   (i64.const 0)
  )
  (i64.store offset=112
   (get_local $12)
   (i64.const 0)
  )
  (i64.store offset=88
   (get_local $12)
   (tee_local $9
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=96
   (get_local $12)
   (get_local $9)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_find_i64
       (get_local $9)
       (get_local $9)
       (i64.const 4152997947673411584)
       (get_local $9)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=24
      (tee_local $4
       (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $12)
         (i32.const 88)
        )
        (get_local $3)
       )
      )
     )
     (i32.add
      (get_local $12)
      (i32.const 88)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $2
   (i64.load
    (get_local $0)
   )
  )
  (set_local $6
   (i64.const 59)
  )
  (set_local $0
   (i32.const 112)
  )
  (set_local $8
   (i64.const 0)
  )
  (loop $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i64.gt_u
          (get_local $7)
          (i64.const 5)
         )
        )
        (br_if $label$5
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$4)
       )
       (set_local $9
        (i64.const 0)
       )
       (br_if $label$3
        (i64.le_u
         (get_local $7)
         (i64.const 11)
        )
       )
       (br $label$2)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $9
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $9
     (i64.shl
      (i64.and
       (get_local $9)
       (i64.const 31)
      )
      (i64.and
       (get_local $6)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $7
    (i64.add
     (get_local $7)
     (i64.const 1)
    )
   )
   (set_local $8
    (i64.or
     (get_local $9)
     (get_local $8)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $6
      (i64.add
       (get_local $6)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $7
   (i64.const 0)
  )
  (set_local $6
   (i64.const 59)
  )
  (set_local $0
   (i32.const 128)
  )
  (set_local $10
   (i64.const 0)
  )
  (loop $label$7
   (block $label$8
    (block $label$9
     (block $label$10
      (block $label$11
       (block $label$12
        (br_if $label$12
         (i64.gt_u
          (get_local $7)
          (i64.const 10)
         )
        )
        (br_if $label$11
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$10)
       )
       (set_local $9
        (i64.const 0)
       )
       (br_if $label$9
        (i64.eq
         (get_local $7)
         (i64.const 11)
        )
       )
       (br $label$8)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $9
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $9
     (i64.shl
      (i64.and
       (get_local $9)
       (i64.const 31)
      )
      (i64.and
       (get_local $6)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $6
    (i64.add
     (get_local $6)
     (i64.const -5)
    )
   )
   (set_local $10
    (i64.or
     (get_local $9)
     (get_local $10)
    )
   )
   (br_if $label$7
    (i64.ne
     (tee_local $7
      (i64.add
       (get_local $7)
       (i64.const 1)
      )
     )
     (i64.const 13)
    )
   )
  )
  (set_local $7
   (i64.const 0)
  )
  (set_local $6
   (i64.const 59)
  )
  (set_local $0
   (i32.const 144)
  )
  (set_local $11
   (i64.const 0)
  )
  (loop $label$13
   (block $label$14
    (block $label$15
     (block $label$16
      (block $label$17
       (block $label$18
        (br_if $label$18
         (i64.gt_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (br_if $label$17
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$16)
       )
       (set_local $9
        (i64.const 0)
       )
       (br_if $label$15
        (i64.le_u
         (get_local $7)
         (i64.const 11)
        )
       )
       (br $label$14)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $9
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $9
     (i64.shl
      (i64.and
       (get_local $9)
       (i64.const 31)
      )
      (i64.and
       (get_local $6)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $7
    (i64.add
     (get_local $7)
     (i64.const 1)
    )
   )
   (set_local $11
    (i64.or
     (get_local $9)
     (get_local $11)
    )
   )
   (br_if $label$13
    (i64.ne
     (tee_local $6
      (i64.add
       (get_local $6)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store offset=8
   (get_local $12)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (get_local $4)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $4)
     (i32.const 12)
    )
   )
  )
  (i64.store
   (get_local $12)
   (get_local $2)
  )
  (i32.store offset=16
   (get_local $12)
   (i32.load offset=8
    (get_local $4)
   )
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $12)
   (i64.const 0)
  )
  (set_local $3
   (i32.add
    (get_local $12)
    (i32.const 32)
   )
  )
  (block $label$19
   (br_if $label$19
    (i32.ge_u
     (tee_local $0
      (call $strlen
       (i32.const 160)
      )
     )
     (i32.const -16)
    )
   )
   (block $label$20
    (block $label$21
     (block $label$22
      (br_if $label$22
       (i32.ge_u
        (get_local $0)
        (i32.const 11)
       )
      )
      (i32.store8
       (i32.add
        (get_local $12)
        (i32.const 32)
       )
       (i32.shl
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br_if $label$21
       (get_local $0)
      )
      (br $label$20)
     )
     (set_local $3
      (call $_Znwj
       (tee_local $5
        (i32.and
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $12)
       (i32.const 32)
      )
      (i32.or
       (get_local $5)
       (i32.const 1)
      )
     )
     (i32.store
      (i32.add
       (get_local $12)
       (i32.const 40)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $12)
       (i32.const 36)
      )
      (get_local $0)
     )
    )
    (drop
     (call $memcpy
      (get_local $3)
      (i32.const 160)
      (get_local $0)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $3)
     (get_local $0)
    )
    (i32.const 0)
   )
   (i64.store offset=56
    (get_local $12)
    (get_local $11)
   )
   (i64.store offset=48
    (get_local $12)
    (get_local $10)
   )
   (i64.store
    (tee_local $0
     (call $_Znwj
      (i32.const 16)
     )
    )
    (get_local $2)
   )
   (i64.store offset=8
    (get_local $0)
    (get_local $8)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 48)
     )
     (i32.const 32)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $12)
     (i32.const 72)
    )
    (tee_local $3
     (i32.add
      (get_local $0)
      (i32.const 16)
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $12)
     (i32.const 68)
    )
    (get_local $3)
   )
   (i32.store offset=64
    (get_local $12)
    (get_local $0)
   )
   (i32.store offset=76
    (get_local $12)
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 48)
     )
     (i32.const 36)
    )
    (i32.const 0)
   )
   (set_local $0
    (i32.add
     (tee_local $3
      (select
       (i32.load
        (i32.add
         (get_local $12)
         (i32.const 36)
        )
       )
       (i32.shr_u
        (tee_local $0
         (i32.load8_u
          (i32.add
           (get_local $12)
           (i32.const 32)
          )
         )
        )
        (i32.const 1)
       )
       (i32.and
        (get_local $0)
        (i32.const 1)
       )
      )
     )
     (i32.const 32)
    )
   )
   (set_local $7
    (i64.extend_u/i32
     (get_local $3)
    )
   )
   (set_local $3
    (i32.add
     (get_local $12)
     (i32.const 76)
    )
   )
   (loop $label$23
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br_if $label$23
     (i64.ne
      (tee_local $7
       (i64.shr_u
        (get_local $7)
        (i64.const 7)
       )
      )
      (i64.const 0)
     )
    )
   )
   (block $label$24
    (block $label$25
     (br_if $label$25
      (i32.eqz
       (get_local $0)
      )
     )
     (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
      (get_local $3)
      (get_local $0)
     )
     (set_local $3
      (i32.load
       (i32.add
        (get_local $12)
        (i32.const 80)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $12)
        (i32.const 76)
       )
      )
     )
     (br $label$24)
    )
    (set_local $3
     (i32.const 0)
    )
    (set_local $0
     (i32.const 0)
    )
   )
   (i32.store offset=132
    (get_local $12)
    (get_local $0)
   )
   (i32.store offset=128
    (get_local $12)
    (get_local $0)
   )
   (i32.store offset=136
    (get_local $12)
    (get_local $3)
   )
   (drop
    (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE
     (i32.add
      (get_local $12)
      (i32.const 128)
     )
     (get_local $12)
    )
   )
   (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
    (i32.add
     (get_local $12)
     (i32.const 128)
    )
    (i32.add
     (get_local $12)
     (i32.const 48)
    )
   )
   (call $send_inline
    (tee_local $0
     (i32.load offset=128
      (get_local $12)
     )
    )
    (i32.sub
     (i32.load offset=132
      (get_local $12)
     )
     (get_local $0)
    )
   )
   (block $label$26
    (br_if $label$26
     (i32.eqz
      (tee_local $0
       (i32.load offset=128
        (get_local $12)
       )
      )
     )
    )
    (i32.store offset=132
     (get_local $12)
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $0)
    )
   )
   (block $label$27
    (br_if $label$27
     (i32.eqz
      (tee_local $0
       (i32.load offset=76
        (get_local $12)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $12)
      (i32.const 80)
     )
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $0)
    )
   )
   (block $label$28
    (br_if $label$28
     (i32.eqz
      (tee_local $0
       (i32.load offset=64
        (get_local $12)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $12)
      (i32.const 68)
     )
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $0)
    )
   )
   (block $label$29
    (br_if $label$29
     (i32.eqz
      (i32.and
       (i32.load8_u
        (i32.add
         (get_local $12)
         (i32.const 32)
        )
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $12)
       (i32.const 40)
      )
     )
    )
   )
   (call $eosio_assert
    (tee_local $0
     (i32.ne
      (get_local $4)
      (i32.const 0)
     )
    )
    (i32.const 208)
   )
   (call $eosio_assert
    (get_local $0)
    (i32.const 256)
   )
   (block $label$30
    (br_if $label$30
     (i32.lt_s
      (tee_local $0
       (call $db_next_i64
        (i32.load offset=28
         (get_local $4)
        )
        (get_local $12)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl
      (i32.add
       (get_local $12)
       (i32.const 88)
      )
      (get_local $0)
     )
    )
   )
   (call $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE5eraseERKS2_
    (i32.add
     (get_local $12)
     (i32.const 88)
    )
    (get_local $4)
   )
   (block $label$31
    (br_if $label$31
     (i32.eqz
      (tee_local $4
       (i32.load offset=112
        (get_local $12)
       )
      )
     )
    )
    (block $label$32
     (block $label$33
      (br_if $label$33
       (i32.eq
        (tee_local $0
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $12)
            (i32.const 116)
           )
          )
         )
        )
        (get_local $4)
       )
      )
      (loop $label$34
       (set_local $3
        (i32.load
         (tee_local $0
          (i32.add
           (get_local $0)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $0)
        (i32.const 0)
       )
       (block $label$35
        (br_if $label$35
         (i32.eqz
          (get_local $3)
         )
        )
        (call $_ZdlPv
         (get_local $3)
        )
       )
       (br_if $label$34
        (i32.ne
         (get_local $4)
         (get_local $0)
        )
       )
      )
      (set_local $0
       (i32.load
        (i32.add
         (get_local $12)
         (i32.const 112)
        )
       )
      )
      (br $label$32)
     )
     (set_local $0
      (get_local $4)
     )
    )
    (i32.store
     (get_local $5)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $0)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $12)
     (i32.const 144)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $3)
  )
  (unreachable)
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy4152997947673411584ENS_7balanceEJEEEyEEbT0_ (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $7)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $7)
   (get_local $4)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $4)
       (get_local $4)
       (i64.const 4152997947673411584)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=24
      (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $6
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $2
      (i32.load offset=32
       (get_local $7)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $7)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$3
      (set_local $3
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $2)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=44
   (tee_local $8
    (get_local $9)
   )
   (get_local $1)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=12
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
   )
   (i32.store offset=16
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 44)
    )
   )
   (i32.store offset=8
    (get_local $8)
    (get_local $0)
   )
   (set_local $6
    (call $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_
     (tee_local $4
      (call $_Znwj
       (i32.const 40)
      )
     )
     (get_local $0)
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $4)
   )
   (i64.store offset=8
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $4)
     )
    )
   )
   (i32.store offset=4
    (get_local $8)
    (tee_local $1
     (i32.load offset=28
      (get_local $4)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $7
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $7)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $7)
      (get_local $1)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $7)
      (get_local $4)
     )
     (i32.store
      (get_local $3)
      (i32.add
       (get_local $7)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $6
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.le_s
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.sub
             (get_local $6)
             (tee_local $5
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $6
        (i32.const 2147483647)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (get_local $6)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $6)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $6)
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (loop $label$7
    (i32.store8
     (get_local $6)
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
   (get_local $0)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (set_local $5
   (i32.const 16)
  )
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $4
      (i32.sub
       (tee_local $7
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 20)
         )
        )
       )
       (tee_local $3
        (i32.load offset=16
         (get_local $1)
        )
       )
      )
     )
     (i32.const 4)
    )
   )
  )
  (loop $label$0
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (get_local $3)
     (get_local $7)
    )
   )
   (set_local $5
    (i32.add
     (i32.and
      (get_local $4)
      (i32.const -16)
     )
     (get_local $5)
    )
   )
  )
  (set_local $5
   (i32.sub
    (i32.sub
     (tee_local $7
      (i32.load offset=28
       (get_local $1)
      )
     )
     (get_local $5)
    )
    (tee_local $3
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 32)
      )
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.sub
     (get_local $3)
     (get_local $7)
    )
   )
  )
  (loop $label$2
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const -1)
    )
   )
   (br_if $label$2
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $5)
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $0)
     (i32.sub
      (i32.const 0)
      (get_local $5)
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $5
     (i32.load
      (get_local $0)
     )
    )
    (br $label$3)
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $8)
   (get_local $5)
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $7)
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (get_local $5)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (tee_local $0
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
     )
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $0)
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $8)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
    (call $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
     (get_local $8)
     (get_local $2)
    )
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE5eraseERKS2_ (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $eosio_assert
   (i32.eq
    (i32.load offset=24
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 288)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 336)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (tee_local $5
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $2
    (i64.load
     (get_local $1)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (set_local $8
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $8)
       )
      )
      (get_local $2)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (set_local $8
     (tee_local $4
      (i32.add
       (get_local $8)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $6)
      )
      (i32.const -24)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (get_local $3)
   )
   (i32.const 400)
  )
  (set_local $8
   (i32.add
    (get_local $7)
    (i32.const -24)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (tee_local $4
       (i32.load
        (get_local $5)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (loop $label$4
     (set_local $6
      (i32.load
       (tee_local $8
        (i32.add
         (get_local $7)
         (i32.const 24)
        )
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.const 0)
     )
     (set_local $4
      (i32.load
       (get_local $7)
      )
     )
     (i32.store
      (get_local $7)
      (get_local $6)
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (get_local $4)
       )
      )
      (call $_ZdlPv
       (get_local $4)
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 40)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (set_local $7
      (get_local $8)
     )
     (br_if $label$4
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $3)
       )
       (i32.const -24)
      )
     )
    )
    (br_if $label$2
     (i32.eq
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (get_local $8)
     )
    )
   )
   (loop $label$6
    (set_local $4
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (get_local $4)
      )
     )
     (call $_ZdlPv
      (get_local $4)
     )
    )
    (br_if $label$6
     (i32.ne
      (get_local $8)
      (get_local $7)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $8)
  )
  (call $db_remove_i64
   (i32.load offset=28
    (get_local $1)
   )
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i64.extend_u/i32
    (i32.shr_s
     (i32.sub
      (i32.load offset=4
       (get_local $1)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 4)
    )
   )
  )
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (loop $label$0
   (set_local $3
    (i32.wrap/i64
     (get_local $4)
    )
   )
   (i32.store8 offset=15
    (get_local $7)
    (i32.or
     (i32.shl
      (tee_local $6
       (i64.ne
        (tee_local $4
         (i64.shr_u
          (get_local $4)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $3)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $2)
      )
      (get_local $5)
     )
     (i32.const 0)
    )
    (i32.const 464)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $3
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (i32.add
      (get_local $7)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (i32.load
       (get_local $3)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $6)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $6
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $1
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (loop $label$2
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 464)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (get_local $6)
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $2)
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 464)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (br_if $label$2
     (i32.ne
      (tee_local $6
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (i32.sub
     (i32.load offset=4
      (get_local $1)
     )
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 464)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (call $eosio_assert
   (i32.ge_s
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $6)
    )
    (tee_local $5
     (i32.sub
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load
     (tee_local $6
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $2)
    (get_local $5)
   )
  )
  (i32.store
   (get_local $6)
   (i32.add
    (i32.load
     (get_local $6)
    )
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (select
     (i32.load offset=4
      (get_local $1)
     )
     (i32.shr_u
      (tee_local $5
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (i32.and
      (get_local $5)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 464)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $5
      (select
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $5
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $2
        (i32.and
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
   (set_local $3
    (i32.load offset=8
     (get_local $1)
    )
   )
   (call $eosio_assert
    (i32.ge_s
     (i32.sub
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $6)
     )
     (get_local $5)
    )
    (i32.const 464)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $6
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (select
      (get_local $3)
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
      (get_local $2)
     )
     (get_local $5)
    )
   )
   (i32.store
    (get_local $6)
    (i32.add
     (i32.load
      (get_local $6)
     )
     (get_local $5)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (tee_local $4
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
   )
   (i64.const 1398362884)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $3
   (i64.shr_u
    (i64.load
     (get_local $4)
    )
    (i64.const 8)
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 576)
  )
  (i32.store offset=24
   (get_local $0)
   (get_local $1)
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load offset=4
        (get_local $2)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $0)
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (tee_local $5
    (i32.add
     (i32.load offset=4
      (get_local $4)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (get_local $5)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (tee_local $5
    (i32.add
     (i32.load offset=4
      (get_local $4)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (get_local $5)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=28
   (get_local $0)
   (i32.load
    (i32.load offset=8
     (get_local $2)
    )
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy6603096945802084352ENS_6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_12by_suspendedEvEEEEEENS4_ILy4588789415053246464ENS7_IS3_yXadL_ZNKS3_11by_rejectedEvEEEEEENS4_ILy4581139758608547840ENS7_IS3_yXadL_ZNKS3_10by_droppedEvEEEEEENS4_ILy4580471301151391744ES8_EENS4_ILy4580463436915277824ENS7_IS3_yXadL_ZNKS3_8by_claimEvEEEEEENS4_ILy4580279740090286080ENS7_IS3_yXadL_ZNKS3_7by_caseEvEEEEEEEEEyEEbT0_ (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $7)
   (i64.const 0)
  )
  (i64.store
   (get_local $7)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $7)
   (get_local $4)
  )
  (i32.store16
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $7)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $4)
       (get_local $4)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
       (get_local $7)
       (get_local $0)
      )
     )
     (get_local $7)
    )
    (i32.const 48)
   )
   (set_local $6
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $2
      (i32.load offset=24
       (get_local $7)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $7)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$3
      (set_local $3
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $2)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy3877296762501054464ENS_10arbitratorEJEEEyEEbyT0_ (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const 3877296762501054464)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=8
      (call $_ZNK5eosio11multi_indexILy3877296762501054464EN11arbitration10arbitratorEJEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $7
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $7)
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy4921564792717574144ENS_8claimantEJEEEyEEbyT0_ (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const 4921564792717574144)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=8
      (call $_ZNK5eosio11multi_indexILy4921564792717574144EN11arbitration8claimantEJEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $7
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $7)
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy13452632849406377984ENS_10respondentEJEEEyEEbyT0_ (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const -4994111224303173632)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=8
      (call $_ZNK5eosio11multi_indexILy13452632849406377984EN11arbitration10respondentEJEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $7
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $7)
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy14307572254292204944ENS_12subfeecreditEJEEEyEEbT0_ (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $7)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $7)
   (get_local $4)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $4)
       (get_local $4)
       (i64.const -4139171819417346672)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (call $_ZNK5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $6
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $2
      (i32.load offset=32
       (get_local $7)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $7)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$3
      (set_local $3
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $2)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN11arbitration18decrement_sfcreditEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $6)
   (i64.const 0)
  )
  (i64.store
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $6)
   (get_local $3)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const -4139171819417346672)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE31load_object_by_primary_iteratorEl
        (get_local $6)
        (get_local $2)
       )
      )
     )
     (get_local $6)
    )
    (i32.const 48)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i64.lt_u
       (i64.load offset=8
        (get_local $5)
       )
       (i64.const 2)
      )
     )
     (set_local $3
      (i64.load
       (get_local $0)
      )
     )
     (call $eosio_assert
      (i32.ne
       (get_local $5)
       (i32.const 0)
      )
      (i32.const 832)
     )
     (call $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE6modifyIZNS1_18decrement_sfcreditEyEUlRT_E_EEvRKS2_yOS5_
      (get_local $6)
      (get_local $5)
      (get_local $3)
      (i32.add
       (get_local $6)
       (i32.const 40)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.load offset=24
        (get_local $6)
       )
      )
     )
     (br $label$1)
    )
    (call $eosio_assert
     (tee_local $0
      (i32.ne
       (get_local $5)
       (i32.const 0)
      )
     )
     (i32.const 208)
    )
    (call $eosio_assert
     (get_local $0)
     (i32.const 256)
    )
    (block $label$4
     (br_if $label$4
      (i32.lt_s
       (tee_local $0
        (call $db_next_i64
         (i32.load offset=20
          (get_local $5)
         )
         (i32.add
          (get_local $6)
          (i32.const 40)
         )
        )
       )
       (i32.const 0)
      )
     )
     (drop
      (call $_ZNK5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE31load_object_by_primary_iteratorEl
       (get_local $6)
       (get_local $0)
      )
     )
    )
    (call $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE5eraseERKS2_
     (get_local $6)
     (get_local $5)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $2
       (i32.load offset=24
        (get_local $6)
       )
      )
     )
    )
   )
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$7
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$8
       (br_if $label$8
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$7
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 24)
       )
      )
     )
     (br $label$5)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $7
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $7)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.store offset=16
    (tee_local $6
     (call $_Znwj
      (i32.const 32)
     )
    )
    (get_local $0)
   )
   (i64.store offset=8
    (get_local $6)
    (i64.const 0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 608)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $7)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.ne
     (i32.and
      (get_local $4)
      (i32.const -8)
     )
     (i32.const 8)
    )
    (i32.const 608)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (i32.store offset=20
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=20
      (get_local $6)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE6modifyIZNS1_18decrement_sfcreditEyEUlRT_E_EEvRKS2_yOS5_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=16
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.add
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const -1)
   )
  )
  (set_local $4
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $5)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=20
    (get_local $1)
   )
   (get_local $2)
   (get_local $5)
   (i32.const 16)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE5eraseERKS2_ (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $eosio_assert
   (i32.eq
    (i32.load offset=16
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 288)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 336)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (tee_local $5
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $2
    (i64.load
     (get_local $1)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (set_local $8
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $8)
       )
      )
      (get_local $2)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (set_local $8
     (tee_local $4
      (i32.add
       (get_local $8)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $6)
      )
      (i32.const -24)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (get_local $3)
   )
   (i32.const 400)
  )
  (set_local $8
   (i32.add
    (get_local $7)
    (i32.const -24)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (tee_local $4
       (i32.load
        (get_local $5)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (loop $label$4
     (set_local $6
      (i32.load
       (tee_local $8
        (i32.add
         (get_local $7)
         (i32.const 24)
        )
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.const 0)
     )
     (set_local $4
      (i32.load
       (get_local $7)
      )
     )
     (i32.store
      (get_local $7)
      (get_local $6)
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (get_local $4)
       )
      )
      (call $_ZdlPv
       (get_local $4)
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 40)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (set_local $7
      (get_local $8)
     )
     (br_if $label$4
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $3)
       )
       (i32.const -24)
      )
     )
    )
    (br_if $label$2
     (i32.eq
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (get_local $8)
     )
    )
   )
   (loop $label$6
    (set_local $4
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (get_local $4)
      )
     )
     (call $_ZdlPv
      (get_local $4)
     )
    )
    (br_if $label$6
     (i32.ne
      (get_local $8)
      (get_local $7)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $8)
  )
  (call $db_remove_i64
   (i32.load offset=20
    (get_local $1)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy13452632849406377984EN11arbitration10respondentEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $7
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $7)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.store offset=8
    (tee_local $6
     (call $_Znwj
      (i32.const 24)
     )
    )
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 608)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $7)
     (i32.const 8)
    )
   )
   (i32.store offset=12
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=12
      (get_local $6)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy13452632849406377984EN11arbitration10respondentEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy13452632849406377984EN11arbitration10respondentEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy4921564792717574144EN11arbitration8claimantEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $7
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $7)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.store offset=8
    (tee_local $6
     (call $_Znwj
      (i32.const 24)
     )
    )
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 608)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $7)
     (i32.const 8)
    )
   )
   (i32.store offset=12
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=12
      (get_local $6)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4921564792717574144EN11arbitration8claimantEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy4921564792717574144EN11arbitration8claimantEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy3877296762501054464EN11arbitration10arbitratorEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $7
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $7)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.store offset=8
    (tee_local $6
     (call $_Znwj
      (i32.const 24)
     )
    )
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 608)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $7)
     (i32.const 8)
    )
   )
   (i32.store offset=12
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=12
      (get_local $6)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy3877296762501054464EN11arbitration10arbitratorEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy3877296762501054464EN11arbitration10arbitratorEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i64.store offset=16
    (tee_local $6
     (call $_Znwj
      (i32.const 88)
     )
    )
    (i64.const 0)
   )
   (i64.store offset=8
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=24
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=32
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=40
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=48
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=56
    (get_local $6)
    (get_local $0)
   )
   (drop
    (call $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration6filingE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (get_local $6)
    )
   )
   (i32.store offset=64
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=60
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=68
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=72
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=76
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=80
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=84
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=60
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_12by_suspendedEvEEEEEENS5_ILy4588789415053246464ENS8_IS4_yXadL_ZNKS4_11by_rejectedEvEEEEEENS5_ILy4581139758608547840ENS8_IS4_yXadL_ZNKS4_10by_droppedEvEEEEEENS5_ILy4580471301151391744ES9_EENS5_ILy4580463436915277824ENS8_IS4_yXadL_ZNKS4_8by_claimEvEEEEEENS5_ILy4580279740090286080ENS8_IS4_yXadL_ZNKS4_7by_caseEvEEEEEEEE8item_ptrENS_9allocatorISL_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSK_4itemENS_14default_deleteISR_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration6filingE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 40)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_12by_suspendedEvEEEEEENS5_ILy4588789415053246464ENS8_IS4_yXadL_ZNKS4_11by_rejectedEvEEEEEENS5_ILy4581139758608547840ENS8_IS4_yXadL_ZNKS4_10by_droppedEvEEEEEENS5_ILy4580471301151391744ES9_EENS5_ILy4580463436915277824ENS8_IS4_yXadL_ZNKS4_8by_claimEvEEEEEENS5_ILy4580279740090286080ENS8_IS4_yXadL_ZNKS4_7by_caseEvEEEEEEEE8item_ptrENS_9allocatorISL_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSK_4itemENS_14default_deleteISR_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy12230973184777650176ENS_7paymentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEENS4_ILy4587592574746755072ENS7_IS3_yXadL_ZNKS3_7by_paidEvEEEEEEEEEyEEbyT0_ (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (i32.store16 offset=44
   (get_local $8)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const -6215770888931901440)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=40
      (call $_ZNK5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEENS3_ILy4587592574746755072ENS6_IS2_yXadL_ZNKS2_7by_paidEvEEEEEEEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $7
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $7)
 )
 (func $_ZN11arbitration18enough_for_paymentEyyy (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=48
   (get_local $8)
   (get_local $1)
  )
  (i64.store offset=56
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=64
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $8)
   (i64.load
    (get_local $0)
   )
  )
  (i32.store16 offset=76
   (get_local $8)
   (i32.const 0)
  )
  (set_local $2
   (i64.load offset=16
    (tee_local $5
     (call $_ZNK5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEENS3_ILy4587592574746755072ENS6_IS2_yXadL_ZNKS2_7by_paidEvEEEEEEEE3getEyPKc
      (i32.add
       (get_local $8)
       (i32.const 40)
      )
      (get_local $2)
      (i32.const 1520)
     )
    )
   )
  )
  (set_local $1
   (i64.load
    (i32.add
     (get_local $5)
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const 0)
  )
  (i64.store
   (get_local $8)
   (tee_local $6
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (get_local $6)
  )
  (set_local $3
   (i64.load offset=8
    (tee_local $0
     (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE3getEyPKc
      (get_local $8)
      (get_local $3)
      (i32.const 1520)
     )
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $1)
    (i64.load
     (i32.add
      (get_local $0)
      (i32.const 16)
     )
    )
   )
   (i32.const 1312)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $4
      (i32.load offset=24
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $8)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$3
      (set_local $5
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $4)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $4)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (tee_local $4
      (i32.load offset=64
       (get_local $8)
      )
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $8)
           (i32.const 68)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$8
      (set_local $5
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$9
       (br_if $label$9
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $4)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 64)
       )
      )
     )
     (br $label$6)
    )
    (set_local $0
     (get_local $4)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
  )
  (i64.ge_s
   (get_local $3)
   (get_local $2)
  )
 )
 (func $_ZN11arbitration6get_sfEv (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $5)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i64.store offset=40
   (get_local $5)
   (i64.const -1)
  )
  (i64.store offset=48
   (get_local $5)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $5)
   (tee_local $3
    (i64.load
     (get_local $1)
    )
   )
  )
  (i64.store offset=32
   (get_local $5)
   (get_local $3)
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const -4139046208548449120)
       (i64.const -4139046208548449120)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (tee_local $1
       (call $_ZNK5eosio11multi_indexILy14307697865161102496ENS_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $5)
         (i32.const 24)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $5)
      (i32.const 24)
     )
    )
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $1)
    (i32.const 0)
   )
   (i32.const 1488)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (tee_local $3
    (i64.load
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
    (i32.const 8)
   )
   (get_local $3)
  )
  (i64.store
   (get_local $0)
   (tee_local $3
    (i64.load
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (get_local $3)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=48
       (get_local $5)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $1
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $5)
           (i32.const 52)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $1)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $1)
       )
      )
     )
     (set_local $1
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 48)
       )
      )
     )
     (br $label$2)
    )
    (set_local $1
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 64)
   )
  )
 )
 (func $_ZN11arbitration11sub_balanceEyN5eosio5assetE (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $6)
   (i64.const 0)
  )
  (i64.store
   (get_local $6)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $6)
   (get_local $4)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_find_i64
       (get_local $4)
       (get_local $4)
       (i64.const 4152997947673411584)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=24
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl
        (get_local $6)
        (get_local $3)
       )
      )
     )
     (get_local $6)
    )
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (i32.add
      (get_local $5)
      (i32.const 16)
     )
    )
    (i64.load offset=8
     (get_local $2)
    )
   )
   (i32.const 1312)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i64.ne
       (i64.load offset=8
        (get_local $5)
       )
       (i64.load
        (get_local $2)
       )
      )
     )
     (call $eosio_assert
      (tee_local $2
       (i32.ne
        (get_local $5)
        (i32.const 0)
       )
      )
      (i32.const 208)
     )
     (call $eosio_assert
      (get_local $2)
      (i32.const 256)
     )
     (block $label$4
      (br_if $label$4
       (i32.lt_s
        (tee_local $2
         (call $db_next_i64
          (i32.load offset=28
           (get_local $5)
          )
          (i32.add
           (get_local $6)
           (i32.const 40)
          )
         )
        )
        (i32.const 0)
       )
      )
      (drop
       (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl
        (get_local $6)
        (get_local $2)
       )
      )
     )
     (call $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE5eraseERKS2_
      (get_local $6)
      (get_local $5)
     )
     (br_if $label$2
      (tee_local $0
       (i32.load offset=24
        (get_local $6)
       )
      )
     )
     (br $label$1)
    )
    (set_local $4
     (i64.load
      (get_local $0)
     )
    )
    (i32.store offset=40
     (get_local $6)
     (get_local $2)
    )
    (call $eosio_assert
     (i32.ne
      (get_local $5)
      (i32.const 0)
     )
     (i32.const 832)
    )
    (call $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE6modifyIZNS1_11sub_balanceEyNS_5assetEEUlRT_E_EEvRKS2_yOS6_
     (get_local $6)
     (get_local $5)
     (get_local $4)
     (i32.add
      (get_local $6)
      (i32.const 40)
     )
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (i32.load offset=24
        (get_local $6)
       )
      )
     )
    )
   )
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $6)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $0)
      )
     )
     (loop $label$7
      (set_local $2
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$8
       (br_if $label$8
        (i32.eqz
         (get_local $2)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$7
       (i32.ne
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 24)
       )
      )
     )
     (br $label$5)
    )
    (set_local $5
     (get_local $0)
    )
   )
   (i32.store
    (get_local $3)
    (get_local $0)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration11add_balanceEyN5eosio5assetE (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i64.store offset=56
   (get_local $6)
   (get_local $1)
  )
  (set_local $4
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (call $_ZN11arbitration6existsIN5eosio11multi_indexILy4152997947673411584ENS_7balanceEJEEEyEEbT0_
        (get_local $0)
        (get_local $1)
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.lt_s
        (tee_local $5
         (call $db_find_i64
          (get_local $3)
          (get_local $3)
          (i64.const 4152997947673411584)
          (get_local $1)
         )
        )
        (i32.const 0)
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=24
         (tee_local $4
          (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl
           (i32.add
            (get_local $6)
            (i32.const 16)
           )
           (get_local $5)
          )
         )
        )
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
       )
       (i32.const 48)
      )
     )
     (set_local $1
      (i64.load
       (get_local $0)
      )
     )
     (i32.store offset=8
      (get_local $6)
      (get_local $2)
     )
     (call $eosio_assert
      (i32.ne
       (get_local $4)
       (i32.const 0)
      )
      (i32.const 832)
     )
     (call $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE6modifyIZNS1_11add_balanceEyNS_5assetEEUlRT_E_EEvRKS2_yOS6_
      (i32.add
       (get_local $6)
       (i32.const 16)
      )
      (get_local $4)
      (get_local $1)
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
     )
     (br_if $label$1
      (tee_local $2
       (i32.load offset=40
        (get_local $6)
       )
      )
     )
     (br $label$0)
    )
    (set_local $1
     (i64.load
      (get_local $0)
     )
    )
    (i32.store offset=12
     (get_local $6)
     (get_local $2)
    )
    (i32.store offset=8
     (get_local $6)
     (i32.add
      (get_local $6)
      (i32.const 56)
     )
    )
    (call $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE7emplaceIZNS1_11add_balanceEyNS_5assetEEUlRT_E0_EENS3_14const_iteratorEyOS6_
     (get_local $6)
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
     (get_local $1)
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=40
        (get_local $6)
       )
      )
     )
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$6
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$7
       (br_if $label$7
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$6
       (i32.ne
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$4)
    )
    (set_local $0
     (get_local $2)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE6modifyIZNS1_11add_balanceEyNS_5assetEEUlRT_E_EEvRKS2_yOS6_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=24
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (set_local $4
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=8
     (tee_local $3
      (i32.load
       (get_local $3)
      )
     )
    )
    (i64.load
     (tee_local $5
      (i32.add
       (get_local $1)
       (i32.const 16)
      )
     )
    )
   )
   (i32.const 1200)
  )
  (i64.store offset=8
   (get_local $1)
   (tee_local $6
    (i64.add
     (i64.load offset=8
      (get_local $1)
     )
     (i64.load
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i64.gt_s
    (get_local $6)
    (i64.const -4611686018427387904)
   )
   (i32.const 1248)
  )
  (call $eosio_assert
   (i64.lt_s
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 4611686018427387904)
   )
   (i32.const 1280)
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $7)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $7)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=28
    (get_local $1)
   )
   (get_local $2)
   (get_local $7)
   (i32.const 24)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE7emplaceIZNS1_11add_balanceEyNS_5assetEEUlRT_E0_EENS3_14const_iteratorEyOS6_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (i64.store offset=16
   (tee_local $4
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 1398362884)
  )
  (i64.store offset=8
   (get_local $4)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $2
   (i64.const 5462355)
  )
  (set_local $3
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $2)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $2
          (i64.shr_u
           (get_local $2)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $2
           (i64.shr_u
            (get_local $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $3
          (i32.add
           (get_local $3)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $6
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 576)
  )
  (i32.store offset=24
   (get_local $4)
   (get_local $1)
  )
  (call $_ZZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE7emplaceIZNS1_11add_balanceEyNS_5assetEEUlRT_E0_EENS3_14const_iteratorEyOS6_ENKUlS7_E_clINS3_4itemEEEDaS7_
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $4)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $6
    (i32.load offset=28
     (get_local $4)
    )
   )
  )
  (block $label$5
   (block $label$6
    (br_if $label$6
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $6)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $5)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$5)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $3
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (get_local $3)
    )
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE7emplaceIZNS1_11add_balanceEyNS_5assetEEUlRT_E0_EENS3_14const_iteratorEyOS6_ENKUlS7_E_clINS3_4itemEEEDaS7_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $4
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (tee_local $4
     (i32.load offset=4
      (get_local $4)
     )
    )
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $6)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $6)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store offset=28
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const 4152997947673411584)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $3
     (i64.load
      (get_local $1)
     )
    )
    (get_local $6)
    (i32.const 24)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE6modifyIZNS1_11sub_balanceEyNS_5assetEEUlRT_E_EEvRKS2_yOS6_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=24
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (set_local $4
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=8
     (tee_local $3
      (i32.load
       (get_local $3)
      )
     )
    )
    (i64.load
     (tee_local $5
      (i32.add
       (get_local $1)
       (i32.const 16)
      )
     )
    )
   )
   (i32.const 1376)
  )
  (i64.store offset=8
   (get_local $1)
   (tee_local $6
    (i64.sub
     (i64.load offset=8
      (get_local $1)
     )
     (i64.load
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i64.gt_s
    (get_local $6)
    (i64.const -4611686018427387904)
   )
   (i32.const 1424)
  )
  (call $eosio_assert
   (i64.lt_s
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 4611686018427387904)
   )
   (i32.const 1456)
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $7)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $7)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=28
    (get_local $1)
   )
   (get_local $2)
   (get_local $7)
   (i32.const 24)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy14307697865161102496ENS_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (set_local $9
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $10)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $3)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $7
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $7)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $3
        (call $malloc
         (get_local $7)
        )
       )
       (get_local $7)
      )
     )
     (call $free
      (get_local $3)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $3
      (i32.sub
       (get_local $10)
       (i32.and
        (i32.add
         (get_local $7)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $3)
      (get_local $7)
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
   (i64.store offset=8
    (tee_local $5
     (call $_Znwj
      (i32.const 32)
     )
    )
    (i64.const 1398362884)
   )
   (i64.store
    (get_local $5)
    (i64.const 0)
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 512)
   )
   (set_local $10
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
   (set_local $8
    (i64.const 5462355)
   )
   (set_local $6
    (i32.const 0)
   )
   (block $label$6
    (block $label$7
     (loop $label$8
      (br_if $label$7
       (i32.gt_u
        (i32.add
         (i32.shl
          (i32.wrap/i64
           (get_local $8)
          )
          (i32.const 24)
         )
         (i32.const -1073741825)
        )
        (i32.const 452984830)
       )
      )
      (block $label$9
       (br_if $label$9
        (i64.ne
         (i64.and
          (tee_local $8
           (i64.shr_u
            (get_local $8)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (loop $label$10
        (br_if $label$7
         (i64.ne
          (i64.and
           (tee_local $8
            (i64.shr_u
             (get_local $8)
             (i64.const 8)
            )
           )
           (i64.const 255)
          )
          (i64.const 0)
         )
        )
        (br_if $label$10
         (i32.lt_s
          (tee_local $6
           (i32.add
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.const 7)
         )
        )
       )
      )
      (set_local $4
       (i32.const 1)
      )
      (br_if $label$8
       (i32.lt_s
        (tee_local $6
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
      (br $label$6)
     )
    )
    (set_local $4
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (get_local $4)
    (i32.const 576)
   )
   (i32.store offset=16
    (get_local $5)
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $7)
     (i32.const 7)
    )
    (i32.const 608)
   )
   (drop
    (call $memcpy
     (get_local $5)
     (get_local $3)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.ne
     (i32.and
      (get_local $7)
      (i32.const -8)
     )
     (i32.const 8)
    )
    (i32.const 608)
   )
   (drop
    (call $memcpy
     (get_local $10)
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (i32.store offset=20
    (get_local $5)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $9)
    (get_local $5)
   )
   (i64.store offset=16
    (get_local $9)
    (i64.const -4139046208548449120)
   )
   (i32.store offset=12
    (get_local $9)
    (tee_local $7
     (i32.load offset=20
      (get_local $5)
     )
    )
   )
   (block $label$11
    (block $label$12
     (br_if $label$12
      (i32.ge_u
       (tee_local $6
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $6)
      (i64.const -4139046208548449120)
     )
     (i32.store offset=16
      (get_local $6)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $9)
      (i32.const 0)
     )
     (i32.store
      (get_local $6)
      (get_local $5)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $6)
       (i32.const 24)
      )
     )
     (br $label$11)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14307697865161102496ENS1_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_
     (get_local $2)
     (i32.add
      (get_local $9)
      (i32.const 24)
     )
     (i32.add
      (get_local $9)
      (i32.const 16)
     )
     (i32.add
      (get_local $9)
      (i32.const 12)
     )
    )
   )
   (set_local $6
    (i32.load offset=24
     (get_local $9)
    )
   )
   (i32.store offset=24
    (get_local $9)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
  )
  (get_local $5)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy14307697865161102496ENS1_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEENS3_ILy4587592574746755072ENS6_IS2_yXadL_ZNKS2_7by_paidEvEEEEEEEE3getEyPKc (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=40
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $0)
     )
     (i32.const 48)
    )
    (br $label$2)
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -6215770888931901440)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=40
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEENS3_ILy4587592574746755072ENS6_IS2_yXadL_ZNKS2_7by_paidEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (get_local $0)
    )
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (get_local $2)
  )
  (get_local $6)
 )
 (func $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE3getEyPKc (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=24
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $0)
     )
     (i32.const 48)
    )
    (br $label$2)
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const 4152997947673411584)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=24
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE31load_object_by_primary_iteratorEl
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (get_local $0)
    )
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (get_local $2)
  )
  (get_local $6)
 )
 (func $_ZNK5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEENS3_ILy4587592574746755072ENS6_IS2_yXadL_ZNKS2_7by_paidEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (set_local $4
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $5
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $5)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $5)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $5)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $5)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $5)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $5)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (set_local $3
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
   (i64.store offset=24
    (tee_local $4
     (call $_Znwj
      (i32.const 56)
     )
    )
    (i64.const 1398362884)
   )
   (i64.store offset=16
    (get_local $4)
    (i64.const 0)
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 512)
   )
   (set_local $7
    (i64.const 5462355)
   )
   (set_local $5
    (i32.const 0)
   )
   (block $label$7
    (block $label$8
     (loop $label$9
      (br_if $label$8
       (i32.gt_u
        (i32.add
         (i32.shl
          (i32.wrap/i64
           (get_local $7)
          )
          (i32.const 24)
         )
         (i32.const -1073741825)
        )
        (i32.const 452984830)
       )
      )
      (block $label$10
       (br_if $label$10
        (i64.ne
         (i64.and
          (tee_local $7
           (i64.shr_u
            (get_local $7)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (loop $label$11
        (br_if $label$8
         (i64.ne
          (i64.and
           (tee_local $7
            (i64.shr_u
             (get_local $7)
             (i64.const 8)
            )
           )
           (i64.const 255)
          )
          (i64.const 0)
         )
        )
        (br_if $label$11
         (i32.lt_s
          (tee_local $5
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (i32.const 7)
         )
        )
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (br_if $label$9
       (i32.lt_s
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
      (br $label$7)
     )
    )
    (set_local $6
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (get_local $6)
    (i32.const 576)
   )
   (i32.store offset=40
    (get_local $4)
    (get_local $0)
   )
   (i64.store offset=32
    (get_local $4)
    (i64.const 0)
   )
   (drop
    (call $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration7paymentE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (get_local $4)
    )
   )
   (i32.store offset=48
    (get_local $4)
    (i32.const -1)
   )
   (i32.store offset=44
    (get_local $4)
    (get_local $1)
   )
   (i32.store offset=52
    (get_local $4)
    (i32.const -1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $4)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $7
     (i64.load
      (get_local $4)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $6
     (i32.load offset=44
      (get_local $4)
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.ge_u
       (tee_local $5
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $5)
      (get_local $7)
     )
     (i32.store offset=16
      (get_local $5)
      (get_local $6)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $5)
      (get_local $4)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $5)
       (i32.const 24)
      )
     )
     (br $label$12)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8by_ownerEvEEEEEENS5_ILy4587592574746755072ENS8_IS4_yXadL_ZNKS4_7by_paidEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
     (get_local $3)
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $5
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $5)
    )
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $4)
 )
 (func $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration7paymentE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8by_ownerEvEEEEEENS5_ILy4587592574746755072ENS8_IS4_yXadL_ZNKS4_7by_paidEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN11arbitration17enough_for_subfeeEy (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=56
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=64
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $8)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=48
   (get_local $8)
   (get_local $3)
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const -4139046208548449120)
       (i64.const -4139046208548449120)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (tee_local $7
       (call $_ZNK5eosio11multi_indexILy14307697865161102496ENS_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $8)
         (i32.const 40)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 40)
     )
    )
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (i32.const 0)
   )
   (i32.const 1488)
  )
  (set_local $3
   (i64.load
    (get_local $7)
   )
  )
  (set_local $4
   (i64.load offset=8
    (get_local $7)
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const 0)
  )
  (i64.store
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (get_local $5)
  )
  (set_local $1
   (i64.load offset=8
    (tee_local $7
     (call $_ZNK5eosio11multi_indexILy4152997947673411584EN11arbitration7balanceEJEE3getEyPKc
      (get_local $8)
      (get_local $1)
      (i32.const 1520)
     )
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (i64.load
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
    )
   )
   (i32.const 1312)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=24
       (get_local $8)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $7)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 24)
       )
      )
     )
     (br $label$2)
    )
    (set_local $7
     (get_local $2)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $2
      (i32.load offset=64
       (get_local $8)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 68)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$9
      (set_local $0
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $7)
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $2)
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 64)
       )
      )
     )
     (br $label$7)
    )
    (set_local $7
     (get_local $2)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
  )
  (i64.ge_s
   (get_local $1)
   (get_local $3)
  )
 )
 (func $_ZN11arbitration18increment_sfcreditEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i64.store offset=56
   (get_local $6)
   (get_local $1)
  )
  (set_local $3
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $4)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $4)
       (get_local $4)
       (i64.const -4139171819417346672)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (tee_local $3
       (call $_ZNK5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
   (set_local $1
    (i64.load offset=56
     (get_local $6)
    )
   )
  )
  (set_local $2
   (call $_ZN11arbitration6existsIN5eosio11multi_indexILy14307572254292204944ENS_12subfeecreditEJEEEyEEbT0_
    (get_local $0)
    (get_local $1)
   )
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (get_local $2)
      )
     )
     (call $eosio_assert
      (i32.ne
       (get_local $3)
       (i32.const 0)
      )
      (i32.const 832)
     )
     (call $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE6modifyIZNS1_18increment_sfcreditEyEUlRT_E_EEvRKS2_yOS5_
      (i32.add
       (get_local $6)
       (i32.const 16)
      )
      (get_local $3)
      (get_local $1)
      (get_local $6)
     )
     (br_if $label$2
      (tee_local $2
       (i32.load offset=40
        (get_local $6)
       )
      )
     )
     (br $label$1)
    )
    (i32.store offset=8
     (get_local $6)
     (i32.add
      (get_local $6)
      (i32.const 56)
     )
    )
    (call $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE7emplaceIZNS1_18increment_sfcreditEyEUlRT_E0_EENS3_14const_iteratorEyOS5_
     (get_local $6)
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
     (get_local $1)
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $2
       (i32.load offset=40
        (get_local $6)
       )
      )
     )
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$6
      (set_local $3
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$7
       (br_if $label$7
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$6
       (i32.ne
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$4)
    )
    (set_local $0
     (get_local $2)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE6modifyIZNS1_18increment_sfcreditEyEUlRT_E_EEvRKS2_yOS5_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=16
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.add
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 1)
   )
  )
  (set_local $4
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $5)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=20
    (get_local $1)
   )
   (get_local $2)
   (get_local $5)
   (i32.const 16)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE7emplaceIZNS1_18increment_sfcreditEyEUlRT_E0_EENS3_14const_iteratorEyOS5_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (drop
   (call $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE4itemC2IZNS3_7emplaceIZNS1_18increment_sfcreditEyEUlRT_E0_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_
    (tee_local $3
     (call $_Znwj
      (i32.const 32)
     )
    )
    (get_local $1)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $3)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $4
    (i32.load offset=20
     (get_local $3)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $5)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $5)
     (get_local $4)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $5)
     (get_local $3)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $5)
      (i32.const 24)
     )
    )
    (br $label$0)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $1
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14307572254292204944EN11arbitration12subfeecreditEJEE4itemC2IZNS3_7emplaceIZNS1_18increment_sfcreditEyEUlRT_E0_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=16
   (get_local $0)
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (get_local $0)
   (i64.load
    (i32.load
     (i32.load offset=4
      (get_local $2)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $0)
   (i64.const 1)
  )
  (set_local $1
   (i32.load
    (get_local $2)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (get_local $0)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $4)
     (i32.const 8)
    )
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const -4139171819417346672)
    (i64.load
     (i32.load offset=8
      (get_local $2)
     )
    )
    (tee_local $3
     (i64.load
      (get_local $0)
     )
    )
    (get_local $4)
    (i32.const 16)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $1)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEyyEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_yyEEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
 )
 (func $_ZN11arbitration14validate_assetEN5eosio5assetE (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (call $eosio_assert
   (i64.eq
    (tee_local $3
     (i64.load offset=8
      (get_local $1)
     )
    )
    (i64.const 1397703940)
   )
   (i32.const 1744)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i64.gt_u
     (i64.add
      (tee_local $2
       (i64.load
        (get_local $1)
       )
      )
      (i64.const 4611686018427387903)
     )
     (i64.const 9223372036854775806)
    )
   )
   (set_local $3
    (i64.shr_u
     (get_local $3)
     (i64.const 8)
    )
   )
   (set_local $1
    (i32.const 0)
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $4
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $4
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $4)
   (i32.const 1664)
  )
  (call $eosio_assert
   (i64.gt_s
    (get_local $2)
    (i64.const 0)
   )
   (i32.const 1696)
  )
 )
 (func $_ZN11arbitration13next_index_idEv (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $5)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $5)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $5)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $5)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $5)
   (get_local $3)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (call $db_find_i64
        (get_local $3)
        (get_local $3)
        (i64.const 8417982763637932032)
        (i64.const 8417982763637932032)
       )
      )
      (i32.const 0)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=8
       (call $_ZNK5eosio11multi_indexILy8417982763637932032ENS_9singletonILy8417982763637932032EyE3rowEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $5)
         (i32.const 8)
        )
        (get_local $2)
       )
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
     )
     (i32.const 48)
    )
    (set_local $3
     (i64.add
      (call $_ZN5eosio9singletonILy8417982763637932032EyE3getEv
       (i32.add
        (get_local $5)
        (i32.const 8)
       )
      )
      (i64.const 1)
     )
    )
    (br $label$0)
   )
   (set_local $3
    (i64.const 1)
   )
  )
  (i64.store
   (get_local $5)
   (get_local $3)
  )
  (call $_ZN5eosio9singletonILy8417982763637932032EyE3setERKyy
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
   (get_local $5)
   (i64.load
    (get_local $0)
   )
  )
  (set_local $3
   (i64.load
    (get_local $5)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (tee_local $1
      (i32.load offset=32
       (get_local $5)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $5)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $1)
      )
     )
     (loop $label$5
      (set_local $2
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (get_local $2)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$5
       (i32.ne
        (get_local $1)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 32)
       )
      )
     )
     (br $label$3)
    )
    (set_local $0
     (get_local $1)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $1)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 48)
   )
  )
  (get_local $3)
 )
 (func $_ZN5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEENS3_ILy4587592574746755072ENS6_IS2_yXadL_ZNKS2_7by_paidEvEEEEEEEE7emplaceIZNS1_11add_paymentEyyyNS_5assetEEUlRT_E_EENSB_14const_iteratorEyOSE_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (i64.store offset=24
   (tee_local $4
    (call $_Znwj
     (i32.const 56)
    )
   )
   (i64.const 1398362884)
  )
  (i64.store offset=16
   (get_local $4)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $2
   (i64.const 5462355)
  )
  (set_local $3
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $2)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $2
          (i64.shr_u
           (get_local $2)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $2
           (i64.shr_u
            (get_local $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $3
          (i32.add
           (get_local $3)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $6
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 576)
  )
  (i32.store offset=40
   (get_local $4)
   (get_local $1)
  )
  (i64.store offset=32
   (get_local $4)
   (i64.const 0)
  )
  (call $_ZZN5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEENS3_ILy4587592574746755072ENS6_IS2_yXadL_ZNKS2_7by_paidEvEEEEEEEE7emplaceIZNS1_11add_paymentEyyyNS_5assetEEUlRT_E_EENSB_14const_iteratorEyOSE_ENKUlSF_E_clINSB_4itemEEEDaSF_
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $4)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $6
    (i32.load offset=44
     (get_local $4)
    )
   )
  )
  (block $label$5
   (block $label$6
    (br_if $label$6
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $6)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $5)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$5)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8by_ownerEvEEEEEENS5_ILy4587592574746755072ENS8_IS4_yXadL_ZNKS4_7by_paidEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $3
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (get_local $3)
    )
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy12230973184777650176EN11arbitration7paymentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEENS3_ILy4587592574746755072ENS6_IS2_yXadL_ZNKS2_7by_paidEvEEEEEEEE7emplaceIZNS1_11add_paymentEyyyNS_5assetEEUlRT_E_EENSB_14const_iteratorEyOSE_ENKUlSF_E_clINSB_4itemEEEDaSF_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $4
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (i32.load offset=4
     (get_local $4)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (i64.store offset=16
   (get_local $1)
   (i64.load
    (tee_local $4
     (i32.load offset=8
      (get_local $4)
     )
    )
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $8)
     (i32.const 8)
    )
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store offset=44
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -6215770888931901440)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $3
     (i64.load
      (get_local $1)
     )
    )
    (get_local $8)
    (i32.const 32)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $3
   (i64.load
    (tee_local $2
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $6
   (i64.load
    (tee_local $0
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $7
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=40
   (get_local $8)
   (i64.load
    (get_local $4)
   )
  )
  (i32.store offset=48
   (get_local $1)
   (call $db_idx64_store
    (get_local $3)
    (i64.const -6215770888931901440)
    (get_local $6)
    (get_local $7)
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (set_local $6
   (i64.load
    (get_local $2)
   )
  )
  (set_local $7
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=40
   (get_local $8)
   (i64.load offset=32
    (get_local $1)
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 52)
   )
   (call $db_idx64_store
    (get_local $6)
    (i64.const -6215770888931901439)
    (get_local $3)
    (get_local $7)
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy8417982763637932032ENS_9singletonILy8417982763637932032EyE3rowEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $7
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $8)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $6
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $6)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $6
      (i32.sub
       (get_local $8)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $6)
      (get_local $4)
     )
    )
   )
   (i32.store offset=8
    (tee_local $5
     (call $_Znwj
      (i32.const 24)
     )
    )
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 608)
   )
   (drop
    (call $memcpy
     (get_local $5)
     (get_local $6)
     (i32.const 8)
    )
   )
   (i32.store offset=12
    (get_local $5)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $7)
    (get_local $5)
   )
   (i64.store offset=16
    (get_local $7)
    (i64.const 8417982763637932032)
   )
   (i32.store offset=12
    (get_local $7)
    (tee_local $6
     (i32.load offset=12
      (get_local $5)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (i64.const 8417982763637932032)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $6)
     )
     (i32.store offset=24
      (get_local $7)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $5)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy8417982763637932032ENS1_9singletonILy8417982763637932032EyE3rowEJEE8item_ptrENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS6_4itemENS_14default_deleteISD_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $7)
      (i32.const 24)
     )
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
     (i32.add
      (get_local $7)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $7)
    )
   )
   (i32.store offset=24
    (get_local $7)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
  )
  (get_local $5)
 )
 (func $_ZN5eosio9singletonILy8417982763637932032EyE3getEv (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $2
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=8
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $2)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $0)
     )
     (i32.const 48)
    )
    (br $label$0)
   )
   (set_local $2
    (i32.const 0)
   )
   (br_if $label$0
    (i32.lt_s
     (tee_local $1
      (call $db_find_i64
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const 8417982763637932032)
       (i64.const 8417982763637932032)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=8
      (tee_local $2
       (call $_ZNK5eosio11multi_indexILy8417982763637932032ENS_9singletonILy8417982763637932032EyE3rowEJEE31load_object_by_primary_iteratorEl
        (get_local $0)
        (get_local $1)
       )
      )
     )
     (get_local $0)
    )
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $2)
    (i32.const 0)
   )
   (i32.const 1488)
  )
  (i64.load
   (get_local $2)
  )
 )
 (func $_ZN5eosio9singletonILy8417982763637932032EyE3setERKyy (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eq
        (tee_local $3
         (i32.load
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
        (i32.load offset=24
         (get_local $0)
        )
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=8
         (tee_local $3
          (i32.load
           (i32.add
            (get_local $3)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $0)
       )
       (i32.const 48)
      )
      (br_if $label$2
       (get_local $3)
      )
      (br $label$1)
     )
     (br_if $label$1
      (i32.lt_s
       (tee_local $3
        (call $db_find_i64
         (i64.load
          (get_local $0)
         )
         (i64.load offset=8
          (get_local $0)
         )
         (i64.const 8417982763637932032)
         (i64.const 8417982763637932032)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=8
        (tee_local $3
         (call $_ZNK5eosio11multi_indexILy8417982763637932032ENS_9singletonILy8417982763637932032EyE3rowEJEE31load_object_by_primary_iteratorEl
          (get_local $0)
          (get_local $3)
         )
        )
       )
       (get_local $0)
      )
      (i32.const 48)
     )
    )
    (i32.store
     (get_local $4)
     (get_local $1)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 832)
    )
    (call $_ZN5eosio11multi_indexILy8417982763637932032ENS_9singletonILy8417982763637932032EyE3rowEJEE6modifyIZNS2_3setERKyyEUlRS3_E_EEvRKS3_yOT_
     (get_local $0)
     (get_local $3)
     (get_local $2)
     (get_local $4)
    )
    (br $label$0)
   )
   (i32.store offset=8
    (get_local $4)
    (get_local $1)
   )
   (call $_ZN5eosio11multi_indexILy8417982763637932032ENS_9singletonILy8417982763637932032EyE3rowEJEE7emplaceIZNS2_3setERKyyEUlRS3_E0_EENS4_14const_iteratorEyOT_
    (get_local $4)
    (get_local $0)
    (get_local $2)
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy8417982763637932032ENS_9singletonILy8417982763637932032EyE3rowEJEE6modifyIZNS2_3setERKyyEUlRS3_E_EEvRKS3_yOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=8
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=12
    (get_local $1)
   )
   (get_local $2)
   (get_local $4)
   (i32.const 8)
  )
  (block $label$0
   (br_if $label$0
    (i64.gt_u
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 8417982763637932032)
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i64.const 8417982763637932033)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy8417982763637932032ENS_9singletonILy8417982763637932032EyE3rowEJEE7emplaceIZNS2_3setERKyyEUlRS3_E0_EENS4_14const_iteratorEyOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=8
   (tee_local $4
    (call $_Znwj
     (i32.const 24)
    )
   )
   (get_local $1)
  )
  (i64.store
   (get_local $4)
   (i64.load
    (i32.load
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (i32.store offset=12
   (get_local $4)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 8417982763637932032)
    (get_local $2)
    (i64.const 8417982763637932032)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.gt_u
     (i64.load offset=16
      (get_local $1)
     )
     (i64.const 8417982763637932032)
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i64.const 8417982763637932033)
   )
  )
  (i32.store offset=8
   (get_local $7)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 8417982763637932032)
  )
  (i32.store offset=4
   (get_local $7)
   (tee_local $5
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (i64.const 8417982763637932032)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $5)
    )
    (i32.store offset=8
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy8417982763637932032ENS1_9singletonILy8417982763637932032EyE3rowEJEE8item_ptrENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS6_4itemENS_14default_deleteISD_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 4)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $1
   (i32.load offset=8
    (get_local $7)
   )
  )
  (i32.store offset=8
   (get_local $7)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy8417982763637932032ENS1_9singletonILy8417982763637932032EyE3rowEJEE8item_ptrENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS6_4itemENS_14default_deleteISD_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy5912297622307078144ENS_7ecafarbEJEEEyEEbT0_ (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $7)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $7)
   (get_local $4)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $4)
       (get_local $4)
       (i64.const 5912297622307078144)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=8
      (call $_ZNK5eosio11multi_indexILy5912297622307078144EN11arbitration7ecafarbEJEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $6
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $2
      (i32.load offset=32
       (get_local $7)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $7)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$3
      (set_local $3
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $2)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3setERKS2_y (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eq
        (tee_local $3
         (i32.load
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
        (i32.load offset=24
         (get_local $0)
        )
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=16
         (tee_local $3
          (i32.load
           (i32.add
            (get_local $3)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $0)
       )
       (i32.const 48)
      )
      (br_if $label$2
       (get_local $3)
      )
      (br $label$1)
     )
     (br_if $label$1
      (i32.lt_s
       (tee_local $3
        (call $db_find_i64
         (i64.load
          (get_local $0)
         )
         (i64.load offset=8
          (get_local $0)
         )
         (i64.const -4139046208548449120)
         (i64.const -4139046208548449120)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=16
        (tee_local $3
         (call $_ZNK5eosio11multi_indexILy14307697865161102496ENS_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE31load_object_by_primary_iteratorEl
          (get_local $0)
          (get_local $3)
         )
        )
       )
       (get_local $0)
      )
      (i32.const 48)
     )
    )
    (i32.store
     (get_local $4)
     (get_local $1)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 832)
    )
    (call $_ZN5eosio11multi_indexILy14307697865161102496ENS_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE6modifyIZNS4_3setERKS3_yEUlRS5_E_EEvRKS5_yOT_
     (get_local $0)
     (get_local $3)
     (get_local $2)
     (get_local $4)
    )
    (br $label$0)
   )
   (i32.store offset=8
    (get_local $4)
    (get_local $1)
   )
   (call $_ZN5eosio11multi_indexILy14307697865161102496ENS_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE7emplaceIZNS4_3setERKS3_yEUlRS5_E0_EENS6_14const_iteratorEyOT_
    (get_local $4)
    (get_local $0)
    (get_local $2)
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZNK5eosio5asset5printEv (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (set_local $10
   (tee_local $2
    (i32.load offset=4
     (i32.const 0)
    )
   )
  )
  (set_local $7
   (i64.const 1)
  )
  (block $label$0
   (br_if $label$0
    (tee_local $5
     (i64.eqz
      (tee_local $8
       (i64.load8_u offset=8
        (get_local $0)
       )
      )
     )
    )
   )
   (set_local $9
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $7
    (i64.const 1)
   )
   (loop $label$1
    (set_local $7
     (i64.mul
      (get_local $7)
      (i64.const 10)
     )
    )
    (br_if $label$1
     (i64.gt_s
      (tee_local $9
       (i64.add
        (get_local $9)
        (i64.const -1)
       )
      )
      (i64.const 1)
     )
    )
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (get_local $2)
     (i32.and
      (i32.add
       (i32.wrap/i64
        (i64.add
         (get_local $8)
         (i64.const 1)
        )
       )
       (i32.const 15)
      )
      (i32.const 1008)
     )
    )
   )
  )
  (i32.store8
   (tee_local $6
    (i32.add
     (get_local $2)
     (tee_local $3
      (i32.wrap/i64
       (get_local $8)
      )
     )
    )
   )
   (i32.const 0)
  )
  (set_local $4
   (i64.load
    (get_local $0)
   )
  )
  (block $label$2
   (br_if $label$2
    (get_local $5)
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $9
    (i64.rem_s
     (get_local $4)
     (get_local $7)
    )
   )
   (set_local $0
    (i32.add
     (get_local $6)
     (i32.const -1)
    )
   )
   (loop $label$3
    (i64.store8
     (get_local $0)
     (i64.add
      (i64.rem_s
       (get_local $9)
       (i64.const 10)
      )
      (i64.const 48)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const -1)
     )
    )
    (set_local $9
     (i64.div_s
      (get_local $9)
      (i64.const 10)
     )
    )
    (br_if $label$3
     (i64.gt_s
      (tee_local $8
       (i64.add
        (get_local $8)
        (i64.const -1)
       )
      )
      (i64.const 1)
     )
    )
   )
  )
  (call $printi
   (i64.div_s
    (get_local $4)
    (get_local $7)
   )
  )
  (call $prints
   (i32.const 1904)
  )
  (call $prints_l
   (get_local $2)
   (get_local $3)
  )
  (call $prints
   (i32.const 1920)
  )
  (call $_ZNK5eosio11symbol_type5printEb
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $10)
  )
 )
 (func $_ZNK5eosio11symbol_type5printEb (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $printui
    (i64.load8_u
     (get_local $0)
    )
   )
   (call $prints
    (i32.const 1936)
   )
  )
  (i32.store8 offset=15
   (get_local $3)
   (tee_local $0
    (i32.wrap/i64
     (i64.shr_u
      (tee_local $2
       (i64.load
        (get_local $0)
       )
      )
      (i64.const 8)
     )
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 16)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 24)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 32)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 40)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 48)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 56)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14307697865161102496ENS_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE6modifyIZNS4_3setERKS3_yEUlRS5_E_EEvRKS5_yOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=16
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (tee_local $3
     (i32.load
      (get_local $3)
     )
    )
   )
  )
  (i64.store
   (tee_local $4
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $5)
     (i32.const 8)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=20
    (get_local $1)
   )
   (get_local $2)
   (get_local $5)
   (i32.const 16)
  )
  (block $label$0
   (br_if $label$0
    (i64.gt_u
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const -4139046208548449120)
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i64.const -4139046208548449119)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14307697865161102496ENS_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE7emplaceIZNS4_3setERKS3_yEUlRS5_E0_EENS6_14const_iteratorEyOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i64.store offset=8
   (tee_local $4
    (call $_Znwj
     (i32.const 32)
    )
   )
   (i64.const 1398362884)
  )
  (i64.store
   (get_local $4)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $5
   (i32.add
    (get_local $4)
    (i32.const 8)
   )
  )
  (set_local $6
   (i64.const 5462355)
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $6)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $6
          (i64.shr_u
           (get_local $6)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $6
           (i64.shr_u
            (get_local $6)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $7
          (i32.add
           (get_local $7)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $7
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $8
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 576)
  )
  (i32.store offset=16
   (get_local $4)
   (get_local $1)
  )
  (i32.store
   (get_local $4)
   (i32.load
    (tee_local $7
     (i32.load
      (get_local $3)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 12)
   )
   (i32.load
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 8)
   )
   (i32.load
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 4)
   )
   (i32.load
    (i32.add
     (get_local $7)
     (i32.const 4)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $9)
      (i32.const 16)
     )
     (i32.const 8)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store offset=20
   (get_local $4)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const -4139046208548449120)
    (get_local $2)
    (i64.const -4139046208548449120)
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.gt_u
     (i64.load offset=16
      (get_local $1)
     )
     (i64.const -4139046208548449120)
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i64.const -4139046208548449119)
   )
  )
  (i32.store offset=8
   (get_local $9)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $9)
   (i64.const -4139046208548449120)
  )
  (i32.store offset=4
   (get_local $9)
   (tee_local $8
    (i32.load offset=20
     (get_local $4)
    )
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i32.ge_u
      (tee_local $7
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $7)
     (i64.const -4139046208548449120)
    )
    (i32.store offset=16
     (get_local $7)
     (get_local $8)
    )
    (i32.store offset=8
     (get_local $9)
     (i32.const 0)
    )
    (i32.store
     (get_local $7)
     (get_local $4)
    )
    (i32.store
     (get_local $3)
     (i32.add
      (get_local $7)
      (i32.const 24)
     )
    )
    (br $label$6)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14307697865161102496ENS1_9singletonILy14307697865161102496EN11arbitration12submittalfeeEE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
    (i32.add
     (get_local $9)
     (i32.const 4)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $7
   (i32.load offset=8
    (get_local $9)
   )
  )
  (i32.store offset=8
   (get_local $9)
   (i32.const 0)
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (get_local $7)
    )
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy5912297622307078144EN11arbitration7ecafarbEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $7
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $7)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.store offset=8
    (tee_local $6
     (call $_Znwj
      (i32.const 24)
     )
    )
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 608)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $7)
     (i32.const 8)
    )
   )
   (i32.store offset=12
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=12
      (get_local $6)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy5912297622307078144EN11arbitration7ecafarbEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy5912297622307078144EN11arbitration7ecafarbEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN11arbitration8flip_feeEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i32.store8 offset=52
   (get_local $6)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_lowerbound_i64
       (get_local $4)
       (get_local $1)
       (i64.const 6526841759966691328)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (drop
    (call $_ZNK5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE31load_object_by_primary_iteratorEl
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
     (get_local $2)
    )
   )
   (i32.store offset=8
    (get_local $6)
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
   )
   (i64.store
    (get_local $6)
    (i64.const 1)
   )
   (call $_ZNK5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE5indexILy4580631263094243328ES7_Ly0ELb0EE11lower_boundERKy
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (get_local $6)
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $2
       (i32.load offset=60
        (get_local $6)
       )
      )
     )
    )
    (br_if $label$1
     (i64.ne
      (i64.load
       (get_local $6)
      )
      (i64.load offset=24
       (get_local $2)
      )
     )
    )
    (set_local $3
     (i32.load offset=60
      (get_local $6)
     )
    )
   )
   (set_local $1
    (i64.load
     (get_local $0)
    )
   )
   (call $eosio_assert
    (i32.ne
     (get_local $3)
     (i32.const 0)
    )
    (i32.const 832)
   )
   (call $_ZN5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE6modifyIZNS1_8flip_feeEyEUlRT_E_EEvRKS2_yOSB_
    (i32.load offset=8
     (get_local $6)
    )
    (get_local $3)
    (get_local $1)
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $3
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $0
     (get_local $2)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyNS_5assetEEUlRT_E_EENS9_14const_iteratorEyOSD_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (i64.store offset=16
   (tee_local $4
    (call $_Znwj
     (i32.const 48)
    )
   )
   (i64.const 1398362884)
  )
  (i64.store offset=8
   (get_local $4)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $2
   (i64.const 5462355)
  )
  (set_local $3
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $2)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $2
          (i64.shr_u
           (get_local $2)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $2
           (i64.shr_u
            (get_local $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $3
          (i32.add
           (get_local $3)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $6
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 576)
  )
  (i32.store offset=32
   (get_local $4)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $4)
   (i64.const 1)
  )
  (call $_ZZN5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyNS_5assetEEUlRT_E_EENS9_14const_iteratorEyOSD_ENKUlSE_E_clINS9_4itemEEEDaSE_
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $4)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $6
    (i32.load offset=36
     (get_local $4)
    )
   )
  )
  (block $label$5
   (block $label$6
    (br_if $label$6
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $6)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $5)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$5)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_10by_currentEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $3
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (get_local $3)
    )
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy6526841759966691328ENS_3feeEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_10by_currentEvEEEEEEEEEyEEbyT0_ (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (i32.store8 offset=44
   (get_local $8)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const 6526841759966691328)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=32
      (call $_ZNK5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $7
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $7)
 )
 (func $_ZNK5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (set_local $4
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $5
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $5)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $5)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $5)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $5)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $5)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $5)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (set_local $3
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
   (i64.store offset=16
    (tee_local $4
     (call $_Znwj
      (i32.const 48)
     )
    )
    (i64.const 1398362884)
   )
   (i64.store offset=8
    (get_local $4)
    (i64.const 0)
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 512)
   )
   (set_local $7
    (i64.const 5462355)
   )
   (set_local $5
    (i32.const 0)
   )
   (block $label$7
    (block $label$8
     (loop $label$9
      (br_if $label$8
       (i32.gt_u
        (i32.add
         (i32.shl
          (i32.wrap/i64
           (get_local $7)
          )
          (i32.const 24)
         )
         (i32.const -1073741825)
        )
        (i32.const 452984830)
       )
      )
      (block $label$10
       (br_if $label$10
        (i64.ne
         (i64.and
          (tee_local $7
           (i64.shr_u
            (get_local $7)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (loop $label$11
        (br_if $label$8
         (i64.ne
          (i64.and
           (tee_local $7
            (i64.shr_u
             (get_local $7)
             (i64.const 8)
            )
           )
           (i64.const 255)
          )
          (i64.const 0)
         )
        )
        (br_if $label$11
         (i32.lt_s
          (tee_local $5
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (i32.const 7)
         )
        )
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (br_if $label$9
       (i32.lt_s
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
      (br $label$7)
     )
    )
    (set_local $6
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (get_local $6)
    (i32.const 576)
   )
   (i32.store offset=32
    (get_local $4)
    (get_local $0)
   )
   (i64.store offset=24
    (get_local $4)
    (i64.const 1)
   )
   (drop
    (call $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration3feeE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (get_local $4)
    )
   )
   (i32.store offset=40
    (get_local $4)
    (i32.const -1)
   )
   (i32.store offset=36
    (get_local $4)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $4)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $7
     (i64.load
      (get_local $4)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $6
     (i32.load offset=36
      (get_local $4)
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.ge_u
       (tee_local $5
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $5)
      (get_local $7)
     )
     (i32.store offset=16
      (get_local $5)
      (get_local $6)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $5)
      (get_local $4)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $5)
       (i32.const 24)
      )
     )
     (br $label$12)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_10by_currentEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
     (get_local $3)
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $5
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $5)
    )
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $4)
 )
 (func $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration3feeE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_10by_currentEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyNS_5assetEEUlRT_E_EENS9_14const_iteratorEyOSD_ENKUlSE_E_clINS9_4itemEEEDaSE_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $4
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (tee_local $4
     (i32.load offset=4
      (get_local $4)
     )
    )
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $8)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 24)
     )
    )
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const 6526841759966691328)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $3
     (i64.load
      (get_local $1)
     )
    )
    (get_local $8)
    (i32.const 32)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $3
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (set_local $6
   (i64.load
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $7
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=40
   (get_local $8)
   (i64.load
    (get_local $4)
   )
  )
  (i32.store offset=40
   (get_local $1)
   (call $db_idx64_store
    (get_local $3)
    (i64.const 6526841759966691328)
    (get_local $6)
    (get_local $7)
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE5indexILy4580631263094243328ES7_Ly0ELb0EE11lower_boundERKy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_idx64_lowerbound
       (i64.load
        (tee_local $8
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $8)
       )
       (i64.const 6526841759966691328)
       (get_local $10)
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $5
    (i64.load offset=8
     (get_local $10)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $9
       (i32.load
        (i32.add
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $6
       (i32.load offset=24
        (get_local $4)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
    )
    (set_local $7
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i64.eq
       (i64.load
        (i32.load
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (set_local $9
      (get_local $2)
     )
     (set_local $2
      (tee_local $8
       (i32.add
        (get_local $2)
        (i32.const -24)
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $7)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (get_local $9)
       (get_local $6)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=32
        (tee_local $2
         (i32.load
          (i32.add
           (get_local $9)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $4)
      )
      (i32.const 48)
     )
     (br $label$3)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=32
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (call $db_find_i64
          (i64.load
           (get_local $4)
          )
          (i64.load offset=8
           (get_local $4)
          )
          (i64.const 6526841759966691328)
          (get_local $5)
         )
        )
       )
      )
      (get_local $4)
     )
     (i32.const 48)
    )
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const 40)
    )
    (get_local $3)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6526841759966691328EN11arbitration3feeEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE6modifyIZNS1_8flip_feeEyEUlRT_E_EEvRKS2_yOSB_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=32
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (set_local $5
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=24
   (get_local $1)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $6)
   (get_local $5)
  )
  (set_local $5
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $6)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $6)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 24)
    )
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 24)
     )
    )
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=36
    (get_local $1)
   )
   (get_local $2)
   (get_local $6)
   (i32.const 32)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=56
   (get_local $6)
   (i64.load
    (get_local $4)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $6)
       (i32.const 40)
      )
      (i32.add
       (get_local $6)
       (i32.const 56)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.gt_s
      (tee_local $1
       (i32.load
        (tee_local $4
         (i32.add
          (get_local $1)
          (i32.const 40)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $1
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const 6526841759966691328)
       (i32.add
        (get_local $6)
        (i32.const 48)
       )
       (get_local $5)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $1)
    (get_local $2)
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEyEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_yEEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
 )
 (func $_ZN11arbitration9flip_bondEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i32.store8 offset=52
   (get_local $6)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_lowerbound_i64
       (get_local $4)
       (get_local $1)
       (i64.const 4406367615103008768)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (drop
    (call $_ZNK5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE31load_object_by_primary_iteratorEl
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
     (get_local $2)
    )
   )
   (i32.store offset=8
    (get_local $6)
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
   )
   (i64.store
    (get_local $6)
    (i64.const 1)
   )
   (call $_ZNK5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE5indexILy4580631263094243328ES7_Ly0ELb0EE11lower_boundERKy
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (get_local $6)
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $2
       (i32.load offset=60
        (get_local $6)
       )
      )
     )
    )
    (br_if $label$1
     (i64.ne
      (i64.load
       (get_local $6)
      )
      (i64.load offset=24
       (get_local $2)
      )
     )
    )
    (set_local $3
     (i32.load offset=60
      (get_local $6)
     )
    )
   )
   (set_local $1
    (i64.load
     (get_local $0)
    )
   )
   (call $eosio_assert
    (i32.ne
     (get_local $3)
     (i32.const 0)
    )
    (i32.const 832)
   )
   (call $_ZN5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE6modifyIZNS1_9flip_bondEyEUlRT_E_EEvRKS2_yOSB_
    (i32.load offset=8
     (get_local $6)
    )
    (get_local $3)
    (get_local $1)
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $3
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $0
     (get_local $2)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyNS_5assetEEUlRT_E_EENS9_14const_iteratorEyOSD_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (i64.store offset=16
   (tee_local $4
    (call $_Znwj
     (i32.const 48)
    )
   )
   (i64.const 1398362884)
  )
  (i64.store offset=8
   (get_local $4)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $2
   (i64.const 5462355)
  )
  (set_local $3
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $2)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $2
          (i64.shr_u
           (get_local $2)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $2
           (i64.shr_u
            (get_local $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $3
          (i32.add
           (get_local $3)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $6
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 576)
  )
  (i32.store offset=32
   (get_local $4)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $4)
   (i64.const 1)
  )
  (call $_ZZN5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyNS_5assetEEUlRT_E_EENS9_14const_iteratorEyOSD_ENKUlSE_E_clINS9_4itemEEEDaSE_
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $4)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $6
    (i32.load offset=36
     (get_local $4)
    )
   )
  )
  (block $label$5
   (block $label$6
    (br_if $label$6
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $6)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $5)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$5)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_10by_currentEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $3
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (get_local $3)
    )
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy4406367615103008768ENS_4bondEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_10by_currentEvEEEEEEEEEyEEbyT0_ (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (i32.store8 offset=44
   (get_local $8)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const 4406367615103008768)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=32
      (call $_ZNK5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $7
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $7)
 )
 (func $_ZNK5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (set_local $4
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $5
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $5)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $5)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $5)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $5)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $5)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $5)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (set_local $3
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
   (i64.store offset=16
    (tee_local $4
     (call $_Znwj
      (i32.const 48)
     )
    )
    (i64.const 1398362884)
   )
   (i64.store offset=8
    (get_local $4)
    (i64.const 0)
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 512)
   )
   (set_local $7
    (i64.const 5462355)
   )
   (set_local $5
    (i32.const 0)
   )
   (block $label$7
    (block $label$8
     (loop $label$9
      (br_if $label$8
       (i32.gt_u
        (i32.add
         (i32.shl
          (i32.wrap/i64
           (get_local $7)
          )
          (i32.const 24)
         )
         (i32.const -1073741825)
        )
        (i32.const 452984830)
       )
      )
      (block $label$10
       (br_if $label$10
        (i64.ne
         (i64.and
          (tee_local $7
           (i64.shr_u
            (get_local $7)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (loop $label$11
        (br_if $label$8
         (i64.ne
          (i64.and
           (tee_local $7
            (i64.shr_u
             (get_local $7)
             (i64.const 8)
            )
           )
           (i64.const 255)
          )
          (i64.const 0)
         )
        )
        (br_if $label$11
         (i32.lt_s
          (tee_local $5
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (i32.const 7)
         )
        )
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (br_if $label$9
       (i32.lt_s
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
      (br $label$7)
     )
    )
    (set_local $6
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (get_local $6)
    (i32.const 576)
   )
   (i32.store offset=32
    (get_local $4)
    (get_local $0)
   )
   (i64.store offset=24
    (get_local $4)
    (i64.const 1)
   )
   (drop
    (call $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration4bondE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (get_local $4)
    )
   )
   (i32.store offset=40
    (get_local $4)
    (i32.const -1)
   )
   (i32.store offset=36
    (get_local $4)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $4)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $7
     (i64.load
      (get_local $4)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $6
     (i32.load offset=36
      (get_local $4)
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.ge_u
       (tee_local $5
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $5)
      (get_local $7)
     )
     (i32.store offset=16
      (get_local $5)
      (get_local $6)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $5)
      (get_local $4)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $5)
       (i32.const 24)
      )
     )
     (br $label$12)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_10by_currentEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
     (get_local $3)
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $5
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $5)
    )
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $4)
 )
 (func $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration4bondE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS1_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_10by_currentEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyNS_5assetEEUlRT_E_EENS9_14const_iteratorEyOSD_ENKUlSE_E_clINS9_4itemEEEDaSE_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $4
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (tee_local $4
     (i32.load offset=4
      (get_local $4)
     )
    )
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $8)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 24)
     )
    )
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const 4406367615103008768)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $3
     (i64.load
      (get_local $1)
     )
    )
    (get_local $8)
    (i32.const 32)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $3
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (set_local $6
   (i64.load
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $7
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=40
   (get_local $8)
   (i64.load
    (get_local $4)
   )
  )
  (i32.store offset=40
   (get_local $1)
   (call $db_idx64_store
    (get_local $3)
    (i64.const 4406367615103008768)
    (get_local $6)
    (get_local $7)
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE5indexILy4580631263094243328ES7_Ly0ELb0EE11lower_boundERKy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_idx64_lowerbound
       (i64.load
        (tee_local $8
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $8)
       )
       (i64.const 4406367615103008768)
       (get_local $10)
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $5
    (i64.load offset=8
     (get_local $10)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $9
       (i32.load
        (i32.add
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $6
       (i32.load offset=24
        (get_local $4)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
    )
    (set_local $7
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i64.eq
       (i64.load
        (i32.load
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (set_local $9
      (get_local $2)
     )
     (set_local $2
      (tee_local $8
       (i32.add
        (get_local $2)
        (i32.const -24)
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $7)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (get_local $9)
       (get_local $6)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=32
        (tee_local $2
         (i32.load
          (i32.add
           (get_local $9)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $4)
      )
      (i32.const 48)
     )
     (br $label$3)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=32
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (call $db_find_i64
          (i64.load
           (get_local $4)
          )
          (i64.load offset=8
           (get_local $4)
          )
          (i64.const 4406367615103008768)
          (get_local $5)
         )
        )
       )
      )
      (get_local $4)
     )
     (i32.const 48)
    )
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const 40)
    )
    (get_local $3)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4406367615103008768EN11arbitration4bondEJNS_10indexed_byILy4580631263094243328EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_10by_currentEvEEEEEEEE6modifyIZNS1_9flip_bondEyEUlRT_E_EEvRKS2_yOSB_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=32
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (set_local $5
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=24
   (get_local $1)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $6)
   (get_local $5)
  )
  (set_local $5
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $6)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $6)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 24)
    )
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 24)
     )
    )
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=36
    (get_local $1)
   )
   (get_local $2)
   (get_local $6)
   (i32.const 32)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=56
   (get_local $6)
   (i64.load
    (get_local $4)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $6)
       (i32.const 40)
      )
      (i32.add
       (get_local $6)
       (i32.const 56)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.gt_s
      (tee_local $1
       (i32.load
        (tee_local $4
         (i32.add
          (get_local $1)
          (i32.const 40)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $1
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const 4406367615103008768)
       (i32.add
        (get_local $6)
        (i32.const 48)
       )
       (get_local $5)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $1)
    (get_local $2)
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy13452632849406377984EN11arbitration10respondentEJEE7emplaceIZNS1_3addIS3_EEvyyEUlRT_E_EENS3_14const_iteratorEyOS6_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=8
   (tee_local $4
    (call $_Znwj
     (i32.const 24)
    )
   )
   (get_local $1)
  )
  (i64.store
   (get_local $4)
   (i64.load
    (i32.load
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (i32.store offset=12
   (get_local $4)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const -4994111224303173632)
    (get_local $2)
    (tee_local $5
     (i64.load
      (get_local $4)
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $1)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $4)
    )
   )
  )
  (i32.store offset=4
   (get_local $8)
   (tee_local $6
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $5)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $6)
    )
    (i32.store offset=8
     (get_local $8)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $7)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy13452632849406377984EN11arbitration10respondentEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.add
     (get_local $8)
     (i32.const 4)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $4
   (i32.load offset=8
    (get_local $8)
   )
  )
  (i32.store offset=8
   (get_local $8)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4921564792717574144EN11arbitration8claimantEJEE7emplaceIZNS1_3addIS3_EEvyyEUlRT_E_EENS3_14const_iteratorEyOS6_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=8
   (tee_local $4
    (call $_Znwj
     (i32.const 24)
    )
   )
   (get_local $1)
  )
  (i64.store
   (get_local $4)
   (i64.load
    (i32.load
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (i32.store offset=12
   (get_local $4)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 4921564792717574144)
    (get_local $2)
    (tee_local $5
     (i64.load
      (get_local $4)
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $1)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $4)
    )
   )
  )
  (i32.store offset=4
   (get_local $8)
   (tee_local $6
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $5)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $6)
    )
    (i32.store offset=8
     (get_local $8)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $7)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4921564792717574144EN11arbitration8claimantEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.add
     (get_local $8)
     (i32.const 4)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $4
   (i32.load offset=8
    (get_local $8)
   )
  )
  (i32.store offset=8
   (get_local $8)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy5912297622307078144EN11arbitration7ecafarbEJEE7emplaceIZNS1_3addIS3_yEEvT0_EUlRT_E_EENS3_14const_iteratorEyOS7_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=8
   (tee_local $4
    (call $_Znwj
     (i32.const 24)
    )
   )
   (get_local $1)
  )
  (i64.store
   (get_local $4)
   (i64.load
    (i32.load
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (i32.store offset=12
   (get_local $4)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 5912297622307078144)
    (get_local $2)
    (tee_local $5
     (i64.load
      (get_local $4)
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $1)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $4)
    )
   )
  )
  (i32.store offset=4
   (get_local $8)
   (tee_local $6
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $5)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $6)
    )
    (i32.store offset=8
     (get_local $8)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $7)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy5912297622307078144EN11arbitration7ecafarbEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.add
     (get_local $8)
     (i32.const 4)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $4
   (i32.load offset=8
    (get_local $8)
   )
  )
  (i32.store offset=8
   (get_local $8)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy3877296762501054464EN11arbitration10arbitratorEJEE7emplaceIZNS1_3addIS3_EEvyyEUlRT_E_EENS3_14const_iteratorEyOS6_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=8
   (tee_local $4
    (call $_Znwj
     (i32.const 24)
    )
   )
   (get_local $1)
  )
  (i64.store
   (get_local $4)
   (i64.load
    (i32.load
     (get_local $3)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (i32.store offset=12
   (get_local $4)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 3877296762501054464)
    (get_local $2)
    (tee_local $5
     (i64.load
      (get_local $4)
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $1)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $4)
    )
   )
  )
  (i32.store offset=4
   (get_local $8)
   (tee_local $6
    (i32.load offset=12
     (get_local $4)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $5)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $6)
    )
    (i32.store offset=8
     (get_local $8)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $7)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy3877296762501054464EN11arbitration10arbitratorEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.add
     (get_local $8)
     (i32.const 4)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $4
   (i32.load offset=8
    (get_local $8)
   )
  )
  (i32.store offset=8
   (get_local $8)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE3getEyPKc (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=56
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $0)
     )
     (i32.const 48)
    )
    (br $label$2)
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (get_local $0)
    )
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (get_local $2)
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy13447366294640263168EN11arbitration9rejectionEJEE7emplaceIZNS1_3addIS3_EEvyyy11checksum256EUlRT_E_EENS3_14const_iteratorEyOS7_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (i32.store offset=48
   (tee_local $3
    (call $_Znwj
     (i32.const 64)
    )
   )
   (get_local $1)
  )
  (call $_ZZN5eosio11multi_indexILy13447366294640263168EN11arbitration9rejectionEJEE7emplaceIZNS1_3addIS3_EEvyyy11checksum256EUlRT_E_EENS3_14const_iteratorEyOS7_ENKUlS8_E_clINS3_4itemEEEDaS8_
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $3)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $4
    (i32.load offset=52
     (get_local $3)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $5)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $5)
     (get_local $4)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $5)
     (get_local $3)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $5)
      (i32.const 24)
     )
    )
    (br $label$0)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy13447366294640263168EN11arbitration9rejectionEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $1
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy5553405815408295936ENS_8documentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEyEEbyT0_ (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (i32.store8 offset=44
   (get_local $8)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const 5553405815408295936)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=52
      (call $_ZNK5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $7
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $7)
 )
 (func $_ZNK5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=52
    (tee_local $6
     (call $_Znwj
      (i32.const 64)
     )
    )
    (get_local $0)
   )
   (i32.store8 offset=48
    (get_local $6)
    (i32.const 0)
   )
   (drop
    (call $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration8documentE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (get_local $6)
    )
   )
   (i32.store offset=60
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=56
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=56
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8by_ownerEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration8documentE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 31)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 32)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $2)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store8 offset=48
   (get_local $1)
   (i32.ne
    (i32.load8_u offset=15
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8by_ownerEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy13447366294640263168EN11arbitration9rejectionEJEE7emplaceIZNS1_3addIS3_EEvyyy11checksum256EUlRT_E_EENS3_14const_iteratorEyOS7_ENKUlS8_E_clINS3_4itemEEEDaS8_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $4
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (i32.load offset=4
     (get_local $4)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (i64.store offset=16
   (get_local $1)
   (i64.load
    (tee_local $4
     (i32.load offset=8
      (get_local $4)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $5)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (i32.store offset=52
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -4999377779069288448)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $3
     (i64.load
      (get_local $1)
     )
    )
    (get_local $5)
    (i32.const 48)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 48)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy13447366294640263168EN11arbitration9rejectionEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN11arbitration6existsIN5eosio11multi_indexILy14829575226499868160ENS_11transactionEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEyEEbyT0_ (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (i32.store8 offset=44
   (get_local $8)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const -3617168847209683456)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=52
      (call $_ZNK5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (get_local $0)
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
   (set_local $7
    (i32.const 1)
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $4
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $7)
 )
 (func $_ZNK5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE3getEyPKc (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $7)
           (i32.const -24)
          )
         )
        )
        (i32.const 52)
       )
      )
      (get_local $0)
     )
     (i32.const 48)
    )
    (br $label$2)
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -3617168847209683456)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=52
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (get_local $0)
    )
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (get_local $2)
  )
  (get_local $6)
 )
 (func $_ZN11arbitration6verifyIN5eosio11multi_indexILy14829575226499868160ENS_11transactionEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEEEvyyy (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (i32.store8 offset=44
   (get_local $8)
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $4
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const -3617168847209683456)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=52
      (tee_local $7
       (call $_ZNK5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $8)
         (i32.const 8)
        )
        (get_local $4)
       )
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE6modifyIZNS1_6verifyIS9_EEvyyyEUlRT_E_EEvRKS2_yOSC_
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
   (get_local $7)
   (get_local $1)
   (get_local $8)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $4
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $7)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $4)
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$2)
    )
    (set_local $7
     (get_local $4)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=52
    (tee_local $6
     (call $_Znwj
      (i32.const 64)
     )
    )
    (get_local $0)
   )
   (i32.store8 offset=48
    (get_local $6)
    (i32.const 0)
   )
   (drop
    (call $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration11transactionE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (get_local $6)
    )
   )
   (i32.store offset=60
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=56
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=56
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8by_ownerEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE6modifyIZNS1_6verifyIS9_EEvyyyEUlRT_E_EEvRKS2_yOSC_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 52)
     )
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i32.store8 offset=48
   (get_local $1)
   (i32.const 1)
  )
  (i64.store offset=56
   (get_local $6)
   (i64.load offset=8
    (get_local $1)
   )
  )
  (set_local $5
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $6)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $6)
     (i32.const 8)
    )
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (i32.store8 offset=72
   (get_local $6)
   (i32.load8_u offset=48
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 48)
    )
    (i32.add
     (get_local $6)
     (i32.const 72)
    )
    (i32.const 1)
   )
  )
  (call $db_update_i64
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 56)
    )
   )
   (get_local $2)
   (get_local $6)
   (i32.const 49)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=72
   (get_local $6)
   (i64.load
    (get_local $4)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $6)
       (i32.const 56)
      )
      (i32.add
       (get_local $6)
       (i32.const 72)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.gt_s
      (tee_local $1
       (i32.load
        (tee_local $4
         (i32.add
          (get_local $1)
          (i32.const 60)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $1
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -3617168847209683456)
       (i32.add
        (get_local $6)
        (i32.const 64)
       )
       (get_local $5)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $1)
    (get_local $2)
    (i32.add
     (get_local $6)
     (i32.const 72)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 80)
   )
  )
 )
 (func $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11arbitration11transactionE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 31)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 32)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $2)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store8 offset=48
   (get_local $1)
   (i32.ne
    (i32.load8_u offset=15
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8by_ownerEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyy11checksum256EUlRT_E_EENS9_14const_iteratorEyOSD_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (i32.store offset=52
   (tee_local $3
    (call $_Znwj
     (i32.const 64)
    )
   )
   (get_local $1)
  )
  (i32.store8 offset=48
   (get_local $3)
   (i32.const 0)
  )
  (call $_ZZN5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyy11checksum256EUlRT_E_EENS9_14const_iteratorEyOSD_ENKUlSE_E_clINS9_4itemEEEDaSE_
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $3)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $4
    (i32.load offset=56
     (get_local $3)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $5)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $5)
     (get_local $4)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $5)
     (get_local $3)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $5)
      (i32.const 24)
     )
    )
    (br $label$0)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8by_ownerEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $1
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy14829575226499868160EN11arbitration11transactionEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyy11checksum256EUlRT_E_EENS9_14const_iteratorEyOSD_ENKUlSE_E_clINS9_4itemEEEDaSE_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $4
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (i32.load offset=4
     (get_local $4)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (i64.store offset=16
   (get_local $1)
   (i64.load
    (tee_local $4
     (i32.load offset=8
      (get_local $4)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $7)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $7)
     (i32.const 8)
    )
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (i32.store8 offset=56
   (get_local $7)
   (i32.load8_u offset=48
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 48)
    )
    (i32.add
     (get_local $7)
     (i32.const 56)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=56
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -3617168847209683456)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $3
     (i64.load
      (get_local $1)
     )
    )
    (get_local $7)
    (i32.const 49)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $3
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (set_local $5
   (i64.load
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $6
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=56
   (get_local $7)
   (i64.load
    (get_local $4)
   )
  )
  (i32.store offset=60
   (get_local $1)
   (call $db_idx64_store
    (get_local $3)
    (i64.const -3617168847209683456)
    (get_local $5)
    (get_local $6)
    (i32.add
     (get_local $7)
     (i32.const 56)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE3getEyPKc (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $7)
           (i32.const -24)
          )
         )
        )
        (i32.const 52)
       )
      )
      (get_local $0)
     )
     (i32.const 48)
    )
    (br $label$2)
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const 5553405815408295936)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=52
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (get_local $0)
    )
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (get_local $2)
  )
  (get_local $6)
 )
 (func $_ZN11arbitration6verifyIN5eosio11multi_indexILy5553405815408295936ENS_8documentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8by_ownerEvEEEEEEEEEEEvyyy (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $5
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (i32.store8 offset=44
   (get_local $8)
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $4
      (call $db_find_i64
       (get_local $5)
       (get_local $1)
       (i64.const 5553405815408295936)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=52
      (tee_local $7
       (call $_ZNK5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $8)
         (i32.const 8)
        )
        (get_local $4)
       )
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE6modifyIZNS1_6verifyIS9_EEvyyyEUlRT_E_EEvRKS2_yOSC_
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
   (get_local $7)
   (get_local $1)
   (get_local $8)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $4
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $7)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $4)
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$2)
    )
    (set_local $7
     (get_local $4)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE6modifyIZNS1_6verifyIS9_EEvyyyEUlRT_E_EEvRKS2_yOSC_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 52)
     )
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i32.store8 offset=48
   (get_local $1)
   (i32.const 1)
  )
  (i64.store offset=56
   (get_local $6)
   (i64.load offset=8
    (get_local $1)
   )
  )
  (set_local $5
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $6)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $6)
     (i32.const 8)
    )
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (i32.store8 offset=72
   (get_local $6)
   (i32.load8_u offset=48
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 48)
    )
    (i32.add
     (get_local $6)
     (i32.const 72)
    )
    (i32.const 1)
   )
  )
  (call $db_update_i64
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 56)
    )
   )
   (get_local $2)
   (get_local $6)
   (i32.const 49)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=72
   (get_local $6)
   (i64.load
    (get_local $4)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $6)
       (i32.const 56)
      )
      (i32.add
       (get_local $6)
       (i32.const 72)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.gt_s
      (tee_local $1
       (i32.load
        (tee_local $4
         (i32.add
          (get_local $1)
          (i32.const 60)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $1
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const 5553405815408295936)
       (i32.add
        (get_local $6)
        (i32.const 64)
       )
       (get_local $5)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $1)
    (get_local $2)
    (i32.add
     (get_local $6)
     (i32.const 72)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 80)
   )
  )
 )
 (func $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyy11checksum256yEEELi0EEEZN5eosiorsINSB_10datastreamIPKcEEJyyS8_yEEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 31)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 32)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 32)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $1
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 48)
    )
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 8)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyy11checksum256EUlRT_E_EENS9_14const_iteratorEyOSD_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (i32.store offset=52
   (tee_local $3
    (call $_Znwj
     (i32.const 64)
    )
   )
   (get_local $1)
  )
  (i32.store8 offset=48
   (get_local $3)
   (i32.const 0)
  )
  (call $_ZZN5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyy11checksum256EUlRT_E_EENS9_14const_iteratorEyOSD_ENKUlSE_E_clINS9_4itemEEEDaSE_
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $3)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $4
    (i32.load offset=56
     (get_local $3)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $5)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $5)
     (get_local $4)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $5)
     (get_local $3)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $5)
      (i32.const 24)
     )
    )
    (br $label$0)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8by_ownerEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $1
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy5553405815408295936EN11arbitration8documentEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8by_ownerEvEEEEEEEE7emplaceIZNS1_3addIS9_EEvyyy11checksum256EUlRT_E_EENS9_14const_iteratorEyOSD_ENKUlSE_E_clINS9_4itemEEEDaSE_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $4
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (i32.load offset=4
     (get_local $4)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (i64.store offset=16
   (get_local $1)
   (i64.load
    (tee_local $4
     (i32.load offset=8
      (get_local $4)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $7)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $7)
     (i32.const 8)
    )
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (i32.store8 offset=56
   (get_local $7)
   (i32.load8_u offset=48
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 48)
    )
    (i32.add
     (get_local $7)
     (i32.const 56)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=56
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const 5553405815408295936)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $3
     (i64.load
      (get_local $1)
     )
    )
    (get_local $7)
    (i32.const 49)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $3
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (set_local $5
   (i64.load
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $6
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=56
   (get_local $7)
   (i64.load
    (get_local $4)
   )
  )
  (i32.store offset=60
   (get_local $1)
   (call $db_idx64_store
    (get_local $3)
    (i64.const 5553405815408295936)
    (get_local $5)
    (get_local $6)
    (i32.add
     (get_local $7)
     (i32.const 56)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
  )
 )
 (func $_ZN11arbitration6undropEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (i32.store16
   (i32.add
    (get_local $6)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $6)
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $5)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_6undropEyEUlRT_E_EEvRKS2_yOSK_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $5)
   (get_local $3)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_6undropEyEUlRT_E_EEvRKS2_yOSK_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=160
   (get_local $8)
   (get_local $2)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=112
   (get_local $8)
   (tee_local $4
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i64.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i64.load offset=40
    (get_local $1)
   )
  )
  (set_local $7
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $7)
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=24
   (get_local $1)
   (i64.const 0)
  )
  (i64.store offset=104
   (get_local $8)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (i32.store offset=96
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $8)
   (get_local $8)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (get_local $1)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (i32.const 56)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=76
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
  )
  (i32.store offset=168
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_6undropEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 40)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_6undropEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $memcmp
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $4
       (i32.load offset=64
        (i32.load offset=12
         (get_local $2)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084352)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store offset=64
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=16
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 68)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084353)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 68)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=24
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 72)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084354)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 72)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 24)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 76)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084355)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 76)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=40
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 80)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084356)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 80)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $1
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=48
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 40)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $1)
         )
         (i32.const 84)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $2
     (call $db_idx64_find_primary
      (i64.load
       (get_local $4)
      )
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 6603096945802084357)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.const 84)
     )
     (get_local $2)
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.load
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN11arbitration4dropEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (i32.store16
   (i32.add
    (get_local $6)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $6)
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $5)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_4dropEyEUlRT_E_EEvRKS2_yOSK_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $5)
   (get_local $3)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_4dropEyEUlRT_E_EEvRKS2_yOSK_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=160
   (get_local $8)
   (get_local $2)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=112
   (get_local $8)
   (tee_local $4
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i64.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i64.load offset=40
    (get_local $1)
   )
  )
  (set_local $7
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $7)
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=24
   (get_local $1)
   (i64.const 1)
  )
  (i64.store offset=104
   (get_local $8)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (i32.store offset=96
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $8)
   (get_local $8)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (get_local $1)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (i32.const 56)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=76
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
  )
  (i32.store offset=168
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_4dropEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_4dropEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $memcmp
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $4
       (i32.load offset=64
        (i32.load offset=12
         (get_local $2)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084352)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store offset=64
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=16
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 68)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084353)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 68)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=24
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 72)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084354)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 72)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 24)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 76)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084355)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 76)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=40
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 80)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084356)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 80)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $1
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=48
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 40)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $1)
         )
         (i32.const 84)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $2
     (call $db_idx64_find_primary
      (i64.load
       (get_local $4)
      )
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 6603096945802084357)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.const 84)
     )
     (get_local $2)
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.load
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN11arbitration9unsuspendEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (i32.store16
   (i32.add
    (get_local $6)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $6)
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $5)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_9unsuspendEyEUlRT_E_EEvRKS2_yOSK_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $5)
   (get_local $3)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_9unsuspendEyEUlRT_E_EEvRKS2_yOSK_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=160
   (get_local $8)
   (get_local $2)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=112
   (get_local $8)
   (tee_local $4
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i64.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i64.load offset=40
    (get_local $1)
   )
  )
  (set_local $7
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $7)
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.const 0)
  )
  (i64.store offset=104
   (get_local $8)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (i32.store offset=96
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $8)
   (get_local $8)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (get_local $1)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (i32.const 56)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=76
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
  )
  (i32.store offset=168
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_9unsuspendEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_9unsuspendEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $memcmp
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $4
       (i32.load offset=64
        (i32.load offset=12
         (get_local $2)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084352)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store offset=64
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=16
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 68)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084353)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 68)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=24
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 72)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084354)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 72)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 24)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 76)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084355)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 76)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=40
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 80)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084356)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 80)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $1
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=48
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 40)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $1)
         )
         (i32.const 84)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $2
     (call $db_idx64_find_primary
      (i64.load
       (get_local $4)
      )
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 6603096945802084357)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.const 84)
     )
     (get_local $2)
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.load
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN11arbitration7suspendEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (i32.store16
   (i32.add
    (get_local $6)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $6)
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $5)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_7suspendEyEUlRT_E_EEvRKS2_yOSK_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $5)
   (get_local $3)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_7suspendEyEUlRT_E_EEvRKS2_yOSK_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=160
   (get_local $8)
   (get_local $2)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=112
   (get_local $8)
   (tee_local $4
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i64.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i64.load offset=40
    (get_local $1)
   )
  )
  (set_local $7
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $7)
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.const 1)
  )
  (i64.store offset=104
   (get_local $8)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (i32.store offset=96
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $8)
   (get_local $8)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (get_local $1)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (i32.const 56)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=76
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
  )
  (i32.store offset=168
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_7suspendEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_7suspendEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $memcmp
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $4
       (i32.load offset=64
        (i32.load offset=12
         (get_local $2)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084352)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store offset=64
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=16
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 68)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084353)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 68)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=24
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 72)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084354)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 72)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 24)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 76)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084355)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 76)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=40
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 80)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084356)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 80)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $1
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=48
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 40)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $1)
         )
         (i32.const 84)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $2
     (call $db_idx64_find_primary
      (i64.load
       (get_local $4)
      )
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 6603096945802084357)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.const 84)
     )
     (get_local $2)
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.load
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN11arbitration6rejectEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (i32.store16
   (i32.add
    (get_local $6)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $6)
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $5)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_6rejectEyEUlRT_E_EEvRKS2_yOSK_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $5)
   (get_local $3)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_6rejectEyEUlRT_E_EEvRKS2_yOSK_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=160
   (get_local $8)
   (get_local $2)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=112
   (get_local $8)
   (tee_local $4
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i64.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i64.load offset=40
    (get_local $1)
   )
  )
  (set_local $7
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $7)
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=16
   (get_local $1)
   (i64.const 1)
  )
  (i64.store offset=104
   (get_local $8)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (i32.store offset=96
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $8)
   (get_local $8)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (get_local $1)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (i32.const 56)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=76
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
  )
  (i32.store offset=168
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_6rejectEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_6rejectEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $memcmp
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $4
       (i32.load offset=64
        (i32.load offset=12
         (get_local $2)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084352)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store offset=64
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=16
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 68)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084353)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 68)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=24
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 72)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084354)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 72)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 24)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 76)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084355)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 76)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=40
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 80)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084356)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 80)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $1
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=48
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 40)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $1)
         )
         (i32.const 84)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $2
     (call $db_idx64_find_primary
      (i64.load
       (get_local $4)
      )
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 6603096945802084357)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.const 84)
     )
     (get_local $2)
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.load
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN11arbitration7uncloseEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (i32.store16
   (i32.add
    (get_local $6)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $6)
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $5)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_7uncloseEyEUlRT_E_EEvRKS2_yOSK_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $5)
   (get_local $3)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_7uncloseEyEUlRT_E_EEvRKS2_yOSK_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=160
   (get_local $8)
   (get_local $2)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=112
   (get_local $8)
   (tee_local $4
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i64.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i64.load offset=40
    (get_local $1)
   )
  )
  (set_local $7
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $7)
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=32
   (get_local $1)
   (i64.const 0)
  )
  (i64.store offset=104
   (get_local $8)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (i32.store offset=96
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $8)
   (get_local $8)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (get_local $1)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (i32.const 56)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=76
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
  )
  (i32.store offset=168
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_7uncloseEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_7uncloseEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $memcmp
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $4
       (i32.load offset=64
        (i32.load offset=12
         (get_local $2)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084352)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store offset=64
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=16
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 68)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084353)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 68)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=24
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 72)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084354)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 72)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 24)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 76)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084355)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 76)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=40
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 80)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084356)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 80)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $1
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=48
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 40)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $1)
         )
         (i32.const 84)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $2
     (call $db_idx64_find_primary
      (i64.load
       (get_local $4)
      )
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 6603096945802084357)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.const 84)
     )
     (get_local $2)
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.load
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN11arbitration5closeEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (i32.store16
   (i32.add
    (get_local $6)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $6)
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $5)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_5closeEyEUlRT_E_EEvRKS2_yOSK_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $5)
   (get_local $3)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_5closeEyEUlRT_E_EEvRKS2_yOSK_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=160
   (get_local $8)
   (get_local $2)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=112
   (get_local $8)
   (tee_local $4
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i64.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i64.load offset=40
    (get_local $1)
   )
  )
  (set_local $7
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $7)
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=32
   (get_local $1)
   (i64.const 1)
  )
  (i64.store offset=104
   (get_local $8)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (i32.store offset=96
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $8)
   (get_local $8)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (get_local $1)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (i32.const 56)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=76
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
  )
  (i32.store offset=168
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_5closeEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_5closeEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $memcmp
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $4
       (i32.load offset=64
        (i32.load offset=12
         (get_local $2)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084352)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store offset=64
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=16
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 68)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084353)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 68)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=24
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 72)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084354)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 72)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 24)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 76)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084355)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 76)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=40
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 80)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084356)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 80)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $1
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=48
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 40)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $1)
         )
         (i32.const 84)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $2
     (call $db_idx64_find_primary
      (i64.load
       (get_local $4)
      )
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 6603096945802084357)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.const 84)
     )
     (get_local $2)
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.load
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN11arbitration9setascaseEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (i32.store16
   (i32.add
    (get_local $6)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $6)
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $5)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_9setascaseEyEUlRT_E_EEvRKS2_yOSK_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $5)
   (get_local $3)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_9setascaseEyEUlRT_E_EEvRKS2_yOSK_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=160
   (get_local $8)
   (get_local $2)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=112
   (get_local $8)
   (tee_local $4
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i64.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i64.load offset=40
    (get_local $1)
   )
  )
  (set_local $7
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $7)
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=40
   (get_local $1)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $1)
   (i64.const 1)
  )
  (i64.store offset=104
   (get_local $8)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (i32.store offset=96
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $8)
   (get_local $8)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (get_local $1)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (i32.const 56)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=76
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
  )
  (i32.store offset=168
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_9setascaseEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_9setascaseEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $memcmp
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $4
       (i32.load offset=64
        (i32.load offset=12
         (get_local $2)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084352)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store offset=64
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=16
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 68)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084353)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 68)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=24
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 72)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084354)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 72)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 24)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 76)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084355)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 76)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=40
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 80)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084356)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 80)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $1
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=48
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 40)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $1)
         )
         (i32.const 84)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $2
     (call $db_idx64_find_primary
      (i64.load
       (get_local $4)
      )
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 6603096945802084357)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.const 84)
     )
     (get_local $2)
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.load
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE7emplaceIZNS1_3addISI_yEEvT0_EUlRT_E_EENSI_14const_iteratorEyOSM_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 1136)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (drop
   (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE4itemC2IZNSI_7emplaceIZNS1_3addISI_yEEvT0_EUlRT_E_EENSI_14const_iteratorEyOSO_EUlSP_E_EEPKSI_SS_
    (tee_local $3
     (call $_Znwj
      (i32.const 88)
     )
    )
    (get_local $1)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $3)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $4
    (i32.load offset=60
     (get_local $3)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $5)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $5)
     (get_local $4)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $5)
     (get_local $3)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $5)
      (i32.const 24)
     )
    )
    (br $label$0)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS1_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_12by_suspendedEvEEEEEENS5_ILy4588789415053246464ENS8_IS4_yXadL_ZNKS4_11by_rejectedEvEEEEEENS5_ILy4581139758608547840ENS8_IS4_yXadL_ZNKS4_10by_droppedEvEEEEEENS5_ILy4580471301151391744ES9_EENS5_ILy4580463436915277824ENS8_IS4_yXadL_ZNKS4_8by_claimEvEEEEEENS5_ILy4580279740090286080ENS8_IS4_yXadL_ZNKS4_7by_caseEvEEEEEEEE8item_ptrENS_9allocatorISL_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSK_4itemENS_14default_deleteISR_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $1
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZN11arbitration10setasclaimEy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=40
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=24
   (get_local $6)
   (get_local $3)
  )
  (i32.store16
   (i32.add
    (get_local $6)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $6)
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $2
      (call $db_find_i64
       (get_local $3)
       (get_local $3)
       (i64.const 6603096945802084352)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $6)
         (i32.const 16)
        )
        (get_local $2)
       )
      )
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 48)
   )
  )
  (set_local $3
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $5)
    (i32.const 0)
   )
   (i32.const 832)
  )
  (call $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_10setasclaimEyEUlRT_E_EEvRKS2_yOSK_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $5)
   (get_local $3)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (i32.load offset=40
       (get_local $6)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $6)
           (i32.const 44)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$4
      (set_local $0
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (br $label$2)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE6modifyIZNS1_10setasclaimEyEUlRT_E_EEvRKS2_yOSK_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=160
   (get_local $8)
   (get_local $2)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (i64.store offset=112
   (get_local $8)
   (tee_local $4
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i64.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i64.load offset=40
    (get_local $1)
   )
  )
  (set_local $7
   (i64.load offset=24
    (get_local $1)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (i64.store offset=128
   (get_local $8)
   (get_local $7)
  )
  (i64.store offset=136
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $5)
  )
  (i64.store offset=40
   (get_local $1)
   (i64.const 1)
  )
  (i64.store offset=104
   (get_local $8)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 992)
  )
  (i32.store offset=96
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $8)
   (get_local $8)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (get_local $1)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (i32.const 56)
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=76
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
  )
  (i32.store offset=168
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_10setasclaimEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5boost4hana11unpack_implINS0_15basic_tuple_tagEvE5applyIJLj0ELj1ELj2ELj3ELj4ELj5EEJNS0_5tupleIJNS0_9type_implIN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS7_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funISA_yXadL_ZNKSA_12by_suspendedEvEEEEEENSB_ILy4588789415053246464ENSD_ISA_yXadL_ZNKSA_11by_rejectedEvEEEEEENSB_ILy4581139758608547840ENSD_ISA_yXadL_ZNKSA_10by_droppedEvEEEEEENSB_ILy4580471301151391744ESE_EENSB_ILy4580463436915277824ENSD_ISA_yXadL_ZNKSA_8by_claimEvEEEEEENSB_ILy4580279740090286080ENSD_ISA_yXadL_ZNKSA_7by_caseEvEEEEEEEE5indexILy4589638977736839680ESE_Ly0ELb0EEEE1_ENS6_INSQ_ILy4589638977736839680ESE_Ly0ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4588789415053246464ESG_Ly1ELb0EEEE1_ENS6_INSQ_ILy4588789415053246464ESG_Ly1ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4581139758608547840ESI_Ly2ELb0EEEE1_ENS6_INSQ_ILy4581139758608547840ESI_Ly2ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580471301151391744ESE_Ly3ELb0EEEE1_ENS6_INSQ_ILy4580471301151391744ESE_Ly3ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580463436915277824ESL_Ly4ELb0EEEE1_ENS6_INSQ_ILy4580463436915277824ESL_Ly4ELb1EEEE1_EEEENS5_IJNS6_INSQ_ILy4580279740090286080ESN_Ly5ELb0EEEE1_ENS6_INSQ_ILy4580279740090286080ESN_Ly5ELb1EEEE1_EEEEENS0_6detail7on_eachIPZNSP_6modifyIZNS9_10setasclaimEyEUlRT_E_EEvRKSA_yOS20_EUlS21_E_EEEEDcRNS1X_16basic_tuple_implINSt3__116integer_sequenceIjJXspT_EEEEJDpT0_EEEOT1_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $memcmp
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $4
       (i32.load offset=64
        (i32.load offset=12
         (get_local $2)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084352)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store offset=64
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=16
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 68)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084353)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 68)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=24
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 72)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084354)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 72)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=8
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 24)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 76)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084355)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 76)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=40
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $4
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $2)
         )
         (i32.const 80)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $4
     (call $db_idx64_find_primary
      (i64.load
       (get_local $3)
      )
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 6603096945802084356)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
      )
      (i32.const 80)
     )
     (get_local $4)
    )
   )
   (call $db_idx64_update
    (get_local $4)
    (i64.load
     (i32.load offset=20
      (get_local $2)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $1
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $5)
   (i64.load offset=48
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 40)
      )
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load
        (i32.add
         (i32.load offset=12
          (get_local $1)
         )
         (i32.const 84)
        )
       )
      )
      (i32.const -1)
     )
    )
    (set_local $2
     (call $db_idx64_find_primary
      (i64.load
       (get_local $4)
      )
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 6603096945802084357)
      (get_local $5)
      (i64.load
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.const 84)
     )
     (get_local $2)
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.load
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS_10indexed_byILy4589638977736839680EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_12by_suspendedEvEEEEEENS3_ILy4588789415053246464ENS6_IS2_yXadL_ZNKS2_11by_rejectedEvEEEEEENS3_ILy4581139758608547840ENS6_IS2_yXadL_ZNKS2_10by_droppedEvEEEEEENS3_ILy4580471301151391744ES7_EENS3_ILy4580463436915277824ENS6_IS2_yXadL_ZNKS2_8by_claimEvEEEEEENS3_ILy4580279740090286080ENS6_IS2_yXadL_ZNKS2_7by_caseEvEEEEEEEE4itemC2IZNSI_7emplaceIZNS1_3addISI_yEEvT0_EUlRT_E_EENSI_14const_iteratorEyOSO_EUlSP_E_EEPKSI_SS_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 96)
    )
   )
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=56
   (get_local $0)
   (get_local $1)
  )
  (i64.store
   (get_local $0)
   (i64.load
    (i32.load
     (i32.load offset=4
      (get_local $2)
     )
    )
   )
  )
  (set_local $1
   (i32.load
    (get_local $2)
   )
  )
  (i32.store offset=80
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 56)
   )
  )
  (i32.store offset=76
   (get_local $4)
   (get_local $4)
  )
  (i32.store offset=72
   (get_local $4)
   (get_local $4)
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11arbitration6filingE
    (i32.add
     (get_local $4)
     (i32.const 72)
    )
    (get_local $0)
   )
  )
  (i32.store offset=60
   (get_local $0)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 6603096945802084352)
    (i64.load
     (i32.load offset=8
      (get_local $2)
     )
    )
    (tee_local $3
     (i64.load
      (get_local $0)
     )
    )
    (get_local $4)
    (i32.const 56)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $1)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=60
   (get_local $4)
   (get_local $0)
  )
  (i32.store offset=68
   (get_local $4)
   (get_local $0)
  )
  (i32.store offset=64
   (get_local $4)
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=56
   (get_local $4)
   (get_local $1)
  )
  (i32.store offset=88
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 56)
   )
  )
  (call $_ZNK5boost4hana6detail7on_eachIPZZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS3_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funIS6_yXadL_ZNKS6_12by_suspendedEvEEEEEENS7_ILy4588789415053246464ENS9_IS6_yXadL_ZNKS6_11by_rejectedEvEEEEEENS7_ILy4581139758608547840ENS9_IS6_yXadL_ZNKS6_10by_droppedEvEEEEEENS7_ILy4580471301151391744ESA_EENS7_ILy4580463436915277824ENS9_IS6_yXadL_ZNKS6_8by_claimEvEEEEEENS7_ILy4580279740090286080ENS9_IS6_yXadL_ZNKS6_7by_caseEvEEEEEEEE7emplaceIZNS5_3addISL_yEEvT0_EUlRT_E_EENSL_14const_iteratorEyOSP_ENKUlSQ_E_clINSL_4itemEEEDaSQ_EUlSQ_E_EclIJRNS0_5tupleIJNS0_9type_implINSL_5indexILy4589638977736839680ESA_Ly0ELb0EEEE1_ENS13_INS14_ILy4589638977736839680ESA_Ly0ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4588789415053246464ESC_Ly1ELb0EEEE1_ENS13_INS14_ILy4588789415053246464ESC_Ly1ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4581139758608547840ESE_Ly2ELb0EEEE1_ENS13_INS14_ILy4581139758608547840ESE_Ly2ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4580471301151391744ESA_Ly3ELb0EEEE1_ENS13_INS14_ILy4580471301151391744ESA_Ly3ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4580463436915277824ESH_Ly4ELb0EEEE1_ENS13_INS14_ILy4580463436915277824ESH_Ly4ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4580279740090286080ESJ_Ly5ELb0EEEE1_ENS13_INS14_ILy4580279740090286080ESJ_Ly5ELb1EEEE1_EEEEEEEvDpOT_
   (i32.add
    (get_local $4)
    (i32.const 88)
   )
   (i32.add
    (get_local $1)
    (i32.const 36)
   )
   (i32.add
    (get_local $1)
    (i32.const 37)
   )
   (i32.add
    (get_local $1)
    (i32.const 38)
   )
   (i32.add
    (get_local $1)
    (i32.const 39)
   )
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
   (i32.add
    (get_local $1)
    (i32.const 41)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 96)
   )
  )
  (get_local $0)
 )
 (func $_ZNK5boost4hana6detail7on_eachIPZZN5eosio11multi_indexILy6603096945802084352EN11arbitration6filingEJNS3_10indexed_byILy4589638977736839680ENS_11multi_index13const_mem_funIS6_yXadL_ZNKS6_12by_suspendedEvEEEEEENS7_ILy4588789415053246464ENS9_IS6_yXadL_ZNKS6_11by_rejectedEvEEEEEENS7_ILy4581139758608547840ENS9_IS6_yXadL_ZNKS6_10by_droppedEvEEEEEENS7_ILy4580471301151391744ESA_EENS7_ILy4580463436915277824ENS9_IS6_yXadL_ZNKS6_8by_claimEvEEEEEENS7_ILy4580279740090286080ENS9_IS6_yXadL_ZNKS6_7by_caseEvEEEEEEEE7emplaceIZNS5_3addISL_yEEvT0_EUlRT_E_EENSL_14const_iteratorEyOSP_ENKUlSQ_E_clINSL_4itemEEEDaSQ_EUlSQ_E_EclIJRNS0_5tupleIJNS0_9type_implINSL_5indexILy4589638977736839680ESA_Ly0ELb0EEEE1_ENS13_INS14_ILy4589638977736839680ESA_Ly0ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4588789415053246464ESC_Ly1ELb0EEEE1_ENS13_INS14_ILy4588789415053246464ESC_Ly1ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4581139758608547840ESE_Ly2ELb0EEEE1_ENS13_INS14_ILy4581139758608547840ESE_Ly2ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4580471301151391744ESA_Ly3ELb0EEEE1_ENS13_INS14_ILy4580471301151391744ESA_Ly3ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4580463436915277824ESH_Ly4ELb0EEEE1_ENS13_INS14_ILy4580463436915277824ESH_Ly4ELb1EEEE1_EEEERNS12_IJNS13_INS14_ILy4580279740090286080ESJ_Ly5ELb0EEEE1_ENS13_INS14_ILy4580279740090286080ESJ_Ly5ELb1EEEE1_EEEEEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $9
   (i64.load
    (tee_local $8
     (i32.load offset=12
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (set_local $10
   (i64.load
    (i32.load offset=8
     (get_local $7)
    )
   )
  )
  (set_local $11
   (i64.load offset=8
    (i32.load
     (get_local $7)
    )
   )
  )
  (i64.store offset=8
   (get_local $12)
   (i64.load offset=8
    (get_local $8)
   )
  )
  (set_local $8
   (call $db_idx64_store
    (get_local $11)
    (i64.const 6603096945802084352)
    (get_local $10)
    (get_local $9)
    (i32.add
     (get_local $12)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=64
   (i32.load offset=4
    (get_local $7)
   )
   (get_local $8)
  )
  (set_local $9
   (i64.load
    (tee_local $8
     (i32.load offset=12
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (set_local $10
   (i64.load
    (i32.load offset=8
     (get_local $7)
    )
   )
  )
  (set_local $11
   (i64.load offset=8
    (i32.load
     (get_local $7)
    )
   )
  )
  (i64.store offset=8
   (get_local $12)
   (i64.load offset=16
    (get_local $8)
   )
  )
  (set_local $8
   (call $db_idx64_store
    (get_local $11)
    (i64.const 6603096945802084353)
    (get_local $10)
    (get_local $9)
    (i32.add
     (get_local $12)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.load offset=4
     (get_local $7)
    )
    (i32.const 68)
   )
   (get_local $8)
  )
  (set_local $9
   (i64.load
    (tee_local $8
     (i32.load offset=12
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (set_local $10
   (i64.load
    (i32.load offset=8
     (get_local $7)
    )
   )
  )
  (set_local $11
   (i64.load offset=8
    (i32.load
     (get_local $7)
    )
   )
  )
  (i64.store offset=8
   (get_local $12)
   (i64.load offset=24
    (get_local $8)
   )
  )
  (set_local $8
   (call $db_idx64_store
    (get_local $11)
    (i64.const 6603096945802084354)
    (get_local $10)
    (get_local $9)
    (i32.add
     (get_local $12)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.load offset=4
     (get_local $7)
    )
    (i32.const 72)
   )
   (get_local $8)
  )
  (set_local $9
   (i64.load
    (tee_local $8
     (i32.load offset=12
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (set_local $10
   (i64.load
    (i32.load offset=8
     (get_local $7)
    )
   )
  )
  (set_local $11
   (i64.load offset=8
    (i32.load
     (get_local $7)
    )
   )
  )
  (i64.store offset=8
   (get_local $12)
   (i64.load offset=8
    (get_local $8)
   )
  )
  (set_local $8
   (call $db_idx64_store
    (get_local $11)
    (i64.const 6603096945802084355)
    (get_local $10)
    (get_local $9)
    (i32.add
     (get_local $12)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.load offset=4
     (get_local $7)
    )
    (i32.const 76)
   )
   (get_local $8)
  )
  (set_local $9
   (i64.load
    (tee_local $8
     (i32.load offset=12
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (set_local $10
   (i64.load
    (i32.load offset=8
     (get_local $7)
    )
   )
  )
  (set_local $11
   (i64.load offset=8
    (i32.load
     (get_local $7)
    )
   )
  )
  (i64.store offset=8
   (get_local $12)
   (i64.load offset=40
    (get_local $8)
   )
  )
  (set_local $8
   (call $db_idx64_store
    (get_local $11)
    (i64.const 6603096945802084356)
    (get_local $10)
    (get_local $9)
    (i32.add
     (get_local $12)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.load offset=4
     (get_local $7)
    )
    (i32.const 80)
   )
   (get_local $8)
  )
  (set_local $9
   (i64.load
    (tee_local $7
     (i32.load offset=12
      (tee_local $0
       (i32.load
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (set_local $10
   (i64.load
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
  (set_local $11
   (i64.load offset=8
    (i32.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=8
   (get_local $12)
   (i64.load offset=48
    (get_local $7)
   )
  )
  (set_local $7
   (call $db_idx64_store
    (get_local $11)
    (i64.const 6603096945802084357)
    (get_local $10)
    (get_local $9)
    (i32.add
     (get_local $12)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 84)
   )
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $1
       (call $action_data_size)
      )
      (i32.const 513)
     )
    )
    (set_local $2
     (call $malloc
      (get_local $1)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $2
     (i32.sub
      (get_local $4)
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (drop
   (call $read_action_data
    (get_local $2)
    (get_local $1)
   )
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (i64.const 1398362884)
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 512)
  )
  (set_local $3
   (i64.const 5462355)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$2
   (block $label$3
    (loop $label$4
     (br_if $label$3
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$5
      (br_if $label$5
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$6
       (br_if $label$3
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$6
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$4
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$2)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 576)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=32 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=4
   (get_local $6)
   (get_local $2)
  )
  (i32.store
   (get_local $6)
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $6)
   (i32.add
    (get_local $2)
    (get_local $1)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE
    (get_local $6)
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
   (get_local $0)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=24
   (get_local $7)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 0)
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
    (get_local $0)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (br_if $label$8
            (i32.ne
             (tee_local $5
              (i32.load offset=20
               (get_local $7)
              )
             )
             (tee_local $4
              (i32.load offset=16
               (get_local $7)
              )
             )
            )
           )
           (br_if $label$7
            (i32.and
             (i32.load8_u
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           (i32.store16
            (get_local $1)
            (i32.const 0)
           )
           (set_local $4
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
           (br $label$6)
          )
          (i32.store
           (i32.add
            (get_local $7)
            (i32.const 8)
           )
           (i32.const 0)
          )
          (i64.store
           (get_local $7)
           (i64.const 0)
          )
          (br_if $label$0
           (i32.ge_u
            (tee_local $2
             (i32.sub
              (get_local $5)
              (get_local $4)
             )
            )
            (i32.const -16)
           )
          )
          (br_if $label$5
           (i32.ge_u
            (get_local $2)
            (i32.const 11)
           )
          )
          (i32.store8
           (get_local $7)
           (i32.shl
            (get_local $2)
            (i32.const 1)
           )
          )
          (set_local $6
           (i32.or
            (get_local $7)
            (i32.const 1)
           )
          )
          (br_if $label$4
           (get_local $2)
          )
          (br $label$3)
         )
         (i32.store8
          (i32.load offset=8
           (get_local $1)
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (get_local $1)
          (i32.const 0)
         )
         (set_local $4
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
        )
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
         (get_local $1)
         (i32.const 0)
        )
        (i32.store
         (get_local $4)
         (i32.const 0)
        )
        (i64.store align=4
         (get_local $1)
         (i64.const 0)
        )
        (br_if $label$2
         (tee_local $4
          (i32.load offset=16
           (get_local $7)
          )
         )
        )
        (br $label$1)
       )
       (set_local $6
        (call $_Znwj
         (tee_local $5
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const 16)
           )
           (i32.const -16)
          )
         )
        )
       )
       (i32.store
        (get_local $7)
        (i32.or
         (get_local $5)
         (i32.const 1)
        )
       )
       (i32.store offset=8
        (get_local $7)
        (get_local $6)
       )
       (i32.store offset=4
        (get_local $7)
        (get_local $2)
       )
      )
      (set_local $3
       (get_local $2)
      )
      (set_local $5
       (get_local $6)
      )
      (loop $label$9
       (i32.store8
        (get_local $5)
        (i32.load8_u
         (get_local $4)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (br_if $label$9
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -1)
         )
        )
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
        (get_local $2)
       )
      )
     )
     (i32.store8
      (get_local $6)
      (i32.const 0)
     )
     (block $label$10
      (block $label$11
       (br_if $label$11
        (i32.and
         (i32.load8_u
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store16
        (get_local $1)
        (i32.const 0)
       )
       (br $label$10)
      )
      (i32.store8
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $1)
       (i32.const 0)
      )
     )
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
      (get_local $1)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
      )
     )
     (i64.store align=4
      (get_local $1)
      (i64.load
       (get_local $7)
      )
     )
     (br_if $label$1
      (i32.eqz
       (tee_local $4
        (i32.load offset=16
         (get_local $7)
        )
       )
      )
     )
    )
    (i32.store offset=20
     (get_local $7)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $4)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $7)
  )
  (unreachable)
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 5776)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (tee_local $3
       (i32.wrap/i64
        (get_local $6)
       )
      )
      (tee_local $2
       (i32.sub
        (tee_local $7
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $4
         (i32.load
          (get_local $1)
         )
        )
       )
      )
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (i32.sub
      (get_local $3)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (br $label$1)
   )
   (br_if $label$1
    (i32.ge_u
     (get_local $3)
     (get_local $2)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ge_u
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (tee_local $5
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.const 608)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (i32.load
     (tee_local $7
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $5)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (i32.load
     (get_local $7)
    )
    (get_local $5)
   )
  )
  (get_local $0)
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 5780)
   (get_local $0)
  )
 )
 (func $_ZN5eosio14memory_manager6mallocEm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$1
    (br_if $label$1
     (tee_local $13
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $13
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $2
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $2
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (tee_local $10
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $13)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $10)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$5
       (br_if $label$5
        (get_local $10)
       )
       (br_if $label$5
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $13)
        (get_local $0)
       )
      )
      (set_local $10
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
      )
      (loop $label$6
       (block $label$7
        (br_if $label$7
         (i32.gt_u
          (i32.add
           (tee_local $13
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $10)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $13
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $13)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $13)
           )
           (i32.const -2147483648)
          )
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $10)
         )
        )
        (i32.store
         (get_local $13)
         (i32.or
          (i32.load
           (get_local $13)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$3
         (tee_local $1
          (i32.add
           (get_local $13)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (call $_ZN5eosio14memory_manager16next_active_heapEv
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $4
      (i32.sub
       (i32.const 2147483644)
       (get_local $2)
      )
     )
     (set_local $11
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $12
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $13
      (tee_local $3
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$8
      (call $eosio_assert
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $13)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 14176)
      )
      (set_local $13
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$9
       (set_local $7
        (i32.add
         (get_local $6)
         (i32.load
          (get_local $5)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $9
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $13)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.lt_s
          (get_local $9)
          (i32.const 0)
         )
        )
        (block $label$11
         (br_if $label$11
          (i32.ge_u
           (get_local $1)
           (get_local $2)
          )
         )
         (loop $label$12
          (br_if $label$11
           (i32.ge_u
            (tee_local $10
             (i32.add
              (get_local $13)
              (get_local $1)
             )
            )
            (get_local $7)
           )
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $10
             (i32.load
              (get_local $10)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$12
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $10)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (get_local $8)
         (i32.or
          (select
           (get_local $1)
           (get_local $2)
           (i32.lt_u
            (get_local $1)
            (get_local $2)
           )
          )
          (i32.and
           (get_local $9)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$13
         (br_if $label$13
          (i32.le_u
           (get_local $1)
           (get_local $2)
          )
         )
         (i32.store
          (i32.add
           (get_local $13)
           (get_local $2)
          )
          (i32.and
           (i32.add
            (get_local $4)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$2
         (i32.ge_u
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br_if $label$9
        (i32.lt_u
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $13)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $7)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $11)
       (tee_local $13
        (select
         (i32.const 0)
         (tee_local $13
          (i32.add
           (i32.load
            (get_local $11)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $13)
          (i32.load
           (get_local $12)
          )
         )
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $13)
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $8)
    (i32.or
     (i32.load
      (get_local $8)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $13)
   )
  )
  (i32.const 0)
 )
 (func $_ZN5eosio14memory_manager16next_active_heapEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.load8_u offset=14262
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=14264
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=14262
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=14264
    (i32.const 0)
    (tee_local $7
     (i32.shl
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $7)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.le_u
        (tee_local $2
         (i32.shr_u
          (i32.add
           (get_local $7)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=14264
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=14264
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (set_local $7
      (i32.sub
       (i32.sub
        (i32.add
         (get_local $7)
         (select
          (i32.const 65536)
          (i32.const 131072)
          (tee_local $6
           (i32.lt_u
            (tee_local $8
             (i32.and
              (get_local $7)
              (i32.const 65535)
             )
            )
            (i32.const 64513)
           )
          )
         )
        )
        (select
         (get_local $8)
         (i32.and
          (get_local $7)
          (i32.const 131071)
         )
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.load8_u offset=14262
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=14262
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=14264
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8192)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (tee_local $8
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $5
             (i32.and
              (i32.add
               (get_local $7)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $4
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $8)
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $8)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=14264
        (i32.const 0)
       )
      )
     )
     (i32.store offset=14264
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $5)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $8
         (i32.load
          (get_local $2)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eq
        (get_local $8)
        (tee_local $1
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $8)
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.load
        (get_local $2)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $2
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $2
       (i32.add
        (i32.load
         (get_local $2)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (i32.const 8196)
      )
      (get_local $3)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const 8192)
       )
      )
      (get_local $7)
     )
    )
    (return
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eq
      (tee_local $8
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $7
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $7)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $7)
       )
       (get_local $8)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $2)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $7
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (get_local $2)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.load offset=14164
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 13972)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 13972)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.load
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$2
      (i32.lt_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 12)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $3)
    )
    (i32.const 2147483647)
   )
  )
 )
 (func $_Znwj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (br_if $label$0
    (tee_local $0
     (call $malloc
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$1
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=14268
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $FUNCSIG$v)
     (get_local $2)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (call $malloc
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZdlPv (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (call $free
    (get_local $0)
   )
  )
 )
 (func $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (get_local $1)
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.const 10)
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (tee_local $5
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $2
     (i32.add
      (i32.and
       (tee_local $5
        (i32.load
         (get_local $0)
        )
       )
       (i32.const -2)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.and
       (get_local $5)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.shr_u
       (i32.and
        (get_local $5)
        (i32.const 254)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (set_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (set_local $4
    (i32.const 10)
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_u
      (tee_local $1
       (select
        (get_local $3)
        (get_local $1)
        (i32.gt_u
         (get_local $3)
         (get_local $1)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $4
     (i32.add
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 16)
       )
       (i32.const -16)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eq
      (get_local $4)
      (get_local $2)
     )
    )
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.ne
        (get_local $4)
        (i32.const 10)
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $2
       (i32.load offset=8
        (get_local $0)
       )
      )
      (set_local $7
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $1
      (call $_Znwj
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.gt_u
        (get_local $4)
        (get_local $2)
       )
      )
      (br_if $label$5
       (i32.eqz
        (get_local $1)
       )
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.and
        (tee_local $5
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $7
       (i32.const 1)
      )
      (set_local $2
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $2
      (i32.load offset=8
       (get_local $0)
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (set_local $7
      (i32.const 1)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $5
       (i32.shr_u
        (i32.and
         (get_local $5)
         (i32.const 254)
        )
        (i32.const 1)
       )
      )
      (br $label$10)
     )
     (set_local $5
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (block $label$12
     (br_if $label$12
      (i32.eqz
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (get_local $5)
      )
     )
    )
    (block $label$13
     (br_if $label$13
      (i32.eqz
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $2)
     )
    )
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (get_local $7)
      )
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store
      (get_local $0)
      (i32.or
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (return)
    )
    (i32.store8
     (get_local $0)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $memcmp (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
 (func $strlen (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (get_local $0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (get_local $0)
       (i32.const 3)
      )
     )
    )
    (set_local $2
     (get_local $0)
    )
    (loop $label$2
     (br_if $label$0
      (i32.eqz
       (i32.load8_u
        (get_local $2)
       )
      )
     )
     (br_if $label$2
      (i32.and
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 3)
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -4)
    )
   )
   (loop $label$3
    (br_if $label$3
     (i32.eqz
      (i32.and
       (i32.and
        (i32.xor
         (tee_local $1
          (i32.load
           (tee_local $2
            (i32.add
             (get_local $2)
             (i32.const 4)
            )
           )
          )
         )
         (i32.const -1)
        )
        (i32.add
         (get_local $1)
         (i32.const -16843009)
        )
       )
       (i32.const -2139062144)
      )
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
   )
   (loop $label$4
    (br_if $label$4
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (i32.sub
   (get_local $2)
   (get_local $0)
  )
 )
 (func $__wasm_nullptr (type $FUNCSIG$v)
  (unreachable)
 )
)
