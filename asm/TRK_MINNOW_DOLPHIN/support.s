.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global TRKSuppAccessFile
TRKSuppAccessFile:
/* 8021E21C 0021B17C  7C 08 02 A6 */	mflr r0
/* 8021E220 0021B180  90 01 00 04 */	stw r0, 4(r1)
/* 8021E224 0021B184  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8021E228 0021B188  BE A1 00 1C */	stmw r21, 0x1c(r1)
/* 8021E22C 0021B18C  7C 9B 23 79 */	or. r27, r4, r4
/* 8021E230 0021B190  3B 23 00 00 */	addi r25, r3, 0
/* 8021E234 0021B194  3A E5 00 00 */	addi r23, r5, 0
/* 8021E238 0021B198  3B 46 00 00 */	addi r26, r6, 0
/* 8021E23C 0021B19C  3A C7 00 00 */	addi r22, r7, 0
/* 8021E240 0021B1A0  3B C8 00 00 */	addi r30, r8, 0
/* 8021E244 0021B1A4  41 82 00 10 */	beq lbl_8021E254
/* 8021E248 0021B1A8  80 17 00 00 */	lwz r0, 0(r23)
/* 8021E24C 0021B1AC  28 00 00 00 */	cmplwi r0, 0
/* 8021E250 0021B1B0  40 82 00 0C */	bne lbl_8021E25C
lbl_8021E254:
/* 8021E254 0021B1B4  38 60 00 02 */	li r3, 2
/* 8021E258 0021B1B8  48 00 02 88 */	b lbl_8021E4E0
lbl_8021E25C:
/* 8021E25C 0021B1BC  38 00 00 00 */	li r0, 0
/* 8021E260 0021B1C0  98 1A 00 00 */	stb r0, 0(r26)
/* 8021E264 0021B1C4  3B 00 00 00 */	li r24, 0
/* 8021E268 0021B1C8  3B 80 00 00 */	li r28, 0
/* 8021E26C 0021B1CC  3A A0 00 00 */	li r21, 0
/* 8021E270 0021B1D0  48 00 02 40 */	b lbl_8021E4B0
lbl_8021E274:
/* 8021E274 0021B1D4  7C 1C 18 50 */	subf r0, r28, r3
/* 8021E278 0021B1D8  28 00 08 00 */	cmplwi r0, 0x800
/* 8021E27C 0021B1DC  40 81 00 0C */	ble lbl_8021E288
/* 8021E280 0021B1E0  3B E0 08 00 */	li r31, 0x800
/* 8021E284 0021B1E4  48 00 00 08 */	b lbl_8021E28C
lbl_8021E288:
/* 8021E288 0021B1E8  7C 1F 03 78 */	mr r31, r0
lbl_8021E28C:
/* 8021E28C 0021B1EC  38 61 00 0C */	addi r3, r1, 0xc
/* 8021E290 0021B1F0  38 81 00 10 */	addi r4, r1, 0x10
/* 8021E294 0021B1F4  4B FF E2 B9 */	bl TRKGetFreeBuffer
/* 8021E298 0021B1F8  7C 75 1B 79 */	or. r21, r3, r3
/* 8021E29C 0021B1FC  40 82 00 58 */	bne lbl_8021E2F4
/* 8021E2A0 0021B200  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 8021E2A4 0021B204  80 07 00 0C */	lwz r0, 0xc(r7)
/* 8021E2A8 0021B208  28 00 08 80 */	cmplwi r0, 0x880
/* 8021E2AC 0021B20C  41 80 00 0C */	blt lbl_8021E2B8
/* 8021E2B0 0021B210  38 A0 03 01 */	li r5, 0x301
/* 8021E2B4 0021B214  48 00 00 3C */	b lbl_8021E2F0
lbl_8021E2B8:
/* 8021E2B8 0021B218  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E2BC 0021B21C  41 82 00 0C */	beq lbl_8021E2C8
/* 8021E2C0 0021B220  38 C0 00 D1 */	li r6, 0xd1
/* 8021E2C4 0021B224  48 00 00 08 */	b lbl_8021E2CC
lbl_8021E2C8:
/* 8021E2C8 0021B228  38 C0 00 D0 */	li r6, 0xd0
lbl_8021E2CC:
/* 8021E2CC 0021B22C  80 87 00 0C */	lwz r4, 0xc(r7)
/* 8021E2D0 0021B230  38 A0 00 00 */	li r5, 0
/* 8021E2D4 0021B234  38 64 00 01 */	addi r3, r4, 1
/* 8021E2D8 0021B238  38 04 00 10 */	addi r0, r4, 0x10
/* 8021E2DC 0021B23C  90 67 00 0C */	stw r3, 0xc(r7)
/* 8021E2E0 0021B240  7C C7 01 AE */	stbx r6, r7, r0
/* 8021E2E4 0021B244  80 67 00 08 */	lwz r3, 8(r7)
/* 8021E2E8 0021B248  38 03 00 01 */	addi r0, r3, 1
/* 8021E2EC 0021B24C  90 07 00 08 */	stw r0, 8(r7)
lbl_8021E2F0:
/* 8021E2F0 0021B250  7C B5 2B 78 */	mr r21, r5
lbl_8021E2F4:
/* 8021E2F4 0021B254  2C 15 00 00 */	cmpwi r21, 0
/* 8021E2F8 0021B258  40 82 00 14 */	bne lbl_8021E30C
/* 8021E2FC 0021B25C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8021E300 0021B260  7F 24 CB 78 */	mr r4, r25
/* 8021E304 0021B264  4B FF E5 6D */	bl TRKAppendBuffer1_ui32
/* 8021E308 0021B268  7C 75 1B 78 */	mr r21, r3
lbl_8021E30C:
/* 8021E30C 0021B26C  2C 15 00 00 */	cmpwi r21, 0
/* 8021E310 0021B270  40 82 00 14 */	bne lbl_8021E324
/* 8021E314 0021B274  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8021E318 0021B278  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 8021E31C 0021B27C  4B FF E5 01 */	bl TRKAppendBuffer1_ui16
/* 8021E320 0021B280  7C 75 1B 78 */	mr r21, r3
lbl_8021E324:
/* 8021E324 0021B284  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E328 0021B288  40 82 00 20 */	bne lbl_8021E348
/* 8021E32C 0021B28C  2C 15 00 00 */	cmpwi r21, 0
/* 8021E330 0021B290  40 82 00 18 */	bne lbl_8021E348
/* 8021E334 0021B294  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8021E338 0021B298  38 BF 00 00 */	addi r5, r31, 0
/* 8021E33C 0021B29C  7C 9B E2 14 */	add r4, r27, r28
/* 8021E340 0021B2A0  4B FF E6 1D */	bl TRKAppendBuffer_ui8
/* 8021E344 0021B2A4  7C 75 1B 78 */	mr r21, r3
lbl_8021E348:
/* 8021E348 0021B2A8  2C 15 00 00 */	cmpwi r21, 0
/* 8021E34C 0021B2AC  40 82 01 58 */	bne lbl_8021E4A4
/* 8021E350 0021B2B0  2C 16 00 00 */	cmpwi r22, 0
/* 8021E354 0021B2B4  41 82 01 44 */	beq lbl_8021E498
/* 8021E358 0021B2B8  38 00 00 00 */	li r0, 0
/* 8021E35C 0021B2BC  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E360 0021B2C0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8021E364 0021B2C4  98 01 00 08 */	stb r0, 8(r1)
/* 8021E368 0021B2C8  41 82 00 10 */	beq lbl_8021E378
/* 8021E36C 0021B2CC  28 19 00 00 */	cmplwi r25, 0
/* 8021E370 0021B2D0  40 82 00 08 */	bne lbl_8021E378
/* 8021E374 0021B2D4  38 00 00 01 */	li r0, 1
lbl_8021E378:
/* 8021E378 0021B2D8  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E37C 0021B2DC  41 82 00 0C */	beq lbl_8021E388
/* 8021E380 0021B2E0  38 A0 00 05 */	li r5, 5
/* 8021E384 0021B2E4  48 00 00 08 */	b lbl_8021E38C
lbl_8021E388:
/* 8021E388 0021B2E8  38 A0 00 05 */	li r5, 5
lbl_8021E38C:
/* 8021E38C 0021B2EC  7C 00 00 34 */	cntlzw r0, r0
/* 8021E390 0021B2F0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8021E394 0021B2F4  54 07 D9 7E */	srwi r7, r0, 5
/* 8021E398 0021B2F8  38 81 00 14 */	addi r4, r1, 0x14
/* 8021E39C 0021B2FC  38 C0 00 03 */	li r6, 3
/* 8021E3A0 0021B300  48 00 01 55 */	bl TRKRequestSend
/* 8021E3A4 0021B304  7C 75 1B 79 */	or. r21, r3, r3
/* 8021E3A8 0021B308  40 82 00 18 */	bne lbl_8021E3C0
/* 8021E3AC 0021B30C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8021E3B0 0021B310  4B FF E2 39 */	bl TRKGetBuffer
/* 8021E3B4 0021B314  3B A3 00 00 */	addi r29, r3, 0
/* 8021E3B8 0021B318  38 80 00 02 */	li r4, 2
/* 8021E3BC 0021B31C  4B FF E3 01 */	bl TRKSetBufferPosition
lbl_8021E3C0:
/* 8021E3C0 0021B320  2C 15 00 00 */	cmpwi r21, 0
/* 8021E3C4 0021B324  40 82 00 14 */	bne lbl_8021E3D8
/* 8021E3C8 0021B328  38 7D 00 00 */	addi r3, r29, 0
/* 8021E3CC 0021B32C  38 81 00 08 */	addi r4, r1, 8
/* 8021E3D0 0021B330  4B FF E6 71 */	bl TRKReadBuffer1_ui8
/* 8021E3D4 0021B334  7C 75 1B 78 */	mr r21, r3
lbl_8021E3D8:
/* 8021E3D8 0021B338  2C 15 00 00 */	cmpwi r21, 0
/* 8021E3DC 0021B33C  40 82 00 14 */	bne lbl_8021E3F0
/* 8021E3E0 0021B340  38 7D 00 00 */	addi r3, r29, 0
/* 8021E3E4 0021B344  38 81 00 0A */	addi r4, r1, 0xa
/* 8021E3E8 0021B348  4B FF E6 7D */	bl TRKReadBuffer1_ui16
/* 8021E3EC 0021B34C  7C 75 1B 78 */	mr r21, r3
lbl_8021E3F0:
/* 8021E3F0 0021B350  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E3F4 0021B354  41 82 00 58 */	beq lbl_8021E44C
/* 8021E3F8 0021B358  2C 15 00 00 */	cmpwi r21, 0
/* 8021E3FC 0021B35C  40 82 00 50 */	bne lbl_8021E44C
/* 8021E400 0021B360  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8021E404 0021B364  80 9D 00 08 */	lwz r4, 8(r29)
/* 8021E408 0021B368  38 03 00 05 */	addi r0, r3, 5
/* 8021E40C 0021B36C  7C 04 00 40 */	cmplw r4, r0
/* 8021E410 0021B370  41 82 00 20 */	beq lbl_8021E430
/* 8021E414 0021B374  88 01 00 08 */	lbz r0, 8(r1)
/* 8021E418 0021B378  38 64 FF FB */	addi r3, r4, -5
/* 8021E41C 0021B37C  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8021E420 0021B380  28 00 00 00 */	cmplwi r0, 0
/* 8021E424 0021B384  40 82 00 0C */	bne lbl_8021E430
/* 8021E428 0021B388  38 00 00 01 */	li r0, 1
/* 8021E42C 0021B38C  98 01 00 08 */	stb r0, 8(r1)
lbl_8021E430:
/* 8021E430 0021B390  A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 8021E434 0021B394  7C 05 F8 40 */	cmplw r5, r31
/* 8021E438 0021B398  41 81 00 14 */	bgt lbl_8021E44C
/* 8021E43C 0021B39C  38 7D 00 00 */	addi r3, r29, 0
/* 8021E440 0021B3A0  7C 9B E2 14 */	add r4, r27, r28
/* 8021E444 0021B3A4  4B FF E7 E1 */	bl TRKReadBuffer_ui8
/* 8021E448 0021B3A8  7C 75 1B 78 */	mr r21, r3
lbl_8021E44C:
/* 8021E44C 0021B3AC  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8021E450 0021B3B0  7C 03 F8 40 */	cmplw r3, r31
/* 8021E454 0021B3B4  41 82 00 30 */	beq lbl_8021E484
/* 8021E458 0021B3B8  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E45C 0021B3BC  41 82 00 0C */	beq lbl_8021E468
/* 8021E460 0021B3C0  7C 03 F8 40 */	cmplw r3, r31
/* 8021E464 0021B3C4  41 80 00 18 */	blt lbl_8021E47C
lbl_8021E468:
/* 8021E468 0021B3C8  88 01 00 08 */	lbz r0, 8(r1)
/* 8021E46C 0021B3CC  28 00 00 00 */	cmplwi r0, 0
/* 8021E470 0021B3D0  40 82 00 0C */	bne lbl_8021E47C
/* 8021E474 0021B3D4  38 00 00 01 */	li r0, 1
/* 8021E478 0021B3D8  98 01 00 08 */	stb r0, 8(r1)
lbl_8021E47C:
/* 8021E47C 0021B3DC  3B E3 00 00 */	addi r31, r3, 0
/* 8021E480 0021B3E0  3B 00 00 01 */	li r24, 1
lbl_8021E484:
/* 8021E484 0021B3E4  88 01 00 08 */	lbz r0, 8(r1)
/* 8021E488 0021B3E8  98 1A 00 00 */	stb r0, 0(r26)
/* 8021E48C 0021B3EC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8021E490 0021B3F0  4B FF E1 85 */	bl TRKReleaseBuffer
/* 8021E494 0021B3F4  48 00 00 10 */	b lbl_8021E4A4
lbl_8021E498:
/* 8021E498 0021B3F8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8021E49C 0021B3FC  4B FF E0 09 */	bl TRKMessageSend
/* 8021E4A0 0021B400  7C 75 1B 78 */	mr r21, r3
lbl_8021E4A4:
/* 8021E4A4 0021B404  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8021E4A8 0021B408  4B FF E1 6D */	bl TRKReleaseBuffer
/* 8021E4AC 0021B40C  7F 9C FA 14 */	add r28, r28, r31
lbl_8021E4B0:
/* 8021E4B0 0021B410  2C 18 00 00 */	cmpwi r24, 0
/* 8021E4B4 0021B414  40 82 00 24 */	bne lbl_8021E4D8
/* 8021E4B8 0021B418  80 77 00 00 */	lwz r3, 0(r23)
/* 8021E4BC 0021B41C  7C 1C 18 40 */	cmplw r28, r3
/* 8021E4C0 0021B420  40 80 00 18 */	bge lbl_8021E4D8
/* 8021E4C4 0021B424  2C 15 00 00 */	cmpwi r21, 0
/* 8021E4C8 0021B428  40 82 00 10 */	bne lbl_8021E4D8
/* 8021E4CC 0021B42C  88 1A 00 00 */	lbz r0, 0(r26)
/* 8021E4D0 0021B430  28 00 00 00 */	cmplwi r0, 0
/* 8021E4D4 0021B434  41 82 FD A0 */	beq lbl_8021E274
lbl_8021E4D8:
/* 8021E4D8 0021B438  93 97 00 00 */	stw r28, 0(r23)
/* 8021E4DC 0021B43C  7E A3 AB 78 */	mr r3, r21
lbl_8021E4E0:
/* 8021E4E0 0021B440  BA A1 00 1C */	lmw r21, 0x1c(r1)
/* 8021E4E4 0021B444  38 21 00 48 */	addi r1, r1, 0x48
/* 8021E4E8 0021B448  80 01 00 04 */	lwz r0, 4(r1)
/* 8021E4EC 0021B44C  7C 08 03 A6 */	mtlr r0
/* 8021E4F0 0021B450  4E 80 00 20 */	blr 

.global TRKRequestSend
TRKRequestSend:
/* 8021E4F4 0021B454  7C 08 02 A6 */	mflr r0
/* 8021E4F8 0021B458  90 01 00 04 */	stw r0, 4(r1)
/* 8021E4FC 0021B45C  38 00 FF FF */	li r0, -1
/* 8021E500 0021B460  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8021E504 0021B464  BE C1 00 10 */	stmw r22, 0x10(r1)
/* 8021E508 0021B468  3A E4 00 00 */	addi r23, r4, 0
/* 8021E50C 0021B46C  3C 80 04 C5 */	lis r4, 0x04C4B3EC@ha
/* 8021E510 0021B470  3B 66 00 01 */	addi r27, r6, 1
/* 8021E514 0021B474  3A C3 00 00 */	addi r22, r3, 0
/* 8021E518 0021B478  3B E4 B3 EC */	addi r31, r4, 0x04C4B3EC@l
/* 8021E51C 0021B47C  3B 05 00 00 */	addi r24, r5, 0
/* 8021E520 0021B480  3B 27 00 00 */	addi r25, r7, 0
/* 8021E524 0021B484  3B C0 00 00 */	li r30, 0
/* 8021E528 0021B488  3B 40 00 01 */	li r26, 1
/* 8021E52C 0021B48C  90 17 00 00 */	stw r0, 0(r23)
/* 8021E530 0021B490  48 00 01 24 */	b lbl_8021E654
lbl_8021E534:
/* 8021E534 0021B494  7E C3 B3 78 */	mr r3, r22
/* 8021E538 0021B498  4B FF DF 6D */	bl TRKMessageSend
/* 8021E53C 0021B49C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8021E540 0021B4A0  40 82 01 10 */	bne lbl_8021E650
/* 8021E544 0021B4A4  2C 19 00 00 */	cmpwi r25, 0
/* 8021E548 0021B4A8  41 82 00 08 */	beq lbl_8021E550
/* 8021E54C 0021B4AC  3B 80 00 00 */	li r28, 0
lbl_8021E550:
/* 8021E550 0021B4B0  4B FF E7 C5 */	bl TRKTestForPacket
/* 8021E554 0021B4B4  90 77 00 00 */	stw r3, 0(r23)
/* 8021E558 0021B4B8  80 77 00 00 */	lwz r3, 0(r23)
/* 8021E55C 0021B4BC  2C 03 FF FF */	cmpwi r3, -1
/* 8021E560 0021B4C0  40 82 00 18 */	bne lbl_8021E578
/* 8021E564 0021B4C4  2C 19 00 00 */	cmpwi r25, 0
/* 8021E568 0021B4C8  41 82 FF E8 */	beq lbl_8021E550
/* 8021E56C 0021B4CC  3B 9C 00 01 */	addi r28, r28, 1
/* 8021E570 0021B4D0  7C 1C F8 40 */	cmplw r28, r31
/* 8021E574 0021B4D4  41 80 FF DC */	blt lbl_8021E550
lbl_8021E578:
/* 8021E578 0021B4D8  2C 03 FF FF */	cmpwi r3, -1
/* 8021E57C 0021B4DC  41 82 00 4C */	beq lbl_8021E5C8
/* 8021E580 0021B4E0  3B 40 00 00 */	li r26, 0
/* 8021E584 0021B4E4  4B FF E0 65 */	bl TRKGetBuffer
/* 8021E588 0021B4E8  3B A3 00 00 */	addi r29, r3, 0
/* 8021E58C 0021B4EC  38 80 00 00 */	li r4, 0
/* 8021E590 0021B4F0  4B FF E1 2D */	bl TRKSetBufferPosition
/* 8021E594 0021B4F4  38 7D 00 00 */	addi r3, r29, 0
/* 8021E598 0021B4F8  38 81 00 08 */	addi r4, r1, 8
/* 8021E59C 0021B4FC  4B FF E4 A5 */	bl TRKReadBuffer1_ui8
/* 8021E5A0 0021B500  7C 7E 1B 79 */	or. r30, r3, r3
/* 8021E5A4 0021B504  40 82 00 24 */	bne lbl_8021E5C8
/* 8021E5A8 0021B508  88 01 00 08 */	lbz r0, 8(r1)
/* 8021E5AC 0021B50C  28 00 00 80 */	cmplwi r0, 0x80
/* 8021E5B0 0021B510  40 80 00 18 */	bge lbl_8021E5C8
/* 8021E5B4 0021B514  80 77 00 00 */	lwz r3, 0(r23)
/* 8021E5B8 0021B518  4B FF E8 A9 */	bl TRKProcessInput
/* 8021E5BC 0021B51C  38 00 FF FF */	li r0, -1
/* 8021E5C0 0021B520  90 17 00 00 */	stw r0, 0(r23)
/* 8021E5C4 0021B524  4B FF FF 8C */	b lbl_8021E550
lbl_8021E5C8:
/* 8021E5C8 0021B528  80 17 00 00 */	lwz r0, 0(r23)
/* 8021E5CC 0021B52C  2C 00 FF FF */	cmpwi r0, -1
/* 8021E5D0 0021B530  41 82 00 80 */	beq lbl_8021E650
/* 8021E5D4 0021B534  80 1D 00 08 */	lwz r0, 8(r29)
/* 8021E5D8 0021B538  7C 00 C0 40 */	cmplw r0, r24
/* 8021E5DC 0021B53C  40 80 00 08 */	bge lbl_8021E5E4
/* 8021E5E0 0021B540  3B 40 00 01 */	li r26, 1
lbl_8021E5E4:
/* 8021E5E4 0021B544  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E5E8 0021B548  40 82 00 1C */	bne lbl_8021E604
/* 8021E5EC 0021B54C  2C 1A 00 00 */	cmpwi r26, 0
/* 8021E5F0 0021B550  40 82 00 14 */	bne lbl_8021E604
/* 8021E5F4 0021B554  38 7D 00 00 */	addi r3, r29, 0
/* 8021E5F8 0021B558  38 81 00 09 */	addi r4, r1, 9
/* 8021E5FC 0021B55C  4B FF E4 45 */	bl TRKReadBuffer1_ui8
/* 8021E600 0021B560  7C 7E 1B 78 */	mr r30, r3
lbl_8021E604:
/* 8021E604 0021B564  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E608 0021B568  40 82 00 28 */	bne lbl_8021E630
/* 8021E60C 0021B56C  2C 1A 00 00 */	cmpwi r26, 0
/* 8021E610 0021B570  40 82 00 20 */	bne lbl_8021E630
/* 8021E614 0021B574  88 01 00 08 */	lbz r0, 8(r1)
/* 8021E618 0021B578  28 00 00 80 */	cmplwi r0, 0x80
/* 8021E61C 0021B57C  40 82 00 10 */	bne lbl_8021E62C
/* 8021E620 0021B580  88 01 00 09 */	lbz r0, 9(r1)
/* 8021E624 0021B584  28 00 00 00 */	cmplwi r0, 0
/* 8021E628 0021B588  41 82 00 08 */	beq lbl_8021E630
lbl_8021E62C:
/* 8021E62C 0021B58C  3B 40 00 01 */	li r26, 1
lbl_8021E630:
/* 8021E630 0021B590  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E634 0021B594  40 82 00 0C */	bne lbl_8021E640
/* 8021E638 0021B598  2C 1A 00 00 */	cmpwi r26, 0
/* 8021E63C 0021B59C  41 82 00 14 */	beq lbl_8021E650
lbl_8021E640:
/* 8021E640 0021B5A0  80 77 00 00 */	lwz r3, 0(r23)
/* 8021E644 0021B5A4  4B FF DF D1 */	bl TRKReleaseBuffer
/* 8021E648 0021B5A8  38 00 FF FF */	li r0, -1
/* 8021E64C 0021B5AC  90 17 00 00 */	stw r0, 0(r23)
lbl_8021E650:
/* 8021E650 0021B5B0  3B 7B FF FF */	addi r27, r27, -1
lbl_8021E654:
/* 8021E654 0021B5B4  2C 1B 00 00 */	cmpwi r27, 0
/* 8021E658 0021B5B8  41 82 00 18 */	beq lbl_8021E670
/* 8021E65C 0021B5BC  80 17 00 00 */	lwz r0, 0(r23)
/* 8021E660 0021B5C0  2C 00 FF FF */	cmpwi r0, -1
/* 8021E664 0021B5C4  40 82 00 0C */	bne lbl_8021E670
/* 8021E668 0021B5C8  2C 1E 00 00 */	cmpwi r30, 0
/* 8021E66C 0021B5CC  41 82 FE C8 */	beq lbl_8021E534
lbl_8021E670:
/* 8021E670 0021B5D0  80 17 00 00 */	lwz r0, 0(r23)
/* 8021E674 0021B5D4  2C 00 FF FF */	cmpwi r0, -1
/* 8021E678 0021B5D8  40 82 00 08 */	bne lbl_8021E680
/* 8021E67C 0021B5DC  3B C0 08 00 */	li r30, 0x800
lbl_8021E680:
/* 8021E680 0021B5E0  7F C3 F3 78 */	mr r3, r30
/* 8021E684 0021B5E4  BA C1 00 10 */	lmw r22, 0x10(r1)
/* 8021E688 0021B5E8  38 21 00 38 */	addi r1, r1, 0x38
/* 8021E68C 0021B5EC  80 01 00 04 */	lwz r0, 4(r1)
/* 8021E690 0021B5F0  7C 08 03 A6 */	mtlr r0
/* 8021E694 0021B5F4  4E 80 00 20 */	blr 
