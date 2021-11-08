.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __CARDGetDirBlock
__CARDGetDirBlock:
/* 802098B0 00206810  80 63 00 84 */	lwz r3, 0x84(r3)
/* 802098B4 00206814  4E 80 00 20 */	blr 

.global WriteCallback_1
WriteCallback_1:
/* 802098B8 00206818  7C 08 02 A6 */	mflr r0
/* 802098BC 0020681C  90 01 00 04 */	stw r0, 4(r1)
/* 802098C0 00206820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802098C4 00206824  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802098C8 00206828  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802098CC 0020682C  7C 9E 23 79 */	or. r30, r4, r4
/* 802098D0 00206830  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802098D4 00206834  3B A3 00 00 */	addi r29, r3, 0
/* 802098D8 00206838  1C BD 01 08 */	mulli r5, r29, 0x108
/* 802098DC 0020683C  3C 60 80 3D */	lis r3, __CARDBlock@ha
/* 802098E0 00206840  38 03 34 20 */	addi r0, r3, __CARDBlock@l
/* 802098E4 00206844  7F E0 2A 14 */	add r31, r0, r5
/* 802098E8 00206848  41 80 00 44 */	blt lbl_8020992C
/* 802098EC 0020684C  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 802098F0 00206850  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 802098F4 00206854  38 83 20 00 */	addi r4, r3, 0x2000
/* 802098F8 00206858  7C 00 20 40 */	cmplw r0, r4
/* 802098FC 0020685C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80209900 00206860  40 82 00 18 */	bne lbl_80209918
/* 80209904 00206864  90 1F 00 84 */	stw r0, 0x84(r31)
/* 80209908 00206868  7C 03 03 78 */	mr r3, r0
/* 8020990C 0020686C  38 A0 20 00 */	li r5, 0x2000
/* 80209910 00206870  4B DF 9B 05 */	bl memcpy
/* 80209914 00206874  48 00 00 18 */	b lbl_8020992C
lbl_80209918:
/* 80209918 00206878  90 9F 00 84 */	stw r4, 0x84(r31)
/* 8020991C 0020687C  38 64 00 00 */	addi r3, r4, 0
/* 80209920 00206880  7C 04 03 78 */	mr r4, r0
/* 80209924 00206884  38 A0 20 00 */	li r5, 0x2000
/* 80209928 00206888  4B DF 9A ED */	bl memcpy
lbl_8020992C:
/* 8020992C 0020688C  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80209930 00206890  28 00 00 00 */	cmplwi r0, 0
/* 80209934 00206894  40 82 00 10 */	bne lbl_80209944
/* 80209938 00206898  38 7F 00 00 */	addi r3, r31, 0
/* 8020993C 0020689C  38 9E 00 00 */	addi r4, r30, 0
/* 80209940 002068A0  4B FF F5 E1 */	bl __CARDPutControlBlock
lbl_80209944:
/* 80209944 002068A4  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80209948 002068A8  28 00 00 00 */	cmplwi r0, 0
/* 8020994C 002068AC  7C 0C 03 78 */	mr r12, r0
/* 80209950 002068B0  41 82 00 1C */	beq lbl_8020996C
/* 80209954 002068B4  38 00 00 00 */	li r0, 0
/* 80209958 002068B8  7D 88 03 A6 */	mtlr r12
/* 8020995C 002068BC  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 80209960 002068C0  38 7D 00 00 */	addi r3, r29, 0
/* 80209964 002068C4  38 9E 00 00 */	addi r4, r30, 0
/* 80209968 002068C8  4E 80 00 21 */	blrl 
lbl_8020996C:
/* 8020996C 002068CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80209970 002068D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80209974 002068D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80209978 002068D8  7C 08 03 A6 */	mtlr r0
/* 8020997C 002068DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80209980 002068E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80209984 002068E4  4E 80 00 20 */	blr 

.global EraseCallback_1
EraseCallback_1:
/* 80209988 002068E8  7C 08 02 A6 */	mflr r0
/* 8020998C 002068EC  90 01 00 04 */	stw r0, 4(r1)
/* 80209990 002068F0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80209994 002068F4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80209998 002068F8  3B E3 00 00 */	addi r31, r3, 0
/* 8020999C 002068FC  3C 60 80 3D */	lis r3, __CARDBlock@ha
/* 802099A0 00206900  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802099A4 00206904  1C BF 01 08 */	mulli r5, r31, 0x108
/* 802099A8 00206908  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 802099AC 0020690C  38 03 34 20 */	addi r0, r3, __CARDBlock@l
/* 802099B0 00206910  7C 9D 23 79 */	or. r29, r4, r4
/* 802099B4 00206914  7F C0 2A 14 */	add r30, r0, r5
/* 802099B8 00206918  41 80 00 3C */	blt lbl_802099F4
/* 802099BC 0020691C  80 BE 00 84 */	lwz r5, 0x84(r30)
/* 802099C0 00206920  3C 60 80 21 */	lis r3, WriteCallback_1@ha
/* 802099C4 00206924  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 802099C8 00206928  38 E3 98 B8 */	addi r7, r3, WriteCallback_1@l
/* 802099CC 0020692C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802099D0 00206930  7C 00 28 50 */	subf r0, r0, r5
/* 802099D4 00206934  54 00 9B 7E */	srwi r0, r0, 0xd
/* 802099D8 00206938  7C 83 01 D6 */	mullw r4, r3, r0
/* 802099DC 0020693C  38 C5 00 00 */	addi r6, r5, 0
/* 802099E0 00206940  38 7F 00 00 */	addi r3, r31, 0
/* 802099E4 00206944  38 A0 20 00 */	li r5, 0x2000
/* 802099E8 00206948  4B FF FA 49 */	bl __CARDWrite
/* 802099EC 0020694C  7C 7D 1B 79 */	or. r29, r3, r3
/* 802099F0 00206950  40 80 00 44 */	bge lbl_80209A34
lbl_802099F4:
/* 802099F4 00206954  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 802099F8 00206958  28 00 00 00 */	cmplwi r0, 0
/* 802099FC 0020695C  40 82 00 10 */	bne lbl_80209A0C
/* 80209A00 00206960  38 7E 00 00 */	addi r3, r30, 0
/* 80209A04 00206964  38 9D 00 00 */	addi r4, r29, 0
/* 80209A08 00206968  4B FF F5 19 */	bl __CARDPutControlBlock
lbl_80209A0C:
/* 80209A0C 0020696C  80 1E 00 D8 */	lwz r0, 0xd8(r30)
/* 80209A10 00206970  28 00 00 00 */	cmplwi r0, 0
/* 80209A14 00206974  7C 0C 03 78 */	mr r12, r0
/* 80209A18 00206978  41 82 00 1C */	beq lbl_80209A34
/* 80209A1C 0020697C  38 00 00 00 */	li r0, 0
/* 80209A20 00206980  7D 88 03 A6 */	mtlr r12
/* 80209A24 00206984  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 80209A28 00206988  38 7F 00 00 */	addi r3, r31, 0
/* 80209A2C 0020698C  38 9D 00 00 */	addi r4, r29, 0
/* 80209A30 00206990  4E 80 00 21 */	blrl 
lbl_80209A34:
/* 80209A34 00206994  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80209A38 00206998  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80209A3C 0020699C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80209A40 002069A0  7C 08 03 A6 */	mtlr r0
/* 80209A44 002069A4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80209A48 002069A8  38 21 00 28 */	addi r1, r1, 0x28
/* 80209A4C 002069AC  4E 80 00 20 */	blr 

.global __CARDUpdateDir
__CARDUpdateDir:
/* 80209A50 002069B0  7C 08 02 A6 */	mflr r0
/* 80209A54 002069B4  90 01 00 04 */	stw r0, 4(r1)
/* 80209A58 002069B8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80209A5C 002069BC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80209A60 002069C0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80209A64 002069C4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80209A68 002069C8  3B A4 00 00 */	addi r29, r4, 0
/* 80209A6C 002069CC  93 81 00 18 */	stw r28, 0x18(r1)
/* 80209A70 002069D0  3B 83 00 00 */	addi r28, r3, 0
/* 80209A74 002069D4  1C BC 01 08 */	mulli r5, r28, 0x108
/* 80209A78 002069D8  3C 60 80 3D */	lis r3, __CARDBlock@ha
/* 80209A7C 002069DC  38 03 34 20 */	addi r0, r3, __CARDBlock@l
/* 80209A80 002069E0  7F C0 2A 14 */	add r30, r0, r5
/* 80209A84 002069E4  80 1E 00 00 */	lwz r0, 0(r30)
/* 80209A88 002069E8  2C 00 00 00 */	cmpwi r0, 0
/* 80209A8C 002069EC  40 82 00 0C */	bne lbl_80209A98
/* 80209A90 002069F0  38 60 FF FD */	li r3, -3
/* 80209A94 002069F4  48 00 00 60 */	b lbl_80209AF4
lbl_80209A98:
/* 80209A98 002069F8  83 FE 00 84 */	lwz r31, 0x84(r30)
/* 80209A9C 002069FC  38 80 1F FC */	li r4, 0x1ffc
/* 80209AA0 00206A00  A8 BF 1F FA */	lha r5, 0x1ffa(r31)
/* 80209AA4 00206A04  38 DF 1F C0 */	addi r6, r31, 0x1fc0
/* 80209AA8 00206A08  38 7F 00 00 */	addi r3, r31, 0
/* 80209AAC 00206A0C  38 05 00 01 */	addi r0, r5, 1
/* 80209AB0 00206A10  B0 1F 1F FA */	sth r0, 0x1ffa(r31)
/* 80209AB4 00206A14  38 A6 00 3C */	addi r5, r6, 0x3c
/* 80209AB8 00206A18  38 C6 00 3E */	addi r6, r6, 0x3e
/* 80209ABC 00206A1C  48 00 00 59 */	bl __CARDCheckSum
/* 80209AC0 00206A20  38 7F 00 00 */	addi r3, r31, 0
/* 80209AC4 00206A24  38 80 20 00 */	li r4, 0x2000
/* 80209AC8 00206A28  4B FE D1 55 */	bl DCStoreRange
/* 80209ACC 00206A2C  93 BE 00 D8 */	stw r29, 0xd8(r30)
/* 80209AD0 00206A30  3C 60 80 21 */	lis r3, EraseCallback_1@ha
/* 80209AD4 00206A34  38 A3 99 88 */	addi r5, r3, EraseCallback_1@l
/* 80209AD8 00206A38  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 80209ADC 00206A3C  7F 83 E3 78 */	mr r3, r28
/* 80209AE0 00206A40  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80209AE4 00206A44  7C 00 F8 50 */	subf r0, r0, r31
/* 80209AE8 00206A48  54 00 9B 7E */	srwi r0, r0, 0xd
/* 80209AEC 00206A4C  7C 84 01 D6 */	mullw r4, r4, r0
/* 80209AF0 00206A50  4B FF F1 F9 */	bl __CARDEraseSector
lbl_80209AF4:
/* 80209AF4 00206A54  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80209AF8 00206A58  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80209AFC 00206A5C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80209B00 00206A60  7C 08 03 A6 */	mtlr r0
/* 80209B04 00206A64  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80209B08 00206A68  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80209B0C 00206A6C  38 21 00 28 */	addi r1, r1, 0x28
/* 80209B10 00206A70  4E 80 00 20 */	blr 
