.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.balign 32, 0
.fn ARAMFinish__FUl, local
/* 8000E9C0 0000B920  7C 08 02 A6 */	mflr r0
/* 8000E9C4 0000B924  38 80 00 01 */	li r4, 1
/* 8000E9C8 0000B928  90 01 00 04 */	stw r0, 4(r1)
/* 8000E9CC 0000B92C  38 A0 00 01 */	li r5, 1
/* 8000E9D0 0000B930  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000E9D4 0000B934  90 61 00 08 */	stw r3, 8(r1)
/* 8000E9D8 0000B938  80 61 00 08 */	lwz r3, 8(r1)
/* 8000E9DC 0000B93C  80 63 00 04 */	lwz r3, 4(r3)
/* 8000E9E0 0000B940  48 1E AE 35 */	bl OSSendMessage
/* 8000E9E4 0000B944  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000E9E8 0000B948  38 21 00 18 */	addi r1, r1, 0x18
/* 8000E9EC 0000B94C  7C 08 03 A6 */	mtlr r0
/* 8000E9F0 0000B950  4E 80 00 20 */	blr 
.endfn ARAMFinish__FUl

.balign 32, 0
.fn ARAM_TO_ARAM_DMA__FUlUlUl, local
/* 8000EA00 0000B960  7C 08 02 A6 */	mflr r0
/* 8000EA04 0000B964  90 01 00 04 */	stw r0, 4(r1)
/* 8000EA08 0000B968  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 8000EA0C 0000B96C  BF 21 00 5C */	stmw r25, 0x5c(r1)
/* 8000EA10 0000B970  3B 23 00 00 */	addi r25, r3, 0
/* 8000EA14 0000B974  3B 44 00 00 */	addi r26, r4, 0
/* 8000EA18 0000B978  3B 65 00 00 */	addi r27, r5, 0
/* 8000EA1C 0000B97C  38 61 00 18 */	addi r3, r1, 0x18
/* 8000EA20 0000B980  38 81 00 14 */	addi r4, r1, 0x14
/* 8000EA24 0000B984  38 A0 00 01 */	li r5, 1
/* 8000EA28 0000B988  48 1E AD 8D */	bl OSInitMessageQueue
/* 8000EA2C 0000B98C  3C 80 80 31 */	lis r4, dmabuffer@ha
/* 8000EA30 0000B990  3C 60 80 01 */	lis r3, ARAMFinish__FUl@ha
/* 8000EA34 0000B994  3B C4 F9 80 */	addi r30, r4, dmabuffer@l
/* 8000EA38 0000B998  3B E3 E9 C0 */	addi r31, r3, ARAMFinish__FUl@l
/* 8000EA3C 0000B99C  3F A0 00 01 */	lis r29, 1
/* 8000EA40 0000B9A0  48 00 00 8C */	b .L_8000EACC
.L_8000EA44:
/* 8000EA44 0000B9A4  7C 1B E8 40 */	cmplw r27, r29
/* 8000EA48 0000B9A8  41 80 00 0C */	blt .L_8000EA54
/* 8000EA4C 0000B9AC  3F 80 00 01 */	lis r28, 1
/* 8000EA50 0000B9B0  48 00 00 08 */	b .L_8000EA58
.L_8000EA54:
/* 8000EA54 0000B9B4  7F 7C DB 78 */	mr r28, r27
.L_8000EA58:
/* 8000EA58 0000B9B8  38 F9 00 00 */	addi r7, r25, 0
/* 8000EA5C 0000B9BC  39 1E 00 00 */	addi r8, r30, 0
/* 8000EA60 0000B9C0  39 3C 00 00 */	addi r9, r28, 0
/* 8000EA64 0000B9C4  39 5F 00 00 */	addi r10, r31, 0
/* 8000EA68 0000B9C8  38 61 00 38 */	addi r3, r1, 0x38
/* 8000EA6C 0000B9CC  38 81 00 18 */	addi r4, r1, 0x18
/* 8000EA70 0000B9D0  38 A0 00 01 */	li r5, 1
/* 8000EA74 0000B9D4  38 C0 00 00 */	li r6, 0
/* 8000EA78 0000B9D8  48 1F 92 41 */	bl ARQPostRequest
/* 8000EA7C 0000B9DC  38 61 00 18 */	addi r3, r1, 0x18
/* 8000EA80 0000B9E0  38 80 00 00 */	li r4, 0
/* 8000EA84 0000B9E4  38 A0 00 01 */	li r5, 1
/* 8000EA88 0000B9E8  48 1E AE 55 */	bl OSReceiveMessage
/* 8000EA8C 0000B9EC  38 FE 00 00 */	addi r7, r30, 0
/* 8000EA90 0000B9F0  39 1A 00 00 */	addi r8, r26, 0
/* 8000EA94 0000B9F4  39 3C 00 00 */	addi r9, r28, 0
/* 8000EA98 0000B9F8  39 5F 00 00 */	addi r10, r31, 0
/* 8000EA9C 0000B9FC  38 61 00 38 */	addi r3, r1, 0x38
/* 8000EAA0 0000BA00  38 81 00 18 */	addi r4, r1, 0x18
/* 8000EAA4 0000BA04  38 A0 00 00 */	li r5, 0
/* 8000EAA8 0000BA08  38 C0 00 00 */	li r6, 0
/* 8000EAAC 0000BA0C  48 1F 92 0D */	bl ARQPostRequest
/* 8000EAB0 0000BA10  38 61 00 18 */	addi r3, r1, 0x18
/* 8000EAB4 0000BA14  38 80 00 00 */	li r4, 0
/* 8000EAB8 0000BA18  38 A0 00 01 */	li r5, 1
/* 8000EABC 0000BA1C  48 1E AE 21 */	bl OSReceiveMessage
/* 8000EAC0 0000BA20  7F 7C D8 50 */	subf r27, r28, r27
/* 8000EAC4 0000BA24  7F 39 E2 14 */	add r25, r25, r28
/* 8000EAC8 0000BA28  7F 5A E2 14 */	add r26, r26, r28
.L_8000EACC:
/* 8000EACC 0000BA2C  28 1B 00 00 */	cmplwi r27, 0
/* 8000EAD0 0000BA30  40 82 FF 74 */	bne .L_8000EA44
/* 8000EAD4 0000BA34  BB 21 00 5C */	lmw r25, 0x5c(r1)
/* 8000EAD8 0000BA38  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8000EADC 0000BA3C  38 21 00 78 */	addi r1, r1, 0x78
/* 8000EAE0 0000BA40  7C 08 03 A6 */	mtlr r0
/* 8000EAE4 0000BA44  4E 80 00 20 */	blr 
.endfn ARAM_TO_ARAM_DMA__FUlUlUl

.balign 32, 0
.fn DRAM_TO_DRAM_DMA__FUlUlUl, local
/* 8000EB00 0000BA60  7C 08 02 A6 */	mflr r0
/* 8000EB04 0000BA64  90 01 00 04 */	stw r0, 4(r1)
/* 8000EB08 0000BA68  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 8000EB0C 0000BA6C  BF 21 00 5C */	stmw r25, 0x5c(r1)
/* 8000EB10 0000BA70  3B 23 00 00 */	addi r25, r3, 0
/* 8000EB14 0000BA74  3B 44 00 00 */	addi r26, r4, 0
/* 8000EB18 0000BA78  3B 65 00 00 */	addi r27, r5, 0
/* 8000EB1C 0000BA7C  38 61 00 18 */	addi r3, r1, 0x18
/* 8000EB20 0000BA80  38 81 00 14 */	addi r4, r1, 0x14
/* 8000EB24 0000BA84  38 A0 00 01 */	li r5, 1
/* 8000EB28 0000BA88  83 8D 2B 30 */	lwz r28, JAC_ARAM_DMA_BUFFER_TOP@sda21(r13)
/* 8000EB2C 0000BA8C  48 1E AC 89 */	bl OSInitMessageQueue
/* 8000EB30 0000BA90  38 79 00 00 */	addi r3, r25, 0
/* 8000EB34 0000BA94  38 9B 00 00 */	addi r4, r27, 0
/* 8000EB38 0000BA98  48 1E 80 B1 */	bl DCFlushRange
/* 8000EB3C 0000BA9C  38 7A 00 00 */	addi r3, r26, 0
/* 8000EB40 0000BAA0  38 9B 00 00 */	addi r4, r27, 0
/* 8000EB44 0000BAA4  48 1E 80 75 */	bl DCInvalidateRange
/* 8000EB48 0000BAA8  3C 60 80 01 */	lis r3, ARAMFinish__FUl@ha
/* 8000EB4C 0000BAAC  3F C0 00 01 */	lis r30, 1
/* 8000EB50 0000BAB0  3B E3 E9 C0 */	addi r31, r3, ARAMFinish__FUl@l
/* 8000EB54 0000BAB4  48 00 00 8C */	b .L_8000EBE0
.L_8000EB58:
/* 8000EB58 0000BAB8  7C 1B F0 40 */	cmplw r27, r30
/* 8000EB5C 0000BABC  41 80 00 0C */	blt .L_8000EB68
/* 8000EB60 0000BAC0  3F A0 00 01 */	lis r29, 1
/* 8000EB64 0000BAC4  48 00 00 08 */	b .L_8000EB6C
.L_8000EB68:
/* 8000EB68 0000BAC8  7F 7D DB 78 */	mr r29, r27
.L_8000EB6C:
/* 8000EB6C 0000BACC  38 F9 00 00 */	addi r7, r25, 0
/* 8000EB70 0000BAD0  39 1C 00 00 */	addi r8, r28, 0
/* 8000EB74 0000BAD4  39 3D 00 00 */	addi r9, r29, 0
/* 8000EB78 0000BAD8  39 5F 00 00 */	addi r10, r31, 0
/* 8000EB7C 0000BADC  38 61 00 38 */	addi r3, r1, 0x38
/* 8000EB80 0000BAE0  38 81 00 18 */	addi r4, r1, 0x18
/* 8000EB84 0000BAE4  38 A0 00 00 */	li r5, 0
/* 8000EB88 0000BAE8  38 C0 00 00 */	li r6, 0
/* 8000EB8C 0000BAEC  48 1F 91 2D */	bl ARQPostRequest
/* 8000EB90 0000BAF0  38 61 00 18 */	addi r3, r1, 0x18
/* 8000EB94 0000BAF4  38 80 00 00 */	li r4, 0
/* 8000EB98 0000BAF8  38 A0 00 01 */	li r5, 1
/* 8000EB9C 0000BAFC  48 1E AD 41 */	bl OSReceiveMessage
/* 8000EBA0 0000BB00  38 FC 00 00 */	addi r7, r28, 0
/* 8000EBA4 0000BB04  39 1A 00 00 */	addi r8, r26, 0
/* 8000EBA8 0000BB08  39 3D 00 00 */	addi r9, r29, 0
/* 8000EBAC 0000BB0C  39 5F 00 00 */	addi r10, r31, 0
/* 8000EBB0 0000BB10  38 61 00 38 */	addi r3, r1, 0x38
/* 8000EBB4 0000BB14  38 81 00 18 */	addi r4, r1, 0x18
/* 8000EBB8 0000BB18  38 A0 00 01 */	li r5, 1
/* 8000EBBC 0000BB1C  38 C0 00 00 */	li r6, 0
/* 8000EBC0 0000BB20  48 1F 90 F9 */	bl ARQPostRequest
/* 8000EBC4 0000BB24  38 61 00 18 */	addi r3, r1, 0x18
/* 8000EBC8 0000BB28  38 80 00 00 */	li r4, 0
/* 8000EBCC 0000BB2C  38 A0 00 01 */	li r5, 1
/* 8000EBD0 0000BB30  48 1E AD 0D */	bl OSReceiveMessage
/* 8000EBD4 0000BB34  7F 7D D8 50 */	subf r27, r29, r27
/* 8000EBD8 0000BB38  7F 39 EA 14 */	add r25, r25, r29
/* 8000EBDC 0000BB3C  7F 5A EA 14 */	add r26, r26, r29
.L_8000EBE0:
/* 8000EBE0 0000BB40  28 1B 00 00 */	cmplwi r27, 0
/* 8000EBE4 0000BB44  40 82 FF 74 */	bne .L_8000EB58
/* 8000EBE8 0000BB48  BB 21 00 5C */	lmw r25, 0x5c(r1)
/* 8000EBEC 0000BB4C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8000EBF0 0000BB50  38 21 00 78 */	addi r1, r1, 0x78
/* 8000EBF4 0000BB54  7C 08 03 A6 */	mtlr r0
/* 8000EBF8 0000BB58  4E 80 00 20 */	blr 
.endfn DRAM_TO_DRAM_DMA__FUlUlUl

.balign 32, 0
.fn Jac_InitHeap__FP7jaheap_, global
/* 8000EC00 0000BB60  38 A0 00 00 */	li r5, 0
/* 8000EC04 0000BB64  90 A3 00 08 */	stw r5, 8(r3)
/* 8000EC08 0000BB68  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8000EC0C 0000BB6C  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8000EC10 0000BB70  80 8D 2C 20 */	lwz r4, global_id@sda21(r13)
/* 8000EC14 0000BB74  38 04 00 01 */	addi r0, r4, 1
/* 8000EC18 0000BB78  90 0D 2C 20 */	stw r0, global_id@sda21(r13)
/* 8000EC1C 0000BB7C  90 83 00 04 */	stw r4, 4(r3)
/* 8000EC20 0000BB80  98 A3 00 00 */	stb r5, 0(r3)
/* 8000EC24 0000BB84  B0 A3 00 02 */	sth r5, 2(r3)
/* 8000EC28 0000BB88  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8000EC2C 0000BB8C  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8000EC30 0000BB90  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8000EC34 0000BB94  90 A3 00 20 */	stw r5, 0x20(r3)
/* 8000EC38 0000BB98  90 A3 00 24 */	stw r5, 0x24(r3)
/* 8000EC3C 0000BB9C  90 A3 00 28 */	stw r5, 0x28(r3)
/* 8000EC40 0000BBA0  4E 80 00 20 */	blr 
.endfn Jac_InitHeap__FP7jaheap_

.balign 32, 0
.fn Jac_SelfInitHeap__FP7jaheap_UlUlUl, global
/* 8000EC60 0000BBC0  90 83 00 08 */	stw r4, 8(r3)
/* 8000EC64 0000BBC4  38 00 00 00 */	li r0, 0
/* 8000EC68 0000BBC8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8000EC6C 0000BBCC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8000EC70 0000BBD0  98 03 00 00 */	stb r0, 0(r3)
/* 8000EC74 0000BBD4  98 C3 00 01 */	stb r6, 1(r3)
/* 8000EC78 0000BBD8  B0 03 00 02 */	sth r0, 2(r3)
/* 8000EC7C 0000BBDC  90 03 00 14 */	stw r0, 0x14(r3)
/* 8000EC80 0000BBE0  90 03 00 18 */	stw r0, 0x18(r3)
/* 8000EC84 0000BBE4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8000EC88 0000BBE8  90 03 00 20 */	stw r0, 0x20(r3)
/* 8000EC8C 0000BBEC  90 03 00 24 */	stw r0, 0x24(r3)
/* 8000EC90 0000BBF0  90 03 00 28 */	stw r0, 0x28(r3)
/* 8000EC94 0000BBF4  4E 80 00 20 */	blr 
.endfn Jac_SelfInitHeap__FP7jaheap_UlUlUl

.balign 32, 0
.fn Jac_SelfAllocHeap__FP7jaheap_P7jaheap_UlUl, global
/* 8000ECA0 0000BC00  80 E3 00 08 */	lwz r7, 8(r3)
/* 8000ECA4 0000BC04  28 07 00 00 */	cmplwi r7, 0
/* 8000ECA8 0000BC08  41 82 00 18 */	beq .L_8000ECC0
/* 8000ECAC 0000BC0C  3C 07 00 01 */	addis r0, r7, 1
/* 8000ECB0 0000BC10  28 00 FF FF */	cmplwi r0, 0xffff
/* 8000ECB4 0000BC14  41 82 00 0C */	beq .L_8000ECC0
/* 8000ECB8 0000BC18  38 60 00 00 */	li r3, 0
/* 8000ECBC 0000BC1C  4E 80 00 20 */	blr 
.L_8000ECC0:
/* 8000ECC0 0000BC20  90 C3 00 08 */	stw r6, 8(r3)
/* 8000ECC4 0000BC24  38 C0 00 00 */	li r6, 0
/* 8000ECC8 0000BC28  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8000ECCC 0000BC2C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8000ECD0 0000BC30  98 C3 00 00 */	stb r6, 0(r3)
/* 8000ECD4 0000BC34  88 04 00 01 */	lbz r0, 1(r4)
/* 8000ECD8 0000BC38  98 03 00 01 */	stb r0, 1(r3)
/* 8000ECDC 0000BC3C  B0 C3 00 02 */	sth r6, 2(r3)
/* 8000ECE0 0000BC40  90 C3 00 14 */	stw r6, 0x14(r3)
/* 8000ECE4 0000BC44  90 83 00 18 */	stw r4, 0x18(r3)
/* 8000ECE8 0000BC48  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8000ECEC 0000BC4C  28 05 00 00 */	cmplwi r5, 0
/* 8000ECF0 0000BC50  40 82 00 28 */	bne .L_8000ED18
/* 8000ECF4 0000BC54  90 64 00 14 */	stw r3, 0x14(r4)
/* 8000ECF8 0000BC58  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 8000ECFC 0000BC5C  80 A4 00 08 */	lwz r5, 8(r4)
/* 8000ED00 0000BC60  80 03 00 08 */	lwz r0, 8(r3)
/* 8000ED04 0000BC64  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8000ED08 0000BC68  7C 05 00 50 */	subf r0, r5, r0
/* 8000ED0C 0000BC6C  7C 03 02 14 */	add r0, r3, r0
/* 8000ED10 0000BC70  90 04 00 0C */	stw r0, 0xc(r4)
/* 8000ED14 0000BC74  48 00 00 78 */	b .L_8000ED8C
.L_8000ED18:
/* 8000ED18 0000BC78  80 C3 00 08 */	lwz r6, 8(r3)
/* 8000ED1C 0000BC7C  7C A7 2B 78 */	mr r7, r5
/* 8000ED20 0000BC80  80 05 00 08 */	lwz r0, 8(r5)
/* 8000ED24 0000BC84  7C 06 00 40 */	cmplw r6, r0
/* 8000ED28 0000BC88  40 80 00 10 */	bge .L_8000ED38
/* 8000ED2C 0000BC8C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8000ED30 0000BC90  90 64 00 14 */	stw r3, 0x14(r4)
/* 8000ED34 0000BC94  48 00 00 58 */	b .L_8000ED8C
.L_8000ED38:
/* 8000ED38 0000BC98  80 A7 00 1C */	lwz r5, 0x1c(r7)
/* 8000ED3C 0000BC9C  28 05 00 00 */	cmplwi r5, 0
/* 8000ED40 0000BCA0  40 82 00 2C */	bne .L_8000ED6C
/* 8000ED44 0000BCA4  38 00 00 00 */	li r0, 0
/* 8000ED48 0000BCA8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8000ED4C 0000BCAC  90 67 00 1C */	stw r3, 0x1c(r7)
/* 8000ED50 0000BCB0  80 A4 00 08 */	lwz r5, 8(r4)
/* 8000ED54 0000BCB4  80 03 00 08 */	lwz r0, 8(r3)
/* 8000ED58 0000BCB8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8000ED5C 0000BCBC  7C 05 00 50 */	subf r0, r5, r0
/* 8000ED60 0000BCC0  7C 03 02 14 */	add r0, r3, r0
/* 8000ED64 0000BCC4  90 04 00 0C */	stw r0, 0xc(r4)
/* 8000ED68 0000BCC8  48 00 00 24 */	b .L_8000ED8C
.L_8000ED6C:
/* 8000ED6C 0000BCCC  80 05 00 08 */	lwz r0, 8(r5)
/* 8000ED70 0000BCD0  7C 06 00 40 */	cmplw r6, r0
/* 8000ED74 0000BCD4  40 80 00 10 */	bge .L_8000ED84
/* 8000ED78 0000BCD8  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8000ED7C 0000BCDC  90 67 00 1C */	stw r3, 0x1c(r7)
/* 8000ED80 0000BCE0  48 00 00 0C */	b .L_8000ED8C
.L_8000ED84:
/* 8000ED84 0000BCE4  7C A7 2B 78 */	mr r7, r5
/* 8000ED88 0000BCE8  4B FF FF B0 */	b .L_8000ED38
.L_8000ED8C:
/* 8000ED8C 0000BCEC  A0 A4 00 02 */	lhz r5, 2(r4)
/* 8000ED90 0000BCF0  38 60 00 01 */	li r3, 1
/* 8000ED94 0000BCF4  38 05 00 01 */	addi r0, r5, 1
/* 8000ED98 0000BCF8  B0 04 00 02 */	sth r0, 2(r4)
/* 8000ED9C 0000BCFC  4E 80 00 20 */	blr 
.endfn Jac_SelfAllocHeap__FP7jaheap_P7jaheap_UlUl

.balign 32, 0
.fn Jac_SetGroupHeap__FP7jaheap_P7jaheap_, global
/* 8000EDA0 0000BD00  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8000EDA4 0000BD04  28 00 00 00 */	cmplwi r0, 0
/* 8000EDA8 0000BD08  40 82 00 10 */	bne .L_8000EDB8
/* 8000EDAC 0000BD0C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8000EDB0 0000BD10  28 00 00 00 */	cmplwi r0, 0
/* 8000EDB4 0000BD14  41 82 00 0C */	beq .L_8000EDC0
.L_8000EDB8:
/* 8000EDB8 0000BD18  38 60 00 00 */	li r3, 0
/* 8000EDBC 0000BD1C  4E 80 00 20 */	blr 
.L_8000EDC0:
/* 8000EDC0 0000BD20  90 83 00 20 */	stw r4, 0x20(r3)
/* 8000EDC4 0000BD24  80 04 00 24 */	lwz r0, 0x24(r4)
/* 8000EDC8 0000BD28  90 03 00 28 */	stw r0, 0x28(r3)
/* 8000EDCC 0000BD2C  90 64 00 24 */	stw r3, 0x24(r4)
/* 8000EDD0 0000BD30  38 60 00 01 */	li r3, 1
/* 8000EDD4 0000BD34  4E 80 00 20 */	blr 
.endfn Jac_SetGroupHeap__FP7jaheap_P7jaheap_

.balign 32, 0
.fn Jac_InitMotherHeap__FP7jaheap_UlUlUc, global
/* 8000EDE0 0000BD40  38 E4 00 1F */	addi r7, r4, 0x1f
/* 8000EDE4 0000BD44  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 8000EDE8 0000BD48  54 E4 00 34 */	rlwinm r4, r7, 0, 0, 0x1a
/* 8000EDEC 0000BD4C  38 E0 00 00 */	li r7, 0
/* 8000EDF0 0000BD50  90 83 00 08 */	stw r4, 8(r3)
/* 8000EDF4 0000BD54  7C 80 28 50 */	subf r4, r0, r5
/* 8000EDF8 0000BD58  38 00 00 01 */	li r0, 1
/* 8000EDFC 0000BD5C  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8000EE00 0000BD60  90 83 00 10 */	stw r4, 0x10(r3)
/* 8000EE04 0000BD64  80 AD 2C 20 */	lwz r5, global_id@sda21(r13)
/* 8000EE08 0000BD68  38 85 00 01 */	addi r4, r5, 1
/* 8000EE0C 0000BD6C  90 8D 2C 20 */	stw r4, global_id@sda21(r13)
/* 8000EE10 0000BD70  90 A3 00 04 */	stw r5, 4(r3)
/* 8000EE14 0000BD74  98 03 00 00 */	stb r0, 0(r3)
/* 8000EE18 0000BD78  98 C3 00 01 */	stb r6, 1(r3)
/* 8000EE1C 0000BD7C  B0 E3 00 02 */	sth r7, 2(r3)
/* 8000EE20 0000BD80  90 E3 00 14 */	stw r7, 0x14(r3)
/* 8000EE24 0000BD84  90 E3 00 18 */	stw r7, 0x18(r3)
/* 8000EE28 0000BD88  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8000EE2C 0000BD8C  90 E3 00 20 */	stw r7, 0x20(r3)
/* 8000EE30 0000BD90  90 E3 00 24 */	stw r7, 0x24(r3)
/* 8000EE34 0000BD94  90 E3 00 28 */	stw r7, 0x28(r3)
/* 8000EE38 0000BD98  4E 80 00 20 */	blr 
.endfn Jac_InitMotherHeap__FP7jaheap_UlUlUc

.balign 32, 0
.fn Jac_AllocHeap__FP7jaheap_P7jaheap_Ul, global
/* 8000EE40 0000BDA0  80 C4 00 08 */	lwz r6, 8(r4)
/* 8000EE44 0000BDA4  38 05 00 1F */	addi r0, r5, 0x1f
/* 8000EE48 0000BDA8  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8000EE4C 0000BDAC  28 06 00 00 */	cmplwi r6, 0
/* 8000EE50 0000BDB0  40 82 00 0C */	bne .L_8000EE5C
/* 8000EE54 0000BDB4  38 60 00 00 */	li r3, 0
/* 8000EE58 0000BDB8  4E 80 00 20 */	blr 
.L_8000EE5C:
/* 8000EE5C 0000BDBC  80 A3 00 08 */	lwz r5, 8(r3)
/* 8000EE60 0000BDC0  28 05 00 00 */	cmplwi r5, 0
/* 8000EE64 0000BDC4  41 82 00 18 */	beq .L_8000EE7C
/* 8000EE68 0000BDC8  3C A5 00 01 */	addis r5, r5, 1
/* 8000EE6C 0000BDCC  28 05 FF FF */	cmplwi r5, 0xffff
/* 8000EE70 0000BDD0  41 82 00 0C */	beq .L_8000EE7C
/* 8000EE74 0000BDD4  38 60 00 00 */	li r3, 0
/* 8000EE78 0000BDD8  4E 80 00 20 */	blr 
.L_8000EE7C:
/* 8000EE7C 0000BDDC  80 E4 00 0C */	lwz r7, 0xc(r4)
/* 8000EE80 0000BDE0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8000EE84 0000BDE4  7C A7 28 50 */	subf r5, r7, r5
/* 8000EE88 0000BDE8  7C 05 00 40 */	cmplw r5, r0
/* 8000EE8C 0000BDEC  40 80 00 E0 */	bge .L_8000EF6C
/* 8000EE90 0000BDF0  80 E4 00 14 */	lwz r7, 0x14(r4)
/* 8000EE94 0000BDF4  3C A0 10 00 */	lis r5, 0x0FFFFFFF@ha
/* 8000EE98 0000BDF8  39 06 00 00 */	addi r8, r6, 0
/* 8000EE9C 0000BDFC  39 85 FF FF */	addi r12, r5, 0x0FFFFFFF@l
/* 8000EEA0 0000BE00  39 27 00 00 */	addi r9, r7, 0
/* 8000EEA4 0000BE04  39 40 00 00 */	li r10, 0
.L_8000EEA8:
/* 8000EEA8 0000BE08  28 09 00 00 */	cmplwi r9, 0
/* 8000EEAC 0000BE0C  41 82 00 3C */	beq .L_8000EEE8
/* 8000EEB0 0000BE10  80 C9 00 08 */	lwz r6, 8(r9)
/* 8000EEB4 0000BE14  7C A8 30 50 */	subf r5, r8, r6
/* 8000EEB8 0000BE18  7C 05 00 40 */	cmplw r5, r0
/* 8000EEBC 0000BE1C  41 80 00 1C */	blt .L_8000EED8
/* 8000EEC0 0000BE20  7C A0 28 50 */	subf r5, r0, r5
/* 8000EEC4 0000BE24  7C 05 60 40 */	cmplw r5, r12
/* 8000EEC8 0000BE28  40 80 00 10 */	bge .L_8000EED8
/* 8000EECC 0000BE2C  39 49 00 00 */	addi r10, r9, 0
/* 8000EED0 0000BE30  39 68 00 00 */	addi r11, r8, 0
/* 8000EED4 0000BE34  39 85 00 00 */	addi r12, r5, 0
.L_8000EED8:
/* 8000EED8 0000BE38  80 A9 00 10 */	lwz r5, 0x10(r9)
/* 8000EEDC 0000BE3C  81 29 00 1C */	lwz r9, 0x1c(r9)
/* 8000EEE0 0000BE40  7D 06 2A 14 */	add r8, r6, r5
/* 8000EEE4 0000BE44  4B FF FF C4 */	b .L_8000EEA8
.L_8000EEE8:
/* 8000EEE8 0000BE48  28 0A 00 00 */	cmplwi r10, 0
/* 8000EEEC 0000BE4C  40 82 00 0C */	bne .L_8000EEF8
/* 8000EEF0 0000BE50  38 60 00 00 */	li r3, 0
/* 8000EEF4 0000BE54  4E 80 00 20 */	blr 
.L_8000EEF8:
/* 8000EEF8 0000BE58  7C 0A 38 40 */	cmplw r10, r7
/* 8000EEFC 0000BE5C  40 82 00 10 */	bne .L_8000EF0C
/* 8000EF00 0000BE60  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8000EF04 0000BE64  90 64 00 14 */	stw r3, 0x14(r4)
/* 8000EF08 0000BE68  48 00 00 28 */	b .L_8000EF30
.L_8000EF0C:
/* 8000EF0C 0000BE6C  7C E6 3B 78 */	mr r6, r7
.L_8000EF10:
/* 8000EF10 0000BE70  80 A6 00 1C */	lwz r5, 0x1c(r6)
/* 8000EF14 0000BE74  7C 05 50 40 */	cmplw r5, r10
/* 8000EF18 0000BE78  40 82 00 10 */	bne .L_8000EF28
/* 8000EF1C 0000BE7C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8000EF20 0000BE80  90 66 00 1C */	stw r3, 0x1c(r6)
/* 8000EF24 0000BE84  48 00 00 0C */	b .L_8000EF30
.L_8000EF28:
/* 8000EF28 0000BE88  7C A6 2B 78 */	mr r6, r5
/* 8000EF2C 0000BE8C  4B FF FF E4 */	b .L_8000EF10
.L_8000EF30:
/* 8000EF30 0000BE90  91 63 00 08 */	stw r11, 8(r3)
/* 8000EF34 0000BE94  38 A0 00 00 */	li r5, 0
/* 8000EF38 0000BE98  90 03 00 10 */	stw r0, 0x10(r3)
/* 8000EF3C 0000BE9C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8000EF40 0000BEA0  98 A3 00 00 */	stb r5, 0(r3)
/* 8000EF44 0000BEA4  88 04 00 01 */	lbz r0, 1(r4)
/* 8000EF48 0000BEA8  98 03 00 01 */	stb r0, 1(r3)
/* 8000EF4C 0000BEAC  B0 A3 00 02 */	sth r5, 2(r3)
/* 8000EF50 0000BEB0  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8000EF54 0000BEB4  90 83 00 18 */	stw r4, 0x18(r3)
/* 8000EF58 0000BEB8  38 60 00 01 */	li r3, 1
/* 8000EF5C 0000BEBC  A0 A4 00 02 */	lhz r5, 2(r4)
/* 8000EF60 0000BEC0  38 05 00 01 */	addi r0, r5, 1
/* 8000EF64 0000BEC4  B0 04 00 02 */	sth r0, 2(r4)
/* 8000EF68 0000BEC8  4E 80 00 20 */	blr 
.L_8000EF6C:
/* 8000EF6C 0000BECC  7C A6 3A 14 */	add r5, r6, r7
/* 8000EF70 0000BED0  38 C0 00 00 */	li r6, 0
/* 8000EF74 0000BED4  90 A3 00 08 */	stw r5, 8(r3)
/* 8000EF78 0000BED8  90 03 00 10 */	stw r0, 0x10(r3)
/* 8000EF7C 0000BEDC  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8000EF80 0000BEE0  98 C3 00 00 */	stb r6, 0(r3)
/* 8000EF84 0000BEE4  88 A4 00 01 */	lbz r5, 1(r4)
/* 8000EF88 0000BEE8  98 A3 00 01 */	stb r5, 1(r3)
/* 8000EF8C 0000BEEC  B0 C3 00 02 */	sth r6, 2(r3)
/* 8000EF90 0000BEF0  90 C3 00 14 */	stw r6, 0x14(r3)
/* 8000EF94 0000BEF4  90 83 00 18 */	stw r4, 0x18(r3)
/* 8000EF98 0000BEF8  80 E4 00 14 */	lwz r7, 0x14(r4)
/* 8000EF9C 0000BEFC  28 07 00 00 */	cmplwi r7, 0
/* 8000EFA0 0000BF00  40 82 00 10 */	bne .L_8000EFB0
/* 8000EFA4 0000BF04  90 64 00 14 */	stw r3, 0x14(r4)
/* 8000EFA8 0000BF08  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 8000EFAC 0000BF0C  48 00 00 20 */	b .L_8000EFCC
.L_8000EFB0:
/* 8000EFB0 0000BF10  80 A7 00 1C */	lwz r5, 0x1c(r7)
/* 8000EFB4 0000BF14  28 05 00 00 */	cmplwi r5, 0
/* 8000EFB8 0000BF18  40 82 00 0C */	bne .L_8000EFC4
/* 8000EFBC 0000BF1C  90 67 00 1C */	stw r3, 0x1c(r7)
/* 8000EFC0 0000BF20  48 00 00 0C */	b .L_8000EFCC
.L_8000EFC4:
/* 8000EFC4 0000BF24  7C A7 2B 78 */	mr r7, r5
/* 8000EFC8 0000BF28  4B FF FF E8 */	b .L_8000EFB0
.L_8000EFCC:
/* 8000EFCC 0000BF2C  38 A0 00 00 */	li r5, 0
/* 8000EFD0 0000BF30  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8000EFD4 0000BF34  38 60 00 01 */	li r3, 1
/* 8000EFD8 0000BF38  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 8000EFDC 0000BF3C  7C 05 02 14 */	add r0, r5, r0
/* 8000EFE0 0000BF40  90 04 00 0C */	stw r0, 0xc(r4)
/* 8000EFE4 0000BF44  A0 A4 00 02 */	lhz r5, 2(r4)
/* 8000EFE8 0000BF48  38 05 00 01 */	addi r0, r5, 1
/* 8000EFEC 0000BF4C  B0 04 00 02 */	sth r0, 2(r4)
/* 8000EFF0 0000BF50  4E 80 00 20 */	blr 
.endfn Jac_AllocHeap__FP7jaheap_P7jaheap_Ul

.balign 32, 0
.fn Jac_DeleteHeap__FP7jaheap_, global
/* 8000F000 0000BF60  7C 08 02 A6 */	mflr r0
/* 8000F004 0000BF64  90 01 00 04 */	stw r0, 4(r1)
/* 8000F008 0000BF68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000F00C 0000BF6C  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 8000F010 0000BF70  90 61 00 08 */	stw r3, 8(r1)
/* 8000F014 0000BF74  83 E1 00 08 */	lwz r31, 8(r1)
/* 8000F018 0000BF78  80 1F 00 08 */	lwz r0, 8(r31)
/* 8000F01C 0000BF7C  3B DF 00 08 */	addi r30, r31, 8
/* 8000F020 0000BF80  28 00 00 00 */	cmplwi r0, 0
/* 8000F024 0000BF84  40 82 00 0C */	bne .L_8000F030
/* 8000F028 0000BF88  38 60 00 00 */	li r3, 0
/* 8000F02C 0000BF8C  48 00 01 70 */	b .L_8000F19C
.L_8000F030:
/* 8000F030 0000BF90  3B BF 00 14 */	addi r29, r31, 0x14
/* 8000F034 0000BF94  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8000F038 0000BF98  48 00 00 10 */	b .L_8000F048
.L_8000F03C:
/* 8000F03C 0000BF9C  83 83 00 1C */	lwz r28, 0x1c(r3)
/* 8000F040 0000BFA0  4B FF FF C1 */	bl Jac_DeleteHeap__FP7jaheap_
/* 8000F044 0000BFA4  7F 83 E3 78 */	mr r3, r28
.L_8000F048:
/* 8000F048 0000BFA8  28 03 00 00 */	cmplwi r3, 0
/* 8000F04C 0000BFAC  40 82 FF F0 */	bne .L_8000F03C
/* 8000F050 0000BFB0  38 00 00 00 */	li r0, 0
/* 8000F054 0000BFB4  3B 9F 00 24 */	addi r28, r31, 0x24
/* 8000F058 0000BFB8  90 1D 00 00 */	stw r0, 0(r29)
/* 8000F05C 0000BFBC  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8000F060 0000BFC0  48 00 00 10 */	b .L_8000F070
.L_8000F064:
/* 8000F064 0000BFC4  83 A3 00 28 */	lwz r29, 0x28(r3)
/* 8000F068 0000BFC8  4B FF FF 99 */	bl Jac_DeleteHeap__FP7jaheap_
/* 8000F06C 0000BFCC  7F A3 EB 78 */	mr r3, r29
.L_8000F070:
/* 8000F070 0000BFD0  28 03 00 00 */	cmplwi r3, 0
/* 8000F074 0000BFD4  40 82 FF F0 */	bne .L_8000F064
/* 8000F078 0000BFD8  38 80 00 00 */	li r4, 0
/* 8000F07C 0000BFDC  38 DF 00 18 */	addi r6, r31, 0x18
/* 8000F080 0000BFE0  90 9C 00 00 */	stw r4, 0(r28)
/* 8000F084 0000BFE4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8000F088 0000BFE8  28 03 00 00 */	cmplwi r3, 0
/* 8000F08C 0000BFEC  41 82 00 A0 */	beq .L_8000F12C
/* 8000F090 0000BFF0  84 E3 00 14 */	lwzu r7, 0x14(r3)
/* 8000F094 0000BFF4  7C 07 F8 40 */	cmplw r7, r31
/* 8000F098 0000BFF8  40 82 00 24 */	bne .L_8000F0BC
/* 8000F09C 0000BFFC  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8000F0A0 0000C000  90 03 00 00 */	stw r0, 0(r3)
/* 8000F0A4 0000C004  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8000F0A8 0000C008  28 00 00 00 */	cmplwi r0, 0
/* 8000F0AC 0000C00C  40 82 00 70 */	bne .L_8000F11C
/* 8000F0B0 0000C010  80 66 00 00 */	lwz r3, 0(r6)
/* 8000F0B4 0000C014  90 83 00 0C */	stw r4, 0xc(r3)
/* 8000F0B8 0000C018  48 00 00 64 */	b .L_8000F11C
.L_8000F0BC:
/* 8000F0BC 0000C01C  28 07 00 00 */	cmplwi r7, 0
/* 8000F0C0 0000C020  40 82 00 14 */	bne .L_8000F0D4
/* 8000F0C4 0000C024  38 00 00 00 */	li r0, 0
/* 8000F0C8 0000C028  38 60 00 00 */	li r3, 0
/* 8000F0CC 0000C02C  90 1E 00 00 */	stw r0, 0(r30)
/* 8000F0D0 0000C030  48 00 00 CC */	b .L_8000F19C
.L_8000F0D4:
/* 8000F0D4 0000C034  80 07 00 1C */	lwz r0, 0x1c(r7)
/* 8000F0D8 0000C038  7C 00 F8 40 */	cmplw r0, r31
/* 8000F0DC 0000C03C  40 82 00 38 */	bne .L_8000F114
/* 8000F0E0 0000C040  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8000F0E4 0000C044  90 07 00 1C */	stw r0, 0x1c(r7)
/* 8000F0E8 0000C048  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8000F0EC 0000C04C  28 00 00 00 */	cmplwi r0, 0
/* 8000F0F0 0000C050  40 82 00 2C */	bne .L_8000F11C
/* 8000F0F4 0000C054  80 A6 00 00 */	lwz r5, 0(r6)
/* 8000F0F8 0000C058  80 67 00 08 */	lwz r3, 8(r7)
/* 8000F0FC 0000C05C  80 07 00 10 */	lwz r0, 0x10(r7)
/* 8000F100 0000C060  80 85 00 08 */	lwz r4, 8(r5)
/* 8000F104 0000C064  7C 03 02 14 */	add r0, r3, r0
/* 8000F108 0000C068  7C 04 00 50 */	subf r0, r4, r0
/* 8000F10C 0000C06C  90 05 00 0C */	stw r0, 0xc(r5)
/* 8000F110 0000C070  48 00 00 0C */	b .L_8000F11C
.L_8000F114:
/* 8000F114 0000C074  7C 07 03 78 */	mr r7, r0
/* 8000F118 0000C078  4B FF FF A4 */	b .L_8000F0BC
.L_8000F11C:
/* 8000F11C 0000C07C  80 86 00 00 */	lwz r4, 0(r6)
/* 8000F120 0000C080  A0 64 00 02 */	lhz r3, 2(r4)
/* 8000F124 0000C084  38 03 FF FF */	addi r0, r3, -1
/* 8000F128 0000C088  B0 04 00 02 */	sth r0, 2(r4)
.L_8000F12C:
/* 8000F12C 0000C08C  38 9F 00 20 */	addi r4, r31, 0x20
/* 8000F130 0000C090  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8000F134 0000C094  28 03 00 00 */	cmplwi r3, 0
/* 8000F138 0000C098  41 82 00 58 */	beq .L_8000F190
/* 8000F13C 0000C09C  84 A3 00 24 */	lwzu r5, 0x24(r3)
/* 8000F140 0000C0A0  7C 05 F8 40 */	cmplw r5, r31
/* 8000F144 0000C0A4  40 82 00 10 */	bne .L_8000F154
/* 8000F148 0000C0A8  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8000F14C 0000C0AC  90 03 00 00 */	stw r0, 0(r3)
/* 8000F150 0000C0B0  48 00 00 34 */	b .L_8000F184
.L_8000F154:
/* 8000F154 0000C0B4  28 05 00 00 */	cmplwi r5, 0
/* 8000F158 0000C0B8  40 82 00 0C */	bne .L_8000F164
/* 8000F15C 0000C0BC  38 60 00 00 */	li r3, 0
/* 8000F160 0000C0C0  48 00 00 3C */	b .L_8000F19C
.L_8000F164:
/* 8000F164 0000C0C4  80 05 00 28 */	lwz r0, 0x28(r5)
/* 8000F168 0000C0C8  7C 00 F8 40 */	cmplw r0, r31
/* 8000F16C 0000C0CC  40 82 00 10 */	bne .L_8000F17C
/* 8000F170 0000C0D0  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8000F174 0000C0D4  90 05 00 28 */	stw r0, 0x28(r5)
/* 8000F178 0000C0D8  48 00 00 0C */	b .L_8000F184
.L_8000F17C:
/* 8000F17C 0000C0DC  7C 05 03 78 */	mr r5, r0
/* 8000F180 0000C0E0  4B FF FF D4 */	b .L_8000F154
.L_8000F184:
/* 8000F184 0000C0E4  38 00 00 00 */	li r0, 0
/* 8000F188 0000C0E8  90 04 00 00 */	stw r0, 0(r4)
/* 8000F18C 0000C0EC  90 1F 00 28 */	stw r0, 0x28(r31)
.L_8000F190:
/* 8000F190 0000C0F0  38 00 00 00 */	li r0, 0
/* 8000F194 0000C0F4  38 60 00 01 */	li r3, 1
/* 8000F198 0000C0F8  90 1E 00 00 */	stw r0, 0(r30)
.L_8000F19C:
/* 8000F19C 0000C0FC  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 8000F1A0 0000C100  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000F1A4 0000C104  38 21 00 30 */	addi r1, r1, 0x30
/* 8000F1A8 0000C108  7C 08 03 A6 */	mtlr r0
/* 8000F1AC 0000C10C  4E 80 00 20 */	blr 
.endfn Jac_DeleteHeap__FP7jaheap_

.balign 32, 0
.fn Jac_Move_Children__FP7jaheap_l, local
/* 8000F1C0 0000C120  7C 08 02 A6 */	mflr r0
/* 8000F1C4 0000C124  90 01 00 04 */	stw r0, 4(r1)
/* 8000F1C8 0000C128  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000F1CC 0000C12C  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 8000F1D0 0000C130  7C 9E 23 79 */	or. r30, r4, r4
/* 8000F1D4 0000C134  41 82 00 3C */	beq .L_8000F210
/* 8000F1D8 0000C138  83 E3 00 14 */	lwz r31, 0x14(r3)
.L_8000F1DC:
/* 8000F1DC 0000C13C  28 1F 00 00 */	cmplwi r31, 0
/* 8000F1E0 0000C140  41 82 00 30 */	beq .L_8000F210
/* 8000F1E4 0000C144  80 1F 00 08 */	lwz r0, 8(r31)
/* 8000F1E8 0000C148  7C 00 F2 14 */	add r0, r0, r30
/* 8000F1EC 0000C14C  90 1F 00 08 */	stw r0, 8(r31)
/* 8000F1F0 0000C150  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8000F1F4 0000C154  28 00 00 00 */	cmplwi r0, 0
/* 8000F1F8 0000C158  41 82 00 10 */	beq .L_8000F208
/* 8000F1FC 0000C15C  38 7F 00 00 */	addi r3, r31, 0
/* 8000F200 0000C160  38 9E 00 00 */	addi r4, r30, 0
/* 8000F204 0000C164  4B FF FF BD */	bl Jac_Move_Children__FP7jaheap_l
.L_8000F208:
/* 8000F208 0000C168  83 FF 00 1C */	lwz r31, 0x1c(r31)
/* 8000F20C 0000C16C  4B FF FF D0 */	b .L_8000F1DC
.L_8000F210:
/* 8000F210 0000C170  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000F214 0000C174  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 8000F218 0000C178  38 21 00 18 */	addi r1, r1, 0x18
/* 8000F21C 0000C17C  7C 08 03 A6 */	mtlr r0
/* 8000F220 0000C180  4E 80 00 20 */	blr 
.endfn Jac_Move_Children__FP7jaheap_l

.balign 32, 0
.fn Jac_GarbageCollection_St__FP7jaheap_, global
/* 8000F240 0000C1A0  7C 08 02 A6 */	mflr r0
/* 8000F244 0000C1A4  90 01 00 04 */	stw r0, 4(r1)
/* 8000F248 0000C1A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000F24C 0000C1AC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8000F250 0000C1B0  7C 7D 1B 78 */	mr r29, r3
/* 8000F254 0000C1B4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8000F258 0000C1B8  83 C3 00 08 */	lwz r30, 8(r3)
/* 8000F25C 0000C1BC  28 00 00 00 */	cmplwi r0, 0
/* 8000F260 0000C1C0  7C 1F 03 78 */	mr r31, r0
/* 8000F264 0000C1C4  40 82 00 10 */	bne .L_8000F274
/* 8000F268 0000C1C8  38 00 00 00 */	li r0, 0
/* 8000F26C 0000C1CC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8000F270 0000C1D0  48 00 00 84 */	b .L_8000F2F4
.L_8000F274:
/* 8000F274 0000C1D4  80 1F 00 08 */	lwz r0, 8(r31)
/* 8000F278 0000C1D8  7C 1E 00 40 */	cmplw r30, r0
/* 8000F27C 0000C1DC  7C 03 03 78 */	mr r3, r0
/* 8000F280 0000C1E0  41 82 00 50 */	beq .L_8000F2D0
/* 8000F284 0000C1E4  88 1D 00 01 */	lbz r0, 1(r29)
/* 8000F288 0000C1E8  2C 00 00 01 */	cmpwi r0, 1
/* 8000F28C 0000C1EC  41 82 00 24 */	beq .L_8000F2B0
/* 8000F290 0000C1F0  40 80 00 2C */	bge .L_8000F2BC
/* 8000F294 0000C1F4  2C 00 00 00 */	cmpwi r0, 0
/* 8000F298 0000C1F8  40 80 00 08 */	bge .L_8000F2A0
/* 8000F29C 0000C1FC  48 00 00 20 */	b .L_8000F2BC
.L_8000F2A0:
/* 8000F2A0 0000C200  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8000F2A4 0000C204  7F C4 F3 78 */	mr r4, r30
/* 8000F2A8 0000C208  4B FF F7 59 */	bl ARAM_TO_ARAM_DMA__FUlUlUl
/* 8000F2AC 0000C20C  48 00 00 10 */	b .L_8000F2BC
.L_8000F2B0:
/* 8000F2B0 0000C210  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8000F2B4 0000C214  7F C4 F3 78 */	mr r4, r30
/* 8000F2B8 0000C218  4B FF F8 49 */	bl DRAM_TO_DRAM_DMA__FUlUlUl
.L_8000F2BC:
/* 8000F2BC 0000C21C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8000F2C0 0000C220  38 7F 00 00 */	addi r3, r31, 0
/* 8000F2C4 0000C224  7C 80 F0 50 */	subf r4, r0, r30
/* 8000F2C8 0000C228  4B FF FE F9 */	bl Jac_Move_Children__FP7jaheap_l
/* 8000F2CC 0000C22C  93 DF 00 08 */	stw r30, 8(r31)
.L_8000F2D0:
/* 8000F2D0 0000C230  80 7F 00 08 */	lwz r3, 8(r31)
/* 8000F2D4 0000C234  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8000F2D8 0000C238  83 FF 00 1C */	lwz r31, 0x1c(r31)
/* 8000F2DC 0000C23C  7F C3 02 14 */	add r30, r3, r0
/* 8000F2E0 0000C240  28 1F 00 00 */	cmplwi r31, 0
/* 8000F2E4 0000C244  40 82 FF 90 */	bne .L_8000F274
/* 8000F2E8 0000C248  80 1D 00 08 */	lwz r0, 8(r29)
/* 8000F2EC 0000C24C  7C 00 F0 50 */	subf r0, r0, r30
/* 8000F2F0 0000C250  90 1D 00 0C */	stw r0, 0xc(r29)
.L_8000F2F4:
/* 8000F2F4 0000C254  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8000F2F8 0000C258  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000F2FC 0000C25C  38 21 00 20 */	addi r1, r1, 0x20
/* 8000F300 0000C260  7C 08 03 A6 */	mtlr r0
/* 8000F304 0000C264  4E 80 00 20 */	blr 
.endfn Jac_GarbageCollection_St__FP7jaheap_

.balign 32, 0
.fn Jac_ShowHeap__FP7jaheap_Ul, global
/* 8000F320 0000C280  7C 08 02 A6 */	mflr r0
/* 8000F324 0000C284  90 01 00 04 */	stw r0, 4(r1)
/* 8000F328 0000C288  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8000F32C 0000C28C  BF A1 00 74 */	stmw r29, 0x74(r1)
/* 8000F330 0000C290  3B A4 00 00 */	addi r29, r4, 0
/* 8000F334 0000C294  90 61 00 08 */	stw r3, 8(r1)
/* 8000F338 0000C298  3C 60 80 22 */	lis r3, lbl_80222108@ha
/* 8000F33C 0000C29C  38 A3 21 08 */	addi r5, r3, lbl_80222108@l
/* 8000F340 0000C2A0  80 65 00 00 */	lwz r3, 0(r5)
/* 8000F344 0000C2A4  80 05 00 04 */	lwz r0, 4(r5)
/* 8000F348 0000C2A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8000F34C 0000C2AC  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8000F350 0000C2B0  90 01 00 50 */	stw r0, 0x50(r1)
/* 8000F354 0000C2B4  88 05 00 08 */	lbz r0, 8(r5)
/* 8000F358 0000C2B8  98 01 00 54 */	stb r0, 0x54(r1)
/* 8000F35C 0000C2BC  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8000F360 0000C2C0  90 01 00 68 */	stw r0, 0x68(r1)
/* 8000F364 0000C2C4  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8000F368 0000C2C8  28 00 00 00 */	cmplwi r0, 0
/* 8000F36C 0000C2CC  41 82 00 34 */	beq .L_8000F3A0
.L_8000F370:
/* 8000F370 0000C2D0  83 E1 00 68 */	lwz r31, 0x68(r1)
/* 8000F374 0000C2D4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8000F378 0000C2D8  28 00 00 00 */	cmplwi r0, 0
/* 8000F37C 0000C2DC  41 82 00 10 */	beq .L_8000F38C
/* 8000F380 0000C2E0  38 7F 00 00 */	addi r3, r31, 0
/* 8000F384 0000C2E4  38 9D 00 01 */	addi r4, r29, 1
/* 8000F388 0000C2E8  4B FF FF 99 */	bl Jac_ShowHeap__FP7jaheap_Ul
.L_8000F38C:
/* 8000F38C 0000C2EC  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8000F390 0000C2F0  90 01 00 68 */	stw r0, 0x68(r1)
/* 8000F394 0000C2F4  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8000F398 0000C2F8  28 00 00 00 */	cmplwi r0, 0
/* 8000F39C 0000C2FC  40 82 FF D4 */	bne .L_8000F370
.L_8000F3A0:
/* 8000F3A0 0000C300  83 DE 00 24 */	lwz r30, 0x24(r30)
/* 8000F3A4 0000C304  28 1E 00 00 */	cmplwi r30, 0
/* 8000F3A8 0000C308  41 82 00 28 */	beq .L_8000F3D0
.L_8000F3AC:
/* 8000F3AC 0000C30C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8000F3B0 0000C310  28 00 00 00 */	cmplwi r0, 0
/* 8000F3B4 0000C314  41 82 00 10 */	beq .L_8000F3C4
/* 8000F3B8 0000C318  38 7E 00 00 */	addi r3, r30, 0
/* 8000F3BC 0000C31C  38 9D 00 01 */	addi r4, r29, 1
/* 8000F3C0 0000C320  4B FF FF 61 */	bl Jac_ShowHeap__FP7jaheap_Ul
.L_8000F3C4:
/* 8000F3C4 0000C324  83 DE 00 28 */	lwz r30, 0x28(r30)
/* 8000F3C8 0000C328  28 1E 00 00 */	cmplwi r30, 0
/* 8000F3CC 0000C32C  40 82 FF E0 */	bne .L_8000F3AC
.L_8000F3D0:
/* 8000F3D0 0000C330  BB A1 00 74 */	lmw r29, 0x74(r1)
/* 8000F3D4 0000C334  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8000F3D8 0000C338  38 21 00 80 */	addi r1, r1, 0x80
/* 8000F3DC 0000C33C  7C 08 03 A6 */	mtlr r0
/* 8000F3E0 0000C340  4E 80 00 20 */	blr 
.endfn Jac_ShowHeap__FP7jaheap_Ul

.section .rodata, "a"  # 0x80221FE0 - 0x80222DC0
.balign 8
.obj lbl_80222108, local
	.asciz "        "
.endobj lbl_80222108

.section .sbss, "wa"
.balign 8
.obj global_id, local
	.skip 4
.endobj global_id
