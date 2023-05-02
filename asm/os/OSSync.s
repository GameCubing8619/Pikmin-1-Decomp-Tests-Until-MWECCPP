.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.fn SystemCallVector, local
.global __OSSystemCallVectorStart
__OSSystemCallVectorStart:
/* 801FB928 001F8888  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 801FB92C 001F888C  61 2A 00 08 */	ori r10, r9, 8
/* 801FB930 001F8890  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 801FB934 001F8894  4C 00 01 2C */	isync 
/* 801FB938 001F8898  7C 00 04 AC */	sync 0
/* 801FB93C 001F889C  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 801FB940 001F88A0  4C 00 00 64 */	rfi 
.global __OSSystemCallVectorEnd
__OSSystemCallVectorEnd:
/* 801FB944 001F88A4  60 00 00 00 */	nop 
.endfn SystemCallVector

.fn __OSInitSystemCall, global
/* 801FB948 001F88A8  7C 08 02 A6 */	mflr r0
/* 801FB94C 001F88AC  90 01 00 04 */	stw r0, 4(r1)
/* 801FB950 001F88B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB954 001F88B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB958 001F88B8  3C A0 80 00 */	lis r5, 0x80000C00@ha
/* 801FB95C 001F88BC  3C 80 80 20 */	lis r4, SystemCallVector@ha
/* 801FB960 001F88C0  3C 60 80 20 */	lis r3, __OSSystemCallVectorEnd@ha
/* 801FB964 001F88C4  3B E5 0C 00 */	addi r31, r5, 0x80000C00@l
/* 801FB968 001F88C8  38 03 B9 44 */	addi r0, r3, __OSSystemCallVectorEnd@l
/* 801FB96C 001F88CC  38 84 B9 28 */	addi r4, r4, SystemCallVector@l
/* 801FB970 001F88D0  7F E3 FB 78 */	mr r3, r31
/* 801FB974 001F88D4  7C A4 00 50 */	subf r5, r4, r0
/* 801FB978 001F88D8  4B E0 7A 9D */	bl memcpy
/* 801FB97C 001F88DC  7F E3 FB 78 */	mr r3, r31
/* 801FB980 001F88E0  38 80 01 00 */	li r4, 0x100
/* 801FB984 001F88E4  4B FF B2 CD */	bl DCFlushRangeNoSync
/* 801FB988 001F88E8  7C 00 04 AC */	sync 0
/* 801FB98C 001F88EC  7F E3 FB 78 */	mr r3, r31
/* 801FB990 001F88F0  38 80 01 00 */	li r4, 0x100
/* 801FB994 001F88F4  4B FF B3 4D */	bl ICInvalidateRange
/* 801FB998 001F88F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB99C 001F88FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB9A0 001F8900  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB9A4 001F8904  7C 08 03 A6 */	mtlr r0
/* 801FB9A8 001F8908  4E 80 00 20 */	blr 
.endfn __OSInitSystemCall
