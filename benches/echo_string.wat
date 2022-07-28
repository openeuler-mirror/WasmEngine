(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32 i32) (result i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func))
  (func $_ZN5alloc7raw_vec11finish_grow17hb0d15f3315376671E.llvm.5498297495365631718 (type 3) (param i32 i32 i32 i32)
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
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h8f755dd0b2b93d41E (type 4) (param i32 i32 i32)
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
      call $_ZN5alloc7raw_vec11finish_grow17hb0d15f3315376671E.llvm.5498297495365631718
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
        call $_ZN5alloc5alloc18handle_alloc_error17h30c0e85c9964825dE
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
    call $_ZN5alloc7raw_vec17capacity_overflow17h4b49014830cafe63E
    unreachable)
  (func $echo_string (type 5) (param i32 i32) (result i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 1
          call $__rust_alloc
          local.tee 3
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store offset=4
        local.get 2
        local.get 3
        i32.store
        local.get 3
        local.get 0
        local.get 1
        call $memcpy
        drop
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 2
        local.get 1
        i32.const 1
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h8f755dd0b2b93d41E
        local.get 2
        i32.load
        local.get 2
        i32.load offset=8
        i32.add
        i32.const 98
        i32.store8
        local.get 2
        i32.load
        local.set 1
        local.get 2
        i32.load offset=8
        local.set 3
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.const 1
          call $__rust_dealloc
        end
        local.get 2
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 1
        local.get 3
        i32.const 1
        i32.add
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h4b49014830cafe63E
      unreachable
    end
    local.get 1
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h30c0e85c9964825dE
    unreachable)
  (func $__rust_alloc (type 2) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    call $__rdl_alloc
    local.set 2
    local.get 2
    return)
  (func $__rust_dealloc (type 4) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc
    local.set 4
    local.get 4
    return)
  (func $__rust_alloc_error_handler (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $__rg_oom
    return)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h824575441ffde977E (type 7) (param i32) (result i64)
    i64.const 9147559743429524724)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hd6ff5e55e3ba8f3eE (type 7) (param i32) (result i64)
    i64.const -2306166442677192007)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17he8a3041642413ca6E (type 4) (param i32 i32 i32)
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
      call $_ZN5alloc7raw_vec11finish_grow17hb5ee4cf686986250E
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
        call $_ZN5alloc5alloc18handle_alloc_error17h30c0e85c9964825dE
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
    call $_ZN5alloc7raw_vec17capacity_overflow17h4b49014830cafe63E
    unreachable)
  (func $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17ha3e29bb00fd76937E (type 8) (param i32))
  (func $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17hfddd0945500a84e5E (type 8) (param i32)
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
  (func $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17he4eedabc21d9757dE (type 8) (param i32)
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
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h5a7df91b5d6090cbE (type 9) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048600
      i32.const 43
      i32.const 1048696
      call $_ZN4core9panicking5panic17hec1fc057bd0baf0bE
      unreachable
    end
    local.get 0)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hf45be9e7d87cbf99E (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048600
      i32.const 43
      local.get 1
      call $_ZN4core9panicking5panic17hec1fc057bd0baf0bE
      unreachable
    end
    local.get 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2e09602723e0822aE (type 2) (param i32 i32) (result i32)
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
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17he8a3041642413ca6E
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
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17he8a3041642413ca6E
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
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h81d0daecbbff04b5E (type 2) (param i32 i32) (result i32)
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
    i32.const 1048576
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17hbbaf39f09bf49efbE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17heed6350c990c190fE (type 1) (param i32 i32 i32) (result i32)
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17he8a3041642413ca6E
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
  (func $_ZN5alloc7raw_vec11finish_grow17hb5ee4cf686986250E (type 3) (param i32 i32 i32 i32)
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
  (func $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h189fbca0373ab828E (type 2) (param i32 i32) (result i32)
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
              call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
              local.get 1
              i32.gt_u
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h2a27207ee9af7fe9E
            local.set 2
            br 2 (;@2;)
          end
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 1
        end
        i32.const 0
        local.set 2
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
        local.set 3
        local.get 3
        local.get 3
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        i32.add
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
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
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
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
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.tee 4
        i32.add
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        i32.add
        i32.const -4
        i32.add
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h2a27207ee9af7fe9E
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hae04a1e6cfd1658cE
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
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hae04a1e6cfd1658cE
          local.set 2
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
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
            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17ha951b962517f2e83E
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
            local.get 0
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
            local.get 0
            local.get 2
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2f90bddfab9fdaf9E
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
        call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17ha951b962517f2e83E
        br_if 1 (;@1;)
        local.get 1
        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
        local.tee 0
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.get 4
        i32.add
        i32.le_u
        br_if 1 (;@1;)
        local.get 1
        local.get 4
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
        local.set 2
        local.get 1
        local.get 4
        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
        local.get 2
        local.get 0
        local.get 4
        i32.sub
        local.tee 0
        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
        local.get 2
        local.get 0
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2f90bddfab9fdaf9E
        br 1 (;@1;)
      end
      local.get 2
      return
    end
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
    local.set 0
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17ha951b962517f2e83E
    drop
    local.get 0)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h2a27207ee9af7fe9E (type 9) (param i32) (result i32)
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
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
          local.set 3
          local.get 3
          local.get 3
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
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
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
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
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 3
          i32.const 0
          i32.load offset=1048888
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
                i32.const 1049156
                i32.add
                i32.load
                local.tee 0
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                local.get 5
                call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h26ab250442f6ee68E
                i32.shl
                local.set 6
                i32.const 0
                local.set 7
                i32.const 0
                local.set 4
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
                    call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
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
              call $_ZN8dlmalloc8dlmalloc9left_bits17hf3cde9f9b07a0a60E
              i32.const 0
              i32.load offset=1048888
              i32.and
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              call $_ZN8dlmalloc8dlmalloc9least_bit17h2f155e22ffd5c3eaE
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1049156
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
              call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
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
              call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hf42853009da41559E
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 4
            i32.eqz
            br_if 2 (;@2;)
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1049284
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
          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
          local.tee 0
          local.get 3
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
          local.set 7
          local.get 4
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h811ec73b71d5eb3fE
              local.get 7
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
              block  ;; label = @6
                local.get 2
                i32.const 256
                i32.lt_u
                br_if 0 (;@6;)
                local.get 7
                local.get 2
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2c989caf8bf0f4b3E
                br 2 (;@4;)
              end
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 4
              i32.const 3
              i32.shl
              i32.const 1048892
              i32.add
              local.set 2
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1048884
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
                i32.store offset=1048884
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
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h4d093e278ca1757dE
          end
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
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
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1048884
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
                      i32.load offset=1049284
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 0
                      br_if 1 (;@8;)
                      i32.const 0
                      i32.load offset=1048888
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc9least_bit17h2f155e22ffd5c3eaE
                      i32.ctz
                      i32.const 2
                      i32.shl
                      i32.const 1049156
                      i32.add
                      i32.load
                      local.tee 4
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
                      call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
                      local.get 3
                      i32.sub
                      local.set 2
                      block  ;; label = @10
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hf42853009da41559E
                        local.tee 0
                        i32.eqz
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
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
                          call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hf42853009da41559E
                          local.tee 0
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
                      local.tee 0
                      local.get 3
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                      local.set 7
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E
                      local.get 2
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      i32.lt_u
                      br_if 5 (;@4;)
                      local.get 7
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
                      local.set 7
                      local.get 0
                      local.get 3
                      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h811ec73b71d5eb3fE
                      local.get 7
                      local.get 2
                      call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
                      i32.const 0
                      i32.load offset=1049284
                      local.tee 4
                      i32.eqz
                      br_if 4 (;@5;)
                      local.get 4
                      i32.const 3
                      i32.shr_u
                      local.tee 8
                      i32.const 3
                      i32.shl
                      i32.const 1048892
                      i32.add
                      local.set 6
                      i32.const 0
                      i32.load offset=1049292
                      local.set 4
                      i32.const 0
                      i32.load offset=1048884
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
                        i32.const 1048900
                        i32.add
                        i32.load
                        local.tee 0
                        i32.const 8
                        i32.add
                        i32.load
                        local.tee 2
                        local.get 4
                        i32.const 1048892
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
                      i32.store offset=1048884
                    end
                    local.get 0
                    local.get 3
                    i32.const 3
                    i32.shl
                    call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h4d093e278ca1757dE
                    local.get 0
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
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
                      call $_ZN8dlmalloc8dlmalloc9left_bits17hf3cde9f9b07a0a60E
                      local.get 0
                      local.get 2
                      i32.shl
                      i32.and
                      call $_ZN8dlmalloc8dlmalloc9least_bit17h2f155e22ffd5c3eaE
                      i32.ctz
                      local.tee 2
                      i32.const 3
                      i32.shl
                      local.tee 7
                      i32.const 1048900
                      i32.add
                      i32.load
                      local.tee 0
                      i32.const 8
                      i32.add
                      i32.load
                      local.tee 4
                      local.get 7
                      i32.const 1048892
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
                    i32.load offset=1048884
                    i32.const -2
                    local.get 2
                    i32.rotl
                    i32.and
                    i32.store offset=1048884
                  end
                  local.get 0
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h811ec73b71d5eb3fE
                  local.get 0
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                  local.tee 4
                  local.get 2
                  i32.const 3
                  i32.shl
                  local.get 3
                  i32.sub
                  local.tee 7
                  call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1049284
                    local.tee 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 3
                    i32.shr_u
                    local.tee 6
                    i32.const 3
                    i32.shl
                    i32.const 1048892
                    i32.add
                    local.set 2
                    i32.const 0
                    i32.load offset=1049292
                    local.set 3
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1048884
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
                      i32.store offset=1048884
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
                  i32.store offset=1049292
                  i32.const 0
                  local.get 7
                  i32.store offset=1049284
                  local.get 0
                  call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                  local.set 2
                  br 6 (;@1;)
                end
                i32.const 0
                local.get 5
                local.get 8
                i32.or
                i32.store offset=1048884
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
            i32.store offset=1049292
            i32.const 0
            local.get 2
            i32.store offset=1049284
            br 1 (;@3;)
          end
          local.get 0
          local.get 2
          local.get 3
          i32.add
          call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h4d093e278ca1757dE
        end
        local.get 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
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
                            i32.load offset=1049284
                            local.tee 2
                            local.get 3
                            i32.ge_u
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1049288
                            local.tee 0
                            local.get 3
                            i32.gt_u
                            br_if 4 (;@8;)
                            i32.const 0
                            local.set 2
                            local.get 1
                            i32.const 1048884
                            local.get 3
                            i32.const 0
                            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                            local.tee 0
                            i32.sub
                            local.get 0
                            i32.const 8
                            call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                            i32.add
                            i32.const 20
                            i32.const 8
                            call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                            i32.add
                            i32.const 16
                            i32.const 8
                            call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                            i32.add
                            i32.const 8
                            i32.add
                            i32.const 65536
                            call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17hb5f41988a2418891E
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
                            i32.load offset=1049300
                            local.get 1
                            i32.load offset=4
                            local.tee 8
                            i32.add
                            local.tee 0
                            i32.store offset=1049300
                            i32.const 0
                            i32.const 0
                            i32.load offset=1049304
                            local.tee 2
                            local.get 0
                            local.get 2
                            local.get 0
                            i32.gt_u
                            select
                            i32.store offset=1049304
                            i32.const 0
                            i32.load offset=1049296
                            i32.eqz
                            br_if 1 (;@11;)
                            i32.const 1049308
                            local.set 0
                            loop  ;; label = @13
                              local.get 6
                              local.get 0
                              call $_ZN8dlmalloc8dlmalloc7Segment3top17h2c1447cf60d7e29cE
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
                          i32.load offset=1049292
                          local.set 0
                          block  ;; label = @12
                            local.get 2
                            local.get 3
                            i32.sub
                            local.tee 2
                            i32.const 16
                            i32.const 8
                            call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                            i32.ge_u
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.const 0
                            i32.store offset=1049292
                            i32.const 0
                            i32.load offset=1049284
                            local.set 3
                            i32.const 0
                            i32.const 0
                            i32.store offset=1049284
                            local.get 0
                            local.get 3
                            call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h4d093e278ca1757dE
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                            local.set 2
                            br 11 (;@1;)
                          end
                          local.get 0
                          local.get 3
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                          local.set 4
                          i32.const 0
                          local.get 2
                          i32.store offset=1049284
                          i32.const 0
                          local.get 4
                          i32.store offset=1049292
                          local.get 4
                          local.get 2
                          call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
                          local.get 0
                          local.get 3
                          call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h811ec73b71d5eb3fE
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                          local.set 2
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load offset=1049328
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
                      call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hfd62a0d440afabc2E
                      br_if 0 (;@9;)
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17hff8b0da7ceab4a44E
                      local.get 9
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 0
                      i32.load offset=1049296
                      call $_ZN8dlmalloc8dlmalloc7Segment5holds17he55c928b90d48049E
                      br_if 3 (;@6;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1049328
                    local.tee 0
                    local.get 6
                    local.get 6
                    local.get 0
                    i32.gt_u
                    select
                    i32.store offset=1049328
                    local.get 6
                    local.get 8
                    i32.add
                    local.set 2
                    i32.const 1049308
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
                        call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hfd62a0d440afabc2E
                        br_if 0 (;@10;)
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17hff8b0da7ceab4a44E
                        local.get 9
                        i32.eq
                        br_if 1 (;@9;)
                      end
                      i32.const 0
                      i32.load offset=1049296
                      local.set 4
                      i32.const 1049308
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
                            call $_ZN8dlmalloc8dlmalloc7Segment3top17h2c1447cf60d7e29cE
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
                      call $_ZN8dlmalloc8dlmalloc7Segment3top17h2c1447cf60d7e29cE
                      local.tee 7
                      i32.const 20
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      local.tee 10
                      i32.sub
                      i32.const -23
                      i32.add
                      local.set 0
                      local.get 4
                      local.get 0
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                      local.tee 2
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      local.get 2
                      i32.sub
                      i32.add
                      local.tee 0
                      local.get 0
                      local.get 4
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      i32.add
                      i32.lt_u
                      select
                      local.tee 5
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                      local.set 2
                      local.get 5
                      local.get 10
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                      local.set 0
                      i32.const 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                      local.tee 11
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      local.set 12
                      i32.const 20
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      local.set 13
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      local.set 14
                      i32.const 0
                      local.get 6
                      local.get 6
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                      local.tee 15
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      local.get 15
                      i32.sub
                      local.tee 16
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                      local.tee 15
                      i32.store offset=1049296
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
                      i32.store offset=1049288
                      local.get 15
                      local.get 11
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                      local.tee 12
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      local.set 13
                      i32.const 20
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      local.set 14
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      local.set 16
                      local.get 15
                      local.get 11
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
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
                      i32.store offset=1049324
                      local.get 5
                      local.get 10
                      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h811ec73b71d5eb3fE
                      i32.const 0
                      i64.load offset=1049308 align=4
                      local.set 17
                      local.get 2
                      i32.const 8
                      i32.add
                      i32.const 0
                      i64.load offset=1049316 align=4
                      i64.store align=4
                      local.get 2
                      local.get 17
                      i64.store align=4
                      i32.const 0
                      local.get 9
                      i32.store offset=1049320
                      i32.const 0
                      local.get 8
                      i32.store offset=1049312
                      i32.const 0
                      local.get 6
                      i32.store offset=1049308
                      i32.const 0
                      local.get 2
                      i32.store offset=1049316
                      loop  ;; label = @10
                        local.get 0
                        i32.const 4
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                        local.set 2
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17hf49c5964398bab00E
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
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                      call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h9712f939c31db7edE
                      block  ;; label = @10
                        local.get 0
                        i32.const 256
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2c989caf8bf0f4b3E
                        br 8 (;@2;)
                      end
                      local.get 0
                      i32.const 3
                      i32.shr_u
                      local.tee 2
                      i32.const 3
                      i32.shl
                      i32.const 1048892
                      i32.add
                      local.set 0
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1048884
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
                        i32.store offset=1048884
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
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                    local.tee 0
                    i32.const 8
                    call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                    local.set 2
                    local.get 7
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                    local.tee 8
                    i32.const 8
                    call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                    local.set 5
                    local.get 6
                    local.get 2
                    local.get 0
                    i32.sub
                    i32.add
                    local.tee 2
                    local.get 3
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                    local.set 4
                    local.get 2
                    local.get 3
                    call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h811ec73b71d5eb3fE
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
                      i32.load offset=1049296
                      local.get 0
                      i32.eq
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=1049292
                      local.get 0
                      i32.eq
                      br_if 4 (;@5;)
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h515c7fa3e4c35eaaE
                      br_if 5 (;@4;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
                          local.tee 7
                          i32.const 256
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E
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
                        i32.load offset=1048884
                        i32.const -2
                        local.get 7
                        i32.const 3
                        i32.shr_u
                        i32.rotl
                        i32.and
                        i32.store offset=1048884
                      end
                      local.get 7
                      local.get 3
                      i32.add
                      local.set 3
                      local.get 0
                      local.get 7
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                      local.set 0
                      br 5 (;@4;)
                    end
                    i32.const 0
                    local.get 4
                    i32.store offset=1049296
                    i32.const 0
                    i32.const 0
                    i32.load offset=1049288
                    local.get 3
                    i32.add
                    local.tee 0
                    i32.store offset=1049288
                    local.get 4
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                    local.set 2
                    br 7 (;@1;)
                  end
                  i32.const 0
                  local.get 0
                  local.get 3
                  i32.sub
                  local.tee 2
                  i32.store offset=1049288
                  i32.const 0
                  i32.const 0
                  i32.load offset=1049296
                  local.tee 0
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                  local.tee 4
                  i32.store offset=1049296
                  local.get 4
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h811ec73b71d5eb3fE
                  local.get 0
                  call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
                  local.set 2
                  br 6 (;@1;)
                end
                i32.const 0
                local.get 6
                i32.store offset=1049328
                br 3 (;@3;)
              end
              local.get 0
              local.get 0
              i32.load offset=4
              local.get 8
              i32.add
              i32.store offset=4
              i32.const 0
              i32.load offset=1049288
              local.set 2
              i32.const 0
              i32.load offset=1049296
              local.set 0
              local.get 0
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
              local.tee 4
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
              local.get 4
              i32.sub
              local.tee 4
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
              local.set 0
              i32.const 0
              local.get 2
              local.get 8
              i32.add
              local.get 4
              i32.sub
              local.tee 2
              i32.store offset=1049288
              i32.const 0
              local.get 0
              i32.store offset=1049296
              local.get 0
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
              local.tee 4
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
              local.set 7
              i32.const 20
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
              local.set 6
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
              local.set 8
              local.get 0
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
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
              i32.store offset=1049324
              br 3 (;@2;)
            end
            i32.const 0
            local.get 4
            i32.store offset=1049292
            i32.const 0
            i32.const 0
            i32.load offset=1049284
            local.get 3
            i32.add
            local.tee 0
            i32.store offset=1049284
            local.get 4
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
            local.set 2
            br 3 (;@1;)
          end
          local.get 4
          local.get 3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h9712f939c31db7edE
          block  ;; label = @4
            local.get 3
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 3
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2c989caf8bf0f4b3E
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
            local.set 2
            br 3 (;@1;)
          end
          local.get 3
          i32.const 3
          i32.shr_u
          local.tee 3
          i32.const 3
          i32.shl
          i32.const 1048892
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1048884
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
            i32.store offset=1048884
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
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
          local.set 2
          br 2 (;@1;)
        end
        i32.const 0
        i32.const 4095
        i32.store offset=1049332
        i32.const 0
        local.get 9
        i32.store offset=1049320
        i32.const 0
        local.get 8
        i32.store offset=1049312
        i32.const 0
        local.get 6
        i32.store offset=1049308
        i32.const 0
        i32.const 1048892
        i32.store offset=1048904
        i32.const 0
        i32.const 1048900
        i32.store offset=1048912
        i32.const 0
        i32.const 1048892
        i32.store offset=1048900
        i32.const 0
        i32.const 1048908
        i32.store offset=1048920
        i32.const 0
        i32.const 1048900
        i32.store offset=1048908
        i32.const 0
        i32.const 1048916
        i32.store offset=1048928
        i32.const 0
        i32.const 1048908
        i32.store offset=1048916
        i32.const 0
        i32.const 1048924
        i32.store offset=1048936
        i32.const 0
        i32.const 1048916
        i32.store offset=1048924
        i32.const 0
        i32.const 1048932
        i32.store offset=1048944
        i32.const 0
        i32.const 1048924
        i32.store offset=1048932
        i32.const 0
        i32.const 1048940
        i32.store offset=1048952
        i32.const 0
        i32.const 1048932
        i32.store offset=1048940
        i32.const 0
        i32.const 1048948
        i32.store offset=1048960
        i32.const 0
        i32.const 1048940
        i32.store offset=1048948
        i32.const 0
        i32.const 1048956
        i32.store offset=1048968
        i32.const 0
        i32.const 1048948
        i32.store offset=1048956
        i32.const 0
        i32.const 1048956
        i32.store offset=1048964
        i32.const 0
        i32.const 1048964
        i32.store offset=1048976
        i32.const 0
        i32.const 1048964
        i32.store offset=1048972
        i32.const 0
        i32.const 1048972
        i32.store offset=1048984
        i32.const 0
        i32.const 1048972
        i32.store offset=1048980
        i32.const 0
        i32.const 1048980
        i32.store offset=1048992
        i32.const 0
        i32.const 1048980
        i32.store offset=1048988
        i32.const 0
        i32.const 1048988
        i32.store offset=1049000
        i32.const 0
        i32.const 1048988
        i32.store offset=1048996
        i32.const 0
        i32.const 1048996
        i32.store offset=1049008
        i32.const 0
        i32.const 1048996
        i32.store offset=1049004
        i32.const 0
        i32.const 1049004
        i32.store offset=1049016
        i32.const 0
        i32.const 1049004
        i32.store offset=1049012
        i32.const 0
        i32.const 1049012
        i32.store offset=1049024
        i32.const 0
        i32.const 1049012
        i32.store offset=1049020
        i32.const 0
        i32.const 1049020
        i32.store offset=1049032
        i32.const 0
        i32.const 1049028
        i32.store offset=1049040
        i32.const 0
        i32.const 1049020
        i32.store offset=1049028
        i32.const 0
        i32.const 1049036
        i32.store offset=1049048
        i32.const 0
        i32.const 1049028
        i32.store offset=1049036
        i32.const 0
        i32.const 1049044
        i32.store offset=1049056
        i32.const 0
        i32.const 1049036
        i32.store offset=1049044
        i32.const 0
        i32.const 1049052
        i32.store offset=1049064
        i32.const 0
        i32.const 1049044
        i32.store offset=1049052
        i32.const 0
        i32.const 1049060
        i32.store offset=1049072
        i32.const 0
        i32.const 1049052
        i32.store offset=1049060
        i32.const 0
        i32.const 1049068
        i32.store offset=1049080
        i32.const 0
        i32.const 1049060
        i32.store offset=1049068
        i32.const 0
        i32.const 1049076
        i32.store offset=1049088
        i32.const 0
        i32.const 1049068
        i32.store offset=1049076
        i32.const 0
        i32.const 1049084
        i32.store offset=1049096
        i32.const 0
        i32.const 1049076
        i32.store offset=1049084
        i32.const 0
        i32.const 1049092
        i32.store offset=1049104
        i32.const 0
        i32.const 1049084
        i32.store offset=1049092
        i32.const 0
        i32.const 1049100
        i32.store offset=1049112
        i32.const 0
        i32.const 1049092
        i32.store offset=1049100
        i32.const 0
        i32.const 1049108
        i32.store offset=1049120
        i32.const 0
        i32.const 1049100
        i32.store offset=1049108
        i32.const 0
        i32.const 1049116
        i32.store offset=1049128
        i32.const 0
        i32.const 1049108
        i32.store offset=1049116
        i32.const 0
        i32.const 1049124
        i32.store offset=1049136
        i32.const 0
        i32.const 1049116
        i32.store offset=1049124
        i32.const 0
        i32.const 1049132
        i32.store offset=1049144
        i32.const 0
        i32.const 1049124
        i32.store offset=1049132
        i32.const 0
        i32.const 1049140
        i32.store offset=1049152
        i32.const 0
        i32.const 1049132
        i32.store offset=1049140
        i32.const 0
        i32.const 1049140
        i32.store offset=1049148
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
        local.tee 2
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.set 4
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.set 7
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.set 5
        i32.const 0
        local.get 6
        local.get 6
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
        local.tee 0
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.get 0
        i32.sub
        local.tee 9
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
        local.tee 0
        i32.store offset=1049296
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
        i32.store offset=1049288
        local.get 0
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
        local.tee 4
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.set 7
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.set 6
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
        local.set 8
        local.get 0
        local.get 2
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
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
        i32.store offset=1049324
      end
      i32.const 0
      local.set 2
      i32.const 0
      i32.load offset=1049288
      local.tee 0
      local.get 3
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      local.get 3
      i32.sub
      local.tee 2
      i32.store offset=1049288
      i32.const 0
      i32.const 0
      i32.load offset=1049296
      local.tee 0
      local.get 3
      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
      local.tee 4
      i32.store offset=1049296
      local.get 4
      local.get 2
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 3
      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h811ec73b71d5eb3fE
      local.get 0
      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
      local.set 2
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2f90bddfab9fdaf9E (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h1890d4e213c4eb0dE
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17ha951b962517f2e83E
              br_if 0 (;@5;)
              local.get 3
              local.get 1
              i32.add
              local.set 1
              local.get 0
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h027d542fa6c66e35E
              local.tee 0
              i32.const 0
              i32.load offset=1049292
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
              i32.store offset=1049284
              local.get 0
              local.get 1
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h9712f939c31db7edE
              return
            end
            i32.const 1048884
            local.get 0
            local.get 3
            i32.sub
            local.get 3
            local.get 1
            i32.add
            i32.const 16
            i32.add
            local.tee 0
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17h919a9ad2bfdc6257E
            i32.eqz
            br_if 2 (;@2;)
            i32.const 0
            i32.const 0
            i32.load offset=1049300
            local.get 0
            i32.sub
            i32.store offset=1049300
            return
          end
          block  ;; label = @4
            local.get 3
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E
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
          i32.load offset=1048884
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1048884
        end
        block  ;; label = @3
          local.get 2
          call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h36208fe537f27a1bE
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h9712f939c31db7edE
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 0
            i32.load offset=1049296
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 0
            i32.load offset=1049292
            i32.ne
            br_if 1 (;@3;)
            i32.const 0
            local.get 0
            i32.store offset=1049292
            i32.const 0
            i32.const 0
            i32.load offset=1049284
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1049284
            local.get 0
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
            return
          end
          i32.const 0
          local.get 0
          i32.store offset=1049296
          i32.const 0
          i32.const 0
          i32.load offset=1049288
          local.get 1
          i32.add
          local.tee 1
          i32.store offset=1049288
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 0
          i32.load offset=1049292
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          i32.const 0
          i32.store offset=1049284
          i32.const 0
          i32.const 0
          i32.store offset=1049292
          return
        end
        local.get 2
        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
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
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E
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
          i32.load offset=1048884
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1048884
        end
        local.get 0
        local.get 1
        call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
        local.get 0
        i32.const 0
        i32.load offset=1049292
        i32.ne
        br_if 1 (;@1;)
        i32.const 0
        local.get 1
        i32.store offset=1049284
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
      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2c989caf8bf0f4b3E
      return
    end
    local.get 1
    i32.const 3
    i32.shr_u
    local.tee 2
    i32.const 3
    i32.shl
    i32.const 1048892
    i32.add
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1048884
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
      i32.store offset=1048884
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
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E (type 8) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=24
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17h0208d35d5de72e4fE
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
        call $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17h70c5d20e354dec2bE
        local.tee 4
        local.get 0
        call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17h0208d35d5de72e4fE
        local.tee 3
        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
        i32.store offset=12
        local.get 3
        local.get 4
        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
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
          i32.const 1049156
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
        i32.load offset=1048888
        i32.const -2
        local.get 0
        i32.load offset=28
        i32.rotl
        i32.and
        i32.store offset=1048888
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
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2c989caf8bf0f4b3E (type 0) (param i32 i32)
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
    i32.const 1049156
    i32.add
    local.set 3
    local.get 0
    call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1048888
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
              call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h26ab250442f6ee68E
              local.set 2
              local.get 5
              call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
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
            i32.store offset=1048888
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
            call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
            local.get 1
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 2
        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E
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
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h760dc35ff6aecbd4E (type 10) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1049316
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      i32.const 4095
      i32.store offset=1049332
      i32.const 0
      return
    end
    i32.const 1049308
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
          i32.const 1048884
          local.get 4
          i32.const 12
          i32.add
          i32.load
          i32.const 1
          i32.shr_u
          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hc09768e3b534d238E
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hfd62a0d440afabc2E
          br_if 0 (;@3;)
          local.get 6
          local.get 6
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
          local.tee 7
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.get 7
          i32.sub
          i32.add
          local.tee 7
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
          local.set 8
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
          local.tee 9
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 10
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 11
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 12
          local.get 7
          call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h515c7fa3e4c35eaaE
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
              i32.load offset=1049292
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E
              br 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.store offset=1049284
            i32.const 0
            i32.const 0
            i32.store offset=1049292
          end
          block  ;; label = @4
            i32.const 1048884
            local.get 6
            local.get 5
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17h919a9ad2bfdc6257E
            br_if 0 (;@4;)
            local.get 7
            local.get 8
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2c989caf8bf0f4b3E
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1049300
          local.get 5
          i32.sub
          i32.store offset=1049300
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
    i32.store offset=1049332
    local.get 2)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17hcb7947a9a7e282caE (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hae04a1e6cfd1658cE
    local.set 0
    local.get 0
    local.get 0
    call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
    local.tee 1
    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h1890d4e213c4eb0dE
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17ha951b962517f2e83E
              br_if 0 (;@5;)
              local.get 3
              local.get 1
              i32.add
              local.set 1
              local.get 0
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h027d542fa6c66e35E
              local.tee 0
              i32.const 0
              i32.load offset=1049292
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
              i32.store offset=1049284
              local.get 0
              local.get 1
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h9712f939c31db7edE
              return
            end
            i32.const 1048884
            local.get 0
            local.get 3
            i32.sub
            local.get 3
            local.get 1
            i32.add
            i32.const 16
            i32.add
            local.tee 0
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17h919a9ad2bfdc6257E
            i32.eqz
            br_if 2 (;@2;)
            i32.const 0
            i32.const 0
            i32.load offset=1049300
            local.get 0
            i32.sub
            i32.store offset=1049300
            return
          end
          block  ;; label = @4
            local.get 3
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E
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
          i32.load offset=1048884
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1048884
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h36208fe537f27a1bE
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h9712f939c31db7edE
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1049296
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 0
                  i32.load offset=1049292
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1049292
                  i32.const 0
                  i32.const 0
                  i32.load offset=1049284
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1049284
                  local.get 0
                  local.get 1
                  call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
                  return
                end
                i32.const 0
                local.get 0
                i32.store offset=1049296
                i32.const 0
                i32.const 0
                i32.load offset=1049288
                local.get 1
                i32.add
                local.tee 1
                i32.store offset=1049288
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                i32.const 0
                i32.load offset=1049292
                i32.eq
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
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
                  call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E
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
                i32.load offset=1048884
                i32.const -2
                local.get 3
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1048884
              end
              local.get 0
              local.get 1
              call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
              local.get 0
              i32.const 0
              i32.load offset=1049292
              i32.ne
              br_if 2 (;@3;)
              i32.const 0
              local.get 1
              i32.store offset=1049284
              br 3 (;@2;)
            end
            i32.const 0
            i32.const 0
            i32.store offset=1049284
            i32.const 0
            i32.const 0
            i32.store offset=1049292
          end
          i32.const 0
          i32.load offset=1049324
          local.get 1
          i32.ge_u
          br_if 1 (;@2;)
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
          local.set 0
          local.get 0
          local.get 0
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
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
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
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
          i32.load offset=1049296
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
          local.tee 0
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 1
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 3
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 4
          i32.const 0
          local.set 2
          block  ;; label = @4
            i32.const 0
            i32.load offset=1049288
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
            i32.load offset=1049296
            local.set 1
            i32.const 1049308
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
                  call $_ZN8dlmalloc8dlmalloc7Segment3top17h2c1447cf60d7e29cE
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
            call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hfd62a0d440afabc2E
            br_if 0 (;@4;)
            i32.const 1048884
            local.get 0
            i32.const 12
            i32.add
            i32.load
            i32.const 1
            i32.shr_u
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hc09768e3b534d238E
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=4
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 1049308
            local.set 1
            loop  ;; label = @5
              local.get 0
              local.get 1
              call $_ZN8dlmalloc8dlmalloc7Segment5holds17he55c928b90d48049E
              br_if 1 (;@4;)
              local.get 1
              i32.load offset=8
              local.tee 1
              br_if 0 (;@5;)
            end
            i32.const 1048884
            local.get 0
            i32.load
            local.get 0
            i32.load offset=4
            local.tee 1
            local.get 1
            local.get 3
            i32.sub
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17h07996d3c531e1116E
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
            i32.load offset=1049300
            local.get 3
            i32.sub
            i32.store offset=1049300
            i32.const 0
            i32.load offset=1049288
            local.set 1
            i32.const 0
            i32.load offset=1049296
            local.set 0
            i32.const 0
            local.get 0
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
            local.tee 2
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
            local.get 2
            i32.sub
            local.tee 2
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
            local.tee 0
            i32.store offset=1049296
            i32.const 0
            local.get 1
            local.get 3
            local.get 2
            i32.add
            i32.sub
            local.tee 1
            i32.store offset=1049288
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
            local.tee 2
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
            local.set 4
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
            local.set 5
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
            local.set 6
            local.get 0
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
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
            i32.store offset=1049324
            local.get 3
            local.set 2
          end
          local.get 2
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h760dc35ff6aecbd4E
          i32.sub
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          i32.load offset=1049288
          i32.const 0
          i32.load offset=1049324
          i32.le_u
          br_if 1 (;@2;)
          i32.const 0
          i32.const -1
          i32.store offset=1049324
          return
        end
        local.get 1
        i32.const 256
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h2c989caf8bf0f4b3E
        i32.const 0
        i32.const 0
        i32.load offset=1049332
        i32.const -1
        i32.add
        local.tee 0
        i32.store offset=1049332
        local.get 0
        br_if 0 (;@2;)
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h760dc35ff6aecbd4E
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
    i32.const 1048892
    i32.add
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1048884
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
      i32.store offset=1048884
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
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17ha03abef02a8b70fdE (type 8) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h9b985a293aac4ce1E
    unreachable)
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h9b985a293aac4ce1E (type 4) (param i32 i32 i32)
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
          i32.const 1048600
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
      i32.const 1048732
      local.get 1
      call $_ZN4core5panic10panic_info9PanicInfo7message17h37e27763a6a776eeE
      local.get 2
      call $_ZN3std9panicking20rust_panic_with_hook17h606d7c7f7a423b98E
      unreachable
    end
    local.get 3
    i32.const 0
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 1048712
    local.get 1
    call $_ZN4core5panic10panic_info9PanicInfo7message17h37e27763a6a776eeE
    local.get 2
    call $_ZN3std9panicking20rust_panic_with_hook17h606d7c7f7a423b98E
    unreachable)
  (func $_ZN3std5alloc24default_alloc_error_hook17hf9c393ba3cd287e1E (type 0) (param i32 i32))
  (func $rust_oom (type 0) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1048864
    local.tee 2
    i32.const 1
    local.get 2
    select
    call_indirect (type 0)
    unreachable
    unreachable)
  (func $__rdl_alloc (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h189fbca0373ab828E)
  (func $__rdl_dealloc (type 4) (param i32 i32 i32)
    local.get 0
    call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17hcb7947a9a7e282caE)
  (func $__rdl_realloc (type 6) (param i32 i32 i32 i32) (result i32)
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
            call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h189fbca0373ab828E
            local.tee 2
            br_if 1 (;@3;)
            i32.const 0
            return
          end
          i32.const 0
          local.set 2
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E
          local.set 1
          local.get 1
          local.get 1
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
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
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
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
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          i32.const -5
          i32.add
          local.get 3
          i32.gt_u
          select
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
          local.set 4
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hae04a1e6cfd1658cE
          local.set 1
          local.get 1
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
          local.tee 5
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
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
                          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17ha951b962517f2e83E
                          br_if 0 (;@11;)
                          local.get 5
                          local.get 4
                          i32.ge_u
                          br_if 1 (;@10;)
                          local.get 6
                          i32.const 0
                          i32.load offset=1049296
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 6
                          i32.const 0
                          i32.load offset=1049292
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 6
                          call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h36208fe537f27a1bE
                          br_if 7 (;@4;)
                          local.get 6
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
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
                          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h598db8b2a7eb3514E
                          br 5 (;@6;)
                        end
                        local.get 1
                        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
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
                        i32.const 1048884
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
                        i32.const 1048884
                        call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17h692c7b05722b7c81E
                        call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                        local.tee 5
                        i32.const 1
                        call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17hc0c6d5caa20a50edE
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
                        call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17hf49c5964398bab00E
                        local.set 0
                        local.get 1
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                        local.get 0
                        i32.store offset=4
                        local.get 1
                        local.get 3
                        i32.const -12
                        i32.add
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                        i32.const 0
                        i32.store offset=4
                        i32.const 0
                        i32.const 0
                        i32.load offset=1049300
                        local.get 5
                        local.get 7
                        i32.sub
                        i32.add
                        local.tee 3
                        i32.store offset=1049300
                        i32.const 0
                        i32.const 0
                        i32.load offset=1049328
                        local.tee 2
                        local.get 4
                        local.get 4
                        local.get 2
                        i32.gt_u
                        select
                        i32.store offset=1049328
                        i32.const 0
                        i32.const 0
                        i32.load offset=1049304
                        local.tee 2
                        local.get 3
                        local.get 2
                        local.get 3
                        i32.gt_u
                        select
                        i32.store offset=1049304
                        br 9 (;@1;)
                      end
                      local.get 5
                      local.get 4
                      i32.sub
                      local.tee 5
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      i32.lt_u
                      br_if 4 (;@5;)
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                      local.set 6
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
                      local.get 6
                      local.get 5
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
                      local.get 6
                      local.get 5
                      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2f90bddfab9fdaf9E
                      br 4 (;@5;)
                    end
                    i32.const 0
                    i32.load offset=1049288
                    local.get 5
                    i32.add
                    local.tee 5
                    local.get 4
                    i32.le_u
                    br_if 4 (;@4;)
                    local.get 1
                    local.get 4
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                    local.set 6
                    local.get 1
                    local.get 4
                    call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
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
                    i32.store offset=1049288
                    i32.const 0
                    local.get 6
                    i32.store offset=1049296
                    br 3 (;@5;)
                  end
                  i32.const 0
                  i32.load offset=1049284
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
                      call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 5
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
                      i32.const 0
                      local.set 6
                      i32.const 0
                      local.set 5
                      br 1 (;@8;)
                    end
                    local.get 1
                    local.get 4
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                    local.tee 5
                    local.get 6
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                    local.set 7
                    local.get 1
                    local.get 4
                    call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
                    local.get 5
                    local.get 6
                    call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E
                    local.get 7
                    call $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17ha26ab6f3c8ce2657E
                  end
                  i32.const 0
                  local.get 5
                  i32.store offset=1049292
                  i32.const 0
                  local.get 6
                  i32.store offset=1049284
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
                i32.load offset=1048884
                i32.const -2
                local.get 7
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1048884
              end
              block  ;; label = @6
                local.get 8
                i32.const 16
                i32.const 8
                call $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE
                i32.lt_u
                br_if 0 (;@6;)
                local.get 1
                local.get 4
                call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE
                local.set 5
                local.get 1
                local.get 4
                call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
                local.get 5
                local.get 8
                call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
                local.get 5
                local.get 8
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2f90bddfab9fdaf9E
                br 1 (;@5;)
              end
              local.get 1
              local.get 5
              call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE
            end
            local.get 1
            br_if 3 (;@1;)
          end
          local.get 3
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h2a27207ee9af7fe9E
          local.tee 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          local.get 0
          local.get 3
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E
          i32.const -8
          i32.const -4
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17ha951b962517f2e83E
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
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17hcb7947a9a7e282caE
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
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17hcb7947a9a7e282caE
      end
      local.get 2
      return
    end
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17ha951b962517f2e83E
    drop
    local.get 1
    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E)
  (func $rust_begin_unwind (type 8) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN4core5panic10panic_info9PanicInfo8location17h2df1916f9d5713fbE
    i32.const 1048680
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17hf45be9e7d87cbf99E
    local.set 2
    local.get 0
    call $_ZN4core5panic10panic_info9PanicInfo7message17h37e27763a6a776eeE
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h5a7df91b5d6090cbE
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
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17ha03abef02a8b70fdE
    unreachable)
  (func $_ZN3std9panicking20rust_panic_with_hook17h606d7c7f7a423b98E (type 3) (param i32 i32 i32 i32)
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
    i32.load offset=1048880
    local.tee 6
    i32.const 1
    i32.add
    i32.store offset=1048880
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1049336
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1049340
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 1
      i32.store offset=1049336
    end
    i32.const 0
    local.get 5
    i32.store offset=1049340
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
        i32.load offset=1048868
        local.tee 6
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        local.get 6
        i32.const 1
        i32.add
        local.tee 6
        i32.store offset=1048868
        block  ;; label = @3
          i32.const 0
          i32.load offset=1048876
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1048872
          local.set 6
          local.get 4
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 0)
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
          call_indirect (type 0)
          i32.const 0
          i32.load offset=1048868
          local.set 6
        end
        i32.const 0
        local.get 6
        i32.const -1
        i32.add
        i32.store offset=1048868
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
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h007022b770a3719cE (type 0) (param i32 i32)
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
        i32.load offset=1048644
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
      i32.load offset=1048644
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
      i32.const 1048576
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17hbbaf39f09bf49efbE
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
      call $_ZN5alloc5alloc18handle_alloc_error17h30c0e85c9964825dE
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
    i32.const 1048752
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h71b2b32a8109b3eeE (type 0) (param i32 i32)
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
      i32.load offset=1048644
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
      i32.const 1048576
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17hbbaf39f09bf49efbE
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
    i32.const 1048752
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h0beda54cb8f4162fE (type 0) (param i32 i32)
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
      call $_ZN5alloc5alloc18handle_alloc_error17h30c0e85c9964825dE
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1048768
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17hed0ce47ef56369a2E (type 0) (param i32 i32)
    local.get 0
    i32.const 1048768
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $rust_panic (type 0) (param i32 i32)
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
  (func $_ZN8dlmalloc8dlmalloc8align_up17h0d2f151cc20f2bacE (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add
    i32.const -1
    i32.add
    i32.const 0
    local.get 1
    i32.sub
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc9left_bits17hf3cde9f9b07a0a60E (type 9) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.shl
    local.tee 0
    i32.const 0
    local.get 0
    i32.sub
    i32.or)
  (func $_ZN8dlmalloc8dlmalloc9least_bit17h2f155e22ffd5c3eaE (type 9) (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h26ab250442f6ee68E (type 9) (param i32) (result i32)
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
  (func $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17hf49c5964398bab00E (type 10) (result i32)
    i32.const 7)
  (func $_ZN8dlmalloc8dlmalloc5Chunk4size17h67d28f0cacbd4702E (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const -8
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h36208fe537f27a1bE (type 9) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 2
    i32.and
    i32.const 1
    i32.shr_u)
  (func $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h1890d4e213c4eb0dE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17ha26ab6f3c8ce2657E (type 8) (param i32)
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const -2
    i32.and
    i32.store offset=4)
  (func $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h515c7fa3e4c35eaaE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 1
    i32.ne)
  (func $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17ha951b962517f2e83E (type 9) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 3
    i32.and
    i32.eqz)
  (func $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h10fde7a43e98969dE (type 0) (param i32 i32)
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
  (func $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h4d093e278ca1757dE (type 0) (param i32 i32)
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
  (func $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h811ec73b71d5eb3fE (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 3
    i32.or
    i32.store offset=4)
  (func $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h33048132fc870589E (type 0) (param i32 i32)
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
  (func $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h9712f939c31db7edE (type 4) (param i32 i32 i32)
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
  (func $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h3a05b77f8c6be72eE (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h027d542fa6c66e35E (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.sub)
  (func $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hb3f6263c77f33890E (type 9) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17hae04a1e6cfd1658cE (type 9) (param i32) (result i32)
    local.get 0
    i32.const -8
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hf42853009da41559E (type 9) (param i32) (result i32)
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
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4f016ed62ab72f28E (type 9) (param i32) (result i32)
    local.get 0)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk4next17h0208d35d5de72e4fE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17h70c5d20e354dec2bE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hfd62a0d440afabc2E (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17hff8b0da7ceab4a44E (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.shr_u)
  (func $_ZN8dlmalloc8dlmalloc7Segment5holds17he55c928b90d48049E (type 2) (param i32 i32) (result i32)
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
  (func $_ZN8dlmalloc8dlmalloc7Segment3top17h2c1447cf60d7e29cE (type 9) (param i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    i32.add)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17hb5f41988a2418891E (type 4) (param i32 i32 i32)
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
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17hc0c6d5caa20a50edE (type 11) (param i32 i32 i32 i32 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17h07996d3c531e1116E (type 6) (param i32 i32 i32 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17h919a9ad2bfdc6257E (type 1) (param i32 i32 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hc09768e3b534d238E (type 2) (param i32 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17h692c7b05722b7c81E (type 9) (param i32) (result i32)
    i32.const 65536)
  (func $_ZN5alloc5alloc18handle_alloc_error17h30c0e85c9964825dE (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $__rust_alloc_error_handler
    unreachable)
  (func $__rg_oom (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $rust_oom
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h4b49014830cafe63E (type 12)
    i32.const 1048812
    i32.const 17
    i32.const 1048832
    call $_ZN4core9panicking5panic17hec1fc057bd0baf0bE
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17h2ab86767ec17c50dE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop (result i32)  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h63c2e1497b52f3d7E (type 8) (param i32))
  (func $_ZN4core9panicking5panic17hec1fc057bd0baf0bE (type 4) (param i32 i32 i32)
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
    i32.const 1048848
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
    call $_ZN4core9panicking9panic_fmt17h6314b5c91abe7349E
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17h6314b5c91abe7349E (type 0) (param i32 i32)
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
    i32.const 1048848
    i32.store offset=4
    local.get 2
    i32.const 1048848
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core3fmt5write17hbbaf39f09bf49efbE (type 1) (param i32 i32 i32) (result i32)
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
                call_indirect (type 1)
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
              call_indirect (type 2)
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
              call_indirect (type 1)
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
                i32.const 14
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
                i32.const 14
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
            call_indirect (type 2)
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
        call_indirect (type 1)
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
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17ha0c4492216d4d2e7E (type 7) (param i32) (result i64)
    i64.const -3005123615467915227)
  (func $_ZN4core5panic10panic_info9PanicInfo7message17h37e27763a6a776eeE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic10panic_info9PanicInfo8location17h2df1916f9d5713fbE (type 9) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
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
  (table (;0;) 17 17 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049344))
  (global (;2;) i32 (i32.const 1049344))
  (export "memory" (memory 0))
  (export "echo_string" (func $echo_string))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func $_ZN3std5alloc24default_alloc_error_hook17hf9c393ba3cd287e1E $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17ha3e29bb00fd76937E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17heed6350c990c190fE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2e09602723e0822aE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h81d0daecbbff04b5E $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17he4eedabc21d9757dE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h007022b770a3719cE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h71b2b32a8109b3eeE $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h0beda54cb8f4162fE $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17hed0ce47ef56369a2E $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17hfddd0945500a84e5E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hd6ff5e55e3ba8f3eE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h824575441ffde977E $_ZN4core3ops8function6FnOnce9call_once17h2ab86767ec17c50dE $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h63c2e1497b52f3d7E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17ha0c4492216d4d2e7E)
  (data $.rodata (i32.const 1048576) "\02\00\00\00\04\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00called `Option::unwrap()` on a `None` value\00\01\00\00\00\00\00\00\00library/std/src/panicking.rsL\00\10\00\1c\00\00\00\03\02\00\00\1f\00\00\00L\00\10\00\1c\00\00\00\04\02\00\00\1e\00\00\00\06\00\00\00\10\00\00\00\04\00\00\00\07\00\00\00\08\00\00\00\02\00\00\00\08\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\04\00\00\00\0c\00\00\00\02\00\00\00\08\00\00\00\04\00\00\00\0d\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\d0\00\10\00\1c\00\00\002\02\00\00\05\00\00\00\0f\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00"))
