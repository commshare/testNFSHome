# 1 "src/base/platform/linux/gcc-arm/mali_osu_atomics.S"
# 1 "<command-line>"
# 1 "/home/zhangbin/android/gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux/arm-linux-gnueabihf/libc/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "src/base/platform/linux/gcc-arm/mali_osu_atomics.S"
# 11 "src/base/platform/linux/gcc-arm/mali_osu_atomics.S"
.text
.arm

 .macro MALI_DataMemoryBarrier




 dmb


 .endm

 .macro MALI_DataSynchBarrier




 dsb


 .endm

@u32 _mali_osu_atomic_inc_and_return( _mali_osu_atomic_t *atom )
.global _mali_osu_atomic_inc_and_return
.type _mali_osu_atomic_inc_and_return, %function

_mali_osu_atomic_inc_and_return:


1:
 MALI_DataMemoryBarrier
 ldrex r1, [r0]
 add r1, r1, $1
 strex r2, r1, [r0]
 cmp r2, $0
 bne 1b
 mov r0, r1
 MALI_DataMemoryBarrier
# 63 "src/base/platform/linux/gcc-arm/mali_osu_atomics.S"
 bx lr

@u32 _mali_osu_atomic_dec_and_return( _mali_osu_atomic_t *atom )
.global _mali_osu_atomic_dec_and_return
.type _mali_osu_atomic_dec_and_return, %function

_mali_osu_atomic_dec_and_return:


1:
 MALI_DataMemoryBarrier
 ldrex r1, [r0]
 sub r1, r1, $1
 strex r2, r1, [r0]
 cmp r2, $0
 bne 1b
 mov r0, r1
 MALI_DataMemoryBarrier
# 95 "src/base/platform/linux/gcc-arm/mali_osu_atomics.S"
 bx lr

@u32 _mali_osu_atomic_read( _mali_osu_atomic_t *atom )
.global _mali_osu_atomic_read
.type _mali_osu_atomic_read, %function

_mali_osu_atomic_read:

 MALI_DataMemoryBarrier
 ldr r0, [r0]
# 113 "src/base/platform/linux/gcc-arm/mali_osu_atomics.S"
 bx lr

@void _mali_osu_atomic_write( _mali_osu_atomic_t *atom, u32 val )
.global _mali_osu_atomic_write
.type _mali_osu_atomic_write, %function

_mali_osu_atomic_write:

1:
 MALI_DataMemoryBarrier
 ldrex r2, [r0]
 strex r2, r1, [r0]
 cmp r2, $0
 bne 1b
 MALI_DataMemoryBarrier
# 138 "src/base/platform/linux/gcc-arm/mali_osu_atomics.S"
 bx lr

@_mali_osu_errcode_t _mali_osu_atomic_init( _mali_osu_atomic_t *atom, u32 val )
.global _mali_osu_atomic_init
.type _mali_osu_atomic_init, %function

_mali_osu_atomic_init:
@ simple store
 str r1, [r0]
 mov r0, $0 @ Hardwired success code
 bx lr
