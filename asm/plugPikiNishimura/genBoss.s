.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global makeObjectBoss__Fv
makeObjectBoss__Fv:
/* 8014D2D0 0014A230  7C 08 02 A6 */	mflr r0
/* 8014D2D4 0014A234  38 60 00 2C */	li r3, 0x2c
/* 8014D2D8 0014A238  90 01 00 04 */	stw r0, 4(r1)
/* 8014D2DC 0014A23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014D2E0 0014A240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014D2E4 0014A244  4B EF 9D 21 */	bl alloc__6SystemFUl
/* 8014D2E8 0014A248  3B E3 00 00 */	addi r31, r3, 0
/* 8014D2EC 0014A24C  7F E3 FB 79 */	or. r3, r31, r31
/* 8014D2F0 0014A250  41 82 00 54 */	beq lbl_8014D344
/* 8014D2F4 0014A254  3C 80 80 2D */	lis r4, lbl_802CE728@ha
/* 8014D2F8 0014A258  3C A0 80 2D */	lis r5, lbl_802CE71C@ha
/* 8014D2FC 0014A25C  38 C4 E7 28 */	addi r6, r4, lbl_802CE728@l
/* 8014D300 0014A260  3C 80 62 6F */	lis r4, 0x626F7373@ha
/* 8014D304 0014A264  38 A5 E7 1C */	addi r5, r5, lbl_802CE71C@l
/* 8014D308 0014A268  38 84 73 73 */	addi r4, r4, 0x626F7373@l
/* 8014D30C 0014A26C  4B F8 D9 A9 */	bl __ct__7GenBaseFUlPcPc
/* 8014D310 0014A270  3C 60 80 2C */	lis r3, __vt__9GenObject@ha
/* 8014D314 0014A274  38 03 AB 70 */	addi r0, r3, __vt__9GenObject@l
/* 8014D318 0014A278  3C 60 80 2D */	lis r3, __vt__13GenObjectBoss@ha
/* 8014D31C 0014A27C  90 1F 00 04 */	stw r0, 4(r31)
/* 8014D320 0014A280  38 03 E7 A4 */	addi r0, r3, __vt__13GenObjectBoss@l
/* 8014D324 0014A284  90 1F 00 04 */	stw r0, 4(r31)
/* 8014D328 0014A288  38 60 00 00 */	li r3, 0
/* 8014D32C 0014A28C  38 00 FF FF */	li r0, -1
/* 8014D330 0014A290  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8014D334 0014A294  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8014D338 0014A298  90 7F 00 20 */	stw r3, 0x20(r31)
/* 8014D33C 0014A29C  90 7F 00 24 */	stw r3, 0x24(r31)
/* 8014D340 0014A2A0  90 1F 00 28 */	stw r0, 0x28(r31)
lbl_8014D344:
/* 8014D344 0014A2A4  7F E3 FB 78 */	mr r3, r31
/* 8014D348 0014A2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014D34C 0014A2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014D350 0014A2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8014D354 0014A2B4  7C 08 03 A6 */	mtlr r0
/* 8014D358 0014A2B8  4E 80 00 20 */	blr 

.global initialise__13GenObjectBossFv
initialise__13GenObjectBossFv:
/* 8014D35C 0014A2BC  80 ED 30 74 */	lwz r7, factory__16GenObjectFactory@sda21(r13)
/* 8014D360 0014A2C0  80 A7 00 00 */	lwz r5, 0(r7)
/* 8014D364 0014A2C4  80 07 00 04 */	lwz r0, 4(r7)
/* 8014D368 0014A2C8  7C 05 00 00 */	cmpw r5, r0
/* 8014D36C 0014A2CC  4C 80 00 20 */	bgelr 
/* 8014D370 0014A2D0  3C 80 62 6F */	lis r4, 0x626F7373@ha
/* 8014D374 0014A2D4  80 67 00 08 */	lwz r3, 8(r7)
/* 8014D378 0014A2D8  38 84 73 73 */	addi r4, r4, 0x626F7373@l
/* 8014D37C 0014A2DC  54 A0 20 36 */	slwi r0, r5, 4
/* 8014D380 0014A2E0  7C 83 01 2E */	stwx r4, r3, r0
/* 8014D384 0014A2E4  3C 80 80 15 */	lis r4, makeObjectBoss__Fv@ha
/* 8014D388 0014A2E8  3C 60 80 2D */	lis r3, lbl_802CE734@ha
/* 8014D38C 0014A2EC  80 07 00 00 */	lwz r0, 0(r7)
/* 8014D390 0014A2F0  38 C4 D2 D0 */	addi r6, r4, makeObjectBoss__Fv@l
/* 8014D394 0014A2F4  80 87 00 08 */	lwz r4, 8(r7)
/* 8014D398 0014A2F8  38 A3 E7 34 */	addi r5, r3, lbl_802CE734@l
/* 8014D39C 0014A2FC  54 00 20 36 */	slwi r0, r0, 4
/* 8014D3A0 0014A300  7C 64 02 14 */	add r3, r4, r0
/* 8014D3A4 0014A304  90 C3 00 04 */	stw r6, 4(r3)
/* 8014D3A8 0014A308  38 80 00 02 */	li r4, 2
/* 8014D3AC 0014A30C  80 07 00 00 */	lwz r0, 0(r7)
/* 8014D3B0 0014A310  80 67 00 08 */	lwz r3, 8(r7)
/* 8014D3B4 0014A314  54 00 20 36 */	slwi r0, r0, 4
/* 8014D3B8 0014A318  7C 63 02 14 */	add r3, r3, r0
/* 8014D3BC 0014A31C  90 A3 00 08 */	stw r5, 8(r3)
/* 8014D3C0 0014A320  80 07 00 00 */	lwz r0, 0(r7)
/* 8014D3C4 0014A324  80 67 00 08 */	lwz r3, 8(r7)
/* 8014D3C8 0014A328  54 00 20 36 */	slwi r0, r0, 4
/* 8014D3CC 0014A32C  7C 63 02 14 */	add r3, r3, r0
/* 8014D3D0 0014A330  90 83 00 0C */	stw r4, 0xc(r3)
/* 8014D3D4 0014A334  80 67 00 00 */	lwz r3, 0(r7)
/* 8014D3D8 0014A338  38 03 00 01 */	addi r0, r3, 1
/* 8014D3DC 0014A33C  90 07 00 00 */	stw r0, 0(r7)
/* 8014D3E0 0014A340  4E 80 00 20 */	blr 

.global doRead__13GenObjectBossFR18RandomAccessStream
doRead__13GenObjectBossFR18RandomAccessStream:
/* 8014D3E4 0014A344  7C 08 02 A6 */	mflr r0
/* 8014D3E8 0014A348  90 01 00 04 */	stw r0, 4(r1)
/* 8014D3EC 0014A34C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8014D3F0 0014A350  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8014D3F4 0014A354  3B E4 00 00 */	addi r31, r4, 0
/* 8014D3F8 0014A358  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8014D3FC 0014A35C  7C 7E 1B 78 */	mr r30, r3
/* 8014D400 0014A360  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8014D404 0014A364  3C 03 89 D0 */	addis r0, r3, 0x89d0
/* 8014D408 0014A368  28 00 2E 30 */	cmplwi r0, 0x2e30
/* 8014D40C 0014A36C  40 82 00 20 */	bne lbl_8014D42C
/* 8014D410 0014A370  7F E3 FB 78 */	mr r3, r31
/* 8014D414 0014A374  81 9F 00 04 */	lwz r12, 4(r31)
/* 8014D418 0014A378  81 8C 00 08 */	lwz r12, 8(r12)
/* 8014D41C 0014A37C  7D 88 03 A6 */	mtlr r12
/* 8014D420 0014A380  4E 80 00 21 */	blrl 
/* 8014D424 0014A384  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8014D428 0014A388  48 00 00 90 */	b lbl_8014D4B8
lbl_8014D42C:
/* 8014D42C 0014A38C  28 03 00 02 */	cmplwi r3, 2
/* 8014D430 0014A390  40 80 00 7C */	bge lbl_8014D4AC
/* 8014D434 0014A394  7F E3 FB 78 */	mr r3, r31
/* 8014D438 0014A398  81 9F 00 04 */	lwz r12, 4(r31)
/* 8014D43C 0014A39C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8014D440 0014A3A0  7D 88 03 A6 */	mtlr r12
/* 8014D444 0014A3A4  4E 80 00 21 */	blrl 
/* 8014D448 0014A3A8  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8014D44C 0014A3AC  7F E3 FB 78 */	mr r3, r31
/* 8014D450 0014A3B0  81 9F 00 04 */	lwz r12, 4(r31)
/* 8014D454 0014A3B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8014D458 0014A3B8  7D 88 03 A6 */	mtlr r12
/* 8014D45C 0014A3BC  4E 80 00 21 */	blrl 
/* 8014D460 0014A3C0  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8014D464 0014A3C4  7F E3 FB 78 */	mr r3, r31
/* 8014D468 0014A3C8  81 9F 00 04 */	lwz r12, 4(r31)
/* 8014D46C 0014A3CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8014D470 0014A3D0  7D 88 03 A6 */	mtlr r12
/* 8014D474 0014A3D4  4E 80 00 21 */	blrl 
/* 8014D478 0014A3D8  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8014D47C 0014A3DC  7F E3 FB 78 */	mr r3, r31
/* 8014D480 0014A3E0  81 9F 00 04 */	lwz r12, 4(r31)
/* 8014D484 0014A3E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8014D488 0014A3E8  7D 88 03 A6 */	mtlr r12
/* 8014D48C 0014A3EC  4E 80 00 21 */	blrl 
/* 8014D490 0014A3F0  90 7E 00 24 */	stw r3, 0x24(r30)
/* 8014D494 0014A3F4  38 61 00 10 */	addi r3, r1, 0x10
/* 8014D498 0014A3F8  4B EF 69 C5 */	bl __ct__4ID32Fv
/* 8014D49C 0014A3FC  38 61 00 10 */	addi r3, r1, 0x10
/* 8014D4A0 0014A400  38 9F 00 00 */	addi r4, r31, 0
/* 8014D4A4 0014A404  4B EF 6B F9 */	bl read__4ID32FR18RandomAccessStream
/* 8014D4A8 0014A408  48 00 00 10 */	b lbl_8014D4B8
lbl_8014D4AC:
/* 8014D4AC 0014A40C  38 7E 00 00 */	addi r3, r30, 0
/* 8014D4B0 0014A410  38 9F 00 00 */	addi r4, r31, 0
/* 8014D4B4 0014A414  48 00 00 7D */	bl readParameters__13GenObjectBossFR18RandomAccessStream
lbl_8014D4B8:
/* 8014D4B8 0014A418  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8014D4BC 0014A41C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8014D4C0 0014A420  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8014D4C4 0014A424  38 21 00 28 */	addi r1, r1, 0x28
/* 8014D4C8 0014A428  7C 08 03 A6 */	mtlr r0
/* 8014D4CC 0014A42C  4E 80 00 20 */	blr 

.global doWrite__13GenObjectBossFR18RandomAccessStream
doWrite__13GenObjectBossFR18RandomAccessStream:
/* 8014D4D0 0014A430  7C 08 02 A6 */	mflr r0
/* 8014D4D4 0014A434  90 01 00 04 */	stw r0, 4(r1)
/* 8014D4D8 0014A438  94 21 FF F8 */	stwu r1, -8(r1)
/* 8014D4DC 0014A43C  48 00 00 D5 */	bl writeParameters__13GenObjectBossFR18RandomAccessStream
/* 8014D4E0 0014A440  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8014D4E4 0014A444  38 21 00 08 */	addi r1, r1, 8
/* 8014D4E8 0014A448  7C 08 03 A6 */	mtlr r0
/* 8014D4EC 0014A44C  4E 80 00 20 */	blr 

.global ramLoadParameters__13GenObjectBossFR18RandomAccessStream
ramLoadParameters__13GenObjectBossFR18RandomAccessStream:
/* 8014D4F0 0014A450  7C 08 02 A6 */	mflr r0
/* 8014D4F4 0014A454  90 01 00 04 */	stw r0, 4(r1)
/* 8014D4F8 0014A458  94 21 FF F8 */	stwu r1, -8(r1)
/* 8014D4FC 0014A45C  48 00 00 35 */	bl readParameters__13GenObjectBossFR18RandomAccessStream
/* 8014D500 0014A460  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8014D504 0014A464  38 21 00 08 */	addi r1, r1, 8
/* 8014D508 0014A468  7C 08 03 A6 */	mtlr r0
/* 8014D50C 0014A46C  4E 80 00 20 */	blr 

.global ramSaveParameters__13GenObjectBossFR18RandomAccessStream
ramSaveParameters__13GenObjectBossFR18RandomAccessStream:
/* 8014D510 0014A470  7C 08 02 A6 */	mflr r0
/* 8014D514 0014A474  90 01 00 04 */	stw r0, 4(r1)
/* 8014D518 0014A478  94 21 FF F8 */	stwu r1, -8(r1)
/* 8014D51C 0014A47C  48 00 00 95 */	bl writeParameters__13GenObjectBossFR18RandomAccessStream
/* 8014D520 0014A480  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8014D524 0014A484  38 21 00 08 */	addi r1, r1, 8
/* 8014D528 0014A488  7C 08 03 A6 */	mtlr r0
/* 8014D52C 0014A48C  4E 80 00 20 */	blr 

.global readParameters__13GenObjectBossFR18RandomAccessStream
readParameters__13GenObjectBossFR18RandomAccessStream:
/* 8014D530 0014A490  7C 08 02 A6 */	mflr r0
/* 8014D534 0014A494  90 01 00 04 */	stw r0, 4(r1)
/* 8014D538 0014A498  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014D53C 0014A49C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014D540 0014A4A0  3B E3 00 00 */	addi r31, r3, 0
/* 8014D544 0014A4A4  38 64 00 00 */	addi r3, r4, 0
/* 8014D548 0014A4A8  81 84 00 04 */	lwz r12, 4(r4)
/* 8014D54C 0014A4AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8014D550 0014A4B0  7D 88 03 A6 */	mtlr r12
/* 8014D554 0014A4B4  4E 80 00 21 */	blrl 
/* 8014D558 0014A4B8  90 61 00 10 */	stw r3, 0x10(r1)
/* 8014D55C 0014A4BC  88 01 00 13 */	lbz r0, 0x13(r1)
/* 8014D560 0014A4C0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8014D564 0014A4C4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8014D568 0014A4C8  88 01 00 13 */	lbz r0, 0x13(r1)
/* 8014D56C 0014A4CC  54 00 E7 BE */	rlwinm r0, r0, 0x1c, 0x1e, 0x1f
/* 8014D570 0014A4D0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8014D574 0014A4D4  88 01 00 13 */	lbz r0, 0x13(r1)
/* 8014D578 0014A4D8  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8014D57C 0014A4DC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8014D580 0014A4E0  88 01 00 12 */	lbz r0, 0x12(r1)
/* 8014D584 0014A4E4  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8014D588 0014A4E8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8014D58C 0014A4EC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8014D590 0014A4F0  54 03 A3 3E */	srwi r3, r0, 0xc
/* 8014D594 0014A4F4  38 03 FF FF */	addi r0, r3, -1
/* 8014D598 0014A4F8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8014D59C 0014A4FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014D5A0 0014A500  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014D5A4 0014A504  38 21 00 20 */	addi r1, r1, 0x20
/* 8014D5A8 0014A508  7C 08 03 A6 */	mtlr r0
/* 8014D5AC 0014A50C  4E 80 00 20 */	blr 

.global writeParameters__13GenObjectBossFR18RandomAccessStream
writeParameters__13GenObjectBossFR18RandomAccessStream:
/* 8014D5B0 0014A510  7C 08 02 A6 */	mflr r0
/* 8014D5B4 0014A514  90 01 00 04 */	stw r0, 4(r1)
/* 8014D5B8 0014A518  38 00 00 00 */	li r0, 0
/* 8014D5BC 0014A51C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8014D5C0 0014A520  90 01 00 10 */	stw r0, 0x10(r1)
/* 8014D5C4 0014A524  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8014D5C8 0014A528  88 01 00 13 */	lbz r0, 0x13(r1)
/* 8014D5CC 0014A52C  50 A0 07 3E */	rlwimi r0, r5, 0, 0x1c, 0x1f
/* 8014D5D0 0014A530  98 01 00 13 */	stb r0, 0x13(r1)
/* 8014D5D4 0014A534  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8014D5D8 0014A538  88 01 00 13 */	lbz r0, 0x13(r1)
/* 8014D5DC 0014A53C  50 A0 26 B6 */	rlwimi r0, r5, 4, 0x1a, 0x1b
/* 8014D5E0 0014A540  98 01 00 13 */	stb r0, 0x13(r1)
/* 8014D5E4 0014A544  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 8014D5E8 0014A548  88 01 00 13 */	lbz r0, 0x13(r1)
/* 8014D5EC 0014A54C  50 A0 36 32 */	rlwimi r0, r5, 6, 0x18, 0x19
/* 8014D5F0 0014A550  98 01 00 13 */	stb r0, 0x13(r1)
/* 8014D5F4 0014A554  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 8014D5F8 0014A558  88 01 00 12 */	lbz r0, 0x12(r1)
/* 8014D5FC 0014A55C  50 A0 07 3E */	rlwimi r0, r5, 0, 0x1c, 0x1f
/* 8014D600 0014A560  98 01 00 12 */	stb r0, 0x12(r1)
/* 8014D604 0014A564  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8014D608 0014A568  7C 83 23 78 */	mr r3, r4
/* 8014D60C 0014A56C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8014D610 0014A570  38 85 00 01 */	addi r4, r5, 1
/* 8014D614 0014A574  50 80 60 26 */	rlwimi r0, r4, 0xc, 0, 0x13
/* 8014D618 0014A578  90 01 00 10 */	stw r0, 0x10(r1)
/* 8014D61C 0014A57C  81 83 00 04 */	lwz r12, 4(r3)
/* 8014D620 0014A580  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8014D624 0014A584  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8014D628 0014A588  7D 88 03 A6 */	mtlr r12
/* 8014D62C 0014A58C  4E 80 00 21 */	blrl 
/* 8014D630 0014A590  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8014D634 0014A594  38 21 00 18 */	addi r1, r1, 0x18
/* 8014D638 0014A598  7C 08 03 A6 */	mtlr r0
/* 8014D63C 0014A59C  4E 80 00 20 */	blr 

.global updateUseList__13GenObjectBossFP9Generatori
updateUseList__13GenObjectBossFP9Generatori:
/* 8014D640 0014A5A0  7C 08 02 A6 */	mflr r0
/* 8014D644 0014A5A4  90 01 00 04 */	stw r0, 4(r1)
/* 8014D648 0014A5A8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8014D64C 0014A5AC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8014D650 0014A5B0  2C 00 00 00 */	cmpwi r0, 0
/* 8014D654 0014A5B4  40 82 00 18 */	bne lbl_8014D66C
/* 8014D658 0014A5B8  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D65C 0014A5BC  38 80 00 00 */	li r4, 0
/* 8014D660 0014A5C0  38 A0 00 01 */	li r5, 1
/* 8014D664 0014A5C4  48 00 2D 25 */	bl addUseCount__7BossMgrFii
/* 8014D668 0014A5C8  48 00 01 18 */	b lbl_8014D780
lbl_8014D66C:
/* 8014D66C 0014A5CC  2C 00 00 01 */	cmpwi r0, 1
/* 8014D670 0014A5D0  40 82 00 18 */	bne lbl_8014D688
/* 8014D674 0014A5D4  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D678 0014A5D8  38 80 00 01 */	li r4, 1
/* 8014D67C 0014A5DC  38 A0 00 01 */	li r5, 1
/* 8014D680 0014A5E0  48 00 2D 09 */	bl addUseCount__7BossMgrFii
/* 8014D684 0014A5E4  48 00 00 FC */	b lbl_8014D780
lbl_8014D688:
/* 8014D688 0014A5E8  2C 00 00 02 */	cmpwi r0, 2
/* 8014D68C 0014A5EC  40 82 00 38 */	bne lbl_8014D6C4
/* 8014D690 0014A5F0  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D694 0014A5F4  38 80 00 02 */	li r4, 2
/* 8014D698 0014A5F8  38 A0 00 01 */	li r5, 1
/* 8014D69C 0014A5FC  48 00 2C ED */	bl addUseCount__7BossMgrFii
/* 8014D6A0 0014A600  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D6A4 0014A604  38 80 00 07 */	li r4, 7
/* 8014D6A8 0014A608  38 A0 00 01 */	li r5, 1
/* 8014D6AC 0014A60C  48 00 2C DD */	bl addUseCount__7BossMgrFii
/* 8014D6B0 0014A610  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D6B4 0014A614  38 80 00 08 */	li r4, 8
/* 8014D6B8 0014A618  38 A0 00 01 */	li r5, 1
/* 8014D6BC 0014A61C  48 00 2C CD */	bl addUseCount__7BossMgrFii
/* 8014D6C0 0014A620  48 00 00 C0 */	b lbl_8014D780
lbl_8014D6C4:
/* 8014D6C4 0014A624  2C 00 00 03 */	cmpwi r0, 3
/* 8014D6C8 0014A628  40 82 00 18 */	bne lbl_8014D6E0
/* 8014D6CC 0014A62C  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D6D0 0014A630  38 80 00 03 */	li r4, 3
/* 8014D6D4 0014A634  38 A0 00 01 */	li r5, 1
/* 8014D6D8 0014A638  48 00 2C B1 */	bl addUseCount__7BossMgrFii
/* 8014D6DC 0014A63C  48 00 00 A4 */	b lbl_8014D780
lbl_8014D6E0:
/* 8014D6E0 0014A640  2C 00 00 04 */	cmpwi r0, 4
/* 8014D6E4 0014A644  40 82 00 14 */	bne lbl_8014D6F8
/* 8014D6E8 0014A648  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D6EC 0014A64C  38 80 00 04 */	li r4, 4
/* 8014D6F0 0014A650  48 00 2C 99 */	bl addUseCount__7BossMgrFii
/* 8014D6F4 0014A654  48 00 00 8C */	b lbl_8014D780
lbl_8014D6F8:
/* 8014D6F8 0014A658  2C 00 00 05 */	cmpwi r0, 5
/* 8014D6FC 0014A65C  40 82 00 18 */	bne lbl_8014D714
/* 8014D700 0014A660  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D704 0014A664  38 80 00 05 */	li r4, 5
/* 8014D708 0014A668  38 A0 00 01 */	li r5, 1
/* 8014D70C 0014A66C  48 00 2C 7D */	bl addUseCount__7BossMgrFii
/* 8014D710 0014A670  48 00 00 70 */	b lbl_8014D780
lbl_8014D714:
/* 8014D714 0014A674  2C 00 00 06 */	cmpwi r0, 6
/* 8014D718 0014A678  40 82 00 18 */	bne lbl_8014D730
/* 8014D71C 0014A67C  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D720 0014A680  38 80 00 06 */	li r4, 6
/* 8014D724 0014A684  38 A0 00 01 */	li r5, 1
/* 8014D728 0014A688  48 00 2C 61 */	bl addUseCount__7BossMgrFii
/* 8014D72C 0014A68C  48 00 00 54 */	b lbl_8014D780
lbl_8014D730:
/* 8014D730 0014A690  2C 00 00 07 */	cmpwi r0, 7
/* 8014D734 0014A694  40 82 00 18 */	bne lbl_8014D74C
/* 8014D738 0014A698  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D73C 0014A69C  38 80 00 09 */	li r4, 9
/* 8014D740 0014A6A0  38 A0 00 01 */	li r5, 1
/* 8014D744 0014A6A4  48 00 2C 45 */	bl addUseCount__7BossMgrFii
/* 8014D748 0014A6A8  48 00 00 38 */	b lbl_8014D780
lbl_8014D74C:
/* 8014D74C 0014A6AC  2C 00 00 08 */	cmpwi r0, 8
/* 8014D750 0014A6B0  40 82 00 18 */	bne lbl_8014D768
/* 8014D754 0014A6B4  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D758 0014A6B8  38 80 00 0A */	li r4, 0xa
/* 8014D75C 0014A6BC  38 A0 00 01 */	li r5, 1
/* 8014D760 0014A6C0  48 00 2C 29 */	bl addUseCount__7BossMgrFii
/* 8014D764 0014A6C4  48 00 00 1C */	b lbl_8014D780
lbl_8014D768:
/* 8014D768 0014A6C8  2C 00 00 09 */	cmpwi r0, 9
/* 8014D76C 0014A6CC  40 82 00 14 */	bne lbl_8014D780
/* 8014D770 0014A6D0  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D774 0014A6D4  38 80 00 0B */	li r4, 0xb
/* 8014D778 0014A6D8  38 A0 00 01 */	li r5, 1
/* 8014D77C 0014A6DC  48 00 2C 0D */	bl addUseCount__7BossMgrFii
lbl_8014D780:
/* 8014D780 0014A6E0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8014D784 0014A6E4  38 21 00 08 */	addi r1, r1, 8
/* 8014D788 0014A6E8  7C 08 03 A6 */	mtlr r0
/* 8014D78C 0014A6EC  4E 80 00 20 */	blr 

.global birth__13GenObjectBossFR9BirthInfo
birth__13GenObjectBossFR9BirthInfo:
/* 8014D790 0014A6F0  7C 08 02 A6 */	mflr r0
/* 8014D794 0014A6F4  7C 66 1B 78 */	mr r6, r3
/* 8014D798 0014A6F8  90 01 00 04 */	stw r0, 4(r1)
/* 8014D79C 0014A6FC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8014D7A0 0014A700  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8014D7A4 0014A704  38 60 00 00 */	li r3, 0
/* 8014D7A8 0014A708  2C 00 00 00 */	cmpwi r0, 0
/* 8014D7AC 0014A70C  40 82 00 18 */	bne lbl_8014D7C4
/* 8014D7B0 0014A710  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D7B4 0014A714  38 A4 00 00 */	addi r5, r4, 0
/* 8014D7B8 0014A718  38 80 00 00 */	li r4, 0
/* 8014D7BC 0014A71C  48 00 3C 29 */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
/* 8014D7C0 0014A720  48 00 00 FC */	b lbl_8014D8BC
lbl_8014D7C4:
/* 8014D7C4 0014A724  2C 00 00 01 */	cmpwi r0, 1
/* 8014D7C8 0014A728  40 82 00 18 */	bne lbl_8014D7E0
/* 8014D7CC 0014A72C  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D7D0 0014A730  38 A4 00 00 */	addi r5, r4, 0
/* 8014D7D4 0014A734  38 80 00 01 */	li r4, 1
/* 8014D7D8 0014A738  48 00 3C 0D */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
/* 8014D7DC 0014A73C  48 00 00 E0 */	b lbl_8014D8BC
lbl_8014D7E0:
/* 8014D7E0 0014A740  2C 00 00 02 */	cmpwi r0, 2
/* 8014D7E4 0014A744  40 82 00 18 */	bne lbl_8014D7FC
/* 8014D7E8 0014A748  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D7EC 0014A74C  38 A4 00 00 */	addi r5, r4, 0
/* 8014D7F0 0014A750  38 80 00 02 */	li r4, 2
/* 8014D7F4 0014A754  48 00 3B F1 */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
/* 8014D7F8 0014A758  48 00 00 C4 */	b lbl_8014D8BC
lbl_8014D7FC:
/* 8014D7FC 0014A75C  2C 00 00 03 */	cmpwi r0, 3
/* 8014D800 0014A760  40 82 00 18 */	bne lbl_8014D818
/* 8014D804 0014A764  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D808 0014A768  38 A4 00 00 */	addi r5, r4, 0
/* 8014D80C 0014A76C  38 80 00 03 */	li r4, 3
/* 8014D810 0014A770  48 00 3B D5 */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
/* 8014D814 0014A774  48 00 00 A8 */	b lbl_8014D8BC
lbl_8014D818:
/* 8014D818 0014A778  2C 00 00 04 */	cmpwi r0, 4
/* 8014D81C 0014A77C  40 82 00 18 */	bne lbl_8014D834
/* 8014D820 0014A780  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D824 0014A784  38 A4 00 00 */	addi r5, r4, 0
/* 8014D828 0014A788  38 80 00 04 */	li r4, 4
/* 8014D82C 0014A78C  48 00 3B B9 */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
/* 8014D830 0014A790  48 00 00 8C */	b lbl_8014D8BC
lbl_8014D834:
/* 8014D834 0014A794  2C 00 00 05 */	cmpwi r0, 5
/* 8014D838 0014A798  40 82 00 18 */	bne lbl_8014D850
/* 8014D83C 0014A79C  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D840 0014A7A0  38 A4 00 00 */	addi r5, r4, 0
/* 8014D844 0014A7A4  38 80 00 05 */	li r4, 5
/* 8014D848 0014A7A8  48 00 3B 9D */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
/* 8014D84C 0014A7AC  48 00 00 70 */	b lbl_8014D8BC
lbl_8014D850:
/* 8014D850 0014A7B0  2C 00 00 06 */	cmpwi r0, 6
/* 8014D854 0014A7B4  40 82 00 18 */	bne lbl_8014D86C
/* 8014D858 0014A7B8  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D85C 0014A7BC  38 A4 00 00 */	addi r5, r4, 0
/* 8014D860 0014A7C0  38 80 00 06 */	li r4, 6
/* 8014D864 0014A7C4  48 00 3B 81 */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
/* 8014D868 0014A7C8  48 00 00 54 */	b lbl_8014D8BC
lbl_8014D86C:
/* 8014D86C 0014A7CC  2C 00 00 07 */	cmpwi r0, 7
/* 8014D870 0014A7D0  40 82 00 18 */	bne lbl_8014D888
/* 8014D874 0014A7D4  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D878 0014A7D8  38 A4 00 00 */	addi r5, r4, 0
/* 8014D87C 0014A7DC  38 80 00 07 */	li r4, 7
/* 8014D880 0014A7E0  48 00 3B 65 */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
/* 8014D884 0014A7E4  48 00 00 38 */	b lbl_8014D8BC
lbl_8014D888:
/* 8014D888 0014A7E8  2C 00 00 08 */	cmpwi r0, 8
/* 8014D88C 0014A7EC  40 82 00 18 */	bne lbl_8014D8A4
/* 8014D890 0014A7F0  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D894 0014A7F4  38 A4 00 00 */	addi r5, r4, 0
/* 8014D898 0014A7F8  38 80 00 08 */	li r4, 8
/* 8014D89C 0014A7FC  48 00 3B 49 */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
/* 8014D8A0 0014A800  48 00 00 1C */	b lbl_8014D8BC
lbl_8014D8A4:
/* 8014D8A4 0014A804  2C 00 00 09 */	cmpwi r0, 9
/* 8014D8A8 0014A808  40 82 00 14 */	bne lbl_8014D8BC
/* 8014D8AC 0014A80C  80 6D 31 68 */	lwz r3, bossMgr@sda21(r13)
/* 8014D8B0 0014A810  38 A4 00 00 */	addi r5, r4, 0
/* 8014D8B4 0014A814  38 80 00 09 */	li r4, 9
/* 8014D8B8 0014A818  48 00 3B 2D */	bl create__7BossMgrFiR9BirthInfoP13GenObjectBoss
lbl_8014D8BC:
/* 8014D8BC 0014A81C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8014D8C0 0014A820  38 21 00 08 */	addi r1, r1, 8
/* 8014D8C4 0014A824  7C 08 03 A6 */	mtlr r0
/* 8014D8C8 0014A828  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802CE710:
	.asciz "genBoss.cpp"
.balign 4
lbl_802CE71C:
	.asciz "object type"
.balign 4
lbl_802CE728:
	.4byte 0x837B8358
	.4byte 0x82F090B6
	.4byte 0x82DE0000
lbl_802CE734:
	.4byte 0x837B8358
	.4byte 0x82F094AD
	.4byte 0x90B60000
.balign 4
lbl_802CE740:
	.asciz "GenObjectBoss"
.balign 4
lbl_802CE750:
	.asciz "Parameters"
.balign 4
lbl_802CE75C:
	.4byte __RTTI__10Parameters
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
lbl_802CE768:
	.asciz "GenObject"
.balign 4
lbl_802CE774:
	.4byte __RTTI__10Parameters
	.4byte 0x00000000
	.4byte __RTTI__7GenBase
	.4byte 0x00000000
	.4byte 0x00000000
lbl_802CE788:
	.4byte __RTTI__10Parameters
	.4byte 0x00000000
	.4byte __RTTI__7GenBase
	.4byte 0x00000000
	.4byte __RTTI__9GenObject
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__13GenObjectBoss
__vt__13GenObjectBoss:
	.4byte __RTTI__13GenObjectBoss
	.4byte 0
	.4byte doWrite__13GenObjectBossFR18RandomAccessStream
	.4byte ramSaveParameters__13GenObjectBossFR18RandomAccessStream
	.4byte ramLoadParameters__13GenObjectBossFR18RandomAccessStream
	.4byte doRead__13GenObjectBossFR18RandomAccessStream
	.4byte update__7GenBaseFv
	.4byte render__7GenBaseFR8Graphics
	.4byte getLatestVersion__9GenObjectFv
	.4byte updateUseList__13GenObjectBossFP9Generatori
	.4byte init__9GenObjectFP9Generator
	.4byte update__9GenObjectFP9Generator
	.4byte render__9GenObjectFR8GraphicsP9Generator
	.4byte birth__13GenObjectBossFR9BirthInfo

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
__RTTI__10Parameters:
	.4byte lbl_802CE750
	.4byte 0
.balign 4
lbl_803E4780:
	.asciz "GenBase"
.balign 4
__RTTI__7GenBase:
	.4byte lbl_803E4780
	.4byte lbl_802CE75C
__RTTI__9GenObject:
	.4byte lbl_802CE768
	.4byte lbl_802CE774
__RTTI__13GenObjectBoss:
	.4byte lbl_802CE740
	.4byte lbl_802CE788
