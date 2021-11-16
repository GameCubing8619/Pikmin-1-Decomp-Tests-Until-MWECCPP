.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __ct__10PSUPtrLinkFPv
__ct__10PSUPtrLinkFPv:
/* 801B33C8 001B0328  38 00 00 00 */	li r0, 0
/* 801B33CC 001B032C  90 03 00 04 */	stw r0, 4(r3)
/* 801B33D0 001B0330  90 83 00 00 */	stw r4, 0(r3)
/* 801B33D4 001B0334  90 03 00 08 */	stw r0, 8(r3)
/* 801B33D8 001B0338  90 03 00 0C */	stw r0, 0xc(r3)
/* 801B33DC 001B033C  4E 80 00 20 */	blr 

.global __dt__10PSUPtrLinkFv
__dt__10PSUPtrLinkFv:
/* 801B33E0 001B0340  7C 08 02 A6 */	mflr r0
/* 801B33E4 001B0344  90 01 00 04 */	stw r0, 4(r1)
/* 801B33E8 001B0348  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801B33EC 001B034C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801B33F0 001B0350  3B E4 00 00 */	addi r31, r4, 0
/* 801B33F4 001B0354  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801B33F8 001B0358  7C 7E 1B 79 */	or. r30, r3, r3
/* 801B33FC 001B035C  41 82 00 28 */	beq lbl_801B3424
/* 801B3400 001B0360  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B3404 001B0364  28 03 00 00 */	cmplwi r3, 0
/* 801B3408 001B0368  41 82 00 0C */	beq lbl_801B3414
/* 801B340C 001B036C  7F C4 F3 78 */	mr r4, r30
/* 801B3410 001B0370  48 00 01 69 */	bl remove__10PSUPtrListFP10PSUPtrLink
lbl_801B3414:
/* 801B3414 001B0374  7F E0 07 35 */	extsh. r0, r31
/* 801B3418 001B0378  40 81 00 0C */	ble lbl_801B3424
/* 801B341C 001B037C  7F C3 F3 78 */	mr r3, r30
/* 801B3420 001B0380  4B E9 3D 8D */	bl __dl__FPv
lbl_801B3424:
/* 801B3424 001B0384  7F C3 F3 78 */	mr r3, r30
/* 801B3428 001B0388  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801B342C 001B038C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801B3430 001B0390  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801B3434 001B0394  38 21 00 18 */	addi r1, r1, 0x18
/* 801B3438 001B0398  7C 08 03 A6 */	mtlr r0
/* 801B343C 001B039C  4E 80 00 20 */	blr 

.global __dt__10PSUPtrListFv
__dt__10PSUPtrListFv:
/* 801B3440 001B03A0  7C 08 02 A6 */	mflr r0
/* 801B3444 001B03A4  90 01 00 04 */	stw r0, 4(r1)
/* 801B3448 001B03A8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801B344C 001B03AC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801B3450 001B03B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801B3454 001B03B4  41 82 00 3C */	beq lbl_801B3490
/* 801B3458 001B03B8  80 BF 00 00 */	lwz r5, 0(r31)
/* 801B345C 001B03BC  38 C0 00 00 */	li r6, 0
/* 801B3460 001B03C0  38 60 00 00 */	li r3, 0
/* 801B3464 001B03C4  48 00 00 10 */	b lbl_801B3474
lbl_801B3468:
/* 801B3468 001B03C8  90 65 00 04 */	stw r3, 4(r5)
/* 801B346C 001B03CC  38 C6 00 01 */	addi r6, r6, 1
/* 801B3470 001B03D0  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_801B3474:
/* 801B3474 001B03D4  80 1F 00 08 */	lwz r0, 8(r31)
/* 801B3478 001B03D8  7C 06 00 40 */	cmplw r6, r0
/* 801B347C 001B03DC  41 80 FF EC */	blt lbl_801B3468
/* 801B3480 001B03E0  7C 80 07 35 */	extsh. r0, r4
/* 801B3484 001B03E4  40 81 00 0C */	ble lbl_801B3490
/* 801B3488 001B03E8  7F E3 FB 78 */	mr r3, r31
/* 801B348C 001B03EC  4B E9 3D 21 */	bl __dl__FPv
lbl_801B3490:
/* 801B3490 001B03F0  7F E3 FB 78 */	mr r3, r31
/* 801B3494 001B03F4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801B3498 001B03F8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801B349C 001B03FC  38 21 00 18 */	addi r1, r1, 0x18
/* 801B34A0 001B0400  7C 08 03 A6 */	mtlr r0
/* 801B34A4 001B0404  4E 80 00 20 */	blr 

.global initiate__10PSUPtrListFv
initiate__10PSUPtrListFv:
/* 801B34A8 001B0408  38 00 00 00 */	li r0, 0
/* 801B34AC 001B040C  90 03 00 00 */	stw r0, 0(r3)
/* 801B34B0 001B0410  90 03 00 04 */	stw r0, 4(r3)
/* 801B34B4 001B0414  90 03 00 08 */	stw r0, 8(r3)
/* 801B34B8 001B0418  4E 80 00 20 */	blr 

.global append__10PSUPtrListFP10PSUPtrLink
append__10PSUPtrListFP10PSUPtrLink:
/* 801B34BC 001B041C  7C 08 02 A6 */	mflr r0
/* 801B34C0 001B0420  90 01 00 04 */	stw r0, 4(r1)
/* 801B34C4 001B0424  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801B34C8 001B0428  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801B34CC 001B042C  7C 9F 23 78 */	mr r31, r4
/* 801B34D0 001B0430  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801B34D4 001B0434  3B C3 00 00 */	addi r30, r3, 0
/* 801B34D8 001B0438  80 84 00 04 */	lwz r4, 4(r4)
/* 801B34DC 001B043C  7C 04 00 D0 */	neg r0, r4
/* 801B34E0 001B0440  7C 00 00 34 */	cntlzw r0, r0
/* 801B34E4 001B0444  28 04 00 00 */	cmplwi r4, 0
/* 801B34E8 001B0448  54 03 D9 7E */	srwi r3, r0, 5
/* 801B34EC 001B044C  41 82 00 10 */	beq lbl_801B34FC
/* 801B34F0 001B0450  38 64 00 00 */	addi r3, r4, 0
/* 801B34F4 001B0454  38 9F 00 00 */	addi r4, r31, 0
/* 801B34F8 001B0458  48 00 00 81 */	bl remove__10PSUPtrListFP10PSUPtrLink
lbl_801B34FC:
/* 801B34FC 001B045C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B3500 001B0460  41 82 00 60 */	beq lbl_801B3560
/* 801B3504 001B0464  80 1E 00 08 */	lwz r0, 8(r30)
/* 801B3508 001B0468  28 00 00 00 */	cmplwi r0, 0
/* 801B350C 001B046C  40 82 00 28 */	bne lbl_801B3534
/* 801B3510 001B0470  93 DF 00 04 */	stw r30, 4(r31)
/* 801B3514 001B0474  38 80 00 00 */	li r4, 0
/* 801B3518 001B0478  38 00 00 01 */	li r0, 1
/* 801B351C 001B047C  90 9F 00 08 */	stw r4, 8(r31)
/* 801B3520 001B0480  90 9F 00 0C */	stw r4, 0xc(r31)
/* 801B3524 001B0484  93 FE 00 04 */	stw r31, 4(r30)
/* 801B3528 001B0488  93 FE 00 00 */	stw r31, 0(r30)
/* 801B352C 001B048C  90 1E 00 08 */	stw r0, 8(r30)
/* 801B3530 001B0490  48 00 00 30 */	b lbl_801B3560
lbl_801B3534:
/* 801B3534 001B0494  93 DF 00 04 */	stw r30, 4(r31)
/* 801B3538 001B0498  38 00 00 00 */	li r0, 0
/* 801B353C 001B049C  80 9E 00 04 */	lwz r4, 4(r30)
/* 801B3540 001B04A0  90 9F 00 08 */	stw r4, 8(r31)
/* 801B3544 001B04A4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801B3548 001B04A8  80 9E 00 04 */	lwz r4, 4(r30)
/* 801B354C 001B04AC  93 E4 00 0C */	stw r31, 0xc(r4)
/* 801B3550 001B04B0  93 FE 00 04 */	stw r31, 4(r30)
/* 801B3554 001B04B4  80 9E 00 08 */	lwz r4, 8(r30)
/* 801B3558 001B04B8  38 04 00 01 */	addi r0, r4, 1
/* 801B355C 001B04BC  90 1E 00 08 */	stw r0, 8(r30)
lbl_801B3560:
/* 801B3560 001B04C0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801B3564 001B04C4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801B3568 001B04C8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801B356C 001B04CC  38 21 00 18 */	addi r1, r1, 0x18
/* 801B3570 001B04D0  7C 08 03 A6 */	mtlr r0
/* 801B3574 001B04D4  4E 80 00 20 */	blr 

.global remove__10PSUPtrListFP10PSUPtrLink
remove__10PSUPtrListFP10PSUPtrLink:
/* 801B3578 001B04D8  80 A4 00 04 */	lwz r5, 4(r4)
/* 801B357C 001B04DC  7C 05 18 50 */	subf r0, r5, r3
/* 801B3580 001B04E0  7C 00 00 34 */	cntlzw r0, r0
/* 801B3584 001B04E4  7C 05 18 40 */	cmplw r5, r3
/* 801B3588 001B04E8  54 06 D9 7E */	srwi r6, r0, 5
/* 801B358C 001B04EC  40 82 00 94 */	bne lbl_801B3620
/* 801B3590 001B04F0  80 03 00 08 */	lwz r0, 8(r3)
/* 801B3594 001B04F4  28 00 00 01 */	cmplwi r0, 1
/* 801B3598 001B04F8  40 82 00 14 */	bne lbl_801B35AC
/* 801B359C 001B04FC  38 00 00 00 */	li r0, 0
/* 801B35A0 001B0500  90 03 00 00 */	stw r0, 0(r3)
/* 801B35A4 001B0504  90 03 00 04 */	stw r0, 4(r3)
/* 801B35A8 001B0508  48 00 00 64 */	b lbl_801B360C
lbl_801B35AC:
/* 801B35AC 001B050C  80 03 00 00 */	lwz r0, 0(r3)
/* 801B35B0 001B0510  7C 04 00 40 */	cmplw r4, r0
/* 801B35B4 001B0514  40 82 00 1C */	bne lbl_801B35D0
/* 801B35B8 001B0518  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 801B35BC 001B051C  38 00 00 00 */	li r0, 0
/* 801B35C0 001B0520  90 05 00 08 */	stw r0, 8(r5)
/* 801B35C4 001B0524  80 04 00 0C */	lwz r0, 0xc(r4)
/* 801B35C8 001B0528  90 03 00 00 */	stw r0, 0(r3)
/* 801B35CC 001B052C  48 00 00 40 */	b lbl_801B360C
lbl_801B35D0:
/* 801B35D0 001B0530  80 03 00 04 */	lwz r0, 4(r3)
/* 801B35D4 001B0534  7C 04 00 40 */	cmplw r4, r0
/* 801B35D8 001B0538  40 82 00 1C */	bne lbl_801B35F4
/* 801B35DC 001B053C  80 A4 00 08 */	lwz r5, 8(r4)
/* 801B35E0 001B0540  38 00 00 00 */	li r0, 0
/* 801B35E4 001B0544  90 05 00 0C */	stw r0, 0xc(r5)
/* 801B35E8 001B0548  80 04 00 08 */	lwz r0, 8(r4)
/* 801B35EC 001B054C  90 03 00 04 */	stw r0, 4(r3)
/* 801B35F0 001B0550  48 00 00 1C */	b lbl_801B360C
lbl_801B35F4:
/* 801B35F4 001B0554  80 04 00 0C */	lwz r0, 0xc(r4)
/* 801B35F8 001B0558  80 A4 00 08 */	lwz r5, 8(r4)
/* 801B35FC 001B055C  90 05 00 0C */	stw r0, 0xc(r5)
/* 801B3600 001B0560  80 04 00 08 */	lwz r0, 8(r4)
/* 801B3604 001B0564  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 801B3608 001B0568  90 05 00 08 */	stw r0, 8(r5)
lbl_801B360C:
/* 801B360C 001B056C  38 00 00 00 */	li r0, 0
/* 801B3610 001B0570  90 04 00 04 */	stw r0, 4(r4)
/* 801B3614 001B0574  80 83 00 08 */	lwz r4, 8(r3)
/* 801B3618 001B0578  38 04 FF FF */	addi r0, r4, -1
/* 801B361C 001B057C  90 03 00 08 */	stw r0, 8(r3)
lbl_801B3620:
/* 801B3620 001B0580  7C C3 33 78 */	mr r3, r6
/* 801B3624 001B0584  4E 80 00 20 */	blr 
