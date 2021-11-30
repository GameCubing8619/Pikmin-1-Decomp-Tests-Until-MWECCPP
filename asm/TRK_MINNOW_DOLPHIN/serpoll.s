.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global TRKTestForPacket
TRKTestForPacket:
/* 8021CD14 00219C74  7C 08 02 A6 */	mflr r0
/* 8021CD18 00219C78  90 01 00 04 */	stw r0, 4(r1)
/* 8021CD1C 00219C7C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021CD20 00219C80  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021CD24 00219C84  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021CD28 00219C88  48 00 39 55 */	bl TRKPollUART
/* 8021CD2C 00219C8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8021CD30 00219C90  40 81 00 88 */	ble lbl_8021CDB8
/* 8021CD34 00219C94  38 61 00 08 */	addi r3, r1, 8
/* 8021CD38 00219C98  38 81 00 0C */	addi r4, r1, 0xc
/* 8021CD3C 00219C9C  4B FF F8 11 */	bl TRKGetFreeBuffer
/* 8021CD40 00219CA0  2C 1E 08 80 */	cmpwi r30, 0x880
/* 8021CD44 00219CA4  40 81 00 4C */	ble lbl_8021CD90
/* 8021CD48 00219CA8  48 00 00 2C */	b lbl_8021CD74
lbl_8021CD4C:
/* 8021CD4C 00219CAC  2C 1E 08 80 */	cmpwi r30, 0x880
/* 8021CD50 00219CB0  40 81 00 0C */	ble lbl_8021CD5C
/* 8021CD54 00219CB4  3B E0 08 80 */	li r31, 0x880
/* 8021CD58 00219CB8  48 00 00 08 */	b lbl_8021CD60
lbl_8021CD5C:
/* 8021CD5C 00219CBC  7F DF F3 78 */	mr r31, r30
lbl_8021CD60:
/* 8021CD60 00219CC0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8021CD64 00219CC4  38 9F 00 00 */	addi r4, r31, 0
/* 8021CD68 00219CC8  38 63 00 10 */	addi r3, r3, 0x10
/* 8021CD6C 00219CCC  48 00 39 41 */	bl TRKReadUARTN
/* 8021CD70 00219CD0  7F DF F0 50 */	subf r30, r31, r30
lbl_8021CD74:
/* 8021CD74 00219CD4  2C 1E 00 00 */	cmpwi r30, 0
/* 8021CD78 00219CD8  41 81 FF D4 */	bgt lbl_8021CD4C
/* 8021CD7C 00219CDC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8021CD80 00219CE0  38 80 00 FF */	li r4, 0xff
/* 8021CD84 00219CE4  38 A0 00 06 */	li r5, 6
/* 8021CD88 00219CE8  48 00 02 D9 */	bl TRKStandardACK
/* 8021CD8C 00219CEC  48 00 00 2C */	b lbl_8021CDB8
lbl_8021CD90:
/* 8021CD90 00219CF0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8021CD94 00219CF4  38 9E 00 00 */	addi r4, r30, 0
/* 8021CD98 00219CF8  38 63 00 10 */	addi r3, r3, 0x10
/* 8021CD9C 00219CFC  48 00 39 11 */	bl TRKReadUARTN
/* 8021CDA0 00219D00  2C 03 00 00 */	cmpwi r3, 0
/* 8021CDA4 00219D04  40 82 00 14 */	bne lbl_8021CDB8
/* 8021CDA8 00219D08  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8021CDAC 00219D0C  93 C3 00 08 */	stw r30, 8(r3)
/* 8021CDB0 00219D10  80 61 00 08 */	lwz r3, 8(r1)
/* 8021CDB4 00219D14  48 00 00 18 */	b lbl_8021CDCC
lbl_8021CDB8:
/* 8021CDB8 00219D18  80 61 00 08 */	lwz r3, 8(r1)
/* 8021CDBC 00219D1C  2C 03 FF FF */	cmpwi r3, -1
/* 8021CDC0 00219D20  41 82 00 08 */	beq lbl_8021CDC8
/* 8021CDC4 00219D24  4B FF F8 51 */	bl TRKReleaseBuffer
lbl_8021CDC8:
/* 8021CDC8 00219D28  38 60 FF FF */	li r3, -1
lbl_8021CDCC:
/* 8021CDCC 00219D2C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021CDD0 00219D30  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021CDD4 00219D34  38 21 00 18 */	addi r1, r1, 0x18
/* 8021CDD8 00219D38  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CDDC 00219D3C  7C 08 03 A6 */	mtlr r0
/* 8021CDE0 00219D40  4E 80 00 20 */	blr 

.global TRKGetInput
TRKGetInput:
/* 8021CDE4 00219D44  7C 08 02 A6 */	mflr r0
/* 8021CDE8 00219D48  90 01 00 04 */	stw r0, 4(r1)
/* 8021CDEC 00219D4C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021CDF0 00219D50  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021CDF4 00219D54  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021CDF8 00219D58  4B FF FF 1D */	bl TRKTestForPacket
/* 8021CDFC 00219D5C  3B C3 00 00 */	addi r30, r3, 0
/* 8021CE00 00219D60  2C 1E FF FF */	cmpwi r30, -1
/* 8021CE04 00219D64  41 82 00 44 */	beq lbl_8021CE48
/* 8021CE08 00219D68  7F C3 F3 78 */	mr r3, r30
/* 8021CE0C 00219D6C  4B FF F7 DD */	bl TRKGetBuffer
/* 8021CE10 00219D70  3B E3 00 00 */	addi r31, r3, 0
/* 8021CE14 00219D74  38 80 00 00 */	li r4, 0
/* 8021CE18 00219D78  4B FF F8 A5 */	bl TRKSetBufferPosition
/* 8021CE1C 00219D7C  38 7F 00 00 */	addi r3, r31, 0
/* 8021CE20 00219D80  38 81 00 08 */	addi r4, r1, 8
/* 8021CE24 00219D84  4B FF FC 1D */	bl TRKReadBuffer1_ui8
/* 8021CE28 00219D88  88 01 00 08 */	lbz r0, 8(r1)
/* 8021CE2C 00219D8C  28 00 00 80 */	cmplwi r0, 0x80
/* 8021CE30 00219D90  40 80 00 10 */	bge lbl_8021CE40
/* 8021CE34 00219D94  7F C3 F3 78 */	mr r3, r30
/* 8021CE38 00219D98  48 00 00 29 */	bl TRKProcessInput
/* 8021CE3C 00219D9C  48 00 00 0C */	b lbl_8021CE48
lbl_8021CE40:
/* 8021CE40 00219DA0  7F C3 F3 78 */	mr r3, r30
/* 8021CE44 00219DA4  4B FF F7 D1 */	bl TRKReleaseBuffer
lbl_8021CE48:
/* 8021CE48 00219DA8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021CE4C 00219DAC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021CE50 00219DB0  38 21 00 18 */	addi r1, r1, 0x18
/* 8021CE54 00219DB4  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CE58 00219DB8  7C 08 03 A6 */	mtlr r0
/* 8021CE5C 00219DBC  4E 80 00 20 */	blr 

.global TRKProcessInput
TRKProcessInput:
/* 8021CE60 00219DC0  7C 08 02 A6 */	mflr r0
/* 8021CE64 00219DC4  38 80 00 02 */	li r4, 2
/* 8021CE68 00219DC8  90 01 00 04 */	stw r0, 4(r1)
/* 8021CE6C 00219DCC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021CE70 00219DD0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021CE74 00219DD4  3B E3 00 00 */	addi r31, r3, 0
/* 8021CE78 00219DD8  38 61 00 08 */	addi r3, r1, 8
/* 8021CE7C 00219DDC  4B FF F4 59 */	bl TRKConstructEvent
/* 8021CE80 00219DE0  3C 60 80 3D */	lis r3, gTRKFramingState@ha
/* 8021CE84 00219DE4  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8021CE88 00219DE8  38 83 5C D0 */	addi r4, r3, gTRKFramingState@l
/* 8021CE8C 00219DEC  38 61 00 08 */	addi r3, r1, 8
/* 8021CE90 00219DF0  38 00 FF FF */	li r0, -1
/* 8021CE94 00219DF4  90 04 00 00 */	stw r0, 0(r4)
/* 8021CE98 00219DF8  4B FF F3 5D */	bl TRKPostEvent
/* 8021CE9C 00219DFC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021CEA0 00219E00  38 21 00 18 */	addi r1, r1, 0x18
/* 8021CEA4 00219E04  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CEA8 00219E08  7C 08 03 A6 */	mtlr r0
/* 8021CEAC 00219E0C  4E 80 00 20 */	blr 
