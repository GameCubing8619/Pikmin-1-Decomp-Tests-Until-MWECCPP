.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.fn __ct__13UpdateContextFv, global
/* 800A5444 000A23A4  38 00 00 00 */	li r0, 0
/* 800A5448 000A23A8  90 03 00 00 */	stw r0, 0(r3)
/* 800A544C 000A23AC  38 00 FF FF */	li r0, -1
/* 800A5450 000A23B0  90 03 00 04 */	stw r0, 4(r3)
/* 800A5454 000A23B4  4E 80 00 20 */	blr 
.endfn __ct__13UpdateContextFv

.fn updatable__13UpdateContextFv, global
/* 800A5458 000A23B8  7C 08 02 A6 */	mflr r0
/* 800A545C 000A23BC  7C 64 1B 78 */	mr r4, r3
/* 800A5460 000A23C0  90 01 00 04 */	stw r0, 4(r1)
/* 800A5464 000A23C4  94 21 FF F8 */	stwu r1, -8(r1)
/* 800A5468 000A23C8  80 63 00 00 */	lwz r3, 0(r3)
/* 800A546C 000A23CC  28 03 00 00 */	cmplwi r3, 0
/* 800A5470 000A23D0  40 82 00 0C */	bne .L_800A547C
/* 800A5474 000A23D4  38 60 00 00 */	li r3, 0
/* 800A5478 000A23D8  48 00 00 1C */	b .L_800A5494
.L_800A547C:
/* 800A547C 000A23DC  48 00 00 E5 */	bl updatable__9UpdateMgrFP13UpdateContext
/* 800A5480 000A23E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A5484 000A23E4  41 82 00 0C */	beq .L_800A5490
/* 800A5488 000A23E8  38 60 00 01 */	li r3, 1
/* 800A548C 000A23EC  48 00 00 08 */	b .L_800A5494
.L_800A5490:
/* 800A5490 000A23F0  38 60 00 00 */	li r3, 0
.L_800A5494:
/* 800A5494 000A23F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A5498 000A23F8  38 21 00 08 */	addi r1, r1, 8
/* 800A549C 000A23FC  7C 08 03 A6 */	mtlr r0
/* 800A54A0 000A2400  4E 80 00 20 */	blr 
.endfn updatable__13UpdateContextFv

.fn init__13UpdateContextFP9UpdateMgr, global
/* 800A54A4 000A2404  7C 08 02 A6 */	mflr r0
/* 800A54A8 000A2408  7C 65 1B 78 */	mr r5, r3
/* 800A54AC 000A240C  90 01 00 04 */	stw r0, 4(r1)
/* 800A54B0 000A2410  94 21 FF F8 */	stwu r1, -8(r1)
/* 800A54B4 000A2414  90 83 00 00 */	stw r4, 0(r3)
/* 800A54B8 000A2418  38 64 00 00 */	addi r3, r4, 0
/* 800A54BC 000A241C  38 85 00 00 */	addi r4, r5, 0
/* 800A54C0 000A2420  48 00 01 65 */	bl addClient__9UpdateMgrFP13UpdateContext
/* 800A54C4 000A2424  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A54C8 000A2428  38 21 00 08 */	addi r1, r1, 8
/* 800A54CC 000A242C  7C 08 03 A6 */	mtlr r0
/* 800A54D0 000A2430  4E 80 00 20 */	blr 
.endfn init__13UpdateContextFP9UpdateMgr

.fn exit__13UpdateContextFv, global
/* 800A54D4 000A2434  7C 08 02 A6 */	mflr r0
/* 800A54D8 000A2438  90 01 00 04 */	stw r0, 4(r1)
/* 800A54DC 000A243C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A54E0 000A2440  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A54E4 000A2444  7C 7F 1B 78 */	mr r31, r3
/* 800A54E8 000A2448  80 63 00 00 */	lwz r3, 0(r3)
/* 800A54EC 000A244C  28 03 00 00 */	cmplwi r3, 0
/* 800A54F0 000A2450  41 82 00 14 */	beq .L_800A5504
/* 800A54F4 000A2454  7F E4 FB 78 */	mr r4, r31
/* 800A54F8 000A2458  48 00 01 BD */	bl removeClient__9UpdateMgrFP13UpdateContext
/* 800A54FC 000A245C  38 00 00 00 */	li r0, 0
/* 800A5500 000A2460  90 1F 00 00 */	stw r0, 0(r31)
.L_800A5504:
/* 800A5504 000A2464  38 00 00 00 */	li r0, 0
/* 800A5508 000A2468  98 1F 00 08 */	stb r0, 8(r31)
/* 800A550C 000A246C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A5510 000A2470  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A5514 000A2474  38 21 00 18 */	addi r1, r1, 0x18
/* 800A5518 000A2478  7C 08 03 A6 */	mtlr r0
/* 800A551C 000A247C  4E 80 00 20 */	blr 
.endfn exit__13UpdateContextFv

.fn __ct__9UpdateMgrFv, global
/* 800A5520 000A2480  38 00 00 00 */	li r0, 0
/* 800A5524 000A2484  90 03 00 08 */	stw r0, 8(r3)
/* 800A5528 000A2488  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A552C 000A248C  90 03 00 00 */	stw r0, 0(r3)
/* 800A5530 000A2490  90 03 00 04 */	stw r0, 4(r3)
/* 800A5534 000A2494  90 03 00 10 */	stw r0, 0x10(r3)
/* 800A5538 000A2498  4E 80 00 20 */	blr 
.endfn __ct__9UpdateMgrFv

.fn update__9UpdateMgrFv, global
/* 800A553C 000A249C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 800A5540 000A24A0  38 84 00 01 */	addi r4, r4, 1
/* 800A5544 000A24A4  90 83 00 10 */	stw r4, 0x10(r3)
/* 800A5548 000A24A8  80 03 00 00 */	lwz r0, 0(r3)
/* 800A554C 000A24AC  7C 04 00 00 */	cmpw r4, r0
/* 800A5550 000A24B0  4D 80 00 20 */	bltlr 
/* 800A5554 000A24B4  38 00 00 00 */	li r0, 0
/* 800A5558 000A24B8  90 03 00 10 */	stw r0, 0x10(r3)
/* 800A555C 000A24BC  4E 80 00 20 */	blr 
.endfn update__9UpdateMgrFv

.fn updatable__9UpdateMgrFP13UpdateContext, global
/* 800A5560 000A24C0  28 04 00 00 */	cmplwi r4, 0
/* 800A5564 000A24C4  40 82 00 0C */	bne .L_800A5570
/* 800A5568 000A24C8  38 60 00 00 */	li r3, 0
/* 800A556C 000A24CC  4E 80 00 20 */	blr 
.L_800A5570:
/* 800A5570 000A24D0  80 84 00 04 */	lwz r4, 4(r4)
/* 800A5574 000A24D4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800A5578 000A24D8  7C 04 00 00 */	cmpw r4, r0
/* 800A557C 000A24DC  40 82 00 0C */	bne .L_800A5588
/* 800A5580 000A24E0  38 60 00 01 */	li r3, 1
/* 800A5584 000A24E4  4E 80 00 20 */	blr 
.L_800A5588:
/* 800A5588 000A24E8  38 60 00 00 */	li r3, 0
/* 800A558C 000A24EC  4E 80 00 20 */	blr 
.endfn updatable__9UpdateMgrFP13UpdateContext

.fn create__9UpdateMgrFi, global
/* 800A5590 000A24F0  7C 08 02 A6 */	mflr r0
/* 800A5594 000A24F4  90 01 00 04 */	stw r0, 4(r1)
/* 800A5598 000A24F8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A559C 000A24FC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A55A0 000A2500  54 9F 10 3A */	slwi r31, r4, 2
/* 800A55A4 000A2504  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800A55A8 000A2508  3B C3 00 00 */	addi r30, r3, 0
/* 800A55AC 000A250C  90 83 00 00 */	stw r4, 0(r3)
/* 800A55B0 000A2510  7F E3 FB 78 */	mr r3, r31
/* 800A55B4 000A2514  4B FA 1A 51 */	bl alloc__6SystemFUl
/* 800A55B8 000A2518  90 7E 00 08 */	stw r3, 8(r30)
/* 800A55BC 000A251C  7F E3 FB 78 */	mr r3, r31
/* 800A55C0 000A2520  4B FA 1A 45 */	bl alloc__6SystemFUl
/* 800A55C4 000A2524  90 7E 00 0C */	stw r3, 0xc(r30)
/* 800A55C8 000A2528  38 80 00 00 */	li r4, 0
/* 800A55CC 000A252C  38 A4 00 00 */	addi r5, r4, 0
/* 800A55D0 000A2530  90 9E 00 04 */	stw r4, 4(r30)
/* 800A55D4 000A2534  38 C0 00 00 */	li r6, 0
/* 800A55D8 000A2538  90 9E 00 10 */	stw r4, 0x10(r30)
/* 800A55DC 000A253C  48 00 00 1C */	b .L_800A55F8
.L_800A55E0:
/* 800A55E0 000A2540  80 7E 00 08 */	lwz r3, 8(r30)
/* 800A55E4 000A2544  38 C6 00 01 */	addi r6, r6, 1
/* 800A55E8 000A2548  7C 83 29 2E */	stwx r4, r3, r5
/* 800A55EC 000A254C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800A55F0 000A2550  7C 83 29 2E */	stwx r4, r3, r5
/* 800A55F4 000A2554  38 A5 00 04 */	addi r5, r5, 4
.L_800A55F8:
/* 800A55F8 000A2558  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A55FC 000A255C  7C 06 00 00 */	cmpw r6, r0
/* 800A5600 000A2560  41 80 FF E0 */	blt .L_800A55E0
/* 800A5604 000A2564  38 00 00 00 */	li r0, 0
/* 800A5608 000A2568  90 1E 00 14 */	stw r0, 0x14(r30)
/* 800A560C 000A256C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A5610 000A2570  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A5614 000A2574  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800A5618 000A2578  38 21 00 18 */	addi r1, r1, 0x18
/* 800A561C 000A257C  7C 08 03 A6 */	mtlr r0
/* 800A5620 000A2580  4E 80 00 20 */	blr 
.endfn create__9UpdateMgrFi

.fn addClient__9UpdateMgrFP13UpdateContext, global
/* 800A5624 000A2584  80 03 00 00 */	lwz r0, 0(r3)
/* 800A5628 000A2588  38 E0 FF FF */	li r7, -1
/* 800A562C 000A258C  39 00 27 10 */	li r8, 0x2710
/* 800A5630 000A2590  2C 00 00 00 */	cmpwi r0, 0
/* 800A5634 000A2594  7C 09 03 A6 */	mtctr r0
/* 800A5638 000A2598  39 20 00 00 */	li r9, 0
/* 800A563C 000A259C  38 C0 00 00 */	li r6, 0
/* 800A5640 000A25A0  40 81 00 28 */	ble .L_800A5668
.L_800A5644:
/* 800A5644 000A25A4  80 A3 00 08 */	lwz r5, 8(r3)
/* 800A5648 000A25A8  7C 05 30 2E */	lwzx r0, r5, r6
/* 800A564C 000A25AC  7C 00 40 00 */	cmpw r0, r8
/* 800A5650 000A25B0  40 80 00 0C */	bge .L_800A565C
/* 800A5654 000A25B4  38 E9 00 00 */	addi r7, r9, 0
/* 800A5658 000A25B8  7C 08 03 78 */	mr r8, r0
.L_800A565C:
/* 800A565C 000A25BC  38 C6 00 04 */	addi r6, r6, 4
/* 800A5660 000A25C0  39 29 00 01 */	addi r9, r9, 1
/* 800A5664 000A25C4  42 00 FF E0 */	bdnz .L_800A5644
.L_800A5668:
/* 800A5668 000A25C8  2C 07 FF FF */	cmpwi r7, -1
/* 800A566C 000A25CC  4D 82 00 20 */	beqlr 
/* 800A5670 000A25D0  90 E4 00 04 */	stw r7, 4(r4)
/* 800A5674 000A25D4  54 E7 10 3A */	slwi r7, r7, 2
/* 800A5678 000A25D8  80 C3 00 08 */	lwz r6, 8(r3)
/* 800A567C 000A25DC  7C A6 38 2E */	lwzx r5, r6, r7
/* 800A5680 000A25E0  38 05 00 01 */	addi r0, r5, 1
/* 800A5684 000A25E4  7C 06 39 2E */	stwx r0, r6, r7
/* 800A5688 000A25E8  88 04 00 08 */	lbz r0, 8(r4)
/* 800A568C 000A25EC  28 00 00 00 */	cmplwi r0, 0
/* 800A5690 000A25F0  41 82 00 14 */	beq .L_800A56A4
/* 800A5694 000A25F4  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 800A5698 000A25F8  7C 85 38 2E */	lwzx r4, r5, r7
/* 800A569C 000A25FC  38 04 00 01 */	addi r0, r4, 1
/* 800A56A0 000A2600  7C 05 39 2E */	stwx r0, r5, r7
.L_800A56A4:
/* 800A56A4 000A2604  80 83 00 04 */	lwz r4, 4(r3)
/* 800A56A8 000A2608  38 04 00 01 */	addi r0, r4, 1
/* 800A56AC 000A260C  90 03 00 04 */	stw r0, 4(r3)
/* 800A56B0 000A2610  4E 80 00 20 */	blr 
.endfn addClient__9UpdateMgrFP13UpdateContext

.fn removeClient__9UpdateMgrFP13UpdateContext, global
/* 800A56B4 000A2614  80 A4 00 04 */	lwz r5, 4(r4)
/* 800A56B8 000A2618  2C 05 00 00 */	cmpwi r5, 0
/* 800A56BC 000A261C  41 80 00 0C */	blt .L_800A56C8
/* 800A56C0 000A2620  80 03 00 00 */	lwz r0, 0(r3)
/* 800A56C4 000A2624  7C 05 00 00 */	cmpw r5, r0
.L_800A56C8:
/* 800A56C8 000A2628  80 E3 00 08 */	lwz r7, 8(r3)
/* 800A56CC 000A262C  54 A6 10 3A */	slwi r6, r5, 2
/* 800A56D0 000A2630  7C A7 30 2E */	lwzx r5, r7, r6
/* 800A56D4 000A2634  38 05 FF FF */	addi r0, r5, -1
/* 800A56D8 000A2638  7C 07 31 2E */	stwx r0, r7, r6
/* 800A56DC 000A263C  88 04 00 08 */	lbz r0, 8(r4)
/* 800A56E0 000A2640  28 00 00 00 */	cmplwi r0, 0
/* 800A56E4 000A2644  41 82 00 1C */	beq .L_800A5700
/* 800A56E8 000A2648  80 04 00 04 */	lwz r0, 4(r4)
/* 800A56EC 000A264C  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 800A56F0 000A2650  54 05 10 3A */	slwi r5, r0, 2
/* 800A56F4 000A2654  7C 86 28 2E */	lwzx r4, r6, r5
/* 800A56F8 000A2658  38 04 FF FF */	addi r0, r4, -1
/* 800A56FC 000A265C  7C 06 29 2E */	stwx r0, r6, r5
.L_800A5700:
/* 800A5700 000A2660  80 83 00 04 */	lwz r4, 4(r3)
/* 800A5704 000A2664  38 04 FF FF */	addi r0, r4, -1
/* 800A5708 000A2668  90 03 00 04 */	stw r0, 4(r3)
/* 800A570C 000A266C  4E 80 00 20 */	blr 
.endfn removeClient__9UpdateMgrFP13UpdateContext

.section .sbss, "wa"
.balign 8
.obj pikiUpdateMgr, global
	.skip 0x4
.endobj pikiUpdateMgr
.obj searchUpdateMgr, global
	.skip 0x4
.endobj searchUpdateMgr
.obj pikiLookUpdateMgr, global
	.skip 0x4
.endobj pikiLookUpdateMgr
.obj pikiOptUpdateMgr, global
	.skip 0x4
.endobj pikiOptUpdateMgr
.obj tekiOptUpdateMgr, global
	.skip 0x4
.endobj tekiOptUpdateMgr
