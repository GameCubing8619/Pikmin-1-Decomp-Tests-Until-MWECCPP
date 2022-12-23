.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.balign 32, 0
.global Jac_FatMemory_Init__FUl
Jac_FatMemory_Init__FUl:
/* 8000DDE0 0000AD40  7C 08 02 A6 */	mflr r0
/* 8000DDE4 0000AD44  90 01 00 04 */	stw r0, 4(r1)
/* 8000DDE8 0000AD48  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000DDEC 0000AD4C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000DDF0 0000AD50  7C 7F 1B 78 */	mr r31, r3
/* 8000DDF4 0000AD54  4B FF 79 8D */	bl OSAlloc2
/* 8000DDF8 0000AD58  90 6D 2B F8 */	stw r3, fatheapptr@sda21(r13)
/* 8000DDFC 0000AD5C  80 6D 2B F8 */	lwz r3, fatheapptr@sda21(r13)
/* 8000DE00 0000AD60  28 03 00 00 */	cmplwi r3, 0
/* 8000DE04 0000AD64  41 82 00 0C */	beq .L_8000DE10
/* 8000DE08 0000AD68  7F E4 FB 78 */	mr r4, r31
/* 8000DE0C 0000AD6C  48 00 00 35 */	bl FAT_InitSystem__FPUcUl
.L_8000DE10:
/* 8000DE10 0000AD70  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000DE14 0000AD74  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000DE18 0000AD78  38 21 00 18 */	addi r1, r1, 0x18
/* 8000DE1C 0000AD7C  7C 08 03 A6 */	mtlr r0
/* 8000DE20 0000AD80  4E 80 00 20 */	blr 

.balign 32, 0
.global FAT_InitSystem__FPUcUl
FAT_InitSystem__FPUcUl:
/* 8000DE40 0000ADA0  3C C0 80 31 */	lis r6, FH_TO_FAT@ha
/* 8000DE44 0000ADA4  3C A0 00 01 */	lis r5, 0x0000FFFF@ha
/* 8000DE48 0000ADA8  39 06 DE E8 */	addi r8, r6, FH_TO_FAT@l
/* 8000DE4C 0000ADAC  38 C5 FF FF */	addi r6, r5, 0x0000FFFF@l
/* 8000DE50 0000ADB0  38 00 01 00 */	li r0, 0x100
/* 8000DE54 0000ADB4  39 40 00 00 */	li r10, 0
/* 8000DE58 0000ADB8  38 A0 00 00 */	li r5, 0
/* 8000DE5C 0000ADBC  38 E0 10 00 */	li r7, 0x1000
/* 8000DE60 0000ADC0  7C 09 03 A6 */	mtctr r0
.L_8000DE64:
/* 8000DE64 0000ADC4  28 04 10 00 */	cmplwi r4, 0x1000
/* 8000DE68 0000ADC8  41 80 00 28 */	blt .L_8000DE90
/* 8000DE6C 0000ADCC  7D 28 2A 14 */	add r9, r8, r5
/* 8000DE70 0000ADD0  38 84 F0 00 */	addi r4, r4, -4096
/* 8000DE74 0000ADD4  90 69 04 04 */	stw r3, 0x404(r9)
/* 8000DE78 0000ADD8  39 4A 00 01 */	addi r10, r10, 1
/* 8000DE7C 0000ADDC  38 63 10 00 */	addi r3, r3, 0x1000
/* 8000DE80 0000ADE0  38 A5 00 08 */	addi r5, r5, 8
/* 8000DE84 0000ADE4  B0 E9 04 02 */	sth r7, 0x402(r9)
/* 8000DE88 0000ADE8  B0 C9 04 00 */	sth r6, 0x400(r9)
/* 8000DE8C 0000ADEC  42 00 FF D8 */	bdnz .L_8000DE64
.L_8000DE90:
/* 8000DE90 0000ADF0  38 A0 00 00 */	li r5, 0
/* 8000DE94 0000ADF4  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8000DE98 0000ADF8  20 0A 01 00 */	subfic r0, r10, 0x100
/* 8000DE9C 0000ADFC  91 4D 2B F0 */	stw r10, ACTIVE_FATS@sda21(r13)
/* 8000DEA0 0000AE00  38 83 FF FF */	addi r4, r3, 0x0000FFFF@l
/* 8000DEA4 0000AE04  55 43 18 38 */	slwi r3, r10, 3
/* 8000DEA8 0000AE08  90 AD 2B F4 */	stw r5, USEFAT_TAIL@sda21(r13)
/* 8000DEAC 0000AE0C  7C 09 03 A6 */	mtctr r0
/* 8000DEB0 0000AE10  28 0A 01 00 */	cmplwi r10, 0x100
/* 8000DEB4 0000AE14  40 80 00 18 */	bge .L_8000DECC
.L_8000DEB8:
/* 8000DEB8 0000AE18  7C C8 1A 14 */	add r6, r8, r3
/* 8000DEBC 0000AE1C  38 63 00 08 */	addi r3, r3, 8
/* 8000DEC0 0000AE20  B0 86 04 00 */	sth r4, 0x400(r6)
/* 8000DEC4 0000AE24  B0 A6 04 02 */	sth r5, 0x402(r6)
/* 8000DEC8 0000AE28  42 00 FF F0 */	bdnz .L_8000DEB8
.L_8000DECC:
/* 8000DECC 0000AE2C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8000DED0 0000AE30  38 00 01 00 */	li r0, 0x100
/* 8000DED4 0000AE34  38 83 FF FF */	addi r4, r3, 0x0000FFFF@l
/* 8000DED8 0000AE38  38 C0 00 00 */	li r6, 0
/* 8000DEDC 0000AE3C  38 60 00 00 */	li r3, 0
/* 8000DEE0 0000AE40  7C 09 03 A6 */	mtctr r0
.L_8000DEE4:
/* 8000DEE4 0000AE44  7C A8 1A 14 */	add r5, r8, r3
/* 8000DEE8 0000AE48  38 63 00 04 */	addi r3, r3, 4
/* 8000DEEC 0000AE4C  B0 85 00 00 */	sth r4, 0(r5)
/* 8000DEF0 0000AE50  B0 C5 00 02 */	sth r6, 2(r5)
/* 8000DEF4 0000AE54  42 00 FF F0 */	bdnz .L_8000DEE4
/* 8000DEF8 0000AE58  4E 80 00 20 */	blr 

.balign 32, 0
.global FAT_AllocateMemory__FUl
FAT_AllocateMemory__FUl:
/* 8000DF00 0000AE60  3C 80 80 31 */	lis r4, FH_TO_FAT@ha
/* 8000DF04 0000AE64  38 00 01 00 */	li r0, 0x100
/* 8000DF08 0000AE68  38 A4 DE E8 */	addi r5, r4, FH_TO_FAT@l
/* 8000DF0C 0000AE6C  38 C0 00 00 */	li r6, 0
/* 8000DF10 0000AE70  38 80 00 00 */	li r4, 0
/* 8000DF14 0000AE74  7C 09 03 A6 */	mtctr r0
.L_8000DF18:
/* 8000DF18 0000AE78  38 04 00 02 */	addi r0, r4, 2
/* 8000DF1C 0000AE7C  7C 05 02 2E */	lhzx r0, r5, r0
/* 8000DF20 0000AE80  28 00 00 00 */	cmplwi r0, 0
/* 8000DF24 0000AE84  41 82 00 10 */	beq .L_8000DF34
/* 8000DF28 0000AE88  38 C6 00 01 */	addi r6, r6, 1
/* 8000DF2C 0000AE8C  38 84 00 04 */	addi r4, r4, 4
/* 8000DF30 0000AE90  42 00 FF E8 */	bdnz .L_8000DF18
.L_8000DF34:
/* 8000DF34 0000AE94  28 06 01 00 */	cmplwi r6, 0x100
/* 8000DF38 0000AE98  40 82 00 10 */	bne .L_8000DF48
/* 8000DF3C 0000AE9C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8000DF40 0000AEA0  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 8000DF44 0000AEA4  4E 80 00 20 */	blr 
.L_8000DF48:
/* 8000DF48 0000AEA8  28 03 00 00 */	cmplwi r3, 0
/* 8000DF4C 0000AEAC  54 C8 04 3E */	clrlwi r8, r6, 0x10
/* 8000DF50 0000AEB0  40 82 00 10 */	bne .L_8000DF60
/* 8000DF54 0000AEB4  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8000DF58 0000AEB8  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 8000DF5C 0000AEBC  4E 80 00 20 */	blr 
.L_8000DF60:
/* 8000DF60 0000AEC0  80 ED 2B F4 */	lwz r7, USEFAT_TAIL@sda21(r13)
/* 8000DF64 0000AEC4  38 63 0F FF */	addi r3, r3, 0xfff
/* 8000DF68 0000AEC8  80 0D 2B F0 */	lwz r0, ACTIVE_FATS@sda21(r13)
/* 8000DF6C 0000AECC  54 66 A3 3E */	srwi r6, r3, 0xc
/* 8000DF70 0000AED0  7C 07 00 50 */	subf r0, r7, r0
/* 8000DF74 0000AED4  7C 00 30 00 */	cmpw r0, r6
/* 8000DF78 0000AED8  40 80 00 10 */	bge .L_8000DF88
/* 8000DF7C 0000AEDC  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8000DF80 0000AEE0  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 8000DF84 0000AEE4  4E 80 00 20 */	blr 
.L_8000DF88:
/* 8000DF88 0000AEE8  7C 87 32 14 */	add r4, r7, r6
/* 8000DF8C 0000AEEC  54 E3 18 38 */	slwi r3, r7, 3
/* 8000DF90 0000AEF0  7C 07 20 50 */	subf r0, r7, r4
/* 8000DF94 0000AEF4  7C 09 03 A6 */	mtctr r0
/* 8000DF98 0000AEF8  7C 07 20 40 */	cmplw r7, r4
/* 8000DF9C 0000AEFC  40 80 00 14 */	bge .L_8000DFB0
.L_8000DFA0:
/* 8000DFA0 0000AF00  7C 85 1A 14 */	add r4, r5, r3
/* 8000DFA4 0000AF04  38 63 00 08 */	addi r3, r3, 8
/* 8000DFA8 0000AF08  B1 04 04 00 */	sth r8, 0x400(r4)
/* 8000DFAC 0000AF0C  42 00 FF F4 */	bdnz .L_8000DFA0
.L_8000DFB0:
/* 8000DFB0 0000AF10  55 00 10 3A */	slwi r0, r8, 2
/* 8000DFB4 0000AF14  38 68 00 00 */	addi r3, r8, 0
/* 8000DFB8 0000AF18  7C E5 03 2E */	sthx r7, r5, r0
/* 8000DFBC 0000AF1C  7C 85 02 14 */	add r4, r5, r0
/* 8000DFC0 0000AF20  B0 C4 00 02 */	sth r6, 2(r4)
/* 8000DFC4 0000AF24  80 0D 2B F4 */	lwz r0, USEFAT_TAIL@sda21(r13)
/* 8000DFC8 0000AF28  7C 00 32 14 */	add r0, r0, r6
/* 8000DFCC 0000AF2C  90 0D 2B F4 */	stw r0, USEFAT_TAIL@sda21(r13)
/* 8000DFD0 0000AF30  4E 80 00 20 */	blr 

.balign 32, 0
.global FAT_FreeMemory__FUs
FAT_FreeMemory__FUs:
/* 8000DFE0 0000AF40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000DFE4 0000AF44  3C 80 80 31 */	lis r4, FH_TO_FAT@ha
/* 8000DFE8 0000AF48  38 84 DE E8 */	addi r4, r4, FH_TO_FAT@l
/* 8000DFEC 0000AF4C  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8000DFF0 0000AF50  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 8000DFF4 0000AF54  7C 64 02 14 */	add r3, r4, r0
/* 8000DFF8 0000AF58  39 60 00 00 */	li r11, 0
/* 8000DFFC 0000AF5C  7C 04 02 2E */	lhzx r0, r4, r0
/* 8000E000 0000AF60  A0 A3 00 02 */	lhz r5, 2(r3)
/* 8000E004 0000AF64  B1 63 00 02 */	sth r11, 2(r3)
/* 8000E008 0000AF68  7C 60 2A 14 */	add r3, r0, r5
/* 8000E00C 0000AF6C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8000E010 0000AF70  80 CD 2B F4 */	lwz r6, USEFAT_TAIL@sda21(r13)
/* 8000E014 0000AF74  7C E3 30 50 */	subf r7, r3, r6
/* 8000E018 0000AF78  54 FE 04 3F */	clrlwi. r30, r7, 0x10
/* 8000E01C 0000AF7C  40 82 00 48 */	bne .L_8000E064
/* 8000E020 0000AF80  7C 05 30 50 */	subf r0, r5, r6
/* 8000E024 0000AF84  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8000E028 0000AF88  90 0D 2B F4 */	stw r0, USEFAT_TAIL@sda21(r13)
/* 8000E02C 0000AF8C  38 C3 FF FF */	addi r6, r3, 0x0000FFFF@l
/* 8000E030 0000AF90  39 00 00 00 */	li r8, 0
/* 8000E034 0000AF94  80 ED 2B F4 */	lwz r7, USEFAT_TAIL@sda21(r13)
/* 8000E038 0000AF98  7C A9 03 A6 */	mtctr r5
/* 8000E03C 0000AF9C  28 05 00 00 */	cmplwi r5, 0
/* 8000E040 0000AFA0  40 81 00 1C */	ble .L_8000E05C
.L_8000E044:
/* 8000E044 0000AFA4  7C 07 42 14 */	add r0, r7, r8
/* 8000E048 0000AFA8  39 08 00 01 */	addi r8, r8, 1
/* 8000E04C 0000AFAC  54 00 18 38 */	slwi r0, r0, 3
/* 8000E050 0000AFB0  7C 64 02 14 */	add r3, r4, r0
/* 8000E054 0000AFB4  B0 C3 04 00 */	sth r6, 0x400(r3)
/* 8000E058 0000AFB8  42 00 FF EC */	bdnz .L_8000E044
.L_8000E05C:
/* 8000E05C 0000AFBC  38 60 00 00 */	li r3, 0
/* 8000E060 0000AFC0  48 00 01 04 */	b .L_8000E164
.L_8000E064:
/* 8000E064 0000AFC4  3C E0 00 01 */	lis r7, 0x0000FFFF@ha
/* 8000E068 0000AFC8  38 CB 00 00 */	addi r6, r11, 0
/* 8000E06C 0000AFCC  38 E7 FF FF */	addi r7, r7, 0x0000FFFF@l
/* 8000E070 0000AFD0  7C A9 03 A6 */	mtctr r5
/* 8000E074 0000AFD4  28 05 00 00 */	cmplwi r5, 0
/* 8000E078 0000AFD8  40 81 00 34 */	ble .L_8000E0AC
.L_8000E07C:
/* 8000E07C 0000AFDC  7D 00 5A 14 */	add r8, r0, r11
/* 8000E080 0000AFE0  7D 44 32 14 */	add r10, r4, r6
/* 8000E084 0000AFE4  55 08 18 38 */	slwi r8, r8, 3
/* 8000E088 0000AFE8  39 6B 00 01 */	addi r11, r11, 1
/* 8000E08C 0000AFEC  7D 04 42 14 */	add r8, r4, r8
/* 8000E090 0000AFF0  38 C6 00 08 */	addi r6, r6, 8
/* 8000E094 0000AFF4  81 28 04 00 */	lwz r9, 0x400(r8)
/* 8000E098 0000AFF8  81 08 04 04 */	lwz r8, 0x404(r8)
/* 8000E09C 0000AFFC  91 2A 0C 00 */	stw r9, 0xc00(r10)
/* 8000E0A0 0000B000  91 0A 0C 04 */	stw r8, 0xc04(r10)
/* 8000E0A4 0000B004  B0 EA 0C 00 */	sth r7, 0xc00(r10)
/* 8000E0A8 0000B008  42 00 FF D4 */	bdnz .L_8000E07C
.L_8000E0AC:
/* 8000E0AC 0000B00C  3C C0 00 01 */	lis r6, 0x0000FFFF@ha
/* 8000E0B0 0000B010  39 80 00 00 */	li r12, 0
/* 8000E0B4 0000B014  3B E6 FF FF */	addi r31, r6, 0x0000FFFF@l
/* 8000E0B8 0000B018  7F C9 03 A6 */	mtctr r30
/* 8000E0BC 0000B01C  28 1E 00 00 */	cmplwi r30, 0
/* 8000E0C0 0000B020  40 81 00 50 */	ble .L_8000E110
.L_8000E0C4:
/* 8000E0C4 0000B024  7C C3 62 14 */	add r6, r3, r12
/* 8000E0C8 0000B028  7D 60 62 14 */	add r11, r0, r12
/* 8000E0CC 0000B02C  54 C7 18 38 */	slwi r7, r6, 3
/* 8000E0D0 0000B030  55 66 18 38 */	slwi r6, r11, 3
/* 8000E0D4 0000B034  7D 44 3A 14 */	add r10, r4, r7
/* 8000E0D8 0000B038  7D 24 32 14 */	add r9, r4, r6
/* 8000E0DC 0000B03C  81 0A 04 00 */	lwz r8, 0x400(r10)
/* 8000E0E0 0000B040  57 E6 04 3E */	clrlwi r6, r31, 0x10
/* 8000E0E4 0000B044  80 EA 04 04 */	lwz r7, 0x404(r10)
/* 8000E0E8 0000B048  91 09 04 00 */	stw r8, 0x400(r9)
/* 8000E0EC 0000B04C  90 E9 04 04 */	stw r7, 0x404(r9)
/* 8000E0F0 0000B050  A0 EA 04 00 */	lhz r7, 0x400(r10)
/* 8000E0F4 0000B054  7C 06 38 40 */	cmplw r6, r7
/* 8000E0F8 0000B058  41 82 00 10 */	beq .L_8000E108
/* 8000E0FC 0000B05C  54 E6 10 3A */	slwi r6, r7, 2
/* 8000E100 0000B060  7C FF 3B 78 */	mr r31, r7
/* 8000E104 0000B064  7D 64 33 2E */	sthx r11, r4, r6
.L_8000E108:
/* 8000E108 0000B068  39 8C 00 01 */	addi r12, r12, 1
/* 8000E10C 0000B06C  42 00 FF B8 */	bdnz .L_8000E0C4
.L_8000E110:
/* 8000E110 0000B070  80 0D 2B F4 */	lwz r0, USEFAT_TAIL@sda21(r13)
/* 8000E114 0000B074  39 20 00 00 */	li r9, 0
/* 8000E118 0000B078  38 60 00 00 */	li r3, 0
/* 8000E11C 0000B07C  7C 05 00 50 */	subf r0, r5, r0
/* 8000E120 0000B080  90 0D 2B F4 */	stw r0, USEFAT_TAIL@sda21(r13)
/* 8000E124 0000B084  81 0D 2B F4 */	lwz r8, USEFAT_TAIL@sda21(r13)
/* 8000E128 0000B088  7C A9 03 A6 */	mtctr r5
/* 8000E12C 0000B08C  28 05 00 00 */	cmplwi r5, 0
/* 8000E130 0000B090  40 81 00 30 */	ble .L_8000E160
.L_8000E134:
/* 8000E134 0000B094  7C E4 1A 14 */	add r7, r4, r3
/* 8000E138 0000B098  7C 08 4A 14 */	add r0, r8, r9
/* 8000E13C 0000B09C  54 06 18 38 */	slwi r6, r0, 3
/* 8000E140 0000B0A0  80 A7 0C 00 */	lwz r5, 0xc00(r7)
/* 8000E144 0000B0A4  80 07 0C 04 */	lwz r0, 0xc04(r7)
/* 8000E148 0000B0A8  7C C4 32 14 */	add r6, r4, r6
/* 8000E14C 0000B0AC  39 29 00 01 */	addi r9, r9, 1
/* 8000E150 0000B0B0  38 63 00 08 */	addi r3, r3, 8
/* 8000E154 0000B0B4  90 A6 04 00 */	stw r5, 0x400(r6)
/* 8000E158 0000B0B8  90 06 04 04 */	stw r0, 0x404(r6)
/* 8000E15C 0000B0BC  42 00 FF D8 */	bdnz .L_8000E134
.L_8000E160:
/* 8000E160 0000B0C0  38 60 00 00 */	li r3, 0
.L_8000E164:
/* 8000E164 0000B0C4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 8000E168 0000B0C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8000E16C 0000B0CC  4E 80 00 20 */	blr 

.balign 32, 0
.global FAT_GetPointer__FUsUl
FAT_GetPointer__FUsUl:
/* 8000E180 0000B0E0  3C A0 80 31 */	lis r5, FH_TO_FAT@ha
/* 8000E184 0000B0E4  54 67 13 BA */	rlwinm r7, r3, 2, 0xe, 0x1d
/* 8000E188 0000B0E8  38 A5 DE E8 */	addi r5, r5, FH_TO_FAT@l
/* 8000E18C 0000B0EC  54 86 A3 3E */	srwi r6, r4, 0xc
/* 8000E190 0000B0F0  7C 65 3A 14 */	add r3, r5, r7
/* 8000E194 0000B0F4  A0 03 00 02 */	lhz r0, 2(r3)
/* 8000E198 0000B0F8  7C 00 30 40 */	cmplw r0, r6
/* 8000E19C 0000B0FC  41 81 00 0C */	bgt .L_8000E1A8
/* 8000E1A0 0000B100  38 60 00 00 */	li r3, 0
/* 8000E1A4 0000B104  4E 80 00 20 */	blr 
.L_8000E1A8:
/* 8000E1A8 0000B108  7C 05 3A 2E */	lhzx r0, r5, r7
/* 8000E1AC 0000B10C  54 84 05 3E */	clrlwi r4, r4, 0x14
/* 8000E1B0 0000B110  7C 06 02 14 */	add r0, r6, r0
/* 8000E1B4 0000B114  54 00 18 38 */	slwi r0, r0, 3
/* 8000E1B8 0000B118  7C 65 02 14 */	add r3, r5, r0
/* 8000E1BC 0000B11C  80 03 04 04 */	lwz r0, 0x404(r3)
/* 8000E1C0 0000B120  7C 60 22 14 */	add r3, r0, r4
/* 8000E1C4 0000B124  4E 80 00 20 */	blr 

.balign 32, 0
.global FAT_ReadByte__FUsUl
FAT_ReadByte__FUsUl:
/* 8000E1E0 0000B140  7C 08 02 A6 */	mflr r0
/* 8000E1E4 0000B144  90 01 00 04 */	stw r0, 4(r1)
/* 8000E1E8 0000B148  94 21 FF F8 */	stwu r1, -8(r1)
/* 8000E1EC 0000B14C  4B FF FF 95 */	bl FAT_GetPointer__FUsUl
/* 8000E1F0 0000B150  28 03 00 00 */	cmplwi r3, 0
/* 8000E1F4 0000B154  40 82 00 0C */	bne .L_8000E200
/* 8000E1F8 0000B158  38 60 00 00 */	li r3, 0
/* 8000E1FC 0000B15C  48 00 00 08 */	b .L_8000E204
.L_8000E200:
/* 8000E200 0000B160  88 63 00 00 */	lbz r3, 0(r3)
.L_8000E204:
/* 8000E204 0000B164  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000E208 0000B168  38 21 00 08 */	addi r1, r1, 8
/* 8000E20C 0000B16C  7C 08 03 A6 */	mtlr r0
/* 8000E210 0000B170  4E 80 00 20 */	blr 

.balign 32, 0
.global FAT_StoreBlock__FPUcUsUlUl
FAT_StoreBlock__FPUcUsUlUl:
/* 8000E220 0000B180  7C 08 02 A6 */	mflr r0
/* 8000E224 0000B184  90 01 00 04 */	stw r0, 4(r1)
/* 8000E228 0000B188  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8000E22C 0000B18C  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 8000E230 0000B190  3B 84 00 00 */	addi r28, r4, 0
/* 8000E234 0000B194  3B A5 00 00 */	addi r29, r5, 0
/* 8000E238 0000B198  3B 63 00 00 */	addi r27, r3, 0
/* 8000E23C 0000B19C  3B C6 00 00 */	addi r30, r6, 0
/* 8000E240 0000B1A0  38 7C 00 00 */	addi r3, r28, 0
/* 8000E244 0000B1A4  38 9D 00 00 */	addi r4, r29, 0
/* 8000E248 0000B1A8  4B FF FF 39 */	bl FAT_GetPointer__FUsUl
/* 8000E24C 0000B1AC  3B FD 00 00 */	addi r31, r29, 0
/* 8000E250 0000B1B0  57 BD 05 3E */	clrlwi r29, r29, 0x14
/* 8000E254 0000B1B4  38 83 00 00 */	addi r4, r3, 0
/* 8000E258 0000B1B8  7F FD F8 50 */	subf r31, r29, r31
/* 8000E25C 0000B1BC  48 00 00 3C */	b .L_8000E298
.L_8000E260:
/* 8000E260 0000B1C0  88 1B 00 00 */	lbz r0, 0(r27)
/* 8000E264 0000B1C4  3B BD 00 01 */	addi r29, r29, 1
/* 8000E268 0000B1C8  28 1D 10 00 */	cmplwi r29, 0x1000
/* 8000E26C 0000B1CC  3B DE FF FF */	addi r30, r30, -1
/* 8000E270 0000B1D0  98 04 00 00 */	stb r0, 0(r4)
/* 8000E274 0000B1D4  38 84 00 01 */	addi r4, r4, 1
/* 8000E278 0000B1D8  3B 7B 00 01 */	addi r27, r27, 1
/* 8000E27C 0000B1DC  40 82 00 1C */	bne .L_8000E298
/* 8000E280 0000B1E0  3B FF 10 00 */	addi r31, r31, 0x1000
/* 8000E284 0000B1E4  38 7C 00 00 */	addi r3, r28, 0
/* 8000E288 0000B1E8  38 9F 00 00 */	addi r4, r31, 0
/* 8000E28C 0000B1EC  4B FF FE F5 */	bl FAT_GetPointer__FUsUl
/* 8000E290 0000B1F0  7C 64 1B 78 */	mr r4, r3
/* 8000E294 0000B1F4  48 00 00 38 */	b .L_8000E2CC
.L_8000E298:
/* 8000E298 0000B1F8  28 1E 00 00 */	cmplwi r30, 0
/* 8000E29C 0000B1FC  40 82 FF C4 */	bne .L_8000E260
/* 8000E2A0 0000B200  48 00 00 2C */	b .L_8000E2CC
.L_8000E2A4:
/* 8000E2A4 0000B204  38 7B 00 00 */	addi r3, r27, 0
/* 8000E2A8 0000B208  38 A0 10 00 */	li r5, 0x1000
/* 8000E2AC 0000B20C  4B FF 7C D5 */	bl Jac_bcopy__FPvPvl
/* 8000E2B0 0000B210  3B FF 10 00 */	addi r31, r31, 0x1000
/* 8000E2B4 0000B214  38 7C 00 00 */	addi r3, r28, 0
/* 8000E2B8 0000B218  38 9F 00 00 */	addi r4, r31, 0
/* 8000E2BC 0000B21C  3B DE F0 00 */	addi r30, r30, -4096
/* 8000E2C0 0000B220  3B 7B 10 00 */	addi r27, r27, 0x1000
/* 8000E2C4 0000B224  4B FF FE BD */	bl FAT_GetPointer__FUsUl
/* 8000E2C8 0000B228  7C 64 1B 78 */	mr r4, r3
.L_8000E2CC:
/* 8000E2CC 0000B22C  28 1E 10 00 */	cmplwi r30, 0x1000
/* 8000E2D0 0000B230  40 80 FF D4 */	bge .L_8000E2A4
/* 8000E2D4 0000B234  28 1E 00 00 */	cmplwi r30, 0
/* 8000E2D8 0000B238  41 82 00 10 */	beq .L_8000E2E8
/* 8000E2DC 0000B23C  38 7B 00 00 */	addi r3, r27, 0
/* 8000E2E0 0000B240  38 BE 00 00 */	addi r5, r30, 0
/* 8000E2E4 0000B244  4B FF 7C 9D */	bl Jac_bcopy__FPvPvl
.L_8000E2E8:
/* 8000E2E8 0000B248  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 8000E2EC 0000B24C  38 60 00 00 */	li r3, 0
/* 8000E2F0 0000B250  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8000E2F4 0000B254  38 21 00 38 */	addi r1, r1, 0x38
/* 8000E2F8 0000B258  7C 08 03 A6 */	mtlr r0
/* 8000E2FC 0000B25C  4E 80 00 20 */	blr 

.section .sbss, "wa"
.balign 8
ACTIVE_FATS:
	.skip 4
USEFAT_TAIL:
	.skip 4
fatheapptr:
	.skip 4
