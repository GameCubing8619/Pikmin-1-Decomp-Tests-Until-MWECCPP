.include "macros.inc"

.global __ct__15BossShapeObjectFP5ShapePc
__ct__15BossShapeObjectFP5ShapePc:
/* 80152684 0014F5E4  7C 08 02 A6 */	mflr r0
/* 80152688 0014F5E8  3C C0 80 23 */	lis r6, __vt__11AnimContext@ha
/* 8015268C 0014F5EC  90 01 00 04 */	stw r0, 4(r1)
/* 80152690 0014F5F0  38 06 88 D0 */	addi r0, r6, __vt__11AnimContext@l
/* 80152694 0014F5F4  94 21 FF 58 */	stwu r1, -0xa8(r1)
/* 80152698 0014F5F8  93 E1 00 A4 */	stw r31, 0xa4(r1)
/* 8015269C 0014F5FC  93 C1 00 A0 */	stw r30, 0xa0(r1)
/* 801526A0 0014F600  7C BE 2B 79 */	or. r30, r5, r5
/* 801526A4 0014F604  93 A1 00 9C */	stw r29, 0x9c(r1)
/* 801526A8 0014F608  7C 9D 23 78 */	mr r29, r4
/* 801526AC 0014F60C  93 81 00 98 */	stw r28, 0x98(r1)
/* 801526B0 0014F610  3B 83 00 00 */	addi r28, r3, 0
/* 801526B4 0014F614  90 03 00 10 */	stw r0, 0x10(r3)
/* 801526B8 0014F618  38 00 00 00 */	li r0, 0
/* 801526BC 0014F61C  90 03 00 04 */	stw r0, 4(r3)
/* 801526C0 0014F620  C0 02 A8 78 */	lfs f0, lbl_803EAA78@sda21(r2)
/* 801526C4 0014F624  D0 03 00 08 */	stfs f0, 8(r3)
/* 801526C8 0014F628  C0 02 A8 7C */	lfs f0, lbl_803EAA7C@sda21(r2)
/* 801526CC 0014F62C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801526D0 0014F630  93 A3 00 00 */	stw r29, 0(r3)
/* 801526D4 0014F634  80 63 00 00 */	lwz r3, 0(r3)
/* 801526D8 0014F638  90 03 00 24 */	stw r0, 0x24(r3)
/* 801526DC 0014F63C  41 82 00 58 */	beq lbl_80152734
/* 801526E0 0014F640  3C 60 80 2D */	lis r3, lbl_802CF158@ha
/* 801526E4 0014F644  4C C6 31 82 */	crclr 6
/* 801526E8 0014F648  38 83 F1 58 */	addi r4, r3, lbl_802CF158@l
/* 801526EC 0014F64C  38 BE 00 00 */	addi r5, r30, 0
/* 801526F0 0014F650  38 61 00 14 */	addi r3, r1, 0x14
/* 801526F4 0014F654  48 0C 3E A5 */	bl sprintf
/* 801526F8 0014F658  38 60 00 B8 */	li r3, 0xb8
/* 801526FC 0014F65C  4B EF 49 09 */	bl alloc__6SystemFUl
/* 80152700 0014F660  3B E3 00 00 */	addi r31, r3, 0
/* 80152704 0014F664  7F E3 FB 79 */	or. r3, r31, r31
/* 80152708 0014F668  41 82 00 1C */	beq lbl_80152724
/* 8015270C 0014F66C  3C C0 00 01 */	lis r6, 0x00008000@ha
/* 80152710 0014F670  38 9D 00 00 */	addi r4, r29, 0
/* 80152714 0014F674  38 A1 00 14 */	addi r5, r1, 0x14
/* 80152718 0014F678  38 C6 80 00 */	addi r6, r6, 0x00008000@l
/* 8015271C 0014F67C  38 E0 00 00 */	li r7, 0
/* 80152720 0014F680  4B EF E1 85 */	bl __ct__7AnimMgrFP5ShapePciPc
lbl_80152724:
/* 80152724 0014F684  93 FC 00 14 */	stw r31, 0x14(r28)
/* 80152728 0014F688  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8015272C 0014F68C  93 C3 00 04 */	stw r30, 4(r3)
/* 80152730 0014F690  48 00 00 30 */	b lbl_80152760
lbl_80152734:
/* 80152734 0014F694  38 60 00 B8 */	li r3, 0xb8
/* 80152738 0014F698  4B EF 48 CD */	bl alloc__6SystemFUl
/* 8015273C 0014F69C  3B E3 00 00 */	addi r31, r3, 0
/* 80152740 0014F6A0  7F E3 FB 79 */	or. r3, r31, r31
/* 80152744 0014F6A4  41 82 00 18 */	beq lbl_8015275C
/* 80152748 0014F6A8  38 9D 00 00 */	addi r4, r29, 0
/* 8015274C 0014F6AC  38 A0 00 00 */	li r5, 0
/* 80152750 0014F6B0  38 C0 00 00 */	li r6, 0
/* 80152754 0014F6B4  38 E0 00 00 */	li r7, 0
/* 80152758 0014F6B8  4B EF E1 4D */	bl __ct__7AnimMgrFP5ShapePciPc
lbl_8015275C:
/* 8015275C 0014F6BC  93 FC 00 14 */	stw r31, 0x14(r28)
lbl_80152760:
/* 80152760 0014F6C0  80 7C 00 00 */	lwz r3, 0(r28)
/* 80152764 0014F6C4  38 BC 00 04 */	addi r5, r28, 4
/* 80152768 0014F6C8  38 80 00 00 */	li r4, 0
/* 8015276C 0014F6CC  4B EE 28 F9 */	bl overrideAnim__9BaseShapeFiP11AnimContext
/* 80152770 0014F6D0  7F 83 E3 78 */	mr r3, r28
/* 80152774 0014F6D4  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80152778 0014F6D8  83 E1 00 A4 */	lwz r31, 0xa4(r1)
/* 8015277C 0014F6DC  83 C1 00 A0 */	lwz r30, 0xa0(r1)
/* 80152780 0014F6E0  83 A1 00 9C */	lwz r29, 0x9c(r1)
/* 80152784 0014F6E4  83 81 00 98 */	lwz r28, 0x98(r1)
/* 80152788 0014F6E8  38 21 00 A8 */	addi r1, r1, 0xa8
/* 8015278C 0014F6EC  7C 08 03 A6 */	mtlr r0
/* 80152790 0014F6F0  4E 80 00 20 */	blr 
