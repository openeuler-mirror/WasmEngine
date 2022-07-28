(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32 i32 i32) (result i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32) (result i64)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func))
  (type (;13;) (func (param i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i64 i32 i32) (result i32)))
  (func $_ZN5alloc7raw_vec11finish_grow17hdf7f4d186359e70fE.llvm.12044473768437007172 (type 4) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 1
                      local.set 4
                      local.get 1
                      i32.const 0
                      i32.lt_s
                      br_if 1 (;@8;)
                      local.get 3
                      i32.load
                      local.tee 5
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=4
                      local.tee 3
                      br_if 4 (;@5;)
                      local.get 1
                      i32.eqz
                      br_if 3 (;@6;)
                      br 5 (;@4;)
                    end
                    local.get 0
                    local.get 1
                    i32.store offset=4
                    i32.const 1
                    local.set 4
                  end
                  i32.const 0
                  local.set 1
                  br 6 (;@1;)
                end
                local.get 1
                br_if 2 (;@4;)
              end
              local.get 2
              local.set 3
              br 2 (;@3;)
            end
            local.get 5
            local.get 3
            local.get 2
            local.get 1
            call $__rust_realloc
            local.tee 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 1
          local.get 2
          call $__rust_alloc
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 3
        i32.store offset=4
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 2
      local.set 1
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.store)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E (type 5) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.const 1
      i32.shl
      local.tee 4
      local.get 2
      local.get 4
      local.get 2
      i32.gt_u
      select
      local.tee 2
      i32.const 8
      local.get 2
      i32.const 8
      i32.gt_u
      select
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.const 1
          i32.store
          local.get 3
          local.get 1
          i32.store offset=20
          local.get 3
          local.get 0
          i32.load
          i32.store offset=16
          br 1 (;@2;)
        end
        local.get 3
        i32.const 0
        i32.store offset=16
      end
      local.get 3
      local.get 2
      i32.const 1
      local.get 3
      i32.const 16
      i32.add
      call $_ZN5alloc7raw_vec11finish_grow17hdf7f4d186359e70fE.llvm.12044473768437007172
      block  ;; label = @2
        local.get 3
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=4
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
        unreachable
      end
      local.get 0
      local.get 3
      i64.load offset=4 align=4
      i64.store align=4
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h56c8d20d9eefc93dE
    unreachable)
  (func $_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h509778c3875a0fceE (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h79bafd6618374d9aE (type 0) (param i32))
  (func $_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h6d198a4aa7f19cffE (type 0) (param i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.load
          br_table 0 (;@3;) 1 (;@2;) 2 (;@1;)
        end
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=4
        local.get 2
        i32.const 1
        call $__rust_dealloc
        br 1 (;@1;)
      end
      local.get 1
      i32.load8_u offset=4
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      i32.load
      local.tee 2
      i32.load
      local.get 2
      i32.load offset=4
      i32.load
      call_indirect (type 0)
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 3
        i32.load offset=4
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 4
        local.get 3
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 1
      i32.load offset=8
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 0
    i32.load
    i32.const 20
    i32.const 4
    call $__rust_dealloc)
  (func $authentication (type 6) (param i32 i32 i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 240
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 0
                        i32.lt_s
                        br_if 0 (;@10;)
                        i32.const 1
                        local.set 7
                        block  ;; label = @11
                          local.get 1
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          i32.const 1
                          call $__rust_alloc
                          local.tee 7
                          i32.eqz
                          br_if 2 (;@9;)
                        end
                        local.get 6
                        local.get 1
                        i32.store offset=116
                        local.get 6
                        local.get 7
                        i32.store offset=112
                        local.get 7
                        local.get 0
                        local.get 1
                        call $memcpy
                        drop
                        local.get 6
                        i32.const 112
                        i32.add
                        i32.const 8
                        i32.add
                        local.tee 7
                        local.get 1
                        i32.store
                        local.get 6
                        i32.const 112
                        i32.add
                        local.get 1
                        i32.const 1
                        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
                        local.get 6
                        i32.load offset=112
                        local.get 7
                        i32.load
                        i32.add
                        i32.const 35
                        i32.store8
                        local.get 6
                        i32.const 8
                        i32.add
                        local.tee 0
                        local.get 7
                        i32.load
                        i32.const 1
                        i32.add
                        local.tee 1
                        i32.store
                        local.get 6
                        local.get 6
                        i64.load offset=112
                        i64.store
                        block  ;; label = @11
                          local.get 6
                          i32.load offset=4
                          local.get 1
                          i32.sub
                          local.get 3
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 1
                          local.get 3
                          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
                          local.get 6
                          i32.load offset=8
                          local.set 1
                        end
                        local.get 6
                        i32.load
                        local.get 1
                        i32.add
                        local.get 2
                        local.get 3
                        call $memcpy
                        drop
                        local.get 7
                        local.get 0
                        i32.load
                        local.get 3
                        i32.add
                        local.tee 1
                        i32.store
                        local.get 6
                        local.get 6
                        i64.load
                        i64.store offset=112
                        block  ;; label = @11
                          local.get 6
                          i32.load offset=116
                          local.get 1
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 6
                          i32.const 112
                          i32.add
                          local.get 1
                          i32.const 1
                          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
                          local.get 6
                          i32.load offset=120
                          local.set 1
                        end
                        local.get 6
                        i32.load offset=112
                        local.get 1
                        i32.add
                        i32.const 35
                        i32.store8
                        local.get 6
                        i32.const 8
                        i32.add
                        local.get 6
                        i32.const 112
                        i32.add
                        i32.const 8
                        i32.add
                        i32.load
                        i32.const 1
                        i32.add
                        local.tee 1
                        i32.store
                        local.get 6
                        local.get 6
                        i64.load offset=112
                        i64.store
                        block  ;; label = @11
                          local.get 6
                          i32.load offset=4
                          local.get 1
                          i32.sub
                          i32.const 6
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 1
                          i32.const 7
                          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
                          local.get 6
                          i32.load offset=8
                          local.set 1
                        end
                        local.get 6
                        i32.load
                        local.get 1
                        i32.add
                        local.tee 1
                        i32.const 0
                        i32.load offset=1048652 align=1
                        i32.store align=1
                        local.get 1
                        i32.const 3
                        i32.add
                        i32.const 0
                        i32.load offset=1048655 align=1
                        i32.store align=1
                        local.get 6
                        i32.load offset=8
                        local.set 1
                        local.get 6
                        i32.load offset=4
                        local.set 0
                        local.get 6
                        i32.load
                        local.set 7
                        local.get 6
                        call $_ZN51_$LT$md5..Md5$u20$as$u20$core..default..Default$GT$7default17hd34bc9157fd9099bE
                        local.get 6
                        local.get 7
                        local.get 1
                        i32.const 7
                        i32.add
                        call $_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h9d73d45711a1f61cE
                        local.get 6
                        i32.const 112
                        i32.add
                        local.get 6
                        i32.const 96
                        call $memcpy
                        drop
                        local.get 6
                        i32.const 96
                        i32.add
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$8finalize17hd19b84ac4c75c838E
                        i32.const 32
                        i32.const 1
                        call $__rust_alloc
                        local.tee 1
                        i32.eqz
                        br_if 2 (;@8;)
                        local.get 6
                        i64.const 32
                        i64.store offset=212 align=4
                        local.get 6
                        local.get 1
                        i32.store offset=208
                        local.get 6
                        local.get 6
                        i32.load8_u offset=96
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 132
                        i32.add
                        i32.const 1
                        i32.store
                        local.get 6
                        i32.const 124
                        i32.add
                        i32.const 1
                        i32.store
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=97
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=98
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=99
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=100
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=101
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=102
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=103
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=104
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=105
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=106
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=107
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=108
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=109
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=110
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 6
                        i32.load8_u offset=111
                        i32.store8 offset=223
                        local.get 6
                        i32.const 1
                        i32.store offset=228
                        local.get 6
                        local.get 6
                        i32.const 223
                        i32.add
                        i32.store offset=224
                        local.get 6
                        local.get 6
                        i32.const 208
                        i32.add
                        i32.store offset=236
                        local.get 6
                        i32.const 1
                        i32.store offset=132
                        local.get 6
                        i32.const 1
                        i32.store offset=124
                        local.get 6
                        i32.const 1048668
                        i32.store offset=120
                        local.get 6
                        i32.const 1
                        i32.store offset=116
                        local.get 6
                        i32.const 1048660
                        i32.store offset=112
                        local.get 6
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.store offset=128
                        local.get 6
                        i32.const 236
                        i32.add
                        i32.const 1048844
                        local.get 6
                        i32.const 112
                        i32.add
                        call $_ZN4core3fmt5write17hb363a5cc37db74afE
                        br_if 3 (;@7;)
                        local.get 6
                        i32.load offset=208
                        local.set 2
                        local.get 6
                        i32.load offset=216
                        local.tee 3
                        local.get 5
                        i32.ne
                        br_if 5 (;@5;)
                        local.get 2
                        local.get 4
                        local.get 5
                        call $memcmp
                        br_if 5 (;@5;)
                        i32.const 33
                        local.set 3
                        i32.const 33
                        i32.const 1
                        call $__rust_alloc
                        local.tee 1
                        i32.eqz
                        br_if 4 (;@6;)
                        local.get 1
                        i32.const 0
                        i64.load offset=1048731 align=1
                        i64.store align=1
                        local.get 1
                        i32.const 8
                        i32.add
                        i32.const 0
                        i64.load offset=1048739 align=1
                        i64.store align=1
                        local.get 1
                        i32.const 16
                        i32.add
                        i32.const 0
                        i64.load offset=1048747 align=1
                        i64.store align=1
                        local.get 1
                        i32.const 24
                        i32.add
                        i32.const 0
                        i64.load offset=1048755 align=1
                        i64.store align=1
                        local.get 1
                        i32.const 32
                        i32.add
                        i32.const 0
                        i32.load8_u offset=1048763
                        i32.store8
                        local.get 6
                        local.get 1
                        i32.store offset=112
                        local.get 6
                        i64.const 141733920801
                        i64.store offset=116 align=4
                        block  ;; label = @11
                          local.get 5
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 6
                          i32.const 112
                          i32.add
                          i32.const 33
                          local.get 5
                          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
                          local.get 6
                          i32.load offset=112
                          local.set 1
                          local.get 6
                          i32.load offset=120
                          local.set 3
                        end
                        local.get 1
                        local.get 3
                        i32.add
                        local.get 2
                        local.get 5
                        call $memcpy
                        drop
                        local.get 6
                        i32.const 224
                        i32.add
                        i32.const 8
                        i32.add
                        local.get 6
                        i32.const 112
                        i32.add
                        i32.const 8
                        i32.add
                        i32.load
                        local.get 5
                        i32.add
                        local.tee 1
                        i32.store
                        local.get 6
                        local.get 6
                        i64.load offset=112
                        i64.store offset=224
                        block  ;; label = @11
                          local.get 6
                          i32.load offset=228
                          local.get 1
                          i32.sub
                          i32.const 10
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 6
                          i32.const 224
                          i32.add
                          local.get 1
                          i32.const 11
                          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
                          local.get 6
                          i32.load offset=232
                          local.set 1
                        end
                        local.get 6
                        i32.load offset=224
                        local.get 1
                        i32.add
                        local.tee 1
                        i32.const 0
                        i64.load offset=1048764 align=1
                        i64.store align=1
                        local.get 1
                        i32.const 7
                        i32.add
                        i32.const 0
                        i32.load offset=1048771 align=1
                        i32.store align=1
                        local.get 6
                        i32.load offset=232
                        local.set 4
                        local.get 6
                        i32.load offset=224
                        local.set 5
                        local.get 6
                        i32.load offset=228
                        local.set 3
                        i32.const 1048728
                        local.set 2
                        br 6 (;@4;)
                      end
                      call $_ZN5alloc7raw_vec17capacity_overflow17h56c8d20d9eefc93dE
                      unreachable
                    end
                    local.get 1
                    i32.const 1
                    call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
                    unreachable
                  end
                  i32.const 32
                  i32.const 1
                  call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
                  unreachable
                end
                i32.const 1048576
                i32.const 43
                local.get 6
                i32.const 112
                i32.add
                i32.const 1048620
                i32.const 1048712
                call $_ZN4core6result13unwrap_failed17h694db13a45aa6740E
                unreachable
              end
              i32.const 33
              i32.const 1
              call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
              unreachable
            end
            i32.const 38
            local.set 8
            i32.const 38
            i32.const 1
            call $__rust_alloc
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.const 0
            i64.load offset=1048778 align=1
            i64.store align=1
            local.get 1
            i32.const 8
            i32.add
            i32.const 0
            i64.load offset=1048786 align=1
            i64.store align=1
            local.get 1
            i32.const 16
            i32.add
            i32.const 0
            i64.load offset=1048794 align=1
            i64.store align=1
            local.get 1
            i32.const 24
            i32.add
            i32.const 0
            i64.load offset=1048802 align=1
            i64.store align=1
            local.get 1
            i32.const 30
            i32.add
            i32.const 0
            i64.load offset=1048808 align=1
            i64.store align=1
            local.get 6
            local.get 1
            i32.store offset=112
            local.get 6
            i64.const 163208757286
            i64.store offset=116 align=4
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.const 112
              i32.add
              i32.const 38
              local.get 3
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
              local.get 6
              i32.load offset=112
              local.set 1
              local.get 6
              i32.load offset=120
              local.set 8
            end
            local.get 1
            local.get 8
            i32.add
            local.get 2
            local.get 3
            call $memcpy
            drop
            local.get 6
            i32.const 224
            i32.add
            i32.const 8
            i32.add
            local.get 6
            i32.const 112
            i32.add
            i32.const 8
            i32.add
            i32.load
            local.get 3
            i32.add
            local.tee 1
            i32.store
            local.get 6
            local.get 6
            i64.load offset=112
            i64.store offset=224
            block  ;; label = @5
              local.get 6
              i32.load offset=228
              local.get 1
              i32.sub
              i32.const 7
              i32.gt_u
              br_if 0 (;@5;)
              local.get 6
              i32.const 224
              i32.add
              local.get 1
              i32.const 8
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
              local.get 6
              i32.load offset=232
              local.set 1
            end
            local.get 6
            i32.load offset=224
            local.get 1
            i32.add
            i64.const 2338605648480400160
            i64.store align=1
            local.get 6
            i32.const 112
            i32.add
            i32.const 8
            i32.add
            local.tee 3
            local.get 6
            i32.const 224
            i32.add
            i32.const 8
            i32.add
            local.tee 2
            i32.load
            i32.const 8
            i32.add
            local.tee 1
            i32.store
            local.get 6
            local.get 6
            i64.load offset=224
            i64.store offset=112
            block  ;; label = @5
              local.get 6
              i32.load offset=116
              local.get 1
              i32.sub
              local.get 5
              i32.ge_u
              br_if 0 (;@5;)
              local.get 6
              i32.const 112
              i32.add
              local.get 1
              local.get 5
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
              local.get 6
              i32.load offset=120
              local.set 1
            end
            local.get 6
            i32.load offset=112
            local.get 1
            i32.add
            local.get 4
            local.get 5
            call $memcpy
            drop
            local.get 2
            local.get 3
            i32.load
            local.get 5
            i32.add
            local.tee 1
            i32.store
            local.get 6
            local.get 6
            i64.load offset=112
            i64.store offset=224
            block  ;; label = @5
              local.get 6
              i32.load offset=228
              local.get 1
              i32.sub
              i32.const 10
              i32.gt_u
              br_if 0 (;@5;)
              local.get 6
              i32.const 224
              i32.add
              local.get 1
              i32.const 11
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
              local.get 6
              i32.load offset=232
              local.set 1
            end
            local.get 6
            i32.load offset=224
            local.get 1
            i32.add
            local.tee 1
            i32.const 0
            i64.load offset=1048764 align=1
            i64.store align=1
            local.get 1
            i32.const 7
            i32.add
            i32.const 0
            i32.load offset=1048771 align=1
            i32.store align=1
            local.get 6
            i32.load offset=232
            local.set 4
            local.get 6
            i32.load offset=224
            local.set 5
            local.get 6
            i32.load offset=228
            local.set 3
            i32.const 1048775
            local.set 2
          end
          i32.const 128
          i32.const 1
          call $__rust_alloc
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i64.const 4294967424
          i64.store offset=116 align=4
          local.get 6
          local.get 1
          i32.store offset=112
          local.get 1
          i32.const 123
          i32.store8
          local.get 6
          local.get 6
          i32.const 112
          i32.add
          i32.store offset=224
          local.get 6
          i32.const 224
          i32.add
          i32.const 1048832
          i32.const 6
          call $_ZN95_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde..ser..Serializer$GT$13serialize_str17ha208b0c3deecac07E.llvm.13022772514671157473
          local.tee 1
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 6
            i32.load offset=116
            local.get 6
            i32.load offset=120
            local.tee 1
            i32.ne
            br_if 0 (;@4;)
            local.get 6
            i32.const 112
            i32.add
            local.get 1
            i32.const 1
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
            local.get 6
            i32.load offset=120
            local.set 1
          end
          local.get 6
          i32.load offset=112
          local.get 1
          i32.add
          i32.const 58
          i32.store8
          local.get 6
          local.get 6
          i32.load offset=120
          i32.const 1
          i32.add
          i32.store offset=120
          local.get 6
          i32.const 224
          i32.add
          local.get 2
          i32.const 3
          call $_ZN95_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde..ser..Serializer$GT$13serialize_str17ha208b0c3deecac07E.llvm.13022772514671157473
          local.tee 1
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 6
            i32.load offset=116
            local.get 6
            i32.load offset=120
            local.tee 1
            i32.ne
            br_if 0 (;@4;)
            local.get 6
            i32.const 112
            i32.add
            local.get 1
            i32.const 1
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
            local.get 6
            i32.load offset=120
            local.set 1
          end
          local.get 6
          i32.load offset=112
          local.get 1
          i32.add
          i32.const 44
          i32.store8
          local.get 6
          local.get 6
          i32.load offset=120
          i32.const 1
          i32.add
          i32.store offset=120
          local.get 6
          i32.const 224
          i32.add
          i32.const 1048838
          i32.const 4
          call $_ZN95_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde..ser..Serializer$GT$13serialize_str17ha208b0c3deecac07E.llvm.13022772514671157473
          local.tee 1
          br_if 2 (;@1;)
          local.get 4
          i32.const 11
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 6
            i32.load offset=116
            local.get 6
            i32.load offset=120
            local.tee 1
            i32.ne
            br_if 0 (;@4;)
            local.get 6
            i32.const 112
            i32.add
            local.get 1
            i32.const 1
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
            local.get 6
            i32.load offset=120
            local.set 1
          end
          local.get 6
          i32.load offset=112
          local.get 1
          i32.add
          i32.const 58
          i32.store8
          local.get 6
          local.get 6
          i32.load offset=120
          i32.const 1
          i32.add
          i32.store offset=120
          local.get 6
          i32.const 224
          i32.add
          local.get 5
          local.get 2
          call $_ZN95_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde..ser..Serializer$GT$13serialize_str17ha208b0c3deecac07E.llvm.13022772514671157473
          local.tee 1
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 6
            i32.load offset=116
            local.get 6
            i32.load offset=120
            local.tee 1
            i32.ne
            br_if 0 (;@4;)
            local.get 6
            i32.const 112
            i32.add
            local.get 1
            i32.const 1
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
            local.get 6
            i32.load offset=120
            local.set 1
          end
          local.get 6
          i32.load offset=112
          local.get 1
          i32.add
          i32.const 125
          i32.store8
          local.get 6
          local.get 6
          i32.load offset=120
          i32.const 1
          i32.add
          i32.store offset=120
          local.get 6
          i32.load offset=112
          local.set 1
          block  ;; label = @4
            local.get 6
            i64.load offset=116 align=4
            local.tee 9
            i32.wrap_i64
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.const 1
            call $__rust_dealloc
          end
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 3
            i32.const 1
            call $__rust_dealloc
          end
          block  ;; label = @4
            local.get 6
            i32.load offset=212
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.load offset=208
            local.get 5
            i32.const 1
            call $__rust_dealloc
          end
          block  ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            local.get 0
            i32.const 1
            call $__rust_dealloc
          end
          local.get 6
          i32.const 240
          i32.add
          global.set $__stack_pointer
          local.get 1
          local.get 9
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          return
        end
        i32.const 38
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
        unreachable
      end
      i32.const 128
      i32.const 1
      call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
      unreachable
    end
    local.get 6
    i32.const 112
    i32.add
    call $_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h509778c3875a0fceE
    local.get 6
    local.get 1
    i32.store offset=112
    i32.const 1048576
    i32.const 43
    local.get 6
    i32.const 112
    i32.add
    i32.const 1048636
    i32.const 1048816
    call $_ZN4core6result13unwrap_failed17h694db13a45aa6740E
    unreachable)
  (func $_ZN4core3ptr54drop_in_place$LT$$RF$mut$u20$alloc..string..String$GT$17h812419296af9506bE.llvm.13827028329745944904 (type 0) (param i32))
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hddf51bcc9d84867eE.llvm.13827028329745944904 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.const 1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
          local.get 0
          i32.load offset=8
          local.set 3
        end
        local.get 0
        i32.load
        local.get 3
        i32.add
        local.get 1
        i32.store8
        local.get 0
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@2;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get 2
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 4
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
      end
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.get 0
        i32.const 8
        i32.add
        local.tee 3
        i32.load
        local.tee 4
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        local.get 1
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
        local.get 3
        i32.load
        local.set 4
      end
      local.get 0
      i32.load
      local.get 4
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
      local.get 3
      local.get 3
      i32.load
      local.get 1
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h580641437cba117cE.llvm.13827028329745944904 (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1048844
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17hb363a5cc37db74afE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h78b9c4149c22116dE.llvm.13827028329745944904 (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 4
      i32.add
      i32.load
      local.get 0
      i32.const 8
      i32.add
      local.tee 3
      i32.load
      local.tee 4
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 4
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
      local.get 3
      i32.load
      local.set 4
    end
    local.get 0
    i32.load
    local.get 4
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 3
    local.get 3
    i32.load
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN3md55utils8compress17hbf8940dfc4c2e578E (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=16 align=1
    local.tee 2
    local.get 1
    i32.load offset=32 align=1
    local.tee 3
    local.get 1
    i32.load offset=48 align=1
    local.tee 4
    local.get 1
    i32.load align=1
    local.tee 5
    local.get 1
    i32.load offset=36 align=1
    local.tee 6
    local.get 1
    i32.load offset=52 align=1
    local.tee 7
    local.get 1
    i32.load offset=4 align=1
    local.tee 8
    local.get 1
    i32.load offset=20 align=1
    local.tee 9
    local.get 7
    local.get 6
    local.get 9
    local.get 8
    local.get 4
    local.get 3
    local.get 2
    local.get 5
    local.get 0
    i32.load
    local.tee 10
    local.get 0
    i32.load offset=8
    local.tee 11
    local.get 0
    i32.load offset=4
    local.tee 12
    i32.and
    i32.add
    local.get 0
    i32.load offset=12
    local.tee 13
    local.get 12
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.add
    i32.const -680876936
    i32.add
    i32.const 7
    i32.rotl
    local.get 12
    i32.add
    local.tee 14
    i32.add
    local.get 12
    local.get 1
    i32.load offset=12 align=1
    local.tee 15
    i32.add
    local.get 11
    local.get 1
    i32.load offset=8 align=1
    local.tee 16
    i32.add
    local.get 13
    local.get 8
    i32.add
    local.get 14
    local.get 12
    i32.and
    i32.add
    local.get 11
    local.get 14
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const -389564586
    i32.add
    i32.const 12
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 14
    i32.and
    i32.add
    local.get 12
    local.get 17
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const 606105819
    i32.add
    i32.const 17
    i32.rotl
    local.get 17
    i32.add
    local.tee 18
    local.get 17
    i32.and
    i32.add
    local.get 14
    local.get 18
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const -1044525330
    i32.add
    i32.const 22
    i32.rotl
    local.get 18
    i32.add
    local.tee 14
    local.get 18
    i32.and
    i32.add
    local.get 17
    local.get 14
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const -176418897
    i32.add
    i32.const 7
    i32.rotl
    local.get 14
    i32.add
    local.tee 19
    i32.add
    local.get 1
    i32.load offset=28 align=1
    local.tee 20
    local.get 14
    i32.add
    local.get 1
    i32.load offset=24 align=1
    local.tee 21
    local.get 18
    i32.add
    local.get 9
    local.get 17
    i32.add
    local.get 19
    local.get 14
    i32.and
    i32.add
    local.get 18
    local.get 19
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const 1200080426
    i32.add
    i32.const 12
    i32.rotl
    local.get 19
    i32.add
    local.tee 17
    local.get 19
    i32.and
    i32.add
    local.get 14
    local.get 17
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const -1473231341
    i32.add
    i32.const 17
    i32.rotl
    local.get 17
    i32.add
    local.tee 14
    local.get 17
    i32.and
    i32.add
    local.get 19
    local.get 14
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const -45705983
    i32.add
    i32.const 22
    i32.rotl
    local.get 14
    i32.add
    local.tee 18
    local.get 14
    i32.and
    i32.add
    local.get 17
    local.get 18
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const 1770035416
    i32.add
    i32.const 7
    i32.rotl
    local.get 18
    i32.add
    local.tee 19
    i32.add
    local.get 1
    i32.load offset=44 align=1
    local.tee 22
    local.get 18
    i32.add
    local.get 1
    i32.load offset=40 align=1
    local.tee 23
    local.get 14
    i32.add
    local.get 6
    local.get 17
    i32.add
    local.get 19
    local.get 18
    i32.and
    i32.add
    local.get 14
    local.get 19
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const -1958414417
    i32.add
    i32.const 12
    i32.rotl
    local.get 19
    i32.add
    local.tee 14
    local.get 19
    i32.and
    i32.add
    local.get 18
    local.get 14
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const -42063
    i32.add
    i32.const 17
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 14
    i32.and
    i32.add
    local.get 19
    local.get 17
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const -1990404162
    i32.add
    i32.const 22
    i32.rotl
    local.get 17
    i32.add
    local.tee 18
    local.get 17
    i32.and
    i32.add
    local.get 14
    local.get 18
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const 1804603682
    i32.add
    i32.const 7
    i32.rotl
    local.get 18
    i32.add
    local.tee 19
    i32.add
    local.get 1
    i32.load offset=56 align=1
    local.tee 24
    local.get 17
    i32.add
    local.get 7
    local.get 14
    i32.add
    local.get 19
    local.get 18
    i32.and
    i32.add
    local.get 17
    local.get 19
    i32.const -1
    i32.xor
    i32.and
    i32.add
    i32.const -40341101
    i32.add
    i32.const 12
    i32.rotl
    local.get 19
    i32.add
    local.tee 14
    local.get 19
    i32.and
    i32.add
    local.get 18
    local.get 14
    i32.const -1
    i32.xor
    local.tee 25
    i32.and
    i32.add
    i32.const -1502002290
    i32.add
    i32.const 17
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 25
    i32.and
    i32.add
    local.get 1
    i32.load offset=60 align=1
    local.tee 25
    local.get 18
    i32.add
    local.get 17
    local.get 14
    i32.and
    i32.add
    local.get 19
    local.get 17
    i32.const -1
    i32.xor
    local.tee 26
    i32.and
    i32.add
    i32.const 1236535329
    i32.add
    i32.const 22
    i32.rotl
    local.get 17
    i32.add
    local.tee 1
    local.get 14
    i32.and
    i32.add
    i32.const -165796510
    i32.add
    i32.const 5
    i32.rotl
    local.get 1
    i32.add
    local.tee 18
    i32.add
    local.get 22
    local.get 17
    i32.add
    local.get 18
    local.get 1
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 21
    local.get 14
    i32.add
    local.get 1
    local.get 26
    i32.and
    i32.add
    local.get 18
    local.get 17
    i32.and
    i32.add
    i32.const -1069501632
    i32.add
    i32.const 9
    i32.rotl
    local.get 18
    i32.add
    local.tee 14
    local.get 1
    i32.and
    i32.add
    i32.const 643717713
    i32.add
    i32.const 14
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 14
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 5
    local.get 1
    i32.add
    local.get 14
    local.get 18
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 17
    local.get 18
    i32.and
    i32.add
    i32.const -373897302
    i32.add
    i32.const 20
    i32.rotl
    local.get 17
    i32.add
    local.tee 1
    local.get 14
    i32.and
    i32.add
    i32.const -701558691
    i32.add
    i32.const 5
    i32.rotl
    local.get 1
    i32.add
    local.tee 18
    i32.add
    local.get 25
    local.get 17
    i32.add
    local.get 18
    local.get 1
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 23
    local.get 14
    i32.add
    local.get 1
    local.get 17
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 18
    local.get 17
    i32.and
    i32.add
    i32.const 38016083
    i32.add
    i32.const 9
    i32.rotl
    local.get 18
    i32.add
    local.tee 14
    local.get 1
    i32.and
    i32.add
    i32.const -660478335
    i32.add
    i32.const 14
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 14
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 2
    local.get 1
    i32.add
    local.get 14
    local.get 18
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 17
    local.get 18
    i32.and
    i32.add
    i32.const -405537848
    i32.add
    i32.const 20
    i32.rotl
    local.get 17
    i32.add
    local.tee 1
    local.get 14
    i32.and
    i32.add
    i32.const 568446438
    i32.add
    i32.const 5
    i32.rotl
    local.get 1
    i32.add
    local.tee 18
    i32.add
    local.get 15
    local.get 17
    i32.add
    local.get 18
    local.get 1
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 24
    local.get 14
    i32.add
    local.get 1
    local.get 17
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 18
    local.get 17
    i32.and
    i32.add
    i32.const -1019803690
    i32.add
    i32.const 9
    i32.rotl
    local.get 18
    i32.add
    local.tee 14
    local.get 1
    i32.and
    i32.add
    i32.const -187363961
    i32.add
    i32.const 14
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 14
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 3
    local.get 1
    i32.add
    local.get 14
    local.get 18
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 17
    local.get 18
    i32.and
    i32.add
    i32.const 1163531501
    i32.add
    i32.const 20
    i32.rotl
    local.get 17
    i32.add
    local.tee 1
    local.get 14
    i32.and
    i32.add
    i32.const -1444681467
    i32.add
    i32.const 5
    i32.rotl
    local.get 1
    i32.add
    local.tee 18
    i32.add
    local.get 4
    local.get 1
    i32.add
    local.get 16
    local.get 14
    i32.add
    local.get 1
    local.get 17
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 18
    local.get 17
    i32.and
    i32.add
    i32.const -51403784
    i32.add
    i32.const 9
    i32.rotl
    local.get 18
    i32.add
    local.tee 14
    local.get 18
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 20
    local.get 17
    i32.add
    local.get 18
    local.get 1
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.get 14
    local.get 1
    i32.and
    i32.add
    i32.const 1735328473
    i32.add
    i32.const 14
    i32.rotl
    local.get 14
    i32.add
    local.tee 1
    local.get 18
    i32.and
    i32.add
    i32.const -1926607734
    i32.add
    i32.const 20
    i32.rotl
    local.get 1
    i32.add
    local.tee 17
    local.get 1
    i32.xor
    local.tee 19
    local.get 14
    i32.xor
    i32.add
    i32.const -378558
    i32.add
    i32.const 4
    i32.rotl
    local.get 17
    i32.add
    local.tee 18
    i32.add
    local.get 22
    local.get 1
    i32.add
    local.get 3
    local.get 14
    i32.add
    local.get 18
    local.get 19
    i32.xor
    i32.add
    i32.const -2022574463
    i32.add
    i32.const 11
    i32.rotl
    local.get 18
    i32.add
    local.tee 19
    local.get 18
    i32.xor
    local.tee 14
    local.get 17
    i32.xor
    i32.add
    i32.const 1839030562
    i32.add
    i32.const 16
    i32.rotl
    local.get 19
    i32.add
    local.tee 1
    local.get 19
    i32.xor
    local.get 24
    local.get 17
    i32.add
    local.get 14
    local.get 1
    i32.xor
    i32.add
    i32.const -35309556
    i32.add
    i32.const 23
    i32.rotl
    local.get 1
    i32.add
    local.tee 14
    i32.xor
    i32.add
    i32.const -1530992060
    i32.add
    i32.const 4
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    i32.add
    local.get 20
    local.get 1
    i32.add
    local.get 17
    local.get 14
    i32.xor
    local.get 2
    local.get 19
    i32.add
    local.get 14
    local.get 1
    i32.xor
    local.get 17
    i32.xor
    i32.add
    i32.const 1272893353
    i32.add
    i32.const 11
    i32.rotl
    local.get 17
    i32.add
    local.tee 1
    i32.xor
    i32.add
    i32.const -155497632
    i32.add
    i32.const 16
    i32.rotl
    local.get 1
    i32.add
    local.tee 18
    local.get 1
    i32.xor
    local.get 23
    local.get 14
    i32.add
    local.get 1
    local.get 17
    i32.xor
    local.get 18
    i32.xor
    i32.add
    i32.const -1094730640
    i32.add
    i32.const 23
    i32.rotl
    local.get 18
    i32.add
    local.tee 14
    i32.xor
    i32.add
    i32.const 681279174
    i32.add
    i32.const 4
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    i32.add
    local.get 15
    local.get 18
    i32.add
    local.get 17
    local.get 14
    i32.xor
    local.get 5
    local.get 1
    i32.add
    local.get 14
    local.get 18
    i32.xor
    local.get 17
    i32.xor
    i32.add
    i32.const -358537222
    i32.add
    i32.const 11
    i32.rotl
    local.get 17
    i32.add
    local.tee 1
    i32.xor
    i32.add
    i32.const -722521979
    i32.add
    i32.const 16
    i32.rotl
    local.get 1
    i32.add
    local.tee 18
    local.get 1
    i32.xor
    local.get 21
    local.get 14
    i32.add
    local.get 1
    local.get 17
    i32.xor
    local.get 18
    i32.xor
    i32.add
    i32.const 76029189
    i32.add
    i32.const 23
    i32.rotl
    local.get 18
    i32.add
    local.tee 14
    i32.xor
    i32.add
    i32.const -640364487
    i32.add
    i32.const 4
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    i32.add
    local.get 16
    local.get 14
    i32.add
    local.get 4
    local.get 1
    i32.add
    local.get 14
    local.get 18
    i32.xor
    local.get 17
    i32.xor
    i32.add
    i32.const -421815835
    i32.add
    i32.const 11
    i32.rotl
    local.get 17
    i32.add
    local.tee 1
    local.get 17
    i32.xor
    local.get 25
    local.get 18
    i32.add
    local.get 17
    local.get 14
    i32.xor
    local.get 1
    i32.xor
    i32.add
    i32.const 530742520
    i32.add
    i32.const 16
    i32.rotl
    local.get 1
    i32.add
    local.tee 14
    i32.xor
    i32.add
    i32.const -995338651
    i32.add
    i32.const 23
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 1
    i32.const -1
    i32.xor
    i32.or
    local.get 14
    i32.xor
    i32.add
    i32.const -198630844
    i32.add
    i32.const 6
    i32.rotl
    local.get 17
    i32.add
    local.tee 18
    i32.add
    local.get 9
    local.get 17
    i32.add
    local.get 24
    local.get 14
    i32.add
    local.get 20
    local.get 1
    i32.add
    local.get 18
    local.get 14
    i32.const -1
    i32.xor
    i32.or
    local.get 17
    i32.xor
    i32.add
    i32.const 1126891415
    i32.add
    i32.const 10
    i32.rotl
    local.get 18
    i32.add
    local.tee 1
    local.get 17
    i32.const -1
    i32.xor
    i32.or
    local.get 18
    i32.xor
    i32.add
    i32.const -1416354905
    i32.add
    i32.const 15
    i32.rotl
    local.get 1
    i32.add
    local.tee 14
    local.get 18
    i32.const -1
    i32.xor
    i32.or
    local.get 1
    i32.xor
    i32.add
    i32.const -57434055
    i32.add
    i32.const 21
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 1
    i32.const -1
    i32.xor
    i32.or
    local.get 14
    i32.xor
    i32.add
    i32.const 1700485571
    i32.add
    i32.const 6
    i32.rotl
    local.get 17
    i32.add
    local.tee 18
    i32.add
    local.get 8
    local.get 17
    i32.add
    local.get 23
    local.get 14
    i32.add
    local.get 15
    local.get 1
    i32.add
    local.get 18
    local.get 14
    i32.const -1
    i32.xor
    i32.or
    local.get 17
    i32.xor
    i32.add
    i32.const -1894986606
    i32.add
    i32.const 10
    i32.rotl
    local.get 18
    i32.add
    local.tee 1
    local.get 17
    i32.const -1
    i32.xor
    i32.or
    local.get 18
    i32.xor
    i32.add
    i32.const -1051523
    i32.add
    i32.const 15
    i32.rotl
    local.get 1
    i32.add
    local.tee 14
    local.get 18
    i32.const -1
    i32.xor
    i32.or
    local.get 1
    i32.xor
    i32.add
    i32.const -2054922799
    i32.add
    i32.const 21
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 1
    i32.const -1
    i32.xor
    i32.or
    local.get 14
    i32.xor
    i32.add
    i32.const 1873313359
    i32.add
    i32.const 6
    i32.rotl
    local.get 17
    i32.add
    local.tee 18
    i32.add
    local.get 7
    local.get 17
    i32.add
    local.get 21
    local.get 14
    i32.add
    local.get 25
    local.get 1
    i32.add
    local.get 18
    local.get 14
    i32.const -1
    i32.xor
    i32.or
    local.get 17
    i32.xor
    i32.add
    i32.const -30611744
    i32.add
    i32.const 10
    i32.rotl
    local.get 18
    i32.add
    local.tee 1
    local.get 17
    i32.const -1
    i32.xor
    i32.or
    local.get 18
    i32.xor
    i32.add
    i32.const -1560198380
    i32.add
    i32.const 15
    i32.rotl
    local.get 1
    i32.add
    local.tee 14
    local.get 18
    i32.const -1
    i32.xor
    i32.or
    local.get 1
    i32.xor
    i32.add
    i32.const 1309151649
    i32.add
    i32.const 21
    i32.rotl
    local.get 14
    i32.add
    local.tee 17
    local.get 1
    i32.const -1
    i32.xor
    i32.or
    local.get 14
    i32.xor
    i32.add
    i32.const -145523070
    i32.add
    i32.const 6
    i32.rotl
    local.get 17
    i32.add
    local.tee 18
    local.get 10
    i32.add
    i32.store
    local.get 0
    local.get 13
    local.get 22
    local.get 1
    i32.add
    local.get 18
    local.get 14
    i32.const -1
    i32.xor
    i32.or
    local.get 17
    i32.xor
    i32.add
    i32.const -1120210379
    i32.add
    i32.const 10
    i32.rotl
    local.get 18
    i32.add
    local.tee 1
    i32.add
    i32.store offset=12
    local.get 0
    local.get 11
    local.get 16
    local.get 14
    i32.add
    local.get 1
    local.get 17
    i32.const -1
    i32.xor
    i32.or
    local.get 18
    i32.xor
    i32.add
    i32.const 718787259
    i32.add
    i32.const 15
    i32.rotl
    local.get 1
    i32.add
    local.tee 14
    i32.add
    i32.store offset=8
    local.get 0
    local.get 14
    local.get 12
    i32.add
    local.get 6
    local.get 17
    i32.add
    local.get 14
    local.get 18
    i32.const -1
    i32.xor
    i32.or
    local.get 1
    i32.xor
    i32.add
    i32.const -343485551
    i32.add
    i32.const 21
    i32.rotl
    i32.add
    i32.store offset=4)
  (func $_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h9d73d45711a1f61cE (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 0
    i64.load
    local.get 2
    i64.extend_i32_u
    i64.add
    i64.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 64
                local.get 0
                i32.load offset=8
                local.tee 3
                i32.sub
                local.tee 4
                local.get 2
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                i32.const 76
                i32.add
                local.set 5
                local.get 3
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
              local.get 3
              local.get 2
              i32.add
              local.tee 5
              local.get 3
              i32.lt_u
              br_if 1 (;@4;)
              local.get 5
              i32.const 64
              i32.gt_u
              br_if 2 (;@3;)
              local.get 0
              i32.const 8
              i32.add
              local.get 3
              i32.add
              i32.const 4
              i32.add
              local.get 1
              local.get 2
              call $memcpy
              drop
              local.get 0
              local.get 0
              i32.load offset=8
              local.get 2
              i32.add
              i32.store offset=8
              return
            end
            local.get 3
            i32.const 65
            i32.ge_u
            br_if 2 (;@2;)
            local.get 0
            i32.const 12
            i32.add
            local.tee 6
            local.get 3
            i32.add
            local.get 1
            local.get 4
            call $memcpy
            drop
            local.get 5
            local.get 6
            call $_ZN3md55utils8compress17hbf8940dfc4c2e578E
            local.get 2
            local.get 4
            i32.sub
            local.set 2
            local.get 1
            local.get 4
            i32.add
            local.set 1
            br 3 (;@1;)
          end
          local.get 3
          local.get 5
          i32.const 1049000
          call $_ZN4core5slice5index22slice_index_order_fail17he388d03b2828b4ebE
          unreachable
        end
        local.get 5
        i32.const 64
        i32.const 1049000
        call $_ZN4core5slice5index24slice_end_index_len_fail17he00053322d4d7aa4E
        unreachable
      end
      local.get 3
      i32.const 64
      i32.const 1049016
      call $_ZN4core5slice5index26slice_start_index_len_fail17hfdb57cc8dc82f9cbE
      unreachable
    end
    local.get 2
    i32.const 63
    i32.and
    local.set 3
    local.get 1
    local.get 2
    i32.const -64
    i32.and
    local.tee 2
    i32.add
    local.set 4
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i32.sub
      local.set 2
      loop  ;; label = @2
        local.get 5
        local.get 1
        call $_ZN3md55utils8compress17hbf8940dfc4c2e578E
        local.get 1
        i32.const 64
        i32.add
        local.set 1
        local.get 2
        i32.const 64
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 12
    i32.add
    local.get 4
    local.get 3
    call $memcpy
    drop
    local.get 0
    local.get 3
    i32.store offset=8)
  (func $_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$8finalize17hd19b84ac4c75c838E (type 2) (param i32 i32)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i64.const 0
    i64.store align=1
    local.get 0
    i32.const 8
    i32.add
    i64.const 0
    i64.store align=1
    local.get 2
    local.get 1
    i32.const 96
    call $memcpy
    local.tee 1
    i32.const 12
    i32.add
    local.set 3
    local.get 1
    i32.const 76
    i32.add
    local.set 4
    local.get 1
    i64.load
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        local.tee 2
        i32.const 64
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.const 64
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 64
        i32.const 1048952
        call $_ZN4core9panicking18panic_bounds_check17h1d84519ec46ed48cE
        unreachable
      end
      local.get 4
      local.get 3
      call $_ZN3md55utils8compress17hbf8940dfc4c2e578E
      i32.const 0
      local.set 2
      local.get 1
      i32.const 0
      i32.store offset=8
    end
    local.get 1
    i32.const 8
    i32.add
    local.tee 6
    local.get 2
    i32.add
    i32.const 4
    i32.add
    i32.const 128
    i32.store8
    local.get 1
    local.get 1
    i32.load offset=8
    local.tee 7
    i32.const 1
    i32.add
    local.tee 2
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 65
        i32.ge_u
        br_if 0 (;@2;)
        local.get 6
        local.get 2
        i32.add
        i32.const 4
        i32.add
        i32.const 0
        i32.const 63
        local.get 7
        i32.sub
        call $memset
        drop
        block  ;; label = @3
          i32.const 64
          local.get 1
          i32.load offset=8
          i32.sub
          i32.const 8
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 3
          call $_ZN3md55utils8compress17hbf8940dfc4c2e578E
          local.get 1
          i32.load offset=8
          local.tee 2
          i32.const 65
          i32.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 12
          i32.add
          i32.const 0
          local.get 2
          call $memset
          drop
        end
        local.get 1
        i32.const 68
        i32.add
        local.get 5
        i64.const 3
        i64.shl
        i64.store align=4
        local.get 4
        local.get 3
        call $_ZN3md55utils8compress17hbf8940dfc4c2e578E
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 84
        i32.add
        i64.load align=4
        i64.store align=1
        local.get 0
        local.get 1
        i64.load offset=76 align=4
        i64.store align=1
        local.get 1
        i32.const 96
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.const 64
      i32.const 1048968
      call $_ZN4core5slice5index26slice_start_index_len_fail17hfdb57cc8dc82f9cbE
      unreachable
    end
    local.get 2
    i32.const 64
    i32.const 1048984
    call $_ZN4core5slice5index24slice_end_index_len_fail17he00053322d4d7aa4E
    unreachable)
  (func $_ZN95_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde..ser..Serializer$GT$13serialize_str17ha208b0c3deecac07E.llvm.13022772514671157473 (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      local.tee 4
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 5
      i32.load
      local.tee 0
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.const 1
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
      local.get 5
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    i32.const 34
    i32.store8
    local.get 5
    local.get 5
    i32.load
    i32.const 1
    i32.add
    local.tee 6
    i32.store
    local.get 1
    i32.const -1
    i32.add
    local.set 7
    local.get 2
    i32.const -1
    i32.xor
    local.set 8
    local.get 1
    local.get 2
    i32.add
    local.set 9
    i32.const 0
    local.set 10
    local.get 1
    local.set 11
    i32.const 0
    local.set 12
    loop  ;; label = @1
      i32.const 0
      local.set 0
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 11
                  local.get 0
                  i32.add
                  local.tee 13
                  local.get 9
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 12
                  local.get 2
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 12
                  i32.eqz
                  br_if 2 (;@5;)
                  block  ;; label = @8
                    local.get 12
                    local.get 2
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 1
                    local.get 12
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    br_if 3 (;@5;)
                  end
                  local.get 1
                  local.get 2
                  local.get 12
                  local.get 2
                  i32.const 1049188
                  call $_ZN4core3str16slice_error_fail17h0f2453c2264eb1f1E
                  unreachable
                end
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                local.get 13
                i32.load8_u
                local.tee 14
                i32.const 1049972
                i32.add
                i32.load8_u
                local.tee 13
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 10
              local.get 0
              i32.add
              local.tee 15
              i32.const -1
              i32.add
              local.tee 16
              local.get 12
              i32.le_u
              br_if 3 (;@2;)
              block  ;; label = @6
                local.get 12
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 12
                  local.get 2
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 12
                  local.get 2
                  i32.eq
                  br_if 1 (;@6;)
                  br 4 (;@3;)
                end
                local.get 1
                local.get 12
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 3 (;@3;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 16
                  local.get 2
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.set 16
                  local.get 8
                  local.get 10
                  i32.add
                  local.get 0
                  i32.add
                  br_if 4 (;@3;)
                  br 1 (;@6;)
                end
                local.get 7
                local.get 10
                i32.add
                local.get 0
                i32.add
                i32.load8_s
                i32.const -65
                i32.le_s
                br_if 3 (;@3;)
              end
              local.get 1
              local.get 12
              i32.add
              local.set 17
              block  ;; label = @6
                local.get 4
                i32.load
                local.get 6
                i32.sub
                local.get 10
                local.get 12
                i32.sub
                local.tee 10
                local.get 0
                i32.add
                i32.const -1
                i32.add
                local.tee 12
                i32.ge_u
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                local.get 12
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
                local.get 5
                i32.load
                local.set 6
              end
              local.get 3
              i32.load
              local.get 6
              i32.add
              local.get 17
              local.get 12
              call $memcpy
              drop
              local.get 5
              local.get 10
              local.get 5
              i32.load
              i32.add
              local.get 0
              i32.add
              i32.const -1
              i32.add
              local.tee 6
              i32.store
              br 3 (;@2;)
            end
            local.get 1
            local.get 12
            i32.add
            local.set 13
            block  ;; label = @5
              local.get 3
              i32.const 4
              i32.add
              i32.load
              local.get 6
              i32.sub
              local.get 2
              local.get 12
              i32.sub
              local.tee 0
              i32.ge_u
              br_if 0 (;@5;)
              local.get 3
              local.get 6
              local.get 0
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
              local.get 3
              i32.const 8
              i32.add
              i32.load
              local.set 6
            end
            local.get 3
            i32.load
            local.get 6
            i32.add
            local.get 13
            local.get 0
            call $memcpy
            drop
            local.get 3
            i32.const 8
            i32.add
            local.tee 13
            local.get 13
            i32.load
            local.get 0
            i32.add
            local.tee 6
            i32.store
          end
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.add
            i32.load
            local.get 6
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.get 6
            i32.const 1
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
            local.get 3
            i32.const 8
            i32.add
            i32.load
            local.set 6
          end
          local.get 3
          i32.load
          local.get 6
          i32.add
          i32.const 34
          i32.store8
          local.get 3
          i32.const 8
          i32.add
          local.tee 0
          local.get 0
          i32.load
          i32.const 1
          i32.add
          i32.store
          i32.const 0
          return
        end
        local.get 1
        local.get 2
        local.get 12
        local.get 10
        local.get 0
        i32.add
        i32.const -1
        i32.add
        i32.const 1049172
        call $_ZN4core3str16slice_error_fail17h0f2453c2264eb1f1E
        unreachable
      end
      i32.const 1049214
      local.set 12
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 13
                          i32.const -92
                          i32.add
                          br_table 7 (;@4;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 6 (;@5;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 1 (;@10;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 2 (;@9;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 3 (;@8;) 9 (;@2;) 4 (;@7;) 5 (;@6;) 0 (;@11;)
                        end
                        local.get 13
                        i32.const 34
                        i32.ne
                        br_if 8 (;@2;)
                        i32.const 1049216
                        local.set 12
                        br 6 (;@4;)
                      end
                      i32.const 1049210
                      local.set 12
                      br 5 (;@4;)
                    end
                    i32.const 1049208
                    local.set 12
                    br 4 (;@4;)
                  end
                  i32.const 1049206
                  local.set 12
                  br 3 (;@4;)
                end
                i32.const 1049204
                local.set 12
                br 2 (;@4;)
              end
              local.get 14
              i32.const 15
              i32.and
              i32.const 1049956
              i32.add
              i32.load8_u
              local.set 12
              local.get 14
              i32.const 4
              i32.shr_u
              i32.const 1049956
              i32.add
              i32.load8_u
              local.set 14
              block  ;; label = @6
                local.get 4
                i32.load
                local.get 6
                i32.sub
                i32.const 5
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                i32.const 6
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
                local.get 5
                i32.load
                local.set 6
              end
              local.get 3
              i32.load
              local.get 6
              i32.add
              local.tee 13
              local.get 12
              i32.store8 offset=5
              local.get 13
              local.get 14
              i32.store8 offset=4
              local.get 13
              i32.const 808482140
              i32.store align=1
              i32.const 6
              local.set 13
              br 2 (;@3;)
            end
            i32.const 1049212
            local.set 12
          end
          block  ;; label = @4
            local.get 4
            i32.load
            local.get 6
            i32.sub
            i32.const 1
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            local.get 6
            i32.const 2
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28121fe2e04fd170E
            local.get 5
            i32.load
            local.set 6
          end
          local.get 3
          i32.load
          local.get 6
          i32.add
          local.get 12
          i32.load16_u align=1
          i32.store16 align=1
          i32.const 2
          local.set 13
        end
        local.get 11
        local.get 0
        i32.add
        local.set 11
        local.get 5
        local.get 5
        i32.load
        local.get 13
        i32.add
        local.tee 6
        i32.store
        local.get 16
        i32.const 1
        i32.add
        local.set 12
        local.get 15
        local.set 10
        br 1 (;@1;)
      end
    end
    i32.const 1049032
    i32.const 40
    i32.const 1049156
    call $_ZN4core9panicking5panic17hceae0c79b0247f98E
    unreachable)
  (func $__rust_alloc (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    call $__rdl_alloc
    local.set 2
    local.get 2
    return)
  (func $__rust_dealloc (type 5) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc
    local.set 4
    local.get 4
    return)
  (func $__rust_alloc_error_handler (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $__rg_oom
    return)
  (func $_ZN4core3fmt5Write9write_fmt17hd7957869af5b4f91E (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1049220
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17hb363a5cc37db74afE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3ptr54drop_in_place$LT$$RF$mut$u20$alloc..string..String$GT$17h49df79e12a85d052E (type 0) (param i32))
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4857cf2da1f41df4E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.const 1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h142d4b7cc3a14bdeE
          local.get 0
          i32.load offset=8
          local.set 3
        end
        local.get 0
        i32.load
        local.get 3
        i32.add
        local.get 1
        i32.store8
        local.get 0
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@2;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get 2
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 4
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
      end
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.get 0
        i32.const 8
        i32.add
        local.tee 3
        i32.load
        local.tee 4
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        local.get 1
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h142d4b7cc3a14bdeE
        local.get 3
        i32.load
        local.set 4
      end
      local.get 0
      i32.load
      local.get 4
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
      local.get 3
      local.get 3
      i32.load
      local.get 1
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h77392364fd5114f8E (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1049220
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17hb363a5cc37db74afE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h82f10565ef6bfd7aE (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 4
      i32.add
      i32.load
      local.get 0
      i32.const 8
      i32.add
      local.tee 3
      i32.load
      local.tee 4
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 4
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h142d4b7cc3a14bdeE
      local.get 3
      i32.load
      local.set 4
    end
    local.get 0
    i32.load
    local.get 4
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 3
    local.get 3
    i32.load
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h0565fabb4f667d41E.llvm.8830830793381635981 (type 0) (param i32))
  (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h933b0833ab6449caE.llvm.8830830793381635981 (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h667b172896ba5eafE (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.get 1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17hc53e3be06b94b8dbE)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17heb39c38eb75e5f9dE.llvm.8830830793381635981 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.const 1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h142d4b7cc3a14bdeE
          local.get 0
          i32.load offset=8
          local.set 3
        end
        local.get 0
        i32.load
        local.get 3
        i32.add
        local.get 1
        i32.store8
        local.get 0
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@2;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get 2
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 4
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
      end
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.get 0
        i32.const 8
        i32.add
        local.tee 3
        i32.load
        local.tee 4
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        local.get 1
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h142d4b7cc3a14bdeE
        local.get 3
        i32.load
        local.set 4
      end
      local.get 0
      i32.load
      local.get 4
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
      local.get 3
      local.get 3
      i32.load
      local.get 1
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h642c18f01b1837c1E.llvm.8830830793381635981 (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.get 0
      i32.const 8
      i32.add
      local.tee 3
      i32.load
      local.tee 4
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 4
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h142d4b7cc3a14bdeE
      local.get 3
      i32.load
      local.set 4
    end
    local.get 0
    i32.load
    local.get 4
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 3
    local.get 3
    i32.load
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN67_$LT$serde_json..error..ErrorCode$u20$as$u20$core..fmt..Display$GT$3fmt17h3d29ccb0e41cf0e1E (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 0
                                                i32.load
                                                br_table 0 (;@22;) 1 (;@21;) 2 (;@20;) 3 (;@19;) 4 (;@18;) 5 (;@17;) 6 (;@16;) 7 (;@15;) 8 (;@14;) 9 (;@13;) 10 (;@12;) 11 (;@11;) 12 (;@10;) 13 (;@9;) 14 (;@8;) 15 (;@7;) 16 (;@6;) 17 (;@5;) 18 (;@4;) 19 (;@3;) 20 (;@2;) 21 (;@1;) 0 (;@22;)
                                              end
                                              local.get 1
                                              local.get 0
                                              i32.load offset=4
                                              local.get 0
                                              i32.const 8
                                              i32.add
                                              i32.load
                                              call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                                              return
                                            end
                                            local.get 0
                                            i32.const 4
                                            i32.add
                                            local.get 1
                                            call $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3d2d7d46abd0cb82E
                                            return
                                          end
                                          local.get 1
                                          i32.const 1049872
                                          i32.const 24
                                          call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                                          return
                                        end
                                        local.get 1
                                        i32.const 1049845
                                        i32.const 27
                                        call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                                        return
                                      end
                                      local.get 1
                                      i32.const 1049819
                                      i32.const 26
                                      call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                                      return
                                    end
                                    local.get 1
                                    i32.const 1049794
                                    i32.const 25
                                    call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                                    return
                                  end
                                  local.get 1
                                  i32.const 1049782
                                  i32.const 12
                                  call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                                  return
                                end
                                local.get 1
                                i32.const 1049763
                                i32.const 19
                                call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                                return
                              end
                              local.get 1
                              i32.const 1049744
                              i32.const 19
                              call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                              return
                            end
                            local.get 1
                            i32.const 1049730
                            i32.const 14
                            call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                            return
                          end
                          local.get 1
                          i32.const 1049716
                          i32.const 14
                          call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                          return
                        end
                        local.get 1
                        i32.const 1049702
                        i32.const 14
                        call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                        return
                      end
                      local.get 1
                      i32.const 1049688
                      i32.const 14
                      call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                      return
                    end
                    local.get 1
                    i32.const 1049669
                    i32.const 19
                    call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                    return
                  end
                  local.get 1
                  i32.const 1049643
                  i32.const 26
                  call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                  return
                end
                local.get 1
                i32.const 1049581
                i32.const 62
                call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
                return
              end
              local.get 1
              i32.const 1049561
              i32.const 20
              call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
              return
            end
            local.get 1
            i32.const 1049525
            i32.const 36
            call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
            return
          end
          local.get 1
          i32.const 1049511
          i32.const 14
          call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
          return
        end
        local.get 1
        i32.const 1049492
        i32.const 19
        call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
        return
      end
      local.get 1
      i32.const 1049464
      i32.const 28
      call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E
      return
    end
    local.get 1
    i32.const 1049440
    i32.const 24
    call $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E)
  (func $_ZN61_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h45431cd82259ef7aE (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=60 align=4
    local.get 2
    i32.const 0
    i32.load offset=1049432
    i32.store offset=56
    local.get 0
    i32.load
    local.set 0
    local.get 2
    i32.const 72
    i32.add
    local.get 2
    i32.const 56
    i32.add
    i32.const 1049244
    call $_ZN4core3fmt9Formatter3new17habe79b232356982dE
    block  ;; label = @1
      local.get 0
      local.get 2
      i32.const 72
      i32.add
      call $_ZN67_$LT$serde_json..error..ErrorCode$u20$as$u20$core..fmt..Display$GT$3fmt17h3d29ccb0e41cf0e1E
      br_if 0 (;@1;)
      local.get 2
      i32.const 32
      i32.add
      i32.const 20
      i32.add
      i32.const 14
      i32.store
      local.get 2
      i32.const 32
      i32.add
      i32.const 12
      i32.add
      i32.const 14
      i32.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get 2
      i32.const 15
      i32.store offset=36
      local.get 2
      i64.const 4
      i64.store offset=12 align=4
      local.get 2
      i32.const 1049924
      i32.store offset=8
      local.get 2
      local.get 0
      i32.const 16
      i32.add
      i32.store offset=48
      local.get 2
      local.get 0
      i32.const 12
      i32.add
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 56
      i32.add
      i32.store offset=32
      local.get 2
      local.get 2
      i32.const 32
      i32.add
      i32.store offset=24
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt9Formatter9write_fmt17h17510bd5fa687d11E
      local.set 0
      block  ;; label = @2
        local.get 2
        i32.load offset=60
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=56
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      local.get 2
      i32.const 112
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    i32.const 1049268
    i32.const 55
    local.get 2
    i32.const 32
    i32.add
    i32.const 1049416
    i32.const 1049400
    call $_ZN4core6result13unwrap_failed17h694db13a45aa6740E
    unreachable)
  (func $_ZN5alloc7raw_vec11finish_grow17h5323d616619f29b1E.llvm.14628612076018582588 (type 4) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 1
                      local.set 4
                      local.get 1
                      i32.const 0
                      i32.lt_s
                      br_if 1 (;@8;)
                      local.get 3
                      i32.load
                      local.tee 5
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=4
                      local.tee 3
                      br_if 4 (;@5;)
                      local.get 1
                      i32.eqz
                      br_if 3 (;@6;)
                      br 5 (;@4;)
                    end
                    local.get 0
                    local.get 1
                    i32.store offset=4
                    i32.const 1
                    local.set 4
                  end
                  i32.const 0
                  local.set 1
                  br 6 (;@1;)
                end
                local.get 1
                br_if 2 (;@4;)
              end
              local.get 2
              local.set 3
              br 2 (;@3;)
            end
            local.get 5
            local.get 3
            local.get 2
            local.get 1
            call $__rust_realloc
            local.tee 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 1
          local.get 2
          call $__rust_alloc
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 3
        i32.store offset=4
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 2
      local.set 1
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.store)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h142d4b7cc3a14bdeE (type 5) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.const 1
      i32.shl
      local.tee 4
      local.get 2
      local.get 4
      local.get 2
      i32.gt_u
      select
      local.tee 2
      i32.const 8
      local.get 2
      i32.const 8
      i32.gt_u
      select
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.const 1
          i32.store
          local.get 3
          local.get 1
          i32.store offset=20
          local.get 3
          local.get 0
          i32.load
          i32.store offset=16
          br 1 (;@2;)
        end
        local.get 3
        i32.const 0
        i32.store offset=16
      end
      local.get 3
      local.get 2
      i32.const 1
      local.get 3
      i32.const 16
      i32.add
      call $_ZN5alloc7raw_vec11finish_grow17h5323d616619f29b1E.llvm.14628612076018582588
      block  ;; label = @2
        local.get 3
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=4
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
        unreachable
      end
      local.get 0
      local.get 3
      i64.load offset=4 align=4
      i64.store align=4
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h56c8d20d9eefc93dE
    unreachable)
  (func $_ZN51_$LT$md5..Md5$u20$as$u20$core..default..Default$GT$7default17hd34bc9157fd9099bE (type 0) (param i32)
    local.get 0
    i32.const 0
    i32.const 76
    call $memset
    local.tee 0
    i32.const 84
    i32.add
    i32.const 0
    i64.load offset=1050236 align=4
    i64.store align=4
    local.get 0
    i32.const 0
    i64.load offset=1050228 align=4
    i64.store offset=76 align=4)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbfbca4fb35e9bd6dE (type 8) (param i32) (result i64)
    i64.const 9147559743429524724)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hef2b492c5a1991f7E (type 8) (param i32) (result i64)
    i64.const -304500839653225287)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcabc397230f18c07E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h86821b8cd9767c9cE)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h4924ead02e4b7940E (type 5) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.const 1
      i32.shl
      local.tee 4
      local.get 2
      local.get 4
      local.get 2
      i32.gt_u
      select
      local.tee 2
      i32.const 8
      local.get 2
      i32.const 8
      i32.gt_u
      select
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.const 1
          i32.store
          local.get 3
          local.get 1
          i32.store offset=20
          local.get 3
          local.get 0
          i32.load
          i32.store offset=16
          br 1 (;@2;)
        end
        local.get 3
        i32.const 0
        i32.store offset=16
      end
      local.get 3
      local.get 2
      i32.const 1
      local.get 3
      i32.const 16
      i32.add
      call $_ZN5alloc7raw_vec11finish_grow17h3f2745a59523b24fE
      block  ;; label = @2
        local.get 3
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=4
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
        unreachable
      end
      local.get 0
      local.get 3
      i64.load offset=4 align=4
      i64.store align=4
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h56c8d20d9eefc93dE
    unreachable)
  (func $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbb05f427c3faacacE (type 0) (param i32))
  (func $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$GT$17h4523db22d8196732E (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17hd9ab65052492b52aE (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h25bb243e5fdcf654E (type 9) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1050268
      i32.const 43
      i32.const 1051160
      call $_ZN4core9panicking5panic17hceae0c79b0247f98E
      unreachable
    end
    local.get 0)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hccc5d45ca79a283dE (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1050268
      i32.const 43
      local.get 1
      call $_ZN4core9panicking5panic17hceae0c79b0247f98E
      unreachable
    end
    local.get 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h9f0e7629dba1bc1eE (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.const 1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h4924ead02e4b7940E
          local.get 0
          i32.load offset=8
          local.set 3
        end
        local.get 0
        local.get 3
        i32.const 1
        i32.add
        i32.store offset=8
        local.get 0
        i32.load
        local.get 3
        i32.add
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 4
            local.set 1
            br 2 (;@2;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 3
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
      end
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.get 0
        i32.const 8
        i32.add
        local.tee 4
        i32.load
        local.tee 3
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        local.get 1
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h4924ead02e4b7940E
        local.get 4
        i32.load
        local.set 3
      end
      local.get 0
      i32.load
      local.get 3
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
      local.get 4
      local.get 3
      local.get 1
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4e63be9707973d51E (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1050244
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17hb363a5cc37db74afE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hbb9d609fa6ca2265E (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 0
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h4924ead02e4b7940E
      local.get 4
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 4
    local.get 0
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN5alloc7raw_vec11finish_grow17h3f2745a59523b24fE (type 4) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 4
                  local.get 1
                  i32.const 0
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 3
                  i32.load
                  local.tee 5
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 3
                  i32.load offset=4
                  local.tee 3
                  br_if 2 (;@5;)
                  local.get 1
                  br_if 4 (;@3;)
                  local.get 2
                  local.set 3
                  br 5 (;@2;)
                end
                local.get 0
                local.get 1
                i32.store offset=4
                i32.const 1
                local.set 4
              end
              i32.const 0
              local.set 1
              br 4 (;@1;)
            end
            local.get 5
            local.get 3
            local.get 2
            local.get 1
            call $__rust_realloc
            local.set 3
            br 2 (;@2;)
          end
          local.get 1
          br_if 0 (;@3;)
          local.get 2
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.get 2
        call $__rust_alloc
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.store offset=4
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 2
      local.set 1
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.store)
  (func $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h40c0b34608758a87E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h86821b8cd9767c9cE)
  (func $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hbd2b2a561e0ef670E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 9
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
              local.get 1
              i32.gt_u
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17heeb693c723d77fa0E
            local.set 2
            br 2 (;@2;)
          end
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 1
        end
        i32.const 0
        local.set 2
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
        local.set 3
        local.get 3
        local.get 3
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        i32.add
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        i32.add
        i32.sub
        i32.const -65544
        i32.add
        i32.const -9
        i32.and
        i32.const -3
        i32.add
        local.tee 3
        i32.const 0
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        i32.const 2
        i32.shl
        i32.sub
        local.tee 4
        local.get 4
        local.get 3
        i32.gt_u
        select
        local.get 1
        i32.sub
        local.get 0
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 16
        local.get 0
        i32.const 4
        i32.add
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.tee 4
        i32.add
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        i32.add
        i32.const -4
        i32.add
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17heeb693c723d77fa0E
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hee6c19b2ff028b5cE
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 2
            local.get 3
            i32.and
            br_if 0 (;@4;)
            local.get 0
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.add
          i32.const 0
          local.get 1
          i32.sub
          i32.and
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hee6c19b2ff028b5cE
          local.set 2
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
          local.get 2
          i32.const 0
          local.get 1
          local.get 2
          local.get 0
          i32.sub
          local.get 3
          i32.gt_u
          select
          i32.add
          local.tee 1
          local.get 0
          i32.sub
          local.tee 2
          i32.sub
          local.set 3
          block  ;; label = @4
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h433d048e993b396eE
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
            local.get 0
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
            local.get 0
            local.get 2
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h3ee811b32e33ddb4E
            br 1 (;@3;)
          end
          local.get 0
          i32.load
          local.set 0
          local.get 1
          local.get 3
          i32.store offset=4
          local.get 1
          local.get 0
          local.get 2
          i32.add
          i32.store
        end
        local.get 1
        call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h433d048e993b396eE
        br_if 1 (;@1;)
        local.get 1
        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
        local.tee 0
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.get 4
        i32.add
        i32.le_u
        br_if 1 (;@1;)
        local.get 1
        local.get 4
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
        local.set 2
        local.get 1
        local.get 4
        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
        local.get 2
        local.get 0
        local.get 4
        i32.sub
        local.tee 0
        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
        local.get 2
        local.get 0
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h3ee811b32e33ddb4E
        br 1 (;@1;)
      end
      local.get 2
      return
    end
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
    local.set 0
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h433d048e993b396eE
    drop
    local.get 0)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17heeb693c723d77fa0E (type 9) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 245
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
          local.set 3
          local.get 3
          local.get 3
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.add
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 3
          i32.const 0
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.const 2
          i32.shl
          i32.sub
          local.tee 4
          local.get 4
          local.get 3
          i32.gt_u
          select
          local.get 0
          i32.le_u
          br_if 2 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 3
          i32.const 0
          i32.load offset=1054592
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          local.set 5
          block  ;; label = @4
            local.get 3
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 31
            local.set 5
            local.get 3
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 6
            local.get 3
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 0
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 0
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 5
          end
          i32.const 0
          local.get 3
          i32.sub
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 2
                i32.shl
                i32.const 1054860
                i32.add
                i32.load
                local.tee 0
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                local.get 5
                call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h62dacf28ccbe01beE
                i32.shl
                local.set 6
                i32.const 0
                local.set 7
                i32.const 0
                local.set 4
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
                    call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
                    local.tee 8
                    local.get 3
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 3
                    i32.sub
                    local.tee 8
                    local.get 2
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 8
                    local.set 2
                    local.get 0
                    local.set 4
                    local.get 8
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 2
                    local.get 0
                    local.set 4
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  local.tee 8
                  local.get 7
                  local.get 8
                  local.get 0
                  local.get 6
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  i32.load
                  local.tee 0
                  i32.ne
                  select
                  local.get 7
                  local.get 8
                  select
                  local.set 7
                  local.get 6
                  i32.const 1
                  i32.shl
                  local.set 6
                  local.get 0
                  br_if 0 (;@7;)
                end
                block  ;; label = @7
                  local.get 7
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  local.set 0
                  br 2 (;@5;)
                end
                local.get 4
                br_if 2 (;@4;)
              end
              i32.const 0
              local.set 4
              i32.const 1
              local.get 5
              i32.shl
              call $_ZN8dlmalloc8dlmalloc9left_bits17hfbf3138e75a56fe9E
              i32.const 0
              i32.load offset=1054592
              i32.and
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              call $_ZN8dlmalloc8dlmalloc9least_bit17hf1ac7fbb0c9afcf6E
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1054860
              i32.add
              i32.load
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
            end
            loop  ;; label = @5
              local.get 0
              local.get 4
              local.get 0
              call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
              local.tee 7
              local.get 3
              i32.ge_u
              local.get 7
              local.get 3
              i32.sub
              local.tee 7
              local.get 2
              i32.lt_u
              i32.and
              local.tee 6
              select
              local.set 4
              local.get 7
              local.get 2
              local.get 6
              select
              local.set 2
              local.get 0
              call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17h48f2502fcdcfa0a2E
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 4
            i32.eqz
            br_if 2 (;@2;)
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1054988
            local.tee 0
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 0
            local.get 3
            i32.sub
            i32.ge_u
            br_if 2 (;@2;)
          end
          local.get 4
          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
          local.tee 0
          local.get 3
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
          local.set 7
          local.get 4
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hb3cda7ee1be519b8E
              local.get 7
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
              block  ;; label = @6
                local.get 2
                i32.const 256
                i32.lt_u
                br_if 0 (;@6;)
                local.get 7
                local.get 2
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2d7ab4cd21b9b1e8E
                br 2 (;@4;)
              end
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 4
              i32.const 3
              i32.shl
              i32.const 1054596
              i32.add
              local.set 2
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1054588
                  local.tee 6
                  i32.const 1
                  local.get 4
                  i32.shl
                  local.tee 4
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=8
                  local.set 4
                  br 1 (;@6;)
                end
                i32.const 0
                local.get 6
                local.get 4
                i32.or
                i32.store offset=1054588
                local.get 2
                local.set 4
              end
              local.get 2
              local.get 7
              i32.store offset=8
              local.get 4
              local.get 7
              i32.store offset=12
              local.get 7
              local.get 2
              i32.store offset=12
              local.get 7
              local.get 4
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            local.get 2
            local.get 3
            i32.add
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h75c2f837cb762f26E
          end
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 16
        local.get 0
        i32.const 4
        i32.add
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1054588
                      local.tee 7
                      local.get 3
                      i32.const 3
                      i32.shr_u
                      local.tee 2
                      i32.shr_u
                      local.tee 0
                      i32.const 3
                      i32.and
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 0
                      i32.load offset=1054988
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 0
                      br_if 1 (;@8;)
                      i32.const 0
                      i32.load offset=1054592
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc9least_bit17hf1ac7fbb0c9afcf6E
                      i32.ctz
                      i32.const 2
                      i32.shl
                      i32.const 1054860
                      i32.add
                      i32.load
                      local.tee 4
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
                      call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
                      local.get 3
                      i32.sub
                      local.set 2
                      block  ;; label = @10
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17h48f2502fcdcfa0a2E
                        local.tee 0
                        i32.eqz
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
                          local.get 3
                          i32.sub
                          local.tee 7
                          local.get 2
                          local.get 7
                          local.get 2
                          i32.lt_u
                          local.tee 7
                          select
                          local.set 2
                          local.get 0
                          local.get 4
                          local.get 7
                          select
                          local.set 4
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17h48f2502fcdcfa0a2E
                          local.tee 0
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
                      local.tee 0
                      local.get 3
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                      local.set 7
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E
                      local.get 2
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      i32.lt_u
                      br_if 5 (;@4;)
                      local.get 7
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
                      local.set 7
                      local.get 0
                      local.get 3
                      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hb3cda7ee1be519b8E
                      local.get 7
                      local.get 2
                      call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
                      i32.const 0
                      i32.load offset=1054988
                      local.tee 4
                      i32.eqz
                      br_if 4 (;@5;)
                      local.get 4
                      i32.const 3
                      i32.shr_u
                      local.tee 8
                      i32.const 3
                      i32.shl
                      i32.const 1054596
                      i32.add
                      local.set 6
                      i32.const 0
                      i32.load offset=1054996
                      local.set 4
                      i32.const 0
                      i32.load offset=1054588
                      local.tee 5
                      i32.const 1
                      local.get 8
                      i32.shl
                      local.tee 8
                      i32.and
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 6
                      i32.load offset=8
                      local.set 8
                      br 3 (;@6;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.const -1
                        i32.xor
                        i32.const 1
                        i32.and
                        local.get 2
                        i32.add
                        local.tee 3
                        i32.const 3
                        i32.shl
                        local.tee 4
                        i32.const 1054604
                        i32.add
                        i32.load
                        local.tee 0
                        i32.const 8
                        i32.add
                        i32.load
                        local.tee 2
                        local.get 4
                        i32.const 1054596
                        i32.add
                        local.tee 4
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 2
                        local.get 4
                        i32.store offset=12
                        local.get 4
                        local.get 2
                        i32.store offset=8
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.get 7
                      i32.const -2
                      local.get 3
                      i32.rotl
                      i32.and
                      i32.store offset=1054588
                    end
                    local.get 0
                    local.get 3
                    i32.const 3
                    i32.shl
                    call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h75c2f837cb762f26E
                    local.get 0
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                    local.set 2
                    br 7 (;@1;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 1
                      local.get 2
                      i32.const 31
                      i32.and
                      local.tee 2
                      i32.shl
                      call $_ZN8dlmalloc8dlmalloc9left_bits17hfbf3138e75a56fe9E
                      local.get 0
                      local.get 2
                      i32.shl
                      i32.and
                      call $_ZN8dlmalloc8dlmalloc9least_bit17hf1ac7fbb0c9afcf6E
                      i32.ctz
                      local.tee 2
                      i32.const 3
                      i32.shl
                      local.tee 7
                      i32.const 1054604
                      i32.add
                      i32.load
                      local.tee 0
                      i32.const 8
                      i32.add
                      i32.load
                      local.tee 4
                      local.get 7
                      i32.const 1054596
                      i32.add
                      local.tee 7
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 7
                      i32.store offset=12
                      local.get 7
                      local.get 4
                      i32.store offset=8
                      br 1 (;@8;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1054588
                    i32.const -2
                    local.get 2
                    i32.rotl
                    i32.and
                    i32.store offset=1054588
                  end
                  local.get 0
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hb3cda7ee1be519b8E
                  local.get 0
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                  local.tee 4
                  local.get 2
                  i32.const 3
                  i32.shl
                  local.get 3
                  i32.sub
                  local.tee 7
                  call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1054988
                    local.tee 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 3
                    i32.shr_u
                    local.tee 6
                    i32.const 3
                    i32.shl
                    i32.const 1054596
                    i32.add
                    local.set 2
                    i32.const 0
                    i32.load offset=1054996
                    local.set 3
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1054588
                        local.tee 8
                        i32.const 1
                        local.get 6
                        i32.shl
                        local.tee 6
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 2
                        i32.load offset=8
                        local.set 6
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.get 8
                      local.get 6
                      i32.or
                      i32.store offset=1054588
                      local.get 2
                      local.set 6
                    end
                    local.get 2
                    local.get 3
                    i32.store offset=8
                    local.get 6
                    local.get 3
                    i32.store offset=12
                    local.get 3
                    local.get 2
                    i32.store offset=12
                    local.get 3
                    local.get 6
                    i32.store offset=8
                  end
                  i32.const 0
                  local.get 4
                  i32.store offset=1054996
                  i32.const 0
                  local.get 7
                  i32.store offset=1054988
                  local.get 0
                  call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                  local.set 2
                  br 6 (;@1;)
                end
                i32.const 0
                local.get 5
                local.get 8
                i32.or
                i32.store offset=1054588
                local.get 6
                local.set 8
              end
              local.get 6
              local.get 4
              i32.store offset=8
              local.get 8
              local.get 4
              i32.store offset=12
              local.get 4
              local.get 6
              i32.store offset=12
              local.get 4
              local.get 8
              i32.store offset=8
            end
            i32.const 0
            local.get 7
            i32.store offset=1054996
            i32.const 0
            local.get 2
            i32.store offset=1054988
            br 1 (;@3;)
          end
          local.get 0
          local.get 2
          local.get 3
          i32.add
          call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h75c2f837cb762f26E
        end
        local.get 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
        local.tee 2
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1054988
                            local.tee 2
                            local.get 3
                            i32.ge_u
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1054992
                            local.tee 0
                            local.get 3
                            i32.gt_u
                            br_if 4 (;@8;)
                            i32.const 0
                            local.set 2
                            local.get 1
                            i32.const 1054588
                            local.get 3
                            i32.const 0
                            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                            local.tee 0
                            i32.sub
                            local.get 0
                            i32.const 8
                            call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                            i32.add
                            i32.const 20
                            i32.const 8
                            call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                            i32.add
                            i32.const 16
                            i32.const 8
                            call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                            i32.add
                            i32.const 8
                            i32.add
                            i32.const 65536
                            call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17heece4aba06c14827E
                            local.get 1
                            i32.load
                            local.tee 6
                            i32.eqz
                            br_if 11 (;@1;)
                            local.get 1
                            i32.load offset=8
                            local.set 9
                            i32.const 0
                            i32.const 0
                            i32.load offset=1055004
                            local.get 1
                            i32.load offset=4
                            local.tee 8
                            i32.add
                            local.tee 0
                            i32.store offset=1055004
                            i32.const 0
                            i32.const 0
                            i32.load offset=1055008
                            local.tee 2
                            local.get 0
                            local.get 2
                            local.get 0
                            i32.gt_u
                            select
                            i32.store offset=1055008
                            i32.const 0
                            i32.load offset=1055000
                            i32.eqz
                            br_if 1 (;@11;)
                            i32.const 1055012
                            local.set 0
                            loop  ;; label = @13
                              local.get 6
                              local.get 0
                              call $_ZN8dlmalloc8dlmalloc7Segment3top17h7ba4cb35b2ab78b3E
                              i32.eq
                              br_if 3 (;@10;)
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 0 (;@13;)
                              br 4 (;@9;)
                            end
                          end
                          i32.const 0
                          i32.load offset=1054996
                          local.set 0
                          block  ;; label = @12
                            local.get 2
                            local.get 3
                            i32.sub
                            local.tee 2
                            i32.const 16
                            i32.const 8
                            call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                            i32.ge_u
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.const 0
                            i32.store offset=1054996
                            i32.const 0
                            i32.load offset=1054988
                            local.set 3
                            i32.const 0
                            i32.const 0
                            i32.store offset=1054988
                            local.get 0
                            local.get 3
                            call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h75c2f837cb762f26E
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                            local.set 2
                            br 11 (;@1;)
                          end
                          local.get 0
                          local.get 3
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                          local.set 4
                          i32.const 0
                          local.get 2
                          i32.store offset=1054988
                          i32.const 0
                          local.get 4
                          i32.store offset=1054996
                          local.get 4
                          local.get 2
                          call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
                          local.get 0
                          local.get 3
                          call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hb3cda7ee1be519b8E
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                          local.set 2
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load offset=1055032
                        local.tee 0
                        i32.eqz
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 0
                        i32.lt_u
                        br_if 3 (;@7;)
                        br 7 (;@3;)
                      end
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hcb93322195efbcceE
                      br_if 0 (;@9;)
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17hba09df10f4d19d6eE
                      local.get 9
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 0
                      i32.load offset=1055000
                      call $_ZN8dlmalloc8dlmalloc7Segment5holds17h07422241f50b6662E
                      br_if 3 (;@6;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1055032
                    local.tee 0
                    local.get 6
                    local.get 6
                    local.get 0
                    i32.gt_u
                    select
                    i32.store offset=1055032
                    local.get 6
                    local.get 8
                    i32.add
                    local.set 2
                    i32.const 1055012
                    local.set 0
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 0
                            i32.load
                            local.get 2
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                            br 2 (;@10;)
                          end
                        end
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hcb93322195efbcceE
                        br_if 0 (;@10;)
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17hba09df10f4d19d6eE
                        local.get 9
                        i32.eq
                        br_if 1 (;@9;)
                      end
                      i32.const 0
                      i32.load offset=1055000
                      local.set 4
                      i32.const 1055012
                      local.set 0
                      block  ;; label = @10
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc7Segment3top17h7ba4cb35b2ab78b3E
                            local.get 4
                            i32.gt_u
                            br_if 2 (;@10;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.tee 0
                          br_if 0 (;@11;)
                        end
                        i32.const 0
                        local.set 0
                      end
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc7Segment3top17h7ba4cb35b2ab78b3E
                      local.tee 7
                      i32.const 20
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      local.tee 10
                      i32.sub
                      i32.const -23
                      i32.add
                      local.set 0
                      local.get 4
                      local.get 0
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                      local.tee 2
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      local.get 2
                      i32.sub
                      i32.add
                      local.tee 0
                      local.get 0
                      local.get 4
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      i32.add
                      i32.lt_u
                      select
                      local.tee 5
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                      local.set 2
                      local.get 5
                      local.get 10
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                      local.set 0
                      i32.const 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                      local.tee 11
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      local.set 12
                      i32.const 20
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      local.set 13
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      local.set 14
                      i32.const 0
                      local.get 6
                      local.get 6
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                      local.tee 15
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      local.get 15
                      i32.sub
                      local.tee 16
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                      local.tee 15
                      i32.store offset=1055000
                      i32.const 0
                      local.get 8
                      local.get 11
                      i32.add
                      local.get 14
                      local.get 12
                      local.get 13
                      i32.add
                      i32.add
                      local.get 16
                      i32.add
                      i32.sub
                      local.tee 11
                      i32.store offset=1054992
                      local.get 15
                      local.get 11
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                      local.tee 12
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      local.set 13
                      i32.const 20
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      local.set 14
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      local.set 16
                      local.get 15
                      local.get 11
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                      local.get 16
                      local.get 14
                      local.get 13
                      local.get 12
                      i32.sub
                      i32.add
                      i32.add
                      i32.store offset=4
                      i32.const 0
                      i32.const 2097152
                      i32.store offset=1055028
                      local.get 5
                      local.get 10
                      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hb3cda7ee1be519b8E
                      i32.const 0
                      i64.load offset=1055012 align=4
                      local.set 17
                      local.get 2
                      i32.const 8
                      i32.add
                      i32.const 0
                      i64.load offset=1055020 align=4
                      i64.store align=4
                      local.get 2
                      local.get 17
                      i64.store align=4
                      i32.const 0
                      local.get 9
                      i32.store offset=1055024
                      i32.const 0
                      local.get 8
                      i32.store offset=1055016
                      i32.const 0
                      local.get 6
                      i32.store offset=1055012
                      i32.const 0
                      local.get 2
                      i32.store offset=1055020
                      loop  ;; label = @10
                        local.get 0
                        i32.const 4
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                        local.set 2
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17h8f835e0dbf36cac4E
                        i32.store offset=4
                        local.get 2
                        local.set 0
                        local.get 7
                        local.get 2
                        i32.const 4
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      local.get 5
                      local.get 4
                      i32.eq
                      br_if 7 (;@2;)
                      local.get 5
                      local.get 4
                      i32.sub
                      local.set 0
                      local.get 4
                      local.get 0
                      local.get 4
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                      call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17hde64410721cd558fE
                      block  ;; label = @10
                        local.get 0
                        i32.const 256
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2d7ab4cd21b9b1e8E
                        br 8 (;@2;)
                      end
                      local.get 0
                      i32.const 3
                      i32.shr_u
                      local.tee 2
                      i32.const 3
                      i32.shl
                      i32.const 1054596
                      i32.add
                      local.set 0
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1054588
                          local.tee 7
                          i32.const 1
                          local.get 2
                          i32.shl
                          local.tee 2
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.load offset=8
                          local.set 2
                          br 1 (;@10;)
                        end
                        i32.const 0
                        local.get 7
                        local.get 2
                        i32.or
                        i32.store offset=1054588
                        local.get 0
                        local.set 2
                      end
                      local.get 0
                      local.get 4
                      i32.store offset=8
                      local.get 2
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 0
                      i32.store offset=12
                      local.get 4
                      local.get 2
                      i32.store offset=8
                      br 7 (;@2;)
                    end
                    local.get 0
                    i32.load
                    local.set 7
                    local.get 0
                    local.get 6
                    i32.store
                    local.get 0
                    local.get 0
                    i32.load offset=4
                    local.get 8
                    i32.add
                    i32.store offset=4
                    local.get 6
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                    local.tee 0
                    i32.const 8
                    call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                    local.set 2
                    local.get 7
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                    local.tee 8
                    i32.const 8
                    call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                    local.set 5
                    local.get 6
                    local.get 2
                    local.get 0
                    i32.sub
                    i32.add
                    local.tee 2
                    local.get 3
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                    local.set 4
                    local.get 2
                    local.get 3
                    call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hb3cda7ee1be519b8E
                    local.get 7
                    local.get 5
                    local.get 8
                    i32.sub
                    i32.add
                    local.tee 0
                    local.get 3
                    local.get 2
                    i32.add
                    i32.sub
                    local.set 3
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1055000
                      local.get 0
                      i32.eq
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=1054996
                      local.get 0
                      i32.eq
                      br_if 4 (;@5;)
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h8cfc6665aae9b287E
                      br_if 5 (;@4;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
                          local.tee 7
                          i32.const 256
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 0
                          i32.const 12
                          i32.add
                          i32.load
                          local.tee 6
                          local.get 0
                          i32.const 8
                          i32.add
                          i32.load
                          local.tee 8
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 8
                          local.get 6
                          i32.store offset=12
                          local.get 6
                          local.get 8
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        i32.const 0
                        i32.const 0
                        i32.load offset=1054588
                        i32.const -2
                        local.get 7
                        i32.const 3
                        i32.shr_u
                        i32.rotl
                        i32.and
                        i32.store offset=1054588
                      end
                      local.get 7
                      local.get 3
                      i32.add
                      local.set 3
                      local.get 0
                      local.get 7
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                      local.set 0
                      br 5 (;@4;)
                    end
                    i32.const 0
                    local.get 4
                    i32.store offset=1055000
                    i32.const 0
                    i32.const 0
                    i32.load offset=1054992
                    local.get 3
                    i32.add
                    local.tee 0
                    i32.store offset=1054992
                    local.get 4
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                    local.set 2
                    br 7 (;@1;)
                  end
                  i32.const 0
                  local.get 0
                  local.get 3
                  i32.sub
                  local.tee 2
                  i32.store offset=1054992
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055000
                  local.tee 0
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                  local.tee 4
                  i32.store offset=1055000
                  local.get 4
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hb3cda7ee1be519b8E
                  local.get 0
                  call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
                  local.set 2
                  br 6 (;@1;)
                end
                i32.const 0
                local.get 6
                i32.store offset=1055032
                br 3 (;@3;)
              end
              local.get 0
              local.get 0
              i32.load offset=4
              local.get 8
              i32.add
              i32.store offset=4
              i32.const 0
              i32.load offset=1054992
              local.set 2
              i32.const 0
              i32.load offset=1055000
              local.set 0
              local.get 0
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
              local.tee 4
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
              local.get 4
              i32.sub
              local.tee 4
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
              local.set 0
              i32.const 0
              local.get 2
              local.get 8
              i32.add
              local.get 4
              i32.sub
              local.tee 2
              i32.store offset=1054992
              i32.const 0
              local.get 0
              i32.store offset=1055000
              local.get 0
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
              local.tee 4
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
              local.set 7
              i32.const 20
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
              local.set 6
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
              local.set 8
              local.get 0
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
              local.get 8
              local.get 6
              local.get 7
              local.get 4
              i32.sub
              i32.add
              i32.add
              i32.store offset=4
              i32.const 0
              i32.const 2097152
              i32.store offset=1055028
              br 3 (;@2;)
            end
            i32.const 0
            local.get 4
            i32.store offset=1054996
            i32.const 0
            i32.const 0
            i32.load offset=1054988
            local.get 3
            i32.add
            local.tee 0
            i32.store offset=1054988
            local.get 4
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
            local.set 2
            br 3 (;@1;)
          end
          local.get 4
          local.get 3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17hde64410721cd558fE
          block  ;; label = @4
            local.get 3
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 3
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2d7ab4cd21b9b1e8E
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
            local.set 2
            br 3 (;@1;)
          end
          local.get 3
          i32.const 3
          i32.shr_u
          local.tee 3
          i32.const 3
          i32.shl
          i32.const 1054596
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1054588
              local.tee 7
              i32.const 1
              local.get 3
              i32.shl
              local.tee 3
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              local.set 3
              br 1 (;@4;)
            end
            i32.const 0
            local.get 7
            local.get 3
            i32.or
            i32.store offset=1054588
            local.get 0
            local.set 3
          end
          local.get 0
          local.get 4
          i32.store offset=8
          local.get 3
          local.get 4
          i32.store offset=12
          local.get 4
          local.get 0
          i32.store offset=12
          local.get 4
          local.get 3
          i32.store offset=8
          local.get 2
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
          local.set 2
          br 2 (;@1;)
        end
        i32.const 0
        i32.const 4095
        i32.store offset=1055036
        i32.const 0
        local.get 9
        i32.store offset=1055024
        i32.const 0
        local.get 8
        i32.store offset=1055016
        i32.const 0
        local.get 6
        i32.store offset=1055012
        i32.const 0
        i32.const 1054596
        i32.store offset=1054608
        i32.const 0
        i32.const 1054604
        i32.store offset=1054616
        i32.const 0
        i32.const 1054596
        i32.store offset=1054604
        i32.const 0
        i32.const 1054612
        i32.store offset=1054624
        i32.const 0
        i32.const 1054604
        i32.store offset=1054612
        i32.const 0
        i32.const 1054620
        i32.store offset=1054632
        i32.const 0
        i32.const 1054612
        i32.store offset=1054620
        i32.const 0
        i32.const 1054628
        i32.store offset=1054640
        i32.const 0
        i32.const 1054620
        i32.store offset=1054628
        i32.const 0
        i32.const 1054636
        i32.store offset=1054648
        i32.const 0
        i32.const 1054628
        i32.store offset=1054636
        i32.const 0
        i32.const 1054644
        i32.store offset=1054656
        i32.const 0
        i32.const 1054636
        i32.store offset=1054644
        i32.const 0
        i32.const 1054652
        i32.store offset=1054664
        i32.const 0
        i32.const 1054644
        i32.store offset=1054652
        i32.const 0
        i32.const 1054660
        i32.store offset=1054672
        i32.const 0
        i32.const 1054652
        i32.store offset=1054660
        i32.const 0
        i32.const 1054660
        i32.store offset=1054668
        i32.const 0
        i32.const 1054668
        i32.store offset=1054680
        i32.const 0
        i32.const 1054668
        i32.store offset=1054676
        i32.const 0
        i32.const 1054676
        i32.store offset=1054688
        i32.const 0
        i32.const 1054676
        i32.store offset=1054684
        i32.const 0
        i32.const 1054684
        i32.store offset=1054696
        i32.const 0
        i32.const 1054684
        i32.store offset=1054692
        i32.const 0
        i32.const 1054692
        i32.store offset=1054704
        i32.const 0
        i32.const 1054692
        i32.store offset=1054700
        i32.const 0
        i32.const 1054700
        i32.store offset=1054712
        i32.const 0
        i32.const 1054700
        i32.store offset=1054708
        i32.const 0
        i32.const 1054708
        i32.store offset=1054720
        i32.const 0
        i32.const 1054708
        i32.store offset=1054716
        i32.const 0
        i32.const 1054716
        i32.store offset=1054728
        i32.const 0
        i32.const 1054716
        i32.store offset=1054724
        i32.const 0
        i32.const 1054724
        i32.store offset=1054736
        i32.const 0
        i32.const 1054732
        i32.store offset=1054744
        i32.const 0
        i32.const 1054724
        i32.store offset=1054732
        i32.const 0
        i32.const 1054740
        i32.store offset=1054752
        i32.const 0
        i32.const 1054732
        i32.store offset=1054740
        i32.const 0
        i32.const 1054748
        i32.store offset=1054760
        i32.const 0
        i32.const 1054740
        i32.store offset=1054748
        i32.const 0
        i32.const 1054756
        i32.store offset=1054768
        i32.const 0
        i32.const 1054748
        i32.store offset=1054756
        i32.const 0
        i32.const 1054764
        i32.store offset=1054776
        i32.const 0
        i32.const 1054756
        i32.store offset=1054764
        i32.const 0
        i32.const 1054772
        i32.store offset=1054784
        i32.const 0
        i32.const 1054764
        i32.store offset=1054772
        i32.const 0
        i32.const 1054780
        i32.store offset=1054792
        i32.const 0
        i32.const 1054772
        i32.store offset=1054780
        i32.const 0
        i32.const 1054788
        i32.store offset=1054800
        i32.const 0
        i32.const 1054780
        i32.store offset=1054788
        i32.const 0
        i32.const 1054796
        i32.store offset=1054808
        i32.const 0
        i32.const 1054788
        i32.store offset=1054796
        i32.const 0
        i32.const 1054804
        i32.store offset=1054816
        i32.const 0
        i32.const 1054796
        i32.store offset=1054804
        i32.const 0
        i32.const 1054812
        i32.store offset=1054824
        i32.const 0
        i32.const 1054804
        i32.store offset=1054812
        i32.const 0
        i32.const 1054820
        i32.store offset=1054832
        i32.const 0
        i32.const 1054812
        i32.store offset=1054820
        i32.const 0
        i32.const 1054828
        i32.store offset=1054840
        i32.const 0
        i32.const 1054820
        i32.store offset=1054828
        i32.const 0
        i32.const 1054836
        i32.store offset=1054848
        i32.const 0
        i32.const 1054828
        i32.store offset=1054836
        i32.const 0
        i32.const 1054844
        i32.store offset=1054856
        i32.const 0
        i32.const 1054836
        i32.store offset=1054844
        i32.const 0
        i32.const 1054844
        i32.store offset=1054852
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
        local.tee 2
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.set 4
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.set 7
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.set 5
        i32.const 0
        local.get 6
        local.get 6
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
        local.tee 0
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.get 0
        i32.sub
        local.tee 9
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
        local.tee 0
        i32.store offset=1055000
        i32.const 0
        local.get 8
        local.get 2
        i32.add
        local.get 5
        local.get 4
        local.get 7
        i32.add
        i32.add
        local.get 9
        i32.add
        i32.sub
        local.tee 2
        i32.store offset=1054992
        local.get 0
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
        local.tee 4
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.set 7
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.set 6
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
        local.set 8
        local.get 0
        local.get 2
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
        local.get 8
        local.get 6
        local.get 7
        local.get 4
        i32.sub
        i32.add
        i32.add
        i32.store offset=4
        i32.const 0
        i32.const 2097152
        i32.store offset=1055028
      end
      i32.const 0
      local.set 2
      i32.const 0
      i32.load offset=1054992
      local.tee 0
      local.get 3
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      local.get 3
      i32.sub
      local.tee 2
      i32.store offset=1054992
      i32.const 0
      i32.const 0
      i32.load offset=1055000
      local.tee 0
      local.get 3
      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
      local.tee 4
      i32.store offset=1055000
      local.get 4
      local.get 2
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 3
      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hb3cda7ee1be519b8E
      local.get 0
      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
      local.set 2
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h3ee811b32e33ddb4E (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h49d83fe486a8c426E
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h433d048e993b396eE
              br_if 0 (;@5;)
              local.get 3
              local.get 1
              i32.add
              local.set 1
              local.get 0
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h956a4e2adf3eefcbE
              local.tee 0
              i32.const 0
              i32.load offset=1054996
              i32.ne
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=4
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
              i32.const 0
              local.get 1
              i32.store offset=1054988
              local.get 0
              local.get 1
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17hde64410721cd558fE
              return
            end
            i32.const 1054588
            local.get 0
            local.get 3
            i32.sub
            local.get 3
            local.get 1
            i32.add
            i32.const 16
            i32.add
            local.tee 0
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17hb5a074dd393cd90aE
            i32.eqz
            br_if 2 (;@2;)
            i32.const 0
            i32.const 0
            i32.load offset=1055004
            local.get 0
            i32.sub
            i32.store offset=1055004
            return
          end
          block  ;; label = @4
            local.get 3
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 12
            i32.add
            i32.load
            local.tee 4
            local.get 0
            i32.const 8
            i32.add
            i32.load
            local.tee 5
            i32.eq
            br_if 0 (;@4;)
            local.get 5
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 5
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1054588
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1054588
        end
        block  ;; label = @3
          local.get 2
          call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h5e879d0433022895E
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17hde64410721cd558fE
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 0
            i32.load offset=1055000
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 0
            i32.load offset=1054996
            i32.ne
            br_if 1 (;@3;)
            i32.const 0
            local.get 0
            i32.store offset=1054996
            i32.const 0
            i32.const 0
            i32.load offset=1054988
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1054988
            local.get 0
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
            return
          end
          i32.const 0
          local.get 0
          i32.store offset=1055000
          i32.const 0
          i32.const 0
          i32.load offset=1054992
          local.get 1
          i32.add
          local.tee 1
          i32.store offset=1054992
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 0
          i32.load offset=1054996
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          i32.const 0
          i32.store offset=1054988
          i32.const 0
          i32.const 0
          i32.store offset=1054996
          return
        end
        local.get 2
        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 2
            i32.const 12
            i32.add
            i32.load
            local.tee 4
            local.get 2
            i32.const 8
            i32.add
            i32.load
            local.tee 2
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 2
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1054588
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1054588
        end
        local.get 0
        local.get 1
        call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
        local.get 0
        i32.const 0
        i32.load offset=1054996
        i32.ne
        br_if 1 (;@1;)
        i32.const 0
        local.get 1
        i32.store offset=1054988
      end
      return
    end
    block  ;; label = @1
      local.get 1
      i32.const 256
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2d7ab4cd21b9b1e8E
      return
    end
    local.get 1
    i32.const 3
    i32.shr_u
    local.tee 2
    i32.const 3
    i32.shl
    i32.const 1054596
    i32.add
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1054588
        local.tee 3
        i32.const 1
        local.get 2
        i32.shl
        local.tee 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=8
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.get 3
      local.get 2
      i32.or
      i32.store offset=1054588
      local.get 1
      local.set 2
    end
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E (type 0) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=24
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17h115dce7333e5fc2cE
          local.get 0
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 20
          i32.const 16
          local.get 0
          i32.const 20
          i32.add
          local.tee 2
          i32.load
          local.tee 3
          select
          i32.add
          i32.load
          local.tee 4
          br_if 1 (;@2;)
          i32.const 0
          local.set 3
          br 2 (;@1;)
        end
        local.get 0
        call $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17h06d58a8550adfb36E
        local.tee 4
        local.get 0
        call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17h115dce7333e5fc2cE
        local.tee 3
        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
        i32.store offset=12
        local.get 3
        local.get 4
        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.const 16
      i32.add
      local.get 3
      select
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.set 5
        block  ;; label = @3
          local.get 4
          local.tee 3
          i32.const 20
          i32.add
          local.tee 2
          i32.load
          local.tee 4
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          local.set 2
          local.get 3
          i32.load offset=16
          local.set 4
        end
        local.get 4
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 0
      i32.store
    end
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=28
          i32.const 2
          i32.shl
          i32.const 1054860
          i32.add
          local.tee 4
          i32.load
          local.get 0
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          i32.const 16
          i32.const 20
          local.get 1
          i32.load offset=16
          local.get 0
          i32.eq
          select
          i32.add
          local.get 3
          i32.store
          local.get 3
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 4
        local.get 3
        i32.store
        local.get 3
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.load offset=1054592
        i32.const -2
        local.get 0
        i32.load offset=28
        i32.rotl
        i32.and
        i32.store offset=1054592
        return
      end
      local.get 3
      local.get 1
      i32.store offset=24
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 4
        i32.store offset=16
        local.get 4
        local.get 3
        i32.store offset=24
      end
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 20
      i32.add
      local.get 4
      i32.store
      local.get 4
      local.get 3
      i32.store offset=24
      return
    end)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2d7ab4cd21b9b1e8E (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 256
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 31
      local.set 2
      local.get 1
      i32.const 16777215
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 6
      local.get 1
      i32.const 8
      i32.shr_u
      i32.clz
      local.tee 2
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.shl
      i32.sub
      i32.const 62
      i32.add
      local.set 2
    end
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1054860
    i32.add
    local.set 3
    local.get 0
    call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1054592
              local.tee 5
              i32.const 1
              local.get 2
              i32.shl
              local.tee 6
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load
              local.set 5
              local.get 2
              call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h62dacf28ccbe01beE
              local.set 2
              local.get 5
              call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
              local.get 1
              i32.ne
              br_if 1 (;@4;)
              local.get 5
              local.set 2
              br 2 (;@3;)
            end
            i32.const 0
            local.get 5
            local.get 6
            i32.or
            i32.store offset=1054592
            local.get 3
            local.get 0
            i32.store
            local.get 0
            local.get 3
            i32.store offset=24
            br 3 (;@1;)
          end
          local.get 1
          local.get 2
          i32.shl
          local.set 3
          loop  ;; label = @4
            local.get 5
            local.get 3
            i32.const 29
            i32.shr_u
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 6
            i32.load
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            i32.const 1
            i32.shl
            local.set 3
            local.get 2
            local.set 5
            local.get 2
            call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
            local.get 1
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 2
        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE
        local.tee 2
        i32.load offset=8
        local.tee 3
        local.get 4
        i32.store offset=12
        local.get 2
        local.get 4
        i32.store offset=8
        local.get 4
        local.get 2
        i32.store offset=12
        local.get 4
        local.get 3
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store offset=24
        return
      end
      local.get 6
      local.get 0
      i32.store
      local.get 0
      local.get 5
      i32.store offset=24
    end
    local.get 4
    local.get 4
    i32.store offset=8
    local.get 4
    local.get 4
    i32.store offset=12)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h15a44562f2ff2228E (type 10) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1055020
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      i32.const 4095
      i32.store offset=1055036
      i32.const 0
      return
    end
    i32.const 1055012
    local.set 1
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 0
      local.tee 4
      i32.load offset=8
      local.set 0
      local.get 4
      i32.load offset=4
      local.set 5
      local.get 4
      i32.load
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          i32.const 1054588
          local.get 4
          i32.const 12
          i32.add
          i32.load
          i32.const 1
          i32.shr_u
          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hbadca9aef442623dE
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hcb93322195efbcceE
          br_if 0 (;@3;)
          local.get 6
          local.get 6
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
          local.tee 7
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.get 7
          i32.sub
          i32.add
          local.tee 7
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
          local.set 8
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
          local.tee 9
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 10
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 11
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 12
          local.get 7
          call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h8cfc6665aae9b287E
          br_if 0 (;@3;)
          local.get 7
          local.get 8
          i32.add
          local.get 6
          local.get 5
          local.get 9
          i32.add
          local.get 10
          local.get 11
          i32.add
          local.get 12
          i32.add
          i32.sub
          i32.add
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1054996
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E
              br 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.store offset=1054988
            i32.const 0
            i32.const 0
            i32.store offset=1054996
          end
          block  ;; label = @4
            i32.const 1054588
            local.get 6
            local.get 5
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17hb5a074dd393cd90aE
            br_if 0 (;@4;)
            local.get 7
            local.get 8
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2d7ab4cd21b9b1e8E
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1055004
          local.get 5
          i32.sub
          i32.store offset=1055004
          local.get 1
          local.get 0
          i32.store offset=8
          local.get 5
          local.get 2
          i32.add
          local.set 2
          br 1 (;@2;)
        end
        local.get 4
        local.set 1
      end
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 0
      br_if 0 (;@1;)
    end
    i32.const 0
    local.get 3
    i32.const 4095
    local.get 3
    i32.const 4095
    i32.gt_u
    select
    i32.store offset=1055036
    local.get 2)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17hb07eefd31eacd84cE (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hee6c19b2ff028b5cE
    local.set 0
    local.get 0
    local.get 0
    call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
    local.tee 1
    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h49d83fe486a8c426E
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h433d048e993b396eE
              br_if 0 (;@5;)
              local.get 3
              local.get 1
              i32.add
              local.set 1
              local.get 0
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h956a4e2adf3eefcbE
              local.tee 0
              i32.const 0
              i32.load offset=1054996
              i32.ne
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=4
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
              i32.const 0
              local.get 1
              i32.store offset=1054988
              local.get 0
              local.get 1
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17hde64410721cd558fE
              return
            end
            i32.const 1054588
            local.get 0
            local.get 3
            i32.sub
            local.get 3
            local.get 1
            i32.add
            i32.const 16
            i32.add
            local.tee 0
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17hb5a074dd393cd90aE
            i32.eqz
            br_if 2 (;@2;)
            i32.const 0
            i32.const 0
            i32.load offset=1055004
            local.get 0
            i32.sub
            i32.store offset=1055004
            return
          end
          block  ;; label = @4
            local.get 3
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 12
            i32.add
            i32.load
            local.tee 4
            local.get 0
            i32.const 8
            i32.add
            i32.load
            local.tee 5
            i32.eq
            br_if 0 (;@4;)
            local.get 5
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 5
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1054588
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1054588
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h5e879d0433022895E
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17hde64410721cd558fE
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1055000
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 0
                  i32.load offset=1054996
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1054996
                  i32.const 0
                  i32.const 0
                  i32.load offset=1054988
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1054988
                  local.get 0
                  local.get 1
                  call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
                  return
                end
                i32.const 0
                local.get 0
                i32.store offset=1055000
                i32.const 0
                i32.const 0
                i32.load offset=1054992
                local.get 1
                i32.add
                local.tee 1
                i32.store offset=1054992
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                i32.const 0
                i32.load offset=1054996
                i32.eq
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
              local.tee 3
              local.get 1
              i32.add
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 256
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 2
                  call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 12
                  i32.add
                  i32.load
                  local.tee 4
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.load
                  local.tee 2
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 4
                  i32.store offset=12
                  local.get 4
                  local.get 2
                  i32.store offset=8
                  br 1 (;@6;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1054588
                i32.const -2
                local.get 3
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1054588
              end
              local.get 0
              local.get 1
              call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
              local.get 0
              i32.const 0
              i32.load offset=1054996
              i32.ne
              br_if 2 (;@3;)
              i32.const 0
              local.get 1
              i32.store offset=1054988
              br 3 (;@2;)
            end
            i32.const 0
            i32.const 0
            i32.store offset=1054988
            i32.const 0
            i32.const 0
            i32.store offset=1054996
          end
          i32.const 0
          i32.load offset=1055028
          local.get 1
          i32.ge_u
          br_if 1 (;@2;)
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
          local.set 0
          local.get 0
          local.get 0
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.add
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 0
          i32.const 0
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.const 2
          i32.shl
          i32.sub
          local.tee 1
          local.get 1
          local.get 0
          i32.gt_u
          select
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          i32.load offset=1055000
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
          local.tee 0
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 1
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 3
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 4
          i32.const 0
          local.set 2
          block  ;; label = @4
            i32.const 0
            i32.load offset=1054992
            local.tee 5
            local.get 4
            local.get 3
            local.get 1
            local.get 0
            i32.sub
            i32.add
            i32.add
            local.tee 0
            i32.le_u
            br_if 0 (;@4;)
            local.get 5
            local.get 0
            i32.const -1
            i32.xor
            i32.add
            i32.const -65536
            i32.and
            local.set 3
            i32.const 0
            i32.load offset=1055000
            local.set 1
            i32.const 1055012
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load
                  local.get 1
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 0
                  call $_ZN8dlmalloc8dlmalloc7Segment3top17h7ba4cb35b2ab78b3E
                  local.get 1
                  i32.gt_u
                  br_if 2 (;@5;)
                end
                local.get 0
                i32.load offset=8
                local.tee 0
                br_if 0 (;@6;)
              end
              i32.const 0
              local.set 0
            end
            i32.const 0
            local.set 2
            local.get 0
            call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hcb93322195efbcceE
            br_if 0 (;@4;)
            i32.const 1054588
            local.get 0
            i32.const 12
            i32.add
            i32.load
            i32.const 1
            i32.shr_u
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hbadca9aef442623dE
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=4
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 1055012
            local.set 1
            loop  ;; label = @5
              local.get 0
              local.get 1
              call $_ZN8dlmalloc8dlmalloc7Segment5holds17h07422241f50b6662E
              br_if 1 (;@4;)
              local.get 1
              i32.load offset=8
              local.tee 1
              br_if 0 (;@5;)
            end
            i32.const 1054588
            local.get 0
            i32.load
            local.get 0
            i32.load offset=4
            local.tee 1
            local.get 1
            local.get 3
            i32.sub
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17he0a6ef0c01b934cbE
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.load offset=4
            local.get 3
            i32.sub
            i32.store offset=4
            i32.const 0
            i32.const 0
            i32.load offset=1055004
            local.get 3
            i32.sub
            i32.store offset=1055004
            i32.const 0
            i32.load offset=1054992
            local.set 1
            i32.const 0
            i32.load offset=1055000
            local.set 0
            i32.const 0
            local.get 0
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
            local.tee 2
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
            local.get 2
            i32.sub
            local.tee 2
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
            local.tee 0
            i32.store offset=1055000
            i32.const 0
            local.get 1
            local.get 3
            local.get 2
            i32.add
            i32.sub
            local.tee 1
            i32.store offset=1054992
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
            local.tee 2
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
            local.set 4
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
            local.set 5
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
            local.set 6
            local.get 0
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
            local.get 6
            local.get 5
            local.get 4
            local.get 2
            i32.sub
            i32.add
            i32.add
            i32.store offset=4
            i32.const 0
            i32.const 2097152
            i32.store offset=1055028
            local.get 3
            local.set 2
          end
          local.get 2
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h15a44562f2ff2228E
          i32.sub
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          i32.load offset=1054992
          i32.const 0
          i32.load offset=1055028
          i32.le_u
          br_if 1 (;@2;)
          i32.const 0
          i32.const -1
          i32.store offset=1055028
          return
        end
        local.get 1
        i32.const 256
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2d7ab4cd21b9b1e8E
        i32.const 0
        i32.const 0
        i32.load offset=1055036
        i32.const -1
        i32.add
        local.tee 0
        i32.store offset=1055036
        local.get 0
        br_if 0 (;@2;)
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h15a44562f2ff2228E
        drop
        return
      end
      return
    end
    local.get 1
    i32.const 3
    i32.shr_u
    local.tee 2
    i32.const 3
    i32.shl
    i32.const 1054596
    i32.add
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1054588
        local.tee 3
        i32.const 1
        local.get 2
        i32.shl
        local.tee 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=8
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.get 3
      local.get 2
      i32.or
      i32.store offset=1054588
      local.get 1
      local.set 2
    end
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8)
  (func $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3d2d7d46abd0cb82E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load8_u
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;) 0 (;@6;)
              end
              local.get 2
              local.get 0
              i32.const 4
              i32.add
              i32.load
              i32.store offset=4
              i32.const 20
              i32.const 1
              call $__rust_alloc
              local.tee 0
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              i32.const 16
              i32.add
              i32.const 0
              i32.load offset=1051264 align=1
              i32.store align=1
              local.get 0
              i32.const 8
              i32.add
              i32.const 0
              i64.load offset=1051256 align=1
              i64.store align=1
              local.get 0
              i32.const 0
              i64.load offset=1051248 align=1
              i64.store align=1
              local.get 2
              i64.const 85899345940
              i64.store offset=12 align=4
              local.get 2
              local.get 0
              i32.store offset=8
              local.get 2
              i32.const 40
              i32.add
              i32.const 20
              i32.add
              i32.const 2
              i32.store
              local.get 2
              i32.const 36
              i32.add
              i32.const 21
              i32.store
              local.get 2
              i64.const 3
              i64.store offset=44 align=4
              local.get 2
              i32.const 1051092
              i32.store offset=40
              local.get 2
              i32.const 22
              i32.store offset=28
              local.get 2
              local.get 2
              i32.const 24
              i32.add
              i32.store offset=56
              local.get 2
              local.get 2
              i32.const 4
              i32.add
              i32.store offset=32
              local.get 2
              local.get 2
              i32.const 8
              i32.add
              i32.store offset=24
              local.get 1
              local.get 2
              i32.const 40
              i32.add
              call $_ZN4core3fmt9Formatter9write_fmt17h17510bd5fa687d11E
              local.set 0
              local.get 2
              i32.load offset=12
              local.tee 1
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              i32.load offset=8
              local.tee 3
              i32.eqz
              br_if 3 (;@2;)
              local.get 3
              local.get 1
              i32.const 1
              call $__rust_dealloc
              br 3 (;@2;)
            end
            i32.const 1051062
            local.set 3
            i32.const 16
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                local.get 0
                                                                                                i32.load8_u offset=1
                                                                                                br_table 41 (;@5;) 0 (;@46;) 1 (;@45;) 2 (;@44;) 3 (;@43;) 4 (;@42;) 5 (;@41;) 6 (;@40;) 7 (;@39;) 8 (;@38;) 9 (;@37;) 10 (;@36;) 11 (;@35;) 12 (;@34;) 13 (;@33;) 14 (;@32;) 15 (;@31;) 16 (;@30;) 17 (;@29;) 18 (;@28;) 19 (;@27;) 20 (;@26;) 21 (;@25;) 22 (;@24;) 23 (;@23;) 24 (;@22;) 25 (;@21;) 26 (;@20;) 27 (;@19;) 28 (;@18;) 29 (;@17;) 30 (;@16;) 31 (;@15;) 32 (;@14;) 33 (;@13;) 34 (;@12;) 35 (;@11;) 36 (;@10;) 37 (;@9;) 38 (;@8;) 39 (;@7;) 41 (;@5;)
                                                                                              end
                                                                                              i32.const 1051045
                                                                                              local.set 3
                                                                                              i32.const 17
                                                                                              local.set 4
                                                                                              br 40 (;@5;)
                                                                                            end
                                                                                            i32.const 1051027
                                                                                            local.set 3
                                                                                            i32.const 18
                                                                                            local.set 4
                                                                                            br 39 (;@5;)
                                                                                          end
                                                                                          i32.const 1051011
                                                                                          local.set 3
                                                                                          br 38 (;@5;)
                                                                                        end
                                                                                        i32.const 1050995
                                                                                        local.set 3
                                                                                        br 37 (;@5;)
                                                                                      end
                                                                                      i32.const 1050976
                                                                                      local.set 3
                                                                                      br 35 (;@6;)
                                                                                    end
                                                                                    i32.const 1050958
                                                                                    local.set 3
                                                                                    i32.const 18
                                                                                    local.set 4
                                                                                    br 35 (;@5;)
                                                                                  end
                                                                                  i32.const 1050945
                                                                                  local.set 3
                                                                                  i32.const 13
                                                                                  local.set 4
                                                                                  br 34 (;@5;)
                                                                                end
                                                                                i32.const 1050931
                                                                                local.set 3
                                                                                i32.const 14
                                                                                local.set 4
                                                                                br 33 (;@5;)
                                                                              end
                                                                              i32.const 1050910
                                                                              local.set 3
                                                                              i32.const 21
                                                                              local.set 4
                                                                              br 32 (;@5;)
                                                                            end
                                                                            i32.const 1050898
                                                                            local.set 3
                                                                            i32.const 12
                                                                            local.set 4
                                                                            br 31 (;@5;)
                                                                          end
                                                                          i32.const 1050887
                                                                          local.set 3
                                                                          i32.const 11
                                                                          local.set 4
                                                                          br 30 (;@5;)
                                                                        end
                                                                        i32.const 1050866
                                                                        local.set 3
                                                                        i32.const 21
                                                                        local.set 4
                                                                        br 29 (;@5;)
                                                                      end
                                                                      i32.const 1050845
                                                                      local.set 3
                                                                      i32.const 21
                                                                      local.set 4
                                                                      br 28 (;@5;)
                                                                    end
                                                                    i32.const 1050830
                                                                    local.set 3
                                                                    i32.const 15
                                                                    local.set 4
                                                                    br 27 (;@5;)
                                                                  end
                                                                  i32.const 1050816
                                                                  local.set 3
                                                                  i32.const 14
                                                                  local.set 4
                                                                  br 26 (;@5;)
                                                                end
                                                                i32.const 1050797
                                                                local.set 3
                                                                br 24 (;@6;)
                                                              end
                                                              i32.const 1050759
                                                              local.set 3
                                                              i32.const 38
                                                              local.set 4
                                                              br 24 (;@5;)
                                                            end
                                                            i32.const 1050703
                                                            local.set 3
                                                            i32.const 56
                                                            local.set 4
                                                            br 23 (;@5;)
                                                          end
                                                          i32.const 1050678
                                                          local.set 3
                                                          i32.const 25
                                                          local.set 4
                                                          br 22 (;@5;)
                                                        end
                                                        i32.const 1050655
                                                        local.set 3
                                                        i32.const 23
                                                        local.set 4
                                                        br 21 (;@5;)
                                                      end
                                                      i32.const 1050643
                                                      local.set 3
                                                      i32.const 12
                                                      local.set 4
                                                      br 20 (;@5;)
                                                    end
                                                    i32.const 1050634
                                                    local.set 3
                                                    i32.const 9
                                                    local.set 4
                                                    br 19 (;@5;)
                                                  end
                                                  i32.const 1050624
                                                  local.set 3
                                                  i32.const 10
                                                  local.set 4
                                                  br 18 (;@5;)
                                                end
                                                i32.const 1050608
                                                local.set 3
                                                br 17 (;@5;)
                                              end
                                              i32.const 1050585
                                              local.set 3
                                              i32.const 23
                                              local.set 4
                                              br 16 (;@5;)
                                            end
                                            i32.const 1050560
                                            local.set 3
                                            i32.const 25
                                            local.set 4
                                            br 15 (;@5;)
                                          end
                                          i32.const 1050546
                                          local.set 3
                                          i32.const 14
                                          local.set 4
                                          br 14 (;@5;)
                                        end
                                        i32.const 1050533
                                        local.set 3
                                        i32.const 13
                                        local.set 4
                                        br 13 (;@5;)
                                      end
                                      i32.const 1050513
                                      local.set 3
                                      i32.const 20
                                      local.set 4
                                      br 12 (;@5;)
                                    end
                                    i32.const 1050505
                                    local.set 3
                                    i32.const 8
                                    local.set 4
                                    br 11 (;@5;)
                                  end
                                  i32.const 1050478
                                  local.set 3
                                  i32.const 27
                                  local.set 4
                                  br 10 (;@5;)
                                end
                                i32.const 1050464
                                local.set 3
                                i32.const 14
                                local.set 4
                                br 9 (;@5;)
                              end
                              i32.const 1050447
                              local.set 3
                              i32.const 17
                              local.set 4
                              br 8 (;@5;)
                            end
                            i32.const 1050425
                            local.set 3
                            i32.const 22
                            local.set 4
                            br 7 (;@5;)
                          end
                          i32.const 1050404
                          local.set 3
                          i32.const 21
                          local.set 4
                          br 6 (;@5;)
                        end
                        i32.const 1050393
                        local.set 3
                        i32.const 11
                        local.set 4
                        br 5 (;@5;)
                      end
                      i32.const 1050371
                      local.set 3
                      i32.const 22
                      local.set 4
                      br 4 (;@5;)
                    end
                    i32.const 1050358
                    local.set 3
                    i32.const 13
                    local.set 4
                    br 3 (;@5;)
                  end
                  i32.const 1050347
                  local.set 3
                  i32.const 11
                  local.set 4
                  br 2 (;@5;)
                end
                i32.const 1050328
                local.set 3
              end
              i32.const 19
              local.set 4
            end
            local.get 2
            i32.const 60
            i32.add
            i32.const 1
            i32.store
            local.get 2
            local.get 4
            i32.store offset=28
            local.get 2
            local.get 3
            i32.store offset=24
            local.get 2
            i32.const 23
            i32.store offset=12
            local.get 2
            i64.const 1
            i64.store offset=44 align=4
            local.get 2
            i32.const 1050320
            i32.store offset=40
            local.get 2
            local.get 2
            i32.const 24
            i32.add
            i32.store offset=8
            local.get 2
            local.get 2
            i32.const 8
            i32.add
            i32.store offset=56
            local.get 1
            local.get 2
            i32.const 40
            i32.add
            call $_ZN4core3fmt9Formatter9write_fmt17h17510bd5fa687d11E
            local.set 0
            br 2 (;@2;)
          end
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          local.get 1
          call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h86821b8cd9767c9cE
          local.set 0
          br 1 (;@2;)
        end
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.get 1
        local.get 0
        i32.load offset=4
        i32.load offset=16
        call_indirect (type 1)
        local.set 0
      end
      local.get 2
      i32.const 64
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    i32.const 20
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
    unreachable)
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h438eceaf49d629cdE (type 0) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h9c6751687bfc5521E
    unreachable)
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h9c6751687bfc5521E (type 5) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            br_table 0 (;@4;) 1 (;@3;) 3 (;@1;)
          end
          local.get 4
          br_if 2 (;@1;)
          i32.const 1050268
          local.set 0
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        local.get 4
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 0
        i32.load offset=4
        local.set 4
        local.get 0
        i32.load
        local.set 0
      end
      local.get 3
      local.get 4
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 1051196
      local.get 1
      call $_ZN4core5panic10panic_info9PanicInfo7message17h36702d3d004a6deeE
      local.get 2
      call $_ZN3std9panicking20rust_panic_with_hook17h364974e717ed59ecE
      unreachable
    end
    local.get 3
    i32.const 0
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 1051176
    local.get 1
    call $_ZN4core5panic10panic_info9PanicInfo7message17h36702d3d004a6deeE
    local.get 2
    call $_ZN3std9panicking20rust_panic_with_hook17h364974e717ed59ecE
    unreachable)
  (func $_ZN3std5alloc24default_alloc_error_hook17hc8541f7c1ec32afeE (type 2) (param i32 i32))
  (func $rust_oom (type 2) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1054568
    local.tee 2
    i32.const 24
    local.get 2
    select
    call_indirect (type 2)
    unreachable
    unreachable)
  (func $__rdl_alloc (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hbd2b2a561e0ef670E)
  (func $__rdl_dealloc (type 5) (param i32 i32 i32)
    local.get 0
    call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17hb07eefd31eacd84cE)
  (func $__rdl_realloc (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 9
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            local.get 2
            call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hbd2b2a561e0ef670E
            local.tee 2
            br_if 1 (;@3;)
            i32.const 0
            return
          end
          i32.const 0
          local.set 2
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E
          local.set 1
          local.get 1
          local.get 1
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.add
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 1
          i32.const 0
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.const 2
          i32.shl
          i32.sub
          local.tee 4
          local.get 4
          local.get 1
          i32.gt_u
          select
          local.get 3
          i32.le_u
          br_if 1 (;@2;)
          i32.const 16
          local.get 3
          i32.const 4
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          i32.const -5
          i32.add
          local.get 3
          i32.gt_u
          select
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
          local.set 4
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hee6c19b2ff028b5cE
          local.set 1
          local.get 1
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
          local.tee 5
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
          local.set 6
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h433d048e993b396eE
                          br_if 0 (;@11;)
                          local.get 5
                          local.get 4
                          i32.ge_u
                          br_if 1 (;@10;)
                          local.get 6
                          i32.const 0
                          i32.load offset=1055000
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 6
                          i32.const 0
                          i32.load offset=1054996
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 6
                          call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h5e879d0433022895E
                          br_if 7 (;@4;)
                          local.get 6
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
                          local.tee 7
                          local.get 5
                          i32.add
                          local.tee 5
                          local.get 4
                          i32.lt_u
                          br_if 7 (;@4;)
                          local.get 5
                          local.get 4
                          i32.sub
                          local.set 8
                          local.get 7
                          i32.const 256
                          i32.lt_u
                          br_if 4 (;@7;)
                          local.get 6
                          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hb07925f032cc8648E
                          br 5 (;@6;)
                        end
                        local.get 1
                        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
                        local.set 5
                        local.get 4
                        i32.const 256
                        i32.lt_u
                        br_if 6 (;@4;)
                        block  ;; label = @11
                          local.get 5
                          local.get 4
                          i32.const 4
                          i32.add
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 5
                          local.get 4
                          i32.sub
                          i32.const 131073
                          i32.lt_u
                          br_if 6 (;@5;)
                        end
                        i32.const 1054588
                        local.get 1
                        local.get 1
                        i32.load
                        local.tee 6
                        i32.sub
                        local.get 5
                        local.get 6
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 7
                        local.get 4
                        i32.const 31
                        i32.add
                        i32.const 1054588
                        call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17h2c29bf8b31566e63E
                        call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                        local.tee 5
                        i32.const 1
                        call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17h2ff00066846ea921E
                        local.tee 4
                        i32.eqz
                        br_if 6 (;@4;)
                        local.get 4
                        local.get 6
                        i32.add
                        local.tee 1
                        local.get 5
                        local.get 6
                        i32.sub
                        local.tee 3
                        i32.const -16
                        i32.add
                        local.tee 2
                        i32.store offset=4
                        call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17h8f835e0dbf36cac4E
                        local.set 0
                        local.get 1
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                        local.get 0
                        i32.store offset=4
                        local.get 1
                        local.get 3
                        i32.const -12
                        i32.add
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                        i32.const 0
                        i32.store offset=4
                        i32.const 0
                        i32.const 0
                        i32.load offset=1055004
                        local.get 5
                        local.get 7
                        i32.sub
                        i32.add
                        local.tee 3
                        i32.store offset=1055004
                        i32.const 0
                        i32.const 0
                        i32.load offset=1055032
                        local.tee 2
                        local.get 4
                        local.get 4
                        local.get 2
                        i32.gt_u
                        select
                        i32.store offset=1055032
                        i32.const 0
                        i32.const 0
                        i32.load offset=1055008
                        local.tee 2
                        local.get 3
                        local.get 2
                        local.get 3
                        i32.gt_u
                        select
                        i32.store offset=1055008
                        br 9 (;@1;)
                      end
                      local.get 5
                      local.get 4
                      i32.sub
                      local.tee 5
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      i32.lt_u
                      br_if 4 (;@5;)
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                      local.set 6
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
                      local.get 6
                      local.get 5
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
                      local.get 6
                      local.get 5
                      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h3ee811b32e33ddb4E
                      br 4 (;@5;)
                    end
                    i32.const 0
                    i32.load offset=1054992
                    local.get 5
                    i32.add
                    local.tee 5
                    local.get 4
                    i32.le_u
                    br_if 4 (;@4;)
                    local.get 1
                    local.get 4
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                    local.set 6
                    local.get 1
                    local.get 4
                    call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
                    local.get 6
                    local.get 5
                    local.get 4
                    i32.sub
                    local.tee 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 0
                    local.get 4
                    i32.store offset=1054992
                    i32.const 0
                    local.get 6
                    i32.store offset=1055000
                    br 3 (;@5;)
                  end
                  i32.const 0
                  i32.load offset=1054988
                  local.get 5
                  i32.add
                  local.tee 5
                  local.get 4
                  i32.lt_u
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      local.get 4
                      i32.sub
                      local.tee 6
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 5
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
                      i32.const 0
                      local.set 6
                      i32.const 0
                      local.set 5
                      br 1 (;@8;)
                    end
                    local.get 1
                    local.get 4
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                    local.tee 5
                    local.get 6
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                    local.set 7
                    local.get 1
                    local.get 4
                    call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
                    local.get 5
                    local.get 6
                    call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE
                    local.get 7
                    call $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17h1e84b2f283ad8e89E
                  end
                  i32.const 0
                  local.get 5
                  i32.store offset=1054996
                  i32.const 0
                  local.get 6
                  i32.store offset=1054988
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 6
                  i32.const 12
                  i32.add
                  i32.load
                  local.tee 9
                  local.get 6
                  i32.const 8
                  i32.add
                  i32.load
                  local.tee 6
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 9
                  i32.store offset=12
                  local.get 9
                  local.get 6
                  i32.store offset=8
                  br 1 (;@6;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1054588
                i32.const -2
                local.get 7
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1054588
              end
              block  ;; label = @6
                local.get 8
                i32.const 16
                i32.const 8
                call $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E
                i32.lt_u
                br_if 0 (;@6;)
                local.get 1
                local.get 4
                call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E
                local.set 5
                local.get 1
                local.get 4
                call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
                local.get 5
                local.get 8
                call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
                local.get 5
                local.get 8
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h3ee811b32e33ddb4E
                br 1 (;@5;)
              end
              local.get 1
              local.get 5
              call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE
            end
            local.get 1
            br_if 3 (;@1;)
          end
          local.get 3
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17heeb693c723d77fa0E
          local.tee 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          local.get 0
          local.get 3
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E
          i32.const -8
          i32.const -4
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h433d048e993b396eE
          select
          i32.add
          local.tee 2
          local.get 2
          local.get 3
          i32.gt_u
          select
          call $memcpy
          local.set 3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17hb07eefd31eacd84cE
          local.get 3
          return
        end
        local.get 2
        local.get 0
        local.get 3
        local.get 1
        local.get 1
        local.get 3
        i32.gt_u
        select
        call $memcpy
        drop
        local.get 0
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17hb07eefd31eacd84cE
      end
      local.get 2
      return
    end
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h433d048e993b396eE
    drop
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E)
  (func $rust_begin_unwind (type 0) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN4core5panic10panic_info9PanicInfo8location17h6f567dfbe8cd82afE
    i32.const 1051144
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17hccc5d45ca79a283dE
    local.set 2
    local.get 0
    call $_ZN4core5panic10panic_info9PanicInfo7message17h36702d3d004a6deeE
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h25bb243e5fdcf654E
    local.set 3
    local.get 1
    local.get 2
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h438eceaf49d629cdE
    unreachable)
  (func $_ZN3std9panicking20rust_panic_with_hook17h364974e717ed59ecE (type 4) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i32.const 1
    local.set 5
    i32.const 0
    i32.const 0
    i32.load offset=1054584
    local.tee 6
    i32.const 1
    i32.add
    i32.store offset=1054584
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1055040
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1055044
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 1
      i32.store offset=1055040
    end
    i32.const 0
    local.get 5
    i32.store offset=1055044
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 5
        i32.const 2
        i32.gt_u
        br_if 0 (;@2;)
        local.get 4
        local.get 3
        i32.store offset=28
        local.get 4
        local.get 2
        i32.store offset=24
        i32.const 0
        i32.load offset=1054572
        local.tee 6
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        local.get 6
        i32.const 1
        i32.add
        local.tee 6
        i32.store offset=1054572
        block  ;; label = @3
          i32.const 0
          i32.load offset=1054580
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1054576
          local.set 6
          local.get 4
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 2)
          local.get 4
          local.get 4
          i64.load offset=8
          i64.store offset=16
          local.get 6
          local.get 4
          i32.const 16
          i32.add
          local.get 2
          i32.load offset=20
          call_indirect (type 2)
          i32.const 0
          i32.load offset=1054572
          local.set 6
        end
        i32.const 0
        local.get 6
        i32.const -1
        i32.add
        i32.store offset=1054572
        local.get 5
        i32.const 1
        i32.le_u
        br_if 1 (;@1;)
      end
      unreachable
      unreachable
    end
    local.get 0
    local.get 1
    call $rust_panic
    unreachable)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h0213f8a547c7e7bbE (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1050312
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      local.set 5
      local.get 2
      i64.const 0
      i64.store offset=12 align=4
      local.get 2
      i32.const 0
      i32.load offset=1050312
      local.tee 4
      i32.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 5
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 5
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 5
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1050244
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17hb363a5cc37db74afE
      drop
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 2
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    local.get 3
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 1
    i32.const 12
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.load align=4
    local.set 6
    local.get 1
    i32.const 8
    i32.add
    i32.const 0
    i32.store
    local.get 1
    local.get 4
    i32.store offset=4
    local.get 2
    local.get 6
    i64.store offset=24
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
      unreachable
    end
    local.get 1
    local.get 2
    i64.load offset=24
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 5
    i32.load
    i32.store
    local.get 0
    i32.const 1051216
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h023e80216351dde5E (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 1
      local.get 2
      i64.const 0
      i64.store offset=12 align=4
      local.get 2
      i32.const 0
      i32.load offset=1050312
      i32.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1050244
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17hb363a5cc37db74afE
      drop
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 0
    i32.const 1051216
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h8c5dc867f0a69941E (type 2) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    block  ;; label = @1
      i32.const 8
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 8
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1051232
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17hb5cbf70b53a72f1eE (type 2) (param i32 i32)
    local.get 0
    i32.const 1051232
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $rust_panic (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $__rust_start_panic
    drop
    unreachable
    unreachable)
  (func $__rust_start_panic (type 9) (param i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN8dlmalloc8dlmalloc8align_up17h4772c6244aec6713E (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add
    i32.const -1
    i32.add
    i32.const 0
    local.get 1
    i32.sub
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc9left_bits17hfbf3138e75a56fe9E (type 9) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.shl
    local.tee 0
    i32.const 0
    local.get 0
    i32.sub
    i32.or)
  (func $_ZN8dlmalloc8dlmalloc9least_bit17hf1ac7fbb0c9afcf6E (type 9) (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h62dacf28ccbe01beE (type 9) (param i32) (result i32)
    i32.const 0
    i32.const 25
    local.get 0
    i32.const 1
    i32.shr_u
    i32.sub
    local.get 0
    i32.const 31
    i32.eq
    select)
  (func $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17h8f835e0dbf36cac4E (type 10) (result i32)
    i32.const 7)
  (func $_ZN8dlmalloc8dlmalloc5Chunk4size17h477182019ccb4687E (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const -8
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h5e879d0433022895E (type 9) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 2
    i32.and
    i32.const 1
    i32.shr_u)
  (func $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h49d83fe486a8c426E (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17h1e84b2f283ad8e89E (type 0) (param i32)
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const -2
    i32.and
    i32.store offset=4)
  (func $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h8cfc6665aae9b287E (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 1
    i32.ne)
  (func $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h433d048e993b396eE (type 9) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 3
    i32.and
    i32.eqz)
  (func $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17ha2f9cf9ea44c655dE (type 2) (param i32 i32)
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.and
    local.get 1
    i32.or
    i32.const 2
    i32.or
    i32.store offset=4
    local.get 1
    local.get 0
    i32.add
    i32.const 4
    i32.add
    local.tee 0
    local.get 0
    i32.load
    i32.const 1
    i32.or
    i32.store)
  (func $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h75c2f837cb762f26E (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 1
    local.get 0
    i32.add
    i32.const 4
    i32.add
    local.tee 0
    local.get 0
    i32.load
    i32.const 1
    i32.or
    i32.store)
  (func $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hb3cda7ee1be519b8E (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 3
    i32.or
    i32.store offset=4)
  (func $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h94ceb082391f899dE (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.get 1
    i32.store)
  (func $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17hde64410721cd558fE (type 5) (param i32 i32 i32)
    local.get 2
    local.get 2
    i32.load offset=4
    i32.const -2
    i32.and
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.get 1
    i32.store)
  (func $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha281c8f37de9cb65E (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h956a4e2adf3eefcbE (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.sub)
  (func $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h955b963a7a834301E (type 9) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hee6c19b2ff028b5cE (type 9) (param i32) (result i32)
    local.get 0
    i32.const -8
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17h48f2502fcdcfa0a2E (type 9) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=16
      local.tee 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.set 1
    end
    local.get 1)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h045726532a1e0c8dE (type 9) (param i32) (result i32)
    local.get 0)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk4next17h115dce7333e5fc2cE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17h06d58a8550adfb36E (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hcb93322195efbcceE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17hba09df10f4d19d6eE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.shr_u)
  (func $_ZN8dlmalloc8dlmalloc7Segment5holds17h07422241f50b6662E (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      local.get 1
      i32.gt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.load offset=4
      i32.add
      local.get 1
      i32.gt_u
      local.set 2
    end
    local.get 2)
  (func $_ZN8dlmalloc8dlmalloc7Segment3top17h7ba4cb35b2ab78b3E (type 9) (param i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    i32.add)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17heece4aba06c14827E (type 5) (param i32 i32 i32)
    (local i32)
    local.get 2
    i32.const 16
    i32.shr_u
    memory.grow
    local.set 3
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    local.get 2
    i32.const -65536
    i32.and
    local.get 3
    i32.const -1
    i32.eq
    local.tee 2
    select
    i32.store offset=4
    local.get 0
    i32.const 0
    local.get 3
    i32.const 16
    i32.shl
    local.get 2
    select
    i32.store)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17h2ff00066846ea921E (type 11) (param i32 i32 i32 i32 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17he0a6ef0c01b934cbE (type 7) (param i32 i32 i32 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17hb5a074dd393cd90aE (type 3) (param i32 i32 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hbadca9aef442623dE (type 1) (param i32 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17h2c29bf8b31566e63E (type 9) (param i32) (result i32)
    i32.const 65536)
  (func $_ZN5alloc5alloc18handle_alloc_error17h45a714900d29bef5E (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $__rust_alloc_error_handler
    unreachable)
  (func $__rg_oom (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $rust_oom
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h56c8d20d9eefc93dE (type 12)
    i32.const 1051296
    i32.const 17
    i32.const 1051316
    call $_ZN4core9panicking5panic17hceae0c79b0247f98E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17h66d552c917209568E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop (result i32)  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17haa4e00c186f7b014E (type 0) (param i32))
  (func $_ZN4core9panicking18panic_bounds_check17h1d84519ec46ed48cE (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 14
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1051456
    i32.store offset=8
    local.get 3
    i32.const 14
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E
    unreachable)
  (func $_ZN4core5slice5index26slice_start_index_len_fail17hfdb57cc8dc82f9cbE (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 14
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1051852
    i32.store offset=8
    local.get 3
    i32.const 14
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E
    unreachable)
  (func $_ZN4core5slice5index24slice_end_index_len_fail17he00053322d4d7aa4E (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 14
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1051884
    i32.store offset=8
    local.get 3
    i32.const 14
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E
    unreachable)
  (func $_ZN4core3fmt9Formatter3pad17h72ccc4219c1d09f0E (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=16
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 4
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.eq
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=24
            local.get 1
            local.get 2
            local.get 0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 3)
            local.set 3
            br 3 (;@1;)
          end
          local.get 3
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 1
        local.get 2
        i32.add
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 20
              i32.add
              i32.load
              local.tee 6
              br_if 0 (;@5;)
              i32.const 0
              local.set 7
              local.get 1
              local.set 3
              br 1 (;@4;)
            end
            i32.const 0
            local.set 7
            local.get 1
            local.set 3
            loop  ;; label = @5
              local.get 3
              local.tee 8
              local.get 5
              i32.eq
              br_if 2 (;@3;)
              local.get 8
              i32.const 1
              i32.add
              local.set 3
              block  ;; label = @6
                local.get 8
                i32.load8_s
                local.tee 9
                i32.const -1
                i32.gt_s
                br_if 0 (;@6;)
                local.get 9
                i32.const 255
                i32.and
                local.set 9
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    local.get 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 10
                    local.get 5
                    local.set 3
                    br 1 (;@7;)
                  end
                  local.get 8
                  i32.const 2
                  i32.add
                  local.set 3
                  local.get 8
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  local.set 10
                end
                local.get 9
                i32.const 224
                i32.lt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    local.get 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 11
                    local.get 5
                    local.set 12
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 12
                  local.get 3
                  i32.load8_u
                  i32.const 63
                  i32.and
                  local.set 11
                end
                block  ;; label = @7
                  local.get 9
                  i32.const 240
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 12
                  local.set 3
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 12
                    local.get 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 12
                    local.get 5
                    local.set 3
                    br 1 (;@7;)
                  end
                  local.get 12
                  i32.const 1
                  i32.add
                  local.set 3
                  local.get 12
                  i32.load8_u
                  i32.const 63
                  i32.and
                  local.set 12
                end
                local.get 10
                i32.const 12
                i32.shl
                local.get 9
                i32.const 18
                i32.shl
                i32.const 1835008
                i32.and
                i32.or
                local.get 11
                i32.const 6
                i32.shl
                i32.or
                local.get 12
                i32.or
                i32.const 1114112
                i32.eq
                br_if 3 (;@3;)
              end
              local.get 7
              local.get 8
              i32.sub
              local.get 3
              i32.add
              local.set 7
              local.get 6
              i32.const -1
              i32.add
              local.tee 6
              br_if 0 (;@5;)
            end
          end
          local.get 3
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.load8_s
            local.tee 8
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 1
                i32.add
                local.get 5
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                local.get 5
                local.set 6
                br 1 (;@5;)
              end
              local.get 3
              i32.const 2
              i32.add
              local.set 6
              local.get 3
              i32.load8_u offset=1
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              local.set 3
            end
            local.get 8
            i32.const 255
            i32.and
            i32.const 224
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                local.get 5
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                local.get 5
                local.set 9
                br 1 (;@5;)
              end
              local.get 6
              i32.const 1
              i32.add
              local.set 9
              local.get 6
              i32.load8_u
              i32.const 63
              i32.and
              local.set 6
            end
            local.get 8
            i32.const 255
            i32.and
            i32.const 240
            i32.lt_u
            br_if 0 (;@4;)
            local.get 8
            i32.const 255
            i32.and
            local.set 8
            local.get 6
            local.get 3
            i32.or
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                local.get 9
                local.get 5
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                br 1 (;@5;)
              end
              local.get 9
              i32.load8_u
              i32.const 63
              i32.and
              local.set 5
            end
            local.get 3
            i32.const 6
            i32.shl
            local.get 8
            i32.const 18
            i32.shl
            i32.const 1835008
            i32.and
            i32.or
            local.get 5
            i32.or
            i32.const 1114112
            i32.eq
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                br_if 0 (;@6;)
                i32.const 0
                local.set 8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 7
                local.get 2
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                local.get 2
                local.set 8
                local.get 7
                local.get 2
                i32.eq
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 0
              local.set 3
              local.get 7
              local.set 8
              local.get 1
              local.get 7
              i32.add
              i32.load8_s
              i32.const -64
              i32.lt_s
              br_if 1 (;@4;)
            end
            local.get 8
            local.set 7
            local.get 1
            local.set 3
          end
          local.get 7
          local.get 2
          local.get 3
          select
          local.set 2
          local.get 3
          local.get 1
          local.get 3
          select
          local.set 1
        end
        local.get 4
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 3)
        return
      end
      local.get 0
      i32.const 12
      i32.add
      i32.load
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          br 1 (;@2;)
        end
        local.get 2
        i32.const 3
        i32.and
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 8
            local.get 1
            local.set 3
            br 1 (;@3;)
          end
          i32.const 0
          local.set 8
          i32.const 0
          local.get 2
          i32.const -4
          i32.and
          i32.sub
          local.set 5
          local.get 1
          local.set 3
          loop  ;; label = @4
            local.get 8
            local.get 3
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            i32.add
            local.get 3
            i32.const 1
            i32.add
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            i32.add
            local.get 3
            i32.const 2
            i32.add
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            i32.add
            local.get 3
            i32.const 3
            i32.add
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            i32.add
            local.set 8
            local.get 3
            i32.const 4
            i32.add
            local.set 3
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            br_if 0 (;@4;)
          end
        end
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 8
          local.get 3
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.ne
          i32.add
          local.set 8
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 6
        local.get 8
        i32.le_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        local.get 6
        local.get 8
        i32.sub
        local.tee 7
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              local.get 0
              i32.load8_u offset=32
              local.tee 8
              local.get 8
              i32.const 3
              i32.eq
              select
              i32.const 3
              i32.and
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;)
            end
            i32.const 0
            local.set 6
            local.get 7
            local.set 3
            br 1 (;@3;)
          end
          local.get 7
          i32.const 1
          i32.shr_u
          local.set 3
          local.get 7
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 6
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.set 7
        local.get 0
        i32.load offset=4
        local.set 8
        local.get 0
        i32.load offset=24
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            local.get 8
            local.get 7
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 3
        local.get 8
        i32.const 1114112
        i32.eq
        br_if 1 (;@1;)
        local.get 5
        local.get 1
        local.get 2
        local.get 7
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
        i32.const 0
        local.set 3
        loop  ;; label = @3
          block  ;; label = @4
            local.get 6
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            local.get 6
            local.get 6
            i32.lt_u
            return
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 5
          local.get 8
          local.get 7
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 3
        i32.const -1
        i32.add
        local.get 6
        i32.lt_u
        return
      end
      local.get 0
      i32.load offset=24
      local.get 1
      local.get 2
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 3)
      return
    end
    local.get 3)
  (func $_ZN4core9panicking5panic17hceae0c79b0247f98E (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1051332
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E
    unreachable)
  (func $_ZN4core5slice5index22slice_index_order_fail17he388d03b2828b4ebE (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 14
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1051936
    i32.store offset=8
    local.get 3
    i32.const 14
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h3df307cf9bb0f560E (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h4d8c26c3623cb98bE)
  (func $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1051388
    i32.store offset=4
    local.get 2
    i32.const 1051332
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core3fmt5write17hb363a5cc37db74afE (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=40
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    local.get 0
    i32.store offset=32
    i32.const 0
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=8
            local.tee 5
            br_if 0 (;@4;)
            local.get 2
            i32.const 20
            i32.add
            i32.load
            local.tee 6
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load
            local.set 1
            local.get 2
            i32.load offset=16
            local.set 0
            local.get 6
            i32.const 3
            i32.shl
            i32.const -8
            i32.add
            i32.const 3
            i32.shr_u
            i32.const 1
            i32.add
            local.tee 4
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=32
                local.get 1
                i32.load
                local.get 7
                local.get 3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 3)
                br_if 4 (;@2;)
              end
              local.get 0
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 0
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 1)
              br_if 3 (;@2;)
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              local.get 6
              i32.const -1
              i32.add
              local.tee 6
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 2
          i32.const 12
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 5
          i32.shl
          local.tee 8
          i32.const -32
          i32.add
          i32.const 5
          i32.shr_u
          i32.const 1
          i32.add
          local.set 4
          local.get 2
          i32.load
          local.set 1
          i32.const 0
          local.set 6
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=32
              local.get 1
              i32.load
              local.get 0
              local.get 3
              i32.load offset=36
              i32.load offset=12
              call_indirect (type 3)
              br_if 3 (;@2;)
            end
            local.get 3
            local.get 5
            local.get 6
            i32.add
            local.tee 0
            i32.const 28
            i32.add
            i32.load8_u
            i32.store8 offset=40
            local.get 3
            local.get 0
            i32.const 4
            i32.add
            i64.load align=4
            i64.const 32
            i64.rotl
            i64.store offset=8
            local.get 0
            i32.const 24
            i32.add
            i32.load
            local.set 9
            local.get 2
            i32.load offset=16
            local.set 10
            i32.const 0
            local.set 11
            i32.const 0
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 9
                i32.const 3
                i32.shl
                local.set 12
                i32.const 0
                local.set 7
                local.get 10
                local.get 12
                i32.add
                local.tee 12
                i32.load offset=4
                i32.const 37
                i32.ne
                br_if 1 (;@5;)
                local.get 12
                i32.load
                i32.load
                local.set 9
              end
              i32.const 1
              local.set 7
            end
            local.get 3
            local.get 9
            i32.store offset=20
            local.get 3
            local.get 7
            i32.store offset=16
            local.get 0
            i32.const 16
            i32.add
            i32.load
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.load
                  br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 7
                i32.const 3
                i32.shl
                local.set 9
                local.get 10
                local.get 9
                i32.add
                local.tee 9
                i32.load offset=4
                i32.const 37
                i32.ne
                br_if 1 (;@5;)
                local.get 9
                i32.load
                i32.load
                local.set 7
              end
              i32.const 1
              local.set 11
            end
            local.get 3
            local.get 7
            i32.store offset=28
            local.get 3
            local.get 11
            i32.store offset=24
            local.get 10
            local.get 0
            i32.load
            i32.const 3
            i32.shl
            i32.add
            local.tee 0
            i32.load
            local.get 3
            i32.const 8
            i32.add
            local.get 0
            i32.load offset=4
            call_indirect (type 1)
            br_if 2 (;@2;)
            local.get 1
            i32.const 8
            i32.add
            local.set 1
            local.get 8
            local.get 6
            i32.const 32
            i32.add
            local.tee 6
            i32.ne
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 0
        local.get 4
        local.get 2
        i32.load offset=4
        i32.lt_u
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=32
        local.get 2
        i32.load
        local.get 4
        i32.const 3
        i32.shl
        i32.add
        i32.const 0
        local.get 1
        select
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        local.get 3
        i32.load offset=36
        i32.load offset=12
        call_indirect (type 3)
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 0
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acba3bf85e29330E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5109d00c3a19a277E
      br_if 0 (;@1;)
      local.get 1
      i32.const 28
      i32.add
      i32.load
      local.set 4
      local.get 1
      i32.load offset=24
      local.set 5
      local.get 2
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 2
      i32.const 1051332
      i32.store offset=24
      local.get 2
      i64.const 1
      i64.store offset=12 align=4
      local.get 2
      i32.const 1051336
      i32.store offset=8
      local.get 5
      local.get 4
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17hb363a5cc37db74afE
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5109d00c3a19a277E
      local.set 3
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5109d00c3a19a277E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 0
              i64.load32_u
              i32.const 1
              local.get 1
              call $_ZN4core3fmt3num3imp7fmt_u6417h4d8c26c3623cb98bE
              local.set 0
              br 4 (;@1;)
            end
            local.get 0
            i32.load
            local.set 0
            i32.const 0
            local.set 3
            loop  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              i32.const 127
              i32.add
              i32.const 48
              i32.const 87
              local.get 0
              i32.const 15
              i32.and
              local.tee 4
              i32.const 10
              i32.lt_u
              select
              local.get 4
              i32.add
              i32.store8
              local.get 3
              i32.const -1
              i32.add
              local.set 3
              local.get 0
              i32.const 15
              i32.gt_u
              local.set 4
              local.get 0
              i32.const 4
              i32.shr_u
              local.set 0
              local.get 4
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 128
            i32.add
            local.tee 0
            i32.const 129
            i32.ge_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 1
            i32.const 1051536
            i32.const 2
            local.get 2
            local.get 3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 3
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h8c76600d11a2c4b1E
            local.set 0
            br 3 (;@1;)
          end
          local.get 0
          i32.load
          local.set 0
          i32.const 0
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            i32.const 127
            i32.add
            i32.const 48
            i32.const 55
            local.get 0
            i32.const 15
            i32.and
            local.tee 4
            i32.const 10
            i32.lt_u
            select
            local.get 4
            i32.add
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 15
            i32.gt_u
            local.set 4
            local.get 0
            i32.const 4
            i32.shr_u
            local.set 0
            local.get 4
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 128
          i32.add
          local.tee 0
          i32.const 129
          i32.ge_u
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.const 1051536
          i32.const 2
          local.get 2
          local.get 3
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 3
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17h8c76600d11a2c4b1E
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.const 128
        i32.const 1051520
        call $_ZN4core5slice5index26slice_start_index_len_fail17hfdb57cc8dc82f9cbE
        unreachable
      end
      local.get 0
      i32.const 128
      i32.const 1051520
      call $_ZN4core5slice5index26slice_start_index_len_fail17hfdb57cc8dc82f9cbE
      unreachable
    end
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h509a82f298b121bcE (type 8) (param i32) (result i64)
    i64.const -8369601888463335144)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha820d3379de3c823E (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17h72ccc4219c1d09f0E)
  (func $_ZN4core5panic10panic_info9PanicInfo7message17h36702d3d004a6deeE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic10panic_info9PanicInfo8location17h6f567dfbe8cd82afE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he0fb0ec556a6ab4aE (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $_ZN4core6result13unwrap_failed17h694db13a45aa6740E (type 13) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 5
    i32.const 60
    i32.add
    i32.const 38
    i32.store
    local.get 5
    i64.const 2
    i64.store offset=28 align=4
    local.get 5
    i32.const 1051476
    i32.store offset=24
    local.get 5
    i32.const 39
    i32.store offset=52
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 5
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=56
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=48
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E
    unreachable)
  (func $_ZN4core3str16slice_error_fail17h0f2453c2264eb1f1E (type 13) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 257
                  i32.lt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 6
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      local.get 6
                      i32.add
                      local.tee 7
                      i32.const 256
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 256
                      i32.add
                      local.set 7
                      br 5 (;@4;)
                    end
                    block  ;; label = @9
                      local.get 7
                      i32.const 255
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 255
                      i32.add
                      local.set 7
                      br 5 (;@4;)
                    end
                    local.get 7
                    i32.const 254
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    br_if 3 (;@5;)
                    local.get 7
                    i32.const 253
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    br_if 2 (;@6;)
                    local.get 6
                    i32.const -4
                    i32.add
                    local.tee 6
                    i32.const -256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.set 6
                  br 4 (;@3;)
                end
                local.get 5
                local.get 1
                i32.store offset=20
                local.get 5
                local.get 0
                i32.store offset=16
                local.get 5
                i32.const 1051332
                i32.store offset=24
                i32.const 0
                local.set 7
                br 4 (;@2;)
              end
              local.get 6
              i32.const 253
              i32.add
              local.set 7
              br 1 (;@4;)
            end
            local.get 6
            i32.const 254
            i32.add
            local.set 7
          end
          block  ;; label = @4
            local.get 7
            local.get 1
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            local.set 6
            local.get 7
            local.get 1
            i32.eq
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 0
          local.get 7
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if 2 (;@1;)
          local.get 7
          local.set 6
        end
        local.get 5
        local.get 6
        i32.store offset=20
        local.get 5
        local.get 0
        i32.store offset=16
        local.get 5
        i32.const 1052004
        i32.store offset=24
        i32.const 5
        local.set 7
      end
      local.get 5
      local.get 7
      i32.store offset=28
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    local.get 1
                    i32.gt_u
                    local.tee 7
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 1
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 2
                    local.get 3
                    i32.gt_u
                    br_if 1 (;@7;)
                    local.get 2
                    i32.eqz
                    br_if 2 (;@6;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        local.get 1
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 1
                        local.get 2
                        i32.ne
                        br_if 1 (;@9;)
                        br 4 (;@6;)
                      end
                      local.get 0
                      local.get 2
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      br_if 3 (;@6;)
                    end
                    local.get 5
                    local.get 2
                    i32.store offset=32
                    local.get 2
                    local.set 3
                    br 3 (;@5;)
                  end
                  local.get 5
                  local.get 2
                  local.get 3
                  local.get 7
                  select
                  i32.store offset=40
                  local.get 5
                  i32.const 48
                  i32.add
                  i32.const 20
                  i32.add
                  i32.const 3
                  i32.store
                  local.get 5
                  i32.const 72
                  i32.add
                  i32.const 20
                  i32.add
                  i32.const 39
                  i32.store
                  local.get 5
                  i32.const 84
                  i32.add
                  i32.const 39
                  i32.store
                  local.get 5
                  i64.const 3
                  i64.store offset=52 align=4
                  local.get 5
                  i32.const 1052044
                  i32.store offset=48
                  local.get 5
                  i32.const 14
                  i32.store offset=76
                  local.get 5
                  local.get 5
                  i32.const 72
                  i32.add
                  i32.store offset=64
                  local.get 5
                  local.get 5
                  i32.const 24
                  i32.add
                  i32.store offset=88
                  local.get 5
                  local.get 5
                  i32.const 16
                  i32.add
                  i32.store offset=80
                  local.get 5
                  local.get 5
                  i32.const 40
                  i32.add
                  i32.store offset=72
                  local.get 5
                  i32.const 48
                  i32.add
                  local.get 4
                  call $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E
                  unreachable
                end
                local.get 5
                i32.const 100
                i32.add
                i32.const 39
                i32.store
                local.get 5
                i32.const 72
                i32.add
                i32.const 20
                i32.add
                i32.const 39
                i32.store
                local.get 5
                i32.const 84
                i32.add
                i32.const 14
                i32.store
                local.get 5
                i32.const 48
                i32.add
                i32.const 20
                i32.add
                i32.const 4
                i32.store
                local.get 5
                i64.const 4
                i64.store offset=52 align=4
                local.get 5
                i32.const 1052104
                i32.store offset=48
                local.get 5
                i32.const 14
                i32.store offset=76
                local.get 5
                local.get 5
                i32.const 72
                i32.add
                i32.store offset=64
                local.get 5
                local.get 5
                i32.const 24
                i32.add
                i32.store offset=96
                local.get 5
                local.get 5
                i32.const 16
                i32.add
                i32.store offset=88
                local.get 5
                local.get 5
                i32.const 12
                i32.add
                i32.store offset=80
                local.get 5
                local.get 5
                i32.const 8
                i32.add
                i32.store offset=72
                local.get 5
                i32.const 48
                i32.add
                local.get 4
                call $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E
                unreachable
              end
              local.get 5
              local.get 3
              i32.store offset=32
              local.get 3
              i32.eqz
              br_if 1 (;@4;)
            end
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  local.get 1
                  i32.lt_u
                  local.tee 7
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 3
                  i32.eq
                  br_if 5 (;@2;)
                  br 1 (;@6;)
                end
                local.get 0
                local.get 3
                i32.add
                local.tee 6
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    br_if 0 (;@8;)
                    local.get 1
                    local.get 3
                    i32.ne
                    br_if 1 (;@7;)
                    br 6 (;@2;)
                  end
                  local.get 6
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  br_if 4 (;@3;)
                end
                local.get 0
                local.get 1
                local.get 3
                local.get 1
                local.get 4
                call $_ZN4core3str16slice_error_fail17h0f2453c2264eb1f1E
                unreachable
              end
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              br_if 0 (;@5;)
            end
          end
          i32.const 0
          local.set 3
        end
        local.get 3
        local.get 1
        i32.eq
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 3
                i32.add
                local.tee 2
                i32.load8_s
                local.tee 7
                i32.const -1
                i32.gt_s
                br_if 0 (;@6;)
                i32.const 0
                local.set 8
                local.get 0
                local.get 1
                i32.add
                local.tee 6
                local.set 0
                block  ;; label = @7
                  local.get 2
                  i32.const 1
                  i32.add
                  local.get 6
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 2
                  i32.add
                  local.set 0
                  local.get 2
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  local.set 8
                end
                local.get 7
                i32.const 31
                i32.and
                local.set 1
                local.get 7
                i32.const 255
                i32.and
                i32.const 223
                i32.gt_u
                br_if 1 (;@5;)
                local.get 8
                local.get 1
                i32.const 6
                i32.shl
                i32.or
                local.set 7
                br 2 (;@4;)
              end
              local.get 5
              local.get 7
              i32.const 255
              i32.and
              i32.store offset=36
              br 2 (;@3;)
            end
            i32.const 0
            local.set 2
            local.get 6
            local.set 9
            block  ;; label = @5
              local.get 0
              local.get 6
              i32.eq
              br_if 0 (;@5;)
              local.get 0
              i32.const 1
              i32.add
              local.set 9
              local.get 0
              i32.load8_u
              i32.const 63
              i32.and
              local.set 2
            end
            local.get 2
            local.get 8
            i32.const 6
            i32.shl
            i32.or
            local.set 0
            block  ;; label = @5
              local.get 7
              i32.const 255
              i32.and
              i32.const 240
              i32.ge_u
              br_if 0 (;@5;)
              local.get 0
              local.get 1
              i32.const 12
              i32.shl
              i32.or
              local.set 7
              br 1 (;@4;)
            end
            i32.const 0
            local.set 7
            block  ;; label = @5
              local.get 9
              local.get 6
              i32.eq
              br_if 0 (;@5;)
              local.get 9
              i32.load8_u
              i32.const 63
              i32.and
              local.set 7
            end
            local.get 0
            i32.const 6
            i32.shl
            local.get 1
            i32.const 18
            i32.shl
            i32.const 1835008
            i32.and
            i32.or
            local.get 7
            i32.or
            local.tee 7
            i32.const 1114112
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 5
          local.get 7
          i32.store offset=36
          i32.const 1
          local.set 6
          local.get 7
          i32.const 128
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 2
          local.set 6
          local.get 7
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 3
          i32.const 4
          local.get 7
          i32.const 65536
          i32.lt_u
          select
          local.set 6
        end
        local.get 5
        local.get 3
        i32.store offset=40
        local.get 5
        local.get 6
        local.get 3
        i32.add
        i32.store offset=44
        local.get 5
        i32.const 48
        i32.add
        i32.const 20
        i32.add
        i32.const 5
        i32.store
        local.get 5
        i32.const 108
        i32.add
        i32.const 39
        i32.store
        local.get 5
        i32.const 100
        i32.add
        i32.const 39
        i32.store
        local.get 5
        i32.const 72
        i32.add
        i32.const 20
        i32.add
        i32.const 40
        i32.store
        local.get 5
        i32.const 84
        i32.add
        i32.const 41
        i32.store
        local.get 5
        i64.const 5
        i64.store offset=52 align=4
        local.get 5
        i32.const 1052188
        i32.store offset=48
        local.get 5
        i32.const 14
        i32.store offset=76
        local.get 5
        local.get 5
        i32.const 72
        i32.add
        i32.store offset=64
        local.get 5
        local.get 5
        i32.const 24
        i32.add
        i32.store offset=104
        local.get 5
        local.get 5
        i32.const 16
        i32.add
        i32.store offset=96
        local.get 5
        local.get 5
        i32.const 40
        i32.add
        i32.store offset=88
        local.get 5
        local.get 5
        i32.const 36
        i32.add
        i32.store offset=80
        local.get 5
        local.get 5
        i32.const 32
        i32.add
        i32.store offset=72
        local.get 5
        i32.const 48
        i32.add
        local.get 4
        call $_ZN4core9panicking9panic_fmt17hf69c8b08bc9d2ee5E
        unreachable
      end
      i32.const 1051344
      i32.const 43
      local.get 4
      call $_ZN4core9panicking5panic17hceae0c79b0247f98E
      unreachable
    end
    local.get 0
    local.get 1
    i32.const 0
    local.get 7
    i32.const 1051988
    call $_ZN4core3str16slice_error_fail17h0f2453c2264eb1f1E
    unreachable)
  (func $_ZN4core3fmt9Formatter12pad_integral17h8c76600d11a2c4b1E (type 14) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 43
        i32.const 1114112
        local.get 0
        i32.load
        local.tee 6
        i32.const 1
        i32.and
        local.tee 1
        select
        local.set 7
        local.get 1
        local.get 5
        i32.add
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 8
      local.get 0
      i32.load
      local.set 6
      i32.const 45
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 0
          local.set 9
          br 1 (;@2;)
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 10
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 9
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          i32.const 0
          local.set 9
          i32.const 0
          local.get 3
          i32.const -4
          i32.and
          i32.sub
          local.set 11
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 9
            local.get 1
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            i32.add
            local.get 1
            i32.const 1
            i32.add
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            i32.add
            local.get 1
            i32.const 2
            i32.add
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            i32.add
            local.get 1
            i32.const 3
            i32.add
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            i32.add
            local.set 9
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 11
            i32.const 4
            i32.add
            local.tee 11
            br_if 0 (;@4;)
          end
        end
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 9
          local.get 1
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.ne
          i32.add
          local.set 9
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 9
      local.get 8
      i32.add
      local.set 8
    end
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h585c4f72e1d84c1aE
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 3)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 9
                local.get 8
                i32.le_u
                br_if 0 (;@6;)
                local.get 6
                i32.const 8
                i32.and
                br_if 4 (;@2;)
                i32.const 0
                local.set 1
                local.get 9
                local.get 8
                i32.sub
                local.tee 10
                local.set 8
                i32.const 1
                local.get 0
                i32.load8_u offset=32
                local.tee 9
                local.get 9
                i32.const 3
                i32.eq
                select
                i32.const 3
                i32.and
                br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              local.get 0
              local.get 7
              local.get 2
              local.get 3
              call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h585c4f72e1d84c1aE
              br_if 4 (;@1;)
              local.get 0
              i32.load offset=24
              local.get 4
              local.get 5
              local.get 0
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 3)
              return
            end
            i32.const 0
            local.set 8
            local.get 10
            local.set 1
            br 1 (;@3;)
          end
          local.get 10
          i32.const 1
          i32.shr_u
          local.set 1
          local.get 10
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 8
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.set 10
        local.get 0
        i32.load offset=4
        local.set 9
        local.get 0
        i32.load offset=24
        local.set 11
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 11
            local.get 9
            local.get 10
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 1
        local.get 9
        i32.const 1114112
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h585c4f72e1d84c1aE
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=28
        local.set 10
        local.get 0
        i32.load offset=24
        local.set 11
        i32.const 0
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 8
              local.set 1
              br 2 (;@3;)
            end
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 11
            local.get 9
            local.get 10
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 1
          i32.const -1
          i32.add
          local.set 1
        end
        local.get 1
        local.get 8
        i32.lt_u
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=4
      local.set 6
      local.get 0
      i32.const 48
      i32.store offset=4
      local.get 0
      i32.load8_u offset=32
      local.set 12
      i32.const 1
      local.set 1
      local.get 0
      i32.const 1
      i32.store8 offset=32
      local.get 0
      local.get 7
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h585c4f72e1d84c1aE
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      local.get 9
      local.get 8
      i32.sub
      local.tee 10
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1
            local.get 0
            i32.load8_u offset=32
            local.tee 9
            local.get 9
            i32.const 3
            i32.eq
            select
            i32.const 3
            i32.and
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          i32.const 0
          local.set 3
          local.get 10
          local.set 1
          br 1 (;@2;)
        end
        local.get 10
        i32.const 1
        i32.shr_u
        local.set 1
        local.get 10
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 3
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      local.set 10
      local.get 0
      i32.load offset=4
      local.set 9
      local.get 0
      i32.load offset=24
      local.set 11
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 11
          local.get 9
          local.get 10
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 1
      local.get 9
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.get 4
      local.get 5
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 3)
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=28
      local.set 1
      local.get 0
      i32.load offset=24
      local.set 11
      i32.const 0
      local.set 10
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          local.get 10
          i32.eq
          br_if 1 (;@2;)
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 11
          local.get 9
          local.get 1
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 1
        local.get 10
        i32.const -1
        i32.add
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 12
      i32.store8 offset=32
      local.get 0
      local.get 6
      i32.store offset=4
      i32.const 0
      return
    end
    local.get 1)
  (func $_ZN4core3fmt9Formatter3new17habe79b232356982dE (type 5) (param i32 i32 i32)
    local.get 0
    i32.const 3
    i32.store8 offset=32
    local.get 0
    i64.const 137438953472
    i64.store align=4
    local.get 0
    local.get 1
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 28
    i32.add
    local.get 2
    i32.store)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h585c4f72e1d84c1aE (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          i32.const 1
          local.set 4
          local.get 0
          i32.load offset=24
          local.get 1
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=16
          call_indirect (type 1)
          br_if 1 (;@2;)
        end
        local.get 2
        br_if 1 (;@1;)
        i32.const 0
        local.set 4
      end
      local.get 4
      return
    end
    local.get 0
    i32.load offset=24
    local.get 2
    local.get 3
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 3))
  (func $_ZN4core3fmt9Formatter9write_str17h8d1fd395c47aef26E (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load offset=24
    local.get 1
    local.get 2
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 3))
  (func $_ZN4core3fmt9Formatter9write_fmt17h17510bd5fa687d11E (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.load offset=24
    local.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 0
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17hb363a5cc37db74afE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17hc53e3be06b94b8dbE (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 1
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        local.tee 4
        i32.const 34
        local.get 2
        i32.const 28
        i32.add
        i32.load
        local.tee 5
        i32.load offset=16
        local.tee 6
        call_indirect (type 1)
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            br_if 0 (;@4;)
            i32.const 0
            local.set 7
            br 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.add
          local.set 8
          i32.const 0
          local.set 7
          local.get 0
          local.set 9
          local.get 0
          local.set 10
          i32.const 0
          local.set 11
          block  ;; label = @4
            loop  ;; label = @5
              local.get 10
              i32.const 1
              i32.add
              local.set 12
              block  ;; label = @6
                block  ;; label = @7
                  local.get 10
                  i32.load8_s
                  local.tee 2
                  i32.const -1
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 255
                  i32.and
                  local.set 13
                  local.get 12
                  local.set 10
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 12
                    local.get 8
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 3
                    local.get 8
                    local.set 12
                    br 1 (;@7;)
                  end
                  local.get 10
                  i32.const 2
                  i32.add
                  local.set 12
                  local.get 10
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  local.set 3
                end
                local.get 2
                i32.const 31
                i32.and
                local.set 14
                block  ;; label = @7
                  local.get 2
                  i32.const 255
                  i32.and
                  local.tee 2
                  i32.const 223
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 14
                  i32.const 6
                  i32.shl
                  i32.or
                  local.set 13
                  local.get 12
                  local.set 10
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 12
                    local.get 8
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 12
                    local.get 8
                    local.set 10
                    br 1 (;@7;)
                  end
                  local.get 12
                  i32.const 1
                  i32.add
                  local.set 10
                  local.get 12
                  i32.load8_u
                  i32.const 63
                  i32.and
                  local.set 12
                end
                local.get 12
                local.get 3
                i32.const 6
                i32.shl
                i32.or
                local.set 12
                block  ;; label = @7
                  local.get 2
                  i32.const 240
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 12
                  local.get 14
                  i32.const 12
                  i32.shl
                  i32.or
                  local.set 13
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 10
                    local.get 8
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 2
                    local.get 8
                    local.set 10
                    br 1 (;@7;)
                  end
                  local.get 10
                  i32.load8_u
                  i32.const 63
                  i32.and
                  local.set 2
                  local.get 10
                  i32.const 1
                  i32.add
                  local.set 10
                end
                local.get 12
                i32.const 6
                i32.shl
                local.get 14
                i32.const 18
                i32.shl
                i32.const 1835008
                i32.and
                i32.or
                local.get 2
                i32.or
                local.tee 13
                i32.const 1114112
                i32.eq
                br_if 2 (;@4;)
              end
              i32.const 116
              local.set 14
              i32.const 2
              local.set 2
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 13
                                i32.const -9
                                i32.add
                                br_table 6 (;@8;) 3 (;@11;) 1 (;@13;) 1 (;@13;) 2 (;@12;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 4 (;@10;) 0 (;@14;)
                              end
                              local.get 13
                              i32.const 92
                              i32.eq
                              br_if 3 (;@10;)
                            end
                            block  ;; label = @13
                              local.get 13
                              call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd0ff6a60cca6cd88E
                              br_if 0 (;@13;)
                              local.get 13
                              call $_ZN4core7unicode9printable12is_printable17he5bf65b33214db13E
                              br_if 6 (;@7;)
                            end
                            local.get 13
                            i32.const 1
                            i32.or
                            i32.clz
                            i32.const 2
                            i32.shr_u
                            i32.const 7
                            i32.xor
                            i64.extend_i32_u
                            i64.const 21474836480
                            i64.or
                            local.set 15
                            i32.const 3
                            local.set 2
                            local.get 13
                            local.set 14
                            br 4 (;@8;)
                          end
                          i32.const 114
                          local.set 14
                          br 2 (;@9;)
                        end
                        i32.const 110
                        local.set 14
                        br 1 (;@9;)
                      end
                      local.get 13
                      local.set 14
                    end
                  end
                  local.get 11
                  local.get 7
                  i32.lt_u
                  br_if 1 (;@6;)
                  block  ;; label = @8
                    local.get 7
                    i32.eqz
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 7
                      local.get 1
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 7
                      local.get 1
                      i32.eq
                      br_if 1 (;@8;)
                      br 3 (;@6;)
                    end
                    local.get 0
                    local.get 7
                    i32.add
                    i32.load8_s
                    i32.const -64
                    i32.lt_s
                    br_if 2 (;@6;)
                  end
                  block  ;; label = @8
                    local.get 11
                    i32.eqz
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 11
                      local.get 1
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 11
                      local.get 1
                      i32.ne
                      br_if 3 (;@6;)
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 11
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.le_s
                    br_if 2 (;@6;)
                  end
                  block  ;; label = @8
                    local.get 4
                    local.get 0
                    local.get 7
                    i32.add
                    local.get 11
                    local.get 7
                    i32.sub
                    local.get 5
                    i32.load offset=12
                    call_indirect (type 3)
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 1
                    return
                  end
                  loop  ;; label = @8
                    local.get 2
                    local.set 12
                    i32.const 1
                    local.set 3
                    i32.const 92
                    local.set 7
                    i32.const 1
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 12
                                br_table 2 (;@12;) 1 (;@13;) 5 (;@9;) 0 (;@14;) 2 (;@12;)
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 15
                                      i64.const 32
                                      i64.shr_u
                                      i32.wrap_i64
                                      i32.const 255
                                      i32.and
                                      br_table 5 (;@12;) 6 (;@11;) 3 (;@14;) 0 (;@17;) 1 (;@16;) 2 (;@15;) 5 (;@12;)
                                    end
                                    local.get 15
                                    i64.const -1095216660481
                                    i64.and
                                    i64.const 8589934592
                                    i64.or
                                    local.set 15
                                    i32.const 3
                                    local.set 2
                                    i32.const 123
                                    local.set 7
                                    br 7 (;@9;)
                                  end
                                  local.get 15
                                  i64.const -1095216660481
                                  i64.and
                                  i64.const 12884901888
                                  i64.or
                                  local.set 15
                                  i32.const 3
                                  local.set 2
                                  i32.const 117
                                  local.set 7
                                  br 6 (;@9;)
                                end
                                local.get 15
                                i64.const -1095216660481
                                i64.and
                                i64.const 17179869184
                                i64.or
                                local.set 15
                                i32.const 3
                                local.set 2
                                br 5 (;@9;)
                              end
                              i32.const 48
                              i32.const 87
                              local.get 14
                              local.get 15
                              i32.wrap_i64
                              local.tee 2
                              i32.const 2
                              i32.shl
                              i32.shr_u
                              i32.const 15
                              i32.and
                              local.tee 7
                              i32.const 10
                              i32.lt_u
                              select
                              local.get 7
                              i32.add
                              local.set 7
                              local.get 2
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 15
                              i64.const -1
                              i64.add
                              i64.const 4294967295
                              i64.and
                              local.get 15
                              i64.const -4294967296
                              i64.and
                              i64.or
                              local.set 15
                              i32.const 3
                              local.set 2
                              br 4 (;@9;)
                            end
                            i32.const 0
                            local.set 2
                            local.get 14
                            local.set 7
                            br 3 (;@9;)
                          end
                          i32.const 1
                          local.set 2
                          block  ;; label = @12
                            local.get 13
                            i32.const 128
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 2
                            local.set 2
                            local.get 13
                            i32.const 2048
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 3
                            i32.const 4
                            local.get 13
                            i32.const 65536
                            i32.lt_u
                            select
                            local.set 2
                          end
                          local.get 2
                          local.get 11
                          i32.add
                          local.set 7
                          br 4 (;@7;)
                        end
                        local.get 15
                        i64.const -1095216660481
                        i64.and
                        local.set 15
                        i32.const 3
                        local.set 2
                        i32.const 125
                        local.set 7
                        br 1 (;@9;)
                      end
                      local.get 15
                      i64.const -1095216660481
                      i64.and
                      i64.const 4294967296
                      i64.or
                      local.set 15
                      i32.const 3
                      local.set 2
                    end
                    local.get 4
                    local.get 7
                    local.get 6
                    call_indirect (type 1)
                    i32.eqz
                    br_if 0 (;@8;)
                    br 6 (;@2;)
                  end
                end
                local.get 11
                local.get 9
                i32.sub
                local.get 10
                i32.add
                local.set 11
                local.get 10
                local.set 9
                local.get 10
                local.get 8
                i32.ne
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
            end
            local.get 0
            local.get 1
            local.get 7
            local.get 11
            i32.const 1051768
            call $_ZN4core3str16slice_error_fail17h0f2453c2264eb1f1E
            unreachable
          end
          block  ;; label = @4
            local.get 7
            br_if 0 (;@4;)
            i32.const 0
            local.set 7
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 7
            local.get 1
            i32.lt_u
            br_if 0 (;@4;)
            local.get 7
            local.get 1
            i32.eq
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 0
          local.get 7
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if 2 (;@1;)
        end
        i32.const 1
        local.set 3
        local.get 4
        local.get 0
        local.get 7
        i32.add
        local.get 1
        local.get 7
        i32.sub
        local.get 5
        i32.load offset=12
        call_indirect (type 3)
        br_if 0 (;@2;)
        local.get 4
        i32.const 34
        local.get 6
        call_indirect (type 1)
        return
      end
      local.get 3
      return
    end
    local.get 0
    local.get 1
    local.get 7
    local.get 1
    i32.const 1051784
    call $_ZN4core3str16slice_error_fail17h0f2453c2264eb1f1E
    unreachable)
  (func $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd0ff6a60cca6cd88E (type 9) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 11
    i32.shl
    local.set 1
    i32.const 0
    local.set 2
    i32.const 31
    local.set 3
    i32.const 31
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 1
              i32.shr_u
              local.get 2
              i32.add
              local.tee 3
              i32.const 2
              i32.shl
              i32.const 1053748
              i32.add
              i32.load
              i32.const 11
              i32.shl
              local.tee 5
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 5
              local.get 1
              i32.eq
              br_if 3 (;@2;)
              local.get 3
              local.set 4
              br 1 (;@4;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 2
          end
          local.get 4
          local.get 2
          i32.sub
          local.set 3
          local.get 4
          local.get 2
          i32.gt_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 3
      i32.const 1
      i32.add
      local.set 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 30
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 2
          i32.shl
          local.set 3
          i32.const 689
          local.set 4
          block  ;; label = @4
            local.get 2
            i32.const 30
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 1053752
            i32.add
            i32.load
            i32.const 21
            i32.shr_u
            local.set 4
          end
          i32.const 0
          local.set 5
          block  ;; label = @4
            local.get 2
            i32.const -1
            i32.add
            local.tee 1
            local.get 2
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 31
            i32.ge_u
            br_if 2 (;@2;)
            local.get 1
            i32.const 2
            i32.shl
            i32.const 1053748
            i32.add
            i32.load
            i32.const 2097151
            i32.and
            local.set 5
          end
          block  ;; label = @4
            local.get 4
            local.get 3
            i32.const 1053748
            i32.add
            i32.load
            i32.const 21
            i32.shr_u
            local.tee 2
            i32.const 1
            i32.add
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            local.get 5
            i32.sub
            local.set 1
            local.get 2
            i32.const 689
            local.get 2
            i32.const 689
            i32.gt_u
            select
            local.set 3
            local.get 4
            i32.const -1
            i32.add
            local.set 5
            i32.const 0
            local.set 4
            loop  ;; label = @5
              local.get 3
              local.get 2
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              local.get 2
              i32.const 1053872
              i32.add
              i32.load8_u
              i32.add
              local.tee 4
              local.get 1
              i32.gt_u
              br_if 1 (;@4;)
              local.get 5
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 5
            local.set 2
          end
          local.get 2
          i32.const 1
          i32.and
          return
        end
        local.get 2
        i32.const 31
        i32.const 1053692
        call $_ZN4core9panicking18panic_bounds_check17h1d84519ec46ed48cE
        unreachable
      end
      local.get 1
      i32.const 31
      i32.const 1053724
      call $_ZN4core9panicking18panic_bounds_check17h1d84519ec46ed48cE
      unreachable
    end
    local.get 3
    i32.const 689
    i32.const 1053708
    call $_ZN4core9panicking18panic_bounds_check17h1d84519ec46ed48cE
    unreachable)
  (func $_ZN4core7unicode9printable12is_printable17he5bf65b33214db13E (type 9) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.const 65536
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 131072
                      i32.lt_u
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const -173790
                      i32.add
                      i32.const 33
                      i32.gt_u
                      local.get 0
                      i32.const -177973
                      i32.add
                      i32.const 10
                      i32.gt_u
                      i32.and
                      local.get 0
                      i32.const 2097150
                      i32.and
                      i32.const 178206
                      i32.ne
                      i32.and
                      local.get 0
                      i32.const -183970
                      i32.add
                      i32.const 13
                      i32.gt_u
                      i32.and
                      local.get 0
                      i32.const -191457
                      i32.add
                      i32.const 3102
                      i32.gt_u
                      i32.and
                      local.get 0
                      i32.const -195102
                      i32.add
                      i32.const 1505
                      i32.gt_u
                      i32.and
                      local.get 0
                      i32.const -201547
                      i32.add
                      i32.const 716212
                      i32.gt_u
                      i32.and
                      local.get 0
                      i32.const 918000
                      i32.lt_u
                      i32.and
                      local.set 1
                      br 2 (;@7;)
                    end
                    i32.const 1052300
                    local.set 2
                    i32.const 0
                    local.set 3
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.const 255
                    i32.and
                    local.set 4
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 2
                        i32.const 2
                        i32.add
                        local.set 5
                        local.get 3
                        local.get 2
                        i32.load8_u offset=1
                        local.tee 1
                        i32.add
                        local.set 6
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u
                          local.tee 2
                          local.get 4
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 2
                          local.get 4
                          i32.gt_u
                          br_if 2 (;@9;)
                          local.get 6
                          local.set 3
                          local.get 5
                          local.set 2
                          local.get 5
                          i32.const 1052382
                          i32.ne
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                        local.get 6
                        local.get 3
                        i32.lt_u
                        br_if 4 (;@6;)
                        local.get 6
                        i32.const 290
                        i32.gt_u
                        br_if 5 (;@5;)
                        local.get 3
                        i32.const 1052382
                        i32.add
                        local.set 2
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 1
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 1
                            i32.const -1
                            i32.add
                            local.set 1
                            local.get 2
                            i32.load8_u
                            local.set 3
                            local.get 2
                            i32.const 1
                            i32.add
                            local.set 2
                            local.get 3
                            local.get 0
                            i32.const 255
                            i32.and
                            i32.ne
                            br_if 0 (;@12;)
                          end
                          i32.const 0
                          local.set 1
                          br 4 (;@7;)
                        end
                        local.get 6
                        local.set 3
                        local.get 5
                        local.set 2
                        local.get 5
                        i32.const 1052382
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.const 65535
                    i32.and
                    local.set 0
                    i32.const 1052672
                    local.set 2
                    i32.const 1
                    local.set 1
                    loop  ;; label = @9
                      local.get 2
                      i32.const 1
                      i32.add
                      local.set 6
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u
                          local.tee 3
                          i32.const 24
                          i32.shl
                          i32.const 24
                          i32.shr_s
                          local.tee 5
                          i32.const 0
                          i32.lt_s
                          br_if 0 (;@11;)
                          local.get 6
                          local.set 2
                          br 1 (;@10;)
                        end
                        local.get 6
                        i32.const 1052981
                        i32.eq
                        br_if 6 (;@4;)
                        local.get 5
                        i32.const 127
                        i32.and
                        i32.const 8
                        i32.shl
                        local.get 2
                        i32.load8_u offset=1
                        i32.or
                        local.set 3
                        local.get 2
                        i32.const 2
                        i32.add
                        local.set 2
                      end
                      local.get 0
                      local.get 3
                      i32.sub
                      local.tee 0
                      i32.const 0
                      i32.lt_s
                      br_if 2 (;@7;)
                      local.get 1
                      i32.const 1
                      i32.xor
                      local.set 1
                      local.get 2
                      i32.const 1052981
                      i32.ne
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  i32.const 1052981
                  local.set 2
                  i32.const 0
                  local.set 3
                  local.get 0
                  i32.const 8
                  i32.shr_u
                  i32.const 255
                  i32.and
                  local.set 4
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 2
                      i32.const 2
                      i32.add
                      local.set 5
                      local.get 3
                      local.get 2
                      i32.load8_u offset=1
                      local.tee 1
                      i32.add
                      local.set 6
                      block  ;; label = @10
                        local.get 2
                        i32.load8_u
                        local.tee 2
                        local.get 4
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 2
                        local.get 4
                        i32.gt_u
                        br_if 2 (;@8;)
                        local.get 6
                        local.set 3
                        local.get 5
                        local.set 2
                        local.get 5
                        i32.const 1053057
                        i32.ne
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                      local.get 6
                      local.get 3
                      i32.lt_u
                      br_if 6 (;@3;)
                      local.get 6
                      i32.const 175
                      i32.gt_u
                      br_if 7 (;@2;)
                      local.get 3
                      i32.const 1053057
                      i32.add
                      local.set 2
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 1
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 1
                          i32.const -1
                          i32.add
                          local.set 1
                          local.get 2
                          i32.load8_u
                          local.set 3
                          local.get 2
                          i32.const 1
                          i32.add
                          local.set 2
                          local.get 3
                          local.get 0
                          i32.const 255
                          i32.and
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        i32.const 0
                        local.set 1
                        br 3 (;@7;)
                      end
                      local.get 6
                      local.set 3
                      local.get 5
                      local.set 2
                      local.get 5
                      i32.const 1053057
                      i32.ne
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  i32.const 65535
                  i32.and
                  local.set 0
                  i32.const 1053232
                  local.set 2
                  i32.const 1
                  local.set 1
                  loop  ;; label = @8
                    local.get 2
                    i32.const 1
                    i32.add
                    local.set 6
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.load8_u
                        local.tee 3
                        i32.const 24
                        i32.shl
                        i32.const 24
                        i32.shr_s
                        local.tee 5
                        i32.const 0
                        i32.lt_s
                        br_if 0 (;@10;)
                        local.get 6
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 6
                      i32.const 1053651
                      i32.eq
                      br_if 8 (;@1;)
                      local.get 5
                      i32.const 127
                      i32.and
                      i32.const 8
                      i32.shl
                      local.get 2
                      i32.load8_u offset=1
                      i32.or
                      local.set 3
                      local.get 2
                      i32.const 2
                      i32.add
                      local.set 2
                    end
                    local.get 0
                    local.get 3
                    i32.sub
                    local.tee 0
                    i32.const 0
                    i32.lt_s
                    br_if 1 (;@7;)
                    local.get 1
                    i32.const 1
                    i32.xor
                    local.set 1
                    local.get 2
                    i32.const 1053651
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 1
                i32.const 1
                i32.and
                return
              end
              local.get 3
              local.get 6
              i32.const 1052268
              call $_ZN4core5slice5index22slice_index_order_fail17he388d03b2828b4ebE
              unreachable
            end
            local.get 6
            i32.const 290
            i32.const 1052268
            call $_ZN4core5slice5index24slice_end_index_len_fail17he00053322d4d7aa4E
            unreachable
          end
          i32.const 1051344
          i32.const 43
          i32.const 1052284
          call $_ZN4core9panicking5panic17hceae0c79b0247f98E
          unreachable
        end
        local.get 3
        local.get 6
        i32.const 1052268
        call $_ZN4core5slice5index22slice_index_order_fail17he388d03b2828b4ebE
        unreachable
      end
      local.get 6
      i32.const 175
      i32.const 1052268
      call $_ZN4core5slice5index24slice_end_index_len_fail17he00053322d4d7aa4E
      unreachable
    end
    i32.const 1051344
    i32.const 43
    i32.const 1052284
    call $_ZN4core9panicking5panic17hceae0c79b0247f98E
    unreachable)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h86821b8cd9767c9cE (type 3) (param i32 i32 i32) (result i32)
    local.get 2
    local.get 0
    local.get 1
    call $_ZN4core3fmt9Formatter3pad17h72ccc4219c1d09f0E)
  (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h73734b2156cbce99E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i32)
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      local.tee 3
      i32.const 39
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      local.tee 4
      call_indirect (type 1)
      br_if 0 (;@1;)
      i32.const 116
      local.set 5
      i32.const 2
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load
                        local.tee 0
                        i32.const -9
                        i32.add
                        br_table 8 (;@2;) 3 (;@7;) 1 (;@9;) 1 (;@9;) 2 (;@8;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 4 (;@6;) 0 (;@10;)
                      end
                      local.get 0
                      i32.const 92
                      i32.eq
                      br_if 3 (;@6;)
                    end
                    local.get 0
                    call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd0ff6a60cca6cd88E
                    br_if 3 (;@5;)
                    local.get 0
                    call $_ZN4core7unicode9printable12is_printable17he5bf65b33214db13E
                    i32.eqz
                    br_if 4 (;@4;)
                    i32.const 1
                    local.set 1
                    local.get 0
                    local.set 5
                    br 6 (;@2;)
                  end
                  i32.const 114
                  local.set 5
                  i32.const 2
                  local.set 1
                  br 5 (;@2;)
                end
                i32.const 110
                local.set 5
                i32.const 2
                local.set 1
                br 4 (;@2;)
              end
              i32.const 2
              local.set 1
              local.get 0
              local.set 5
              br 3 (;@2;)
            end
            local.get 0
            i32.const 1
            i32.or
            i32.clz
            i32.const 2
            i32.shr_u
            i32.const 7
            i32.xor
            i64.extend_i32_u
            i64.const 21474836480
            i64.or
            local.set 6
            br 1 (;@3;)
          end
          local.get 0
          i32.const 1
          i32.or
          i32.clz
          i32.const 2
          i32.shr_u
          i32.const 7
          i32.xor
          i64.extend_i32_u
          i64.const 21474836480
          i64.or
          local.set 6
        end
        i32.const 3
        local.set 1
        local.get 0
        local.set 5
      end
      loop  ;; label = @2
        local.get 1
        local.set 7
        i32.const 0
        local.set 1
        local.get 5
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  br_table 1 (;@6;) 4 (;@3;) 2 (;@5;) 0 (;@7;) 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i64.const 32
                          i64.shr_u
                          i32.wrap_i64
                          i32.const 255
                          i32.and
                          br_table 5 (;@6;) 0 (;@11;) 4 (;@7;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 5 (;@6;)
                        end
                        local.get 6
                        i64.const -1095216660481
                        i64.and
                        local.set 6
                        i32.const 125
                        local.set 0
                        i32.const 3
                        local.set 1
                        br 7 (;@3;)
                      end
                      local.get 6
                      i64.const -1095216660481
                      i64.and
                      i64.const 8589934592
                      i64.or
                      local.set 6
                      i32.const 123
                      local.set 0
                      i32.const 3
                      local.set 1
                      br 6 (;@3;)
                    end
                    local.get 6
                    i64.const -1095216660481
                    i64.and
                    i64.const 12884901888
                    i64.or
                    local.set 6
                    i32.const 117
                    local.set 0
                    i32.const 3
                    local.set 1
                    br 5 (;@3;)
                  end
                  local.get 6
                  i64.const -1095216660481
                  i64.and
                  i64.const 17179869184
                  i64.or
                  local.set 6
                  i32.const 92
                  local.set 0
                  i32.const 3
                  local.set 1
                  br 4 (;@3;)
                end
                i32.const 48
                i32.const 87
                local.get 5
                local.get 6
                i32.wrap_i64
                local.tee 1
                i32.const 2
                i32.shl
                i32.shr_u
                i32.const 15
                i32.and
                local.tee 0
                i32.const 10
                i32.lt_u
                select
                local.get 0
                i32.add
                local.set 0
                local.get 1
                i32.eqz
                br_if 2 (;@4;)
                local.get 6
                i64.const -1
                i64.add
                i64.const 4294967295
                i64.and
                local.get 6
                i64.const -4294967296
                i64.and
                i64.or
                local.set 6
                i32.const 3
                local.set 1
                br 3 (;@3;)
              end
              local.get 3
              i32.const 39
              local.get 4
              call_indirect (type 1)
              local.set 2
              br 4 (;@1;)
            end
            i32.const 92
            local.set 0
            i32.const 1
            local.set 1
            br 1 (;@3;)
          end
          local.get 6
          i64.const -1095216660481
          i64.and
          i64.const 4294967296
          i64.or
          local.set 6
          i32.const 3
          local.set 1
        end
        local.get 3
        local.get 0
        local.get 4
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hd631321d4e9e6babE (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.add
      i32.const 127
      i32.add
      i32.const 48
      i32.const 87
      local.get 3
      i32.const 15
      i32.and
      local.tee 4
      i32.const 10
      i32.lt_u
      select
      local.get 4
      i32.add
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 255
      i32.and
      local.tee 4
      i32.const 4
      i32.shr_u
      local.set 3
      local.get 4
      i32.const 15
      i32.gt_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.const 128
      i32.add
      local.tee 3
      i32.const 129
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 128
      i32.const 1051520
      call $_ZN4core5slice5index26slice_start_index_len_fail17hfdb57cc8dc82f9cbE
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1051536
    i32.const 2
    local.get 2
    local.get 0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h8c76600d11a2c4b1E
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num3imp7fmt_u6417h4d8c26c3623cb98bE (type 15) (param i64 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 39
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 39
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.const 1051538
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1051538
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 99
      i32.le_s
      br_if 0 (;@1;)
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      local.get 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1051538
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 10
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 1
        i32.shl
        i32.const 1051538
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.add
      local.get 6
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 2
    local.get 1
    i32.const 1051332
    i32.const 0
    local.get 3
    i32.const 9
    i32.add
    local.get 4
    i32.add
    i32.const 39
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h8c76600d11a2c4b1E
    local.set 4
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hb9caf99136f460abE (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.tee 0
    i64.extend_i32_u
    local.get 0
    i32.const -1
    i32.xor
    i64.extend_i32_s
    i64.const 1
    i64.add
    local.get 0
    i32.const -1
    i32.gt_s
    local.tee 0
    select
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h4d8c26c3623cb98bE)
  (func $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2ef6a25142e514aE (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=24
    i32.const 1053740
    i32.const 5
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 3))
  (func $memcpy (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 3
      i32.and
      local.set 3
      i32.const 0
      local.set 4
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.add
        i32.const 3
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const -4
        i32.and
        local.set 5
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 0
          local.get 4
          i32.add
          local.tee 2
          local.get 1
          local.get 4
          i32.add
          local.tee 6
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.get 6
          i32.const 1
          i32.add
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 2
          i32.add
          local.get 6
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 3
          i32.add
          local.get 6
          i32.const 3
          i32.add
          i32.load8_u
          i32.store8
          local.get 5
          local.get 4
          i32.const 4
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.add
      local.set 2
      local.get 0
      local.get 4
      i32.add
      local.set 4
      loop  ;; label = @2
        local.get 4
        local.get 2
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memset (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 7
      i32.and
      local.set 3
      i32.const 0
      local.set 4
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.add
        i32.const 7
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const -8
        i32.and
        local.set 5
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 0
          local.get 4
          i32.add
          local.tee 2
          local.get 1
          i32.store8
          local.get 2
          i32.const 7
          i32.add
          local.get 1
          i32.store8
          local.get 2
          i32.const 6
          i32.add
          local.get 1
          i32.store8
          local.get 2
          i32.const 5
          i32.add
          local.get 1
          i32.store8
          local.get 2
          i32.const 4
          i32.add
          local.get 1
          i32.store8
          local.get 2
          i32.const 3
          i32.add
          local.get 1
          i32.store8
          local.get 2
          i32.const 2
          i32.add
          local.get 1
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.get 1
          i32.store8
          local.get 5
          local.get 4
          i32.const 8
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 4
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.store8
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcmp (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3)
  (table (;0;) 44 44 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1055048))
  (global (;2;) i32 (i32.const 1055056))
  (export "memory" (memory 0))
  (export "authentication" (func $authentication))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hd631321d4e9e6babE $_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h79bafd6618374d9aE $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2ef6a25142e514aE $_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h6d198a4aa7f19cffE $_ZN61_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h45431cd82259ef7aE $_ZN4core3ptr54drop_in_place$LT$$RF$mut$u20$alloc..string..String$GT$17h812419296af9506bE.llvm.13827028329745944904 $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h78b9c4149c22116dE.llvm.13827028329745944904 $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hddf51bcc9d84867eE.llvm.13827028329745944904 $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h580641437cba117cE.llvm.13827028329745944904 $_ZN4core3ptr54drop_in_place$LT$$RF$mut$u20$alloc..string..String$GT$17h49df79e12a85d052E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h82f10565ef6bfd7aE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4857cf2da1f41df4E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h77392364fd5114f8E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h3df307cf9bb0f560E $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h667b172896ba5eafE $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h933b0833ab6449caE.llvm.8830830793381635981 $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h642c18f01b1837c1E.llvm.8830830793381635981 $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17heb39c38eb75e5f9dE.llvm.8830830793381635981 $_ZN4core3fmt5Write9write_fmt17hd7957869af5b4f91E $_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h0565fabb4f667d41E.llvm.8830830793381635981 $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hb9caf99136f460abE $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h40c0b34608758a87E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcabc397230f18c07E $_ZN3std5alloc24default_alloc_error_hook17hc8541f7c1ec32afeE $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbb05f427c3faacacE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hbb9d609fa6ca2265E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h9f0e7629dba1bc1eE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4e63be9707973d51E $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17hd9ab65052492b52aE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h0213f8a547c7e7bbE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h023e80216351dde5E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h8c5dc867f0a69941E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17hb5cbf70b53a72f1eE $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$GT$17h4523db22d8196732E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hef2b492c5a1991f7E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbfbca4fb35e9bd6dE $_ZN4core3ops8function6FnOnce9call_once17h66d552c917209568E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he0fb0ec556a6ab4aE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha820d3379de3c823E $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acba3bf85e29330E $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h73734b2156cbce99E $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17haa4e00c186f7b014E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h509a82f298b121bcE)
  (data $.rodata (i32.const 1048576) "called `Result::unwrap()` on an `Err` value\00\02\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00argfunc\00S\00\10\00\00\00\00\00\00\00\00\00 \00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00src/lib.rs\00\00|\00\10\00\0a\00\00\00\1d\00\00\00(\00\00\00200<html><h1>Auth Pass!</h1><p>hash </p></html>403<html><h1>Auth Forbidden!</h1><p>hash |\00\10\00\0a\00\00\003\00\00\004\00\00\00statusbody\00\00\06\00\00\00\04\00\00\00\04\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00/root/.cargo/registry/src/github.com-1ecc6299db9ec823/block-buffer-0.9.0/src/lib.rs\00$\01\10\00S\00\00\00\84\00\00\00\09\00\00\00$\01\10\00S\00\00\00\87\00\00\00\17\00\00\00$\01\10\00S\00\00\00\8b\00\00\00\1b\00\00\00$\01\10\00S\00\00\00\1b\00\00\00\0d\00\00\00$\01\10\00S\00\00\00\22\00\00\00\0d\00\00\00internal error: entered unreachable code/root/.cargo/registry/src/github.com-1ecc6299db9ec823/serde_json-1.0.72/src/ser.rs\00\00\f0\01\10\00R\00\00\002\06\00\00\12\00\00\00\f0\01\10\00R\00\00\00*\08\00\00;\00\00\00\f0\01\10\00R\00\00\004\08\00\007\00\00\00\5ct\5cr\5cn\5cf\5cb\5c\5c\5c\22\00\00\0a\00\00\00\04\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\10\00\00\00\0c\00\00\00\04\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00a Display implementation returned an error unexpectedly/rustc/59eed8a2aac0230a8b53e89d4e99d55912ba6b35/library/alloc/src/string.rs\00\00\eb\02\10\00K\00\00\00O\09\00\00\0e\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\01\00\00\00\00\00\00\00recursion limit exceededunexpected end of hex escapetrailing characterstrailing commalone leading surrogate in hex escapekey must be a stringcontrol character (\5cu0000-\5cu001F) found while parsing a stringinvalid unicode code pointnumber out of rangeinvalid numberinvalid escapeexpected valueexpected identexpected `,` or `}`expected `,` or `]`expected `:`EOF while parsing a valueEOF while parsing a stringEOF while parsing an objectEOF while parsing a listError(, line: , column: )\00\00\00(\05\10\00\06\00\00\00.\05\10\00\08\00\00\006\05\10\00\0a\00\00\00@\05\10\00\01\00\00\000123456789abcdefuuuuuuuubtnufruuuuuuuuuuuuuuuuuu\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\5c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01#Eg\89\ab\cd\ef\fe\dc\ba\98vT2\10\19\00\00\00\04\00\00\00\04\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00called `Option::unwrap()` on a `None` value\00\01\00\00\00\00\00\00\00\9c\06\10\00\00\00\00\00uncategorized errorother errorout of memoryunexpected end of fileunsupportedoperation interruptedargument list too longfilename too longtoo many linkscross-device link or renamedeadlockexecutable file busyresource busyfile too largefilesystem quota exceededseek on unseekable fileno storage spacewrite zerotimed outinvalid datainvalid input parameterstale network file handlefilesystem loop or indirection limit (e.g. symlink loop)read-only filesystem or storage mediumdirectory not emptyis a directorynot a directoryoperation would blockentity already existsbroken pipenetwork downaddress not availableaddress in usenot connectedconnection abortednetwork unreachablehost unreachableconnection resetconnection refusedpermission deniedentity not found (os error )\00\00\9c\06\10\00\00\00\00\00\c6\09\10\00\0b\00\00\00\d1\09\10\00\01\00\00\00library/std/src/panicking.rs\ec\09\10\00\1c\00\00\00\03\02\00\00\1f\00\00\00\ec\09\10\00\1c\00\00\00\04\02\00\00\1e\00\00\00\1d\00\00\00\10\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00\19\00\00\00\08\00\00\00\04\00\00\00 \00\00\00!\00\00\00\22\00\00\00\0c\00\00\00\04\00\00\00#\00\00\00\19\00\00\00\08\00\00\00\04\00\00\00$\00\00\00operation successfullibrary/alloc/src/raw_vec.rscapacity overflow\00\00\00\84\0a\10\00\1c\00\00\00/\02\00\00\05\00\00\00..\00\00\c4\0a\10\00\02\00\00\00called `Option::unwrap()` on a `None` value\00*\00\00\00\00\00\00\00\01\00\00\00+\00\00\00index out of bounds: the len is  but the index is \00\00\0c\0b\10\00 \00\00\00,\0b\10\00\12\00\00\00`: \00\c4\0a\10\00\00\00\00\00Q\0b\10\00\02\00\00\00library/core/src/fmt/num.rs\00d\0b\10\00\1b\00\00\00e\00\00\00\14\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899library/core/src/fmt/mod.rs\00\00\00Z\0c\10\00\1b\00\00\00U\08\00\00\1e\00\00\00Z\0c\10\00\1b\00\00\00\5c\08\00\00\16\00\00\00range start index  out of range for slice of length \98\0c\10\00\12\00\00\00\aa\0c\10\00\22\00\00\00range end index \dc\0c\10\00\10\00\00\00\aa\0c\10\00\22\00\00\00slice index starts at  but ends at \00\fc\0c\10\00\16\00\00\00\12\0d\10\00\0d\00\00\00library/core/src/str/validations.rs\000\0d\10\00#\00\00\00\11\01\00\00\11\00\00\00[...]byte index  is out of bounds of `\00\00i\0d\10\00\0b\00\00\00t\0d\10\00\16\00\00\00P\0b\10\00\01\00\00\00begin <= end ( <= ) when slicing `\00\00\a4\0d\10\00\0e\00\00\00\b2\0d\10\00\04\00\00\00\b6\0d\10\00\10\00\00\00P\0b\10\00\01\00\00\00 is not a char boundary; it is inside  (bytes ) of `i\0d\10\00\0b\00\00\00\e8\0d\10\00&\00\00\00\0e\0e\10\00\08\00\00\00\16\0e\10\00\06\00\00\00P\0b\10\00\01\00\00\00library/core/src/unicode/printable.rs\00\00\00D\0e\10\00%\00\00\00\0a\00\00\00\1c\00\00\00D\0e\10\00%\00\00\00\1a\00\00\006\00\00\00\00\01\03\05\05\06\06\03\07\06\08\08\09\11\0a\1c\0b\19\0c\14\0d\10\0e\0d\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1c\02\1d\01\1f\16 \03+\03,\02-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\1d\dd\0e\0fKL\fb\fc./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11)EIWde\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\bb\bc\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\c0\c1\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab5(\0b\80\e0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06!?L\04-\03t\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\b3-t\0c\80\d6\1a\0c\05\80\ff\05\80\df\0c\ee\0d\03\84\8d\037\09\81\5c\14\80\b8\08\80\cb*8\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\11\14\01\15\02\17\02\19\0d\1c\05\1d\08$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e8\02\ee \f0\04\f8\02\f9\02\fa\02\fb\01\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afy\ccno\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&RN(\08*V\1c\14\17\09N\04\1e\0fC\0e\19\07\0a\06H\08'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8bb\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\139\07\0a6,\04\10\80\c0<dS\0cH\09\0aFE\1bH\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\80\b7\01\0f2\0d\83\9bfu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\82\b0[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6*\09\a2\f7\81\1f1\03\11\04\08\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\85P+\80\d5-\03\1a\04\02\81p:\05\01\85\00\80\d7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\08\0d\03\0d\03t\0cY\07\0c\14\0c\048\08\0a\06(\08\22N\81T\0c\15\03\03\05\07\09\19\07\07\09\03\0d\07)\80\cb%\0a\84\06library/core/src/unicode/unicode_data.rs\00\d3\13\10\00(\00\00\00K\00\00\00(\00\00\00\d3\13\10\00(\00\00\00W\00\00\00\16\00\00\00\d3\13\10\00(\00\00\00R\00\00\00>\00\00\00Error\00\00\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17\a0\1e\0c \e0\1e\ef, +*0\a0+o\a6`,\02\a8\e0,\1e\fb\e0-\00\fe\a05\9e\ff\e05\fd\01a6\01\0a\a16$\0da7\ab\0e\e18/\18!90\1caF\f3\1e\a1J\f0jaNOo\a1N\9d\bc!Oe\d1\e1O\00\da!P\00\e0\e1Q0\e1aS\ec\e2\a1T\d0\e8\e1T \00.U\f0\01\bfU\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03w\0f\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\019\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\01\02\01\03\01\05\02\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\06J\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\03\1d\03\1d\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03w\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\11?\040\07\01\01\05\01(\09\0c\02 \04\02\02\01\038\01\01\02\03\01\01\03:\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6:\01\05\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b.\030\01\02\04\02\02'\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04\00\02\99\0b\b0\016\0f8\031\04\02\02E\03$\05\01\08>\01\0c\024\09\0a\04\02\01_\03\02\01\01\02\06\01\a0\01\03\08\15\029\02\01\01\01\01\16\01\0e\07\03\05\c3\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\06\01\01e\03\02\04\01\05\00\09\01\02\f5\01\0a\02\01\01\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\00\05;\07\00\01?\04Q\01\00\02\00\01\01\03\04\05\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05\00\07\00\04\00\07m\07\00`\80\f0\00"))
