savedcmd_.module-common.o := arm-linux-gnueabihf-gcc -Wp,-MMD,./..module-common.o.d -nostdinc -I/shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include -I/shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated -I/shared_data/jayanth/workspace/ldd/source/linux/include -I/shared_data/jayanth/workspace/ldd/source/linux/include -I/shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi -I/shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/uapi -I/shared_data/jayanth/workspace/ldd/source/linux/include/uapi -I/shared_data/jayanth/workspace/ldd/source/linux/include/generated/uapi -include /shared_data/jayanth/workspace/ldd/source/linux/include/linux/compiler-version.h -include /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kconfig.h -include /shared_data/jayanth/workspace/ldd/source/linux/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -D__LINUX_ARM_ARCH__=6 -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -fno-dwarf2-cfi-asm -mno-fdpic -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -march=armv6k -mtune=arm1136j-s -msoft-float -Uarm -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=1024 -Wno-main -Wvla-larger-than=1 -Wno-pointer-sign -Wcast-function-type -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -gsplit-dwarf -g -gdwarf-4  -DMODULE  -DKBUILD_BASENAME='".module_common"' -DKBUILD_MODNAME='".module_common.o"' -D__KBUILD_MODNAME=kmod_.module_common.o -c -o .module-common.o /shared_data/jayanth/workspace/ldd/source/linux/scripts/module-common.c  

source_.module-common.o := /shared_data/jayanth/workspace/ldd/source/linux/scripts/module-common.c

deps_.module-common.o := \
    $(wildcard include/config/UNWINDER_ORC) \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_ASSUME) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/CC_HAS_MULTIDIMENSIONAL_NONSTRING) \
    $(wildcard include/config/UBSAN_INTEGER_WRAP) \
    $(wildcard include/config/CFI) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/compiler_attributes.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/compiler-gcc.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/CC_HAS_TYPEOF_UNQUAL) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/DYNAMIC_FTRACE) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/container_of.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/build_bug.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
    $(wildcard include/config/64BIT) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/asm/rwonce.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/rwonce.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/int-ll64.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/int-ll64.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitsperlong.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/bitsperlong.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/posix_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/stddef.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/stddef.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/posix_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/posix_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/const.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/const.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/const.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/CPU_32v6K) \
    $(wildcard include/config/THUMB2_KERNEL) \
    $(wildcard include/config/CPU_XSC3) \
    $(wildcard include/config/CPU_FA526) \
    $(wildcard include/config/ARM_HEAVY_MB) \
    $(wildcard include/config/ARM_DMA_MEM_BUFFERABLE) \
    $(wildcard include/config/CPU_SPECTRE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/barrier.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/stat.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/stat.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/stat.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/kernel.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/sysinfo.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/cache.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/cache.h \
    $(wildcard include/config/ARM_L1_CACHE_SHIFT) \
    $(wildcard include/config/AEABI) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/math.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/compiler.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/div64.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/bitops.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/bits.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/bits.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/bits.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/overflow.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/limits.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/limits.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/limits.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/typecheck.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/generic-non-atomic.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/bitops.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/irqflags_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/cleanup.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/err.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/uapi/asm/errno.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/errno.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/errno-base.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/args.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/CPU_V7M) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/ARM_THUMB) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/CPU_ENDIAN_BE8) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/hwcap.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/hwcap.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/bitfield.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/byteorder.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/byteorder/little_endian.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/byteorder/little_endian.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/swab.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/swab.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/swab.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/swab.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/byteorder/generic.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/irqflags.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/percpu.h \
    $(wildcard include/config/CPU_V6) \
    $(wildcard include/config/ARM_HAS_GROUP_RELOCS) \
    $(wildcard include/config/ARM_MODULE_PLTS) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/insn.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/threads.h \
    $(wildcard include/config/NR_CPUS) \
    $(wildcard include/config/BASE_SMALL) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/percpu-defs.h \
    $(wildcard include/config/ARCH_MODULE_NEEDS_WEAK_PER_CPU) \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/non-atomic.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/non-instrumented-non-atomic.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/builtin-__fls.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/builtin-__ffs.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/builtin-fls.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/builtin-ffs.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/ffz.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/fls64.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/sched.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/hweight.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/arch_hweight.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/const_hweight.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/lock.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/atomic.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
    $(wildcard include/config/ARM_LPAE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/prefetch.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/processor.h \
    $(wildcard include/config/HAVE_HW_BREAKPOINT) \
    $(wildcard include/config/BINFMT_ELF_FDPIC) \
    $(wildcard include/config/MMU) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/hw_breakpoint.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/unified.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/vdso/processor.h \
    $(wildcard include/config/ARM_ERRATA_754327) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/CPU_SA1100) \
    $(wildcard include/config/CPU_SA110) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/cmpxchg-emu.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/cmpxchg-local.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/atomic/atomic-arch-fallback.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/atomic64.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/atomic/atomic-long.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/atomic/atomic-instrumented.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/instrumented.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/instrumented-lock.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/le.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/math64.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/time64.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/time64.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/time.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/time_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/time32.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/timex.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/timex.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/param.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/uapi/asm/param.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/param.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/timex.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/time32.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/time.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/uidgid_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/highuid.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kmod.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/umh.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/gfp.h \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/PAGE_BLOCK_MAX_ORDER) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/SPARSEMEM) \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP_PREINIT) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/spinlock.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/stringify.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/linkage.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/asm/preempt.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/preempt.h \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/SH) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/bug.h \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/CPU_ENDIAN_BE32) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/once_lite.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/stdarg.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/init.h \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kern_levels.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/ratelimit_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/spinlock_types_raw.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/spinlock_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCK_STAT) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/restart_block.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/errno.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/errno.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/current.h \
    $(wildcard include/config/CURRENT_POINTER_IN_TPIDRURO) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/ARM_THUMBEE) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/VFPv3) \
    $(wildcard include/config/IWMMXT) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/page.h \
    $(wildcard include/config/CPU_COPY_V4WT) \
    $(wildcard include/config/CPU_COPY_V4WB) \
    $(wildcard include/config/CPU_COPY_FEROCEON) \
    $(wildcard include/config/CPU_COPY_FA) \
    $(wildcard include/config/CPU_XSCALE) \
    $(wildcard include/config/CPU_COPY_V6) \
    $(wildcard include/config/KUSER_HELPERS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/glue.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/pgtable-2level-types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/memory.h \
    $(wildcard include/config/NEED_MACH_MEMORY_H) \
    $(wildcard include/config/PAGE_OFFSET) \
    $(wildcard include/config/DRAM_BASE) \
    $(wildcard include/config/DRAM_SIZE) \
    $(wildcard include/config/XIP_KERNEL) \
    $(wildcard include/config/HAVE_TCM) \
    $(wildcard include/config/ARM_PATCH_PHYS_VIRT) \
    $(wildcard include/config/PHYS_OFFSET) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sizes.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/kasan_def.h \
    $(wildcard include/config/KASAN_SHADOW_OFFSET) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/getorder.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/memory_model.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/pfn.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/traps.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/bottom_half.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/instruction_pointer.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/align.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/align.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/array_size.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/hex.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kstrtox.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/minmax.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sprintf.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/util_macros.h \
    $(wildcard include/config/FOO_SUSPEND) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/wordpart.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/bitmap.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/find.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/string.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/string.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/bitmap-str.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/cpumask_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/numa.h \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/nodemask.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/nodemask_types.h \
    $(wildcard include/config/NODES_SHIFT) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/random.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/ioctl.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/uapi/asm/ioctl.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/ioctl.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/ioctl.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/irqnr.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/irqnr.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/smp_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/smp.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/asm/mmiowb.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/spinlock_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rwlock_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/spinlock.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rwlock.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/list_nulls.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/wait.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/seqlock.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/mutex.h \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/osq_lock.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/debug_locks.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/seqlock_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/page-flags-layout.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/generated/bounds.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/FUTEX_PRIVATE_HASH) \
    $(wildcard include/config/ARCH_HAS_ELF_CORE_EFLAGS) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/MM_ID) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/mm_types_task.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/auxvec.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/auxvec.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/auxvec.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/auxvec.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kref.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/refcount.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/refcount_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rbtree.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rbtree_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rcupdate.h \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/VIRT_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/CFS_BANDWIDTH) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DETECT_HUNG_TASK_BLOCKER) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/COMPAT) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/DEBUG_RSEQ) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/KSTACK_ERASE) \
    $(wildcard include/config/KSTACK_ERASE_METRICS) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/RV_PER_TASK_MONITORS) \
    $(wildcard include/config/USER_EVENTS) \
    $(wildcard include/config/UNWIND_USER) \
    $(wildcard include/config/SCHED_PROXY_EXEC) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/sched.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/pid_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sem_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/shm.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/shmparam.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kmsan_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/plist_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/hrtimer_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/timerqueue_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/timer_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/resource.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/resource.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/uapi/asm/resource.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/resource.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/resource.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/latencytop.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sched/prio.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sched/types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/signal.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/signal.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/signal.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/signal-defs.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/uapi/asm/sigcontext.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/uapi/asm/siginfo.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/asm-generic/siginfo.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/syscall_user_dispatch_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
    $(wildcard include/config/NET_ACT_MIRRED) \
    $(wildcard include/config/NF_DUP_NETDEV) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/posix-timers_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/rseq.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kcsan.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rv.h \
    $(wildcard include/config/RV_LTL_MONITOR) \
    $(wildcard include/config/RV_REACTORS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/tracepoint-defs.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/static_key.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/unwind_deferred_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/generated/asm/kmap_size.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/generated/rq-offsets.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rcutree.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/completion.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/swait.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/uprobes.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/ktime.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/jiffies.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/jiffies.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/generated/timeconst.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/vdso/ktime.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/timekeeping.h \
    $(wildcard include/config/POSIX_AUX_CLOCKS) \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/clocksource_ids.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/uprobes.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/probes.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/workqueue_types.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/percpu_counter.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/percpu.h \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/CPU_HAS_ASID) \
    $(wildcard include/config/VDSO) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/MIGRATION) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/local_lock.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/local_lock_internal.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/notifier.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rcu_segcblist.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/srcutree.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/arch_topology.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/topology.h \
    $(wildcard include/config/ARM_CPU_TOPOLOGY) \
    $(wildcard include/config/BL_SWITCHER) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/topology.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/sysctl.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/elf.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/user.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/elf.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/uapi/linux/elf-em.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sysfs.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/idr.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/radix-tree.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/sched/coredump.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/kobject_ns.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/rbtree_latch.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/error-injection.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/error-injection.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/dynamic_debug.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/module.h \
    $(wildcard include/config/ARM_UNWIND) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/unwind.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/build-salt.h \
    $(wildcard include/config/BUILD_SALT) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/elfnote.h \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/elfnote-lto.h \
    $(wildcard include/config/LTO) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/linux/vermagic.h \
    $(wildcard include/config/PREEMPT_BUILD) \
  /shared_data/jayanth/workspace/ldd/source/linux/include/generated/utsrelease.h \
  /shared_data/jayanth/workspace/ldd/source/linux/arch/arm/include/asm/vermagic.h \

.module-common.o: $(deps_.module-common.o)

$(deps_.module-common.o):
