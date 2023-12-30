.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.fn __ct__9LightPoolFv, global
/* 80073164 000700C4  7C 08 02 A6 */	mflr r0
/* 80073168 000700C8  3C 80 80 22 */	lis r4, __vt__5ANode@ha
/* 8007316C 000700CC  90 01 00 04 */	stw r0, 4(r1)
/* 80073170 000700D0  38 04 73 8C */	addi r0, r4, __vt__5ANode@l
/* 80073174 000700D4  38 8D 9A 74 */	addi r4, r13, lbl_803DE794@sda21
/* 80073178 000700D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007317C 000700DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80073180 000700E0  3B E0 00 00 */	li r31, 0
/* 80073184 000700E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80073188 000700E8  3B C3 00 00 */	addi r30, r3, 0
/* 8007318C 000700EC  3C 60 80 22 */	lis r3, __vt__8CoreNode@ha
/* 80073190 000700F0  90 1E 00 00 */	stw r0, 0(r30)
/* 80073194 000700F4  38 03 73 7C */	addi r0, r3, __vt__8CoreNode@l
/* 80073198 000700F8  38 7E 00 00 */	addi r3, r30, 0
/* 8007319C 000700FC  90 1E 00 00 */	stw r0, 0(r30)
/* 800731A0 00070100  93 FE 00 10 */	stw r31, 0x10(r30)
/* 800731A4 00070104  93 FE 00 0C */	stw r31, 0xc(r30)
/* 800731A8 00070108  93 FE 00 08 */	stw r31, 8(r30)
/* 800731AC 0007010C  4B FB 1D 29 */	bl setName__8CoreNodeFPc
/* 800731B0 00070110  3C 60 80 23 */	lis r3, __vt__4Node@ha
/* 800731B4 00070114  38 03 8E 20 */	addi r0, r3, __vt__4Node@l
/* 800731B8 00070118  90 1E 00 00 */	stw r0, 0(r30)
/* 800731BC 0007011C  38 7E 00 00 */	addi r3, r30, 0
/* 800731C0 00070120  38 8D 9A 74 */	addi r4, r13, lbl_803DE794@sda21
/* 800731C4 00070124  4B FC D5 79 */	bl init__4NodeFPc
/* 800731C8 00070128  3C 60 80 2B */	lis r3, __vt__9LightPool@ha
/* 800731CC 0007012C  38 03 9F C4 */	addi r0, r3, __vt__9LightPool@l
/* 800731D0 00070130  90 1E 00 00 */	stw r0, 0(r30)
/* 800731D4 00070134  38 7E 00 20 */	addi r3, r30, 0x20
/* 800731D8 00070138  4B FB 68 71 */	bl __ct__5LightFv
/* 800731DC 0007013C  38 7E 02 F4 */	addi r3, r30, 0x2f4
/* 800731E0 00070140  4B FC FF E5 */	bl __ct__6CameraFv
/* 800731E4 00070144  C0 02 88 78 */	lfs f0, lbl_803E8A78@sda21(r2)
/* 800731E8 00070148  D0 1E 06 58 */	stfs f0, 0x658(r30)
/* 800731EC 0007014C  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 800731F0 00070150  D0 1E 06 50 */	stfs f0, 0x650(r30)
/* 800731F4 00070154  93 FE 06 4C */	stw r31, 0x64c(r30)
/* 800731F8 00070158  48 1A 4E 79 */	bl rand
/* 800731FC 0007015C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80073200 00070160  C8 82 88 90 */	lfd f4, lbl_803E8A90@sda21(r2)
/* 80073204 00070164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073208 00070168  3C 00 43 30 */	lis r0, 0x4330
/* 8007320C 0007016C  C0 42 88 80 */	lfs f2, lbl_803E8A80@sda21(r2)
/* 80073210 00070170  38 C0 00 01 */	li r6, 1
/* 80073214 00070174  90 01 00 10 */	stw r0, 0x10(r1)
/* 80073218 00070178  C0 22 88 7C */	lfs f1, lbl_803E8A7C@sda21(r2)
/* 8007321C 0007017C  38 A0 00 FF */	li r5, 0xff
/* 80073220 00070180  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 80073224 00070184  38 80 00 40 */	li r4, 0x40
/* 80073228 00070188  C0 02 88 84 */	lfs f0, lbl_803E8A84@sda21(r2)
/* 8007322C 0007018C  EC 63 20 28 */	fsubs f3, f3, f4
/* 80073230 00070190  38 00 00 80 */	li r0, 0x80
/* 80073234 00070194  38 7E 00 00 */	addi r3, r30, 0
/* 80073238 00070198  EC 43 10 24 */	fdivs f2, f3, f2
/* 8007323C 0007019C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80073240 000701A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80073244 000701A4  D0 1E 06 5C */	stfs f0, 0x65c(r30)
/* 80073248 000701A8  C0 0D 9A 50 */	lfs f0, lbl_803DE770@sda21(r13)
/* 8007324C 000701AC  D0 1E 04 58 */	stfs f0, 0x458(r30)
/* 80073250 000701B0  C0 0D 9A 54 */	lfs f0, lbl_803DE774@sda21(r13)
/* 80073254 000701B4  D0 1E 04 5C */	stfs f0, 0x45c(r30)
/* 80073258 000701B8  C0 0D 9A 58 */	lfs f0, lbl_803DE778@sda21(r13)
/* 8007325C 000701BC  D0 1E 04 60 */	stfs f0, 0x460(r30)
/* 80073260 000701C0  C0 0D 9A 5C */	lfs f0, lbl_803DE77C@sda21(r13)
/* 80073264 000701C4  D0 1E 04 64 */	stfs f0, 0x464(r30)
/* 80073268 000701C8  C0 0D 9A 60 */	lfs f0, lbl_803DE780@sda21(r13)
/* 8007326C 000701CC  D0 1E 04 68 */	stfs f0, 0x468(r30)
/* 80073270 000701D0  C0 0D 9A 64 */	lfs f0, lbl_803DE784@sda21(r13)
/* 80073274 000701D4  D0 1E 04 6C */	stfs f0, 0x46c(r30)
/* 80073278 000701D8  C0 0D 9A 68 */	lfs f0, lbl_803DE788@sda21(r13)
/* 8007327C 000701DC  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 80073280 000701E0  C0 0D 9A 6C */	lfs f0, lbl_803DE78C@sda21(r13)
/* 80073284 000701E4  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 80073288 000701E8  C0 0D 9A 70 */	lfs f0, lbl_803DE790@sda21(r13)
/* 8007328C 000701EC  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 80073290 000701F0  C0 02 88 88 */	lfs f0, lbl_803E8A88@sda21(r2)
/* 80073294 000701F4  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80073298 000701F8  D0 3E 04 C4 */	stfs f1, 0x4c4(r30)
/* 8007329C 000701FC  C0 02 88 8C */	lfs f0, lbl_803E8A8C@sda21(r2)
/* 800732A0 00070200  D0 1E 04 C8 */	stfs f0, 0x4c8(r30)
/* 800732A4 00070204  98 DE 06 6C */	stb r6, 0x66c(r30)
/* 800732A8 00070208  98 BE 06 60 */	stb r5, 0x660(r30)
/* 800732AC 0007020C  98 BE 06 61 */	stb r5, 0x661(r30)
/* 800732B0 00070210  98 9E 06 62 */	stb r4, 0x662(r30)
/* 800732B4 00070214  98 1E 06 63 */	stb r0, 0x663(r30)
/* 800732B8 00070218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800732BC 0007021C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800732C0 00070220  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800732C4 00070224  38 21 00 20 */	addi r1, r1, 0x20
/* 800732C8 00070228  7C 08 03 A6 */	mtlr r0
/* 800732CC 0007022C  4E 80 00 20 */	blr 
.endfn __ct__9LightPoolFv

.fn draw__9LightPoolFR8Graphics, global
/* 800732D0 00070230  7C 08 02 A6 */	mflr r0
/* 800732D4 00070234  38 A0 00 00 */	li r5, 0
/* 800732D8 00070238  90 01 00 04 */	stw r0, 4(r1)
/* 800732DC 0007023C  94 21 FD 00 */	stwu r1, -0x300(r1)
/* 800732E0 00070240  DB E1 02 F8 */	stfd f31, 0x2f8(r1)
/* 800732E4 00070244  DB C1 02 F0 */	stfd f30, 0x2f0(r1)
/* 800732E8 00070248  DB A1 02 E8 */	stfd f29, 0x2e8(r1)
/* 800732EC 0007024C  DB 81 02 E0 */	stfd f28, 0x2e0(r1)
/* 800732F0 00070250  DB 61 02 D8 */	stfd f27, 0x2d8(r1)
/* 800732F4 00070254  DB 41 02 D0 */	stfd f26, 0x2d0(r1)
/* 800732F8 00070258  BF 61 02 BC */	stmw r27, 0x2bc(r1)
/* 800732FC 0007025C  3B 84 00 00 */	addi r28, r4, 0
/* 80073300 00070260  3B 63 00 00 */	addi r27, r3, 0
/* 80073304 00070264  7F 83 E3 78 */	mr r3, r28
/* 80073308 00070268  3B FB 02 F4 */	addi r31, r27, 0x2f4
/* 8007330C 0007026C  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073310 00070270  80 84 02 E4 */	lwz r4, 0x2e4(r4)
/* 80073314 00070274  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80073318 00070278  38 84 01 E0 */	addi r4, r4, 0x1e0
/* 8007331C 0007027C  7D 88 03 A6 */	mtlr r12
/* 80073320 00070280  4E 80 00 21 */	blrl 
/* 80073324 00070284  7F 83 E3 78 */	mr r3, r28
/* 80073328 00070288  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 8007332C 0007028C  38 80 00 03 */	li r4, 3
/* 80073330 00070290  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80073334 00070294  7D 88 03 A6 */	mtlr r12
/* 80073338 00070298  4E 80 00 21 */	blrl 
/* 8007333C 0007029C  38 03 00 00 */	addi r0, r3, 0
/* 80073340 000702A0  38 7C 00 00 */	addi r3, r28, 0
/* 80073344 000702A4  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073348 000702A8  7C 1E 03 78 */	mr r30, r0
/* 8007334C 000702AC  38 80 00 00 */	li r4, 0
/* 80073350 000702B0  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 80073354 000702B4  7D 88 03 A6 */	mtlr r12
/* 80073358 000702B8  4E 80 00 21 */	blrl 
/* 8007335C 000702BC  7F 83 E3 78 */	mr r3, r28
/* 80073360 000702C0  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073364 000702C4  38 80 00 00 */	li r4, 0
/* 80073368 000702C8  38 A0 00 00 */	li r5, 0
/* 8007336C 000702CC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80073370 000702D0  7D 88 03 A6 */	mtlr r12
/* 80073374 000702D4  4E 80 00 21 */	blrl 
/* 80073378 000702D8  7C 60 1B 78 */	mr r0, r3
/* 8007337C 000702DC  80 9B 06 64 */	lwz r4, 0x664(r27)
/* 80073380 000702E0  7F 83 E3 78 */	mr r3, r28
/* 80073384 000702E4  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073388 000702E8  7C 1D 03 78 */	mr r29, r0
/* 8007338C 000702EC  38 A0 00 00 */	li r5, 0
/* 80073390 000702F0  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 80073394 000702F4  7D 88 03 A6 */	mtlr r12
/* 80073398 000702F8  4E 80 00 21 */	blrl 
/* 8007339C 000702FC  38 60 00 FF */	li r3, 0xff
/* 800733A0 00070300  98 61 02 20 */	stb r3, 0x220(r1)
/* 800733A4 00070304  38 00 00 40 */	li r0, 0x40
/* 800733A8 00070308  38 81 02 20 */	addi r4, r1, 0x220
/* 800733AC 0007030C  98 61 02 21 */	stb r3, 0x221(r1)
/* 800733B0 00070310  7F 83 E3 78 */	mr r3, r28
/* 800733B4 00070314  38 A0 00 01 */	li r5, 1
/* 800733B8 00070318  98 01 02 22 */	stb r0, 0x222(r1)
/* 800733BC 0007031C  98 01 02 23 */	stb r0, 0x223(r1)
/* 800733C0 00070320  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 800733C4 00070324  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 800733C8 00070328  7D 88 03 A6 */	mtlr r12
/* 800733CC 0007032C  4E 80 00 21 */	blrl 
/* 800733D0 00070330  7F 83 E3 78 */	mr r3, r28
/* 800733D4 00070334  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 800733D8 00070338  38 9B 06 60 */	addi r4, r27, 0x660
/* 800733DC 0007033C  38 A0 00 01 */	li r5, 1
/* 800733E0 00070340  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 800733E4 00070344  7D 88 03 A6 */	mtlr r12
/* 800733E8 00070348  4E 80 00 21 */	blrl 
/* 800733EC 0007034C  C0 7F 01 64 */	lfs f3, 0x164(r31)
/* 800733F0 00070350  C0 5F 01 70 */	lfs f2, 0x170(r31)
/* 800733F4 00070354  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 800733F8 00070358  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 800733FC 0007035C  EF E3 10 28 */	fsubs f31, f3, f2
/* 80073400 00070360  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 80073404 00070364  EF C1 00 28 */	fsubs f30, f1, f0
/* 80073408 00070368  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8007340C 0007036C  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80073410 00070370  EF A2 00 28 */	fsubs f29, f2, f0
/* 80073414 00070374  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80073418 00070378  EC 5D 07 72 */	fmuls f2, f29, f29
/* 8007341C 0007037C  EC 01 00 2A */	fadds f0, f1, f0
/* 80073420 00070380  EC 22 00 2A */	fadds f1, f2, f0
/* 80073424 00070384  4B F9 A8 1D */	bl sqrtf__3stdFf
/* 80073428 00070388  C0 02 88 78 */	lfs f0, lbl_803E8A78@sda21(r2)
/* 8007342C 0007038C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80073430 00070390  41 82 00 10 */	beq .L_80073440
/* 80073434 00070394  EF FF 08 24 */	fdivs f31, f31, f1
/* 80073438 00070398  EF DE 08 24 */	fdivs f30, f30, f1
/* 8007343C 0007039C  EF BD 08 24 */	fdivs f29, f29, f1
.L_80073440:
/* 80073440 000703A0  C0 7F 01 64 */	lfs f3, 0x164(r31)
/* 80073444 000703A4  C0 5F 01 70 */	lfs f2, 0x170(r31)
/* 80073448 000703A8  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 8007344C 000703AC  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80073450 000703B0  EF 83 10 28 */	fsubs f28, f3, f2
/* 80073454 000703B4  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 80073458 000703B8  EF 61 00 28 */	fsubs f27, f1, f0
/* 8007345C 000703BC  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80073460 000703C0  EC 3C 07 32 */	fmuls f1, f28, f28
/* 80073464 000703C4  EF 42 00 28 */	fsubs f26, f2, f0
/* 80073468 000703C8  C0 62 88 98 */	lfs f3, lbl_803E8A98@sda21(r2)
/* 8007346C 000703CC  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 80073470 000703D0  EC 5A 06 B2 */	fmuls f2, f26, f26
/* 80073474 000703D4  EF FF 00 F2 */	fmuls f31, f31, f3
/* 80073478 000703D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8007347C 000703DC  EF DE 00 F2 */	fmuls f30, f30, f3
/* 80073480 000703E0  EF BD 00 F2 */	fmuls f29, f29, f3
/* 80073484 000703E4  EC 22 00 2A */	fadds f1, f2, f0
/* 80073488 000703E8  4B F9 A7 B9 */	bl sqrtf__3stdFf
/* 8007348C 000703EC  C0 02 88 78 */	lfs f0, lbl_803E8A78@sda21(r2)
/* 80073490 000703F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80073494 000703F4  41 82 00 10 */	beq .L_800734A4
/* 80073498 000703F8  EF 9C 08 24 */	fdivs f28, f28, f1
/* 8007349C 000703FC  EF 7B 08 24 */	fdivs f27, f27, f1
/* 800734A0 00070400  EF 5A 08 24 */	fdivs f26, f26, f1
.L_800734A4:
/* 800734A4 00070404  80 7C 02 E4 */	lwz r3, 0x2e4(r28)
/* 800734A8 00070408  C5 03 01 94 */	lfsu f8, 0x194(r3)
/* 800734AC 0007040C  C0 42 88 9C */	lfs f2, lbl_803E8A9C@sda21(r2)
/* 800734B0 00070410  C0 A3 00 08 */	lfs f5, 8(r3)
/* 800734B4 00070414  EC FA 02 32 */	fmuls f7, f26, f8
/* 800734B8 00070418  C1 23 00 04 */	lfs f9, 4(r3)
/* 800734BC 0007041C  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 800734C0 00070420  EC 9B 01 72 */	fmuls f4, f27, f5
/* 800734C4 00070424  C0 22 88 78 */	lfs f1, lbl_803E8A78@sda21(r2)
/* 800734C8 00070428  EC 7A 02 72 */	fmuls f3, f26, f9
/* 800734CC 0007042C  D0 21 02 2C */	stfs f1, 0x22c(r1)
/* 800734D0 00070430  EC DC 01 72 */	fmuls f6, f28, f5
/* 800734D4 00070434  D0 21 02 28 */	stfs f1, 0x228(r1)
/* 800734D8 00070438  EC A4 18 28 */	fsubs f5, f4, f3
/* 800734DC 0007043C  EC 82 00 32 */	fmuls f4, f2, f0
/* 800734E0 00070440  D0 21 02 24 */	stfs f1, 0x224(r1)
/* 800734E4 00070444  EC 07 30 28 */	fsubs f0, f7, f6
/* 800734E8 00070448  EC 5C 02 72 */	fmuls f2, f28, f9
/* 800734EC 0007044C  D0 21 02 38 */	stfs f1, 0x238(r1)
/* 800734F0 00070450  EC C0 01 32 */	fmuls f6, f0, f4
/* 800734F4 00070454  D0 21 02 34 */	stfs f1, 0x234(r1)
/* 800734F8 00070458  EC 1B 02 32 */	fmuls f0, f27, f8
/* 800734FC 0007045C  EC A5 01 32 */	fmuls f5, f5, f4
/* 80073500 00070460  D0 21 02 30 */	stfs f1, 0x230(r1)
/* 80073504 00070464  EC 02 00 28 */	fsubs f0, f2, f0
/* 80073508 00070468  D0 21 02 44 */	stfs f1, 0x244(r1)
/* 8007350C 0007046C  FC 60 30 50 */	fneg f3, f6
/* 80073510 00070470  ED 25 F8 2A */	fadds f9, f5, f31
/* 80073514 00070474  D0 21 02 40 */	stfs f1, 0x240(r1)
/* 80073518 00070478  EC E0 01 32 */	fmuls f7, f0, f4
/* 8007351C 0007047C  D0 21 02 3C */	stfs f1, 0x23c(r1)
/* 80073520 00070480  ED 66 F0 2A */	fadds f11, f6, f30
/* 80073524 00070484  FC 40 28 50 */	fneg f2, f5
/* 80073528 00070488  D0 21 02 50 */	stfs f1, 0x250(r1)
/* 8007352C 0007048C  FC 80 38 50 */	fneg f4, f7
/* 80073530 00070490  D0 21 02 4C */	stfs f1, 0x24c(r1)
/* 80073534 00070494  ED A7 E8 2A */	fadds f13, f7, f29
/* 80073538 00070498  ED 03 F0 2A */	fadds f8, f3, f30
/* 8007353C 0007049C  D0 21 02 48 */	stfs f1, 0x248(r1)
/* 80073540 000704A0  EC 04 E8 2A */	fadds f0, f4, f29
/* 80073544 000704A4  D0 21 02 5C */	stfs f1, 0x25c(r1)
/* 80073548 000704A8  D0 21 02 58 */	stfs f1, 0x258(r1)
/* 8007354C 000704AC  D0 21 02 54 */	stfs f1, 0x254(r1)
/* 80073550 000704B0  D0 21 02 68 */	stfs f1, 0x268(r1)
/* 80073554 000704B4  D0 21 02 64 */	stfs f1, 0x264(r1)
/* 80073558 000704B8  D0 21 02 60 */	stfs f1, 0x260(r1)
/* 8007355C 000704BC  C1 5F 01 64 */	lfs f10, 0x164(r31)
/* 80073560 000704C0  C1 9F 01 68 */	lfs f12, 0x168(r31)
/* 80073564 000704C4  ED 2A 48 2A */	fadds f9, f10, f9
/* 80073568 000704C8  C3 7F 01 6C */	lfs f27, 0x16c(r31)
/* 8007356C 000704CC  ED 6C 58 2A */	fadds f11, f12, f11
/* 80073570 000704D0  ED 5B 68 2A */	fadds f10, f27, f13
/* 80073574 000704D4  D1 21 02 24 */	stfs f9, 0x224(r1)
/* 80073578 000704D8  D1 61 02 28 */	stfs f11, 0x228(r1)
/* 8007357C 000704DC  D1 41 02 2C */	stfs f10, 0x22c(r1)
/* 80073580 000704E0  D0 41 01 64 */	stfs f2, 0x164(r1)
/* 80073584 000704E4  C1 21 01 64 */	lfs f9, 0x164(r1)
/* 80073588 000704E8  D0 21 02 6C */	stfs f1, 0x26c(r1)
/* 8007358C 000704EC  ED 29 F8 2A */	fadds f9, f9, f31
/* 80073590 000704F0  D0 21 02 70 */	stfs f1, 0x270(r1)
/* 80073594 000704F4  D1 21 01 58 */	stfs f9, 0x158(r1)
/* 80073598 000704F8  C1 21 01 58 */	lfs f9, 0x158(r1)
/* 8007359C 000704FC  D1 21 01 E4 */	stfs f9, 0x1e4(r1)
/* 800735A0 00070500  D1 01 01 E8 */	stfs f8, 0x1e8(r1)
/* 800735A4 00070504  D0 01 01 EC */	stfs f0, 0x1ec(r1)
/* 800735A8 00070508  C1 1F 01 64 */	lfs f8, 0x164(r31)
/* 800735AC 0007050C  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 800735B0 00070510  EC 08 00 2A */	fadds f0, f8, f0
/* 800735B4 00070514  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 800735B8 00070518  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 800735BC 0007051C  D0 01 01 F0 */	stfs f0, 0x1f0(r1)
/* 800735C0 00070520  C1 1F 01 68 */	lfs f8, 0x168(r31)
/* 800735C4 00070524  C0 01 01 E8 */	lfs f0, 0x1e8(r1)
/* 800735C8 00070528  EC 08 00 2A */	fadds f0, f8, f0
/* 800735CC 0007052C  D0 01 01 F4 */	stfs f0, 0x1f4(r1)
/* 800735D0 00070530  C1 1F 01 6C */	lfs f8, 0x16c(r31)
/* 800735D4 00070534  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 800735D8 00070538  EC 08 00 2A */	fadds f0, f8, f0
/* 800735DC 0007053C  D0 01 01 F8 */	stfs f0, 0x1f8(r1)
/* 800735E0 00070540  80 01 01 F0 */	lwz r0, 0x1f0(r1)
/* 800735E4 00070544  80 61 01 F4 */	lwz r3, 0x1f4(r1)
/* 800735E8 00070548  90 01 02 30 */	stw r0, 0x230(r1)
/* 800735EC 0007054C  80 01 01 F8 */	lwz r0, 0x1f8(r1)
/* 800735F0 00070550  90 61 02 34 */	stw r3, 0x234(r1)
/* 800735F4 00070554  90 01 02 38 */	stw r0, 0x238(r1)
/* 800735F8 00070558  C0 02 88 7C */	lfs f0, lbl_803E8A7C@sda21(r2)
/* 800735FC 0007055C  FD 60 F8 50 */	fneg f11, f31
/* 80073600 00070560  D0 41 01 B4 */	stfs f2, 0x1b4(r1)
/* 80073604 00070564  FD 20 E8 50 */	fneg f9, f29
/* 80073608 00070568  FD 40 F0 50 */	fneg f10, f30
/* 8007360C 0007056C  D0 01 02 74 */	stfs f0, 0x274(r1)
/* 80073610 00070570  ED 05 58 2A */	fadds f8, f5, f11
/* 80073614 00070574  7F 83 E3 78 */	mr r3, r28
/* 80073618 00070578  D0 21 02 78 */	stfs f1, 0x278(r1)
/* 8007361C 0007057C  EC A6 50 2A */	fadds f5, f6, f10
/* 80073620 00070580  38 81 02 24 */	addi r4, r1, 0x224
/* 80073624 00070584  D1 61 01 3C */	stfs f11, 0x13c(r1)
/* 80073628 00070588  EC 47 48 2A */	fadds f2, f7, f9
/* 8007362C 0007058C  38 C1 02 6C */	addi r6, r1, 0x26c
/* 80073630 00070590  D0 61 01 B8 */	stfs f3, 0x1b8(r1)
/* 80073634 00070594  38 A0 00 00 */	li r5, 0
/* 80073638 00070598  38 E0 00 04 */	li r7, 4
/* 8007363C 0007059C  D0 81 01 BC */	stfs f4, 0x1bc(r1)
/* 80073640 000705A0  C0 81 01 B4 */	lfs f4, 0x1b4(r1)
/* 80073644 000705A4  C0 61 01 3C */	lfs f3, 0x13c(r1)
/* 80073648 000705A8  EC 64 18 2A */	fadds f3, f4, f3
/* 8007364C 000705AC  D0 61 01 30 */	stfs f3, 0x130(r1)
/* 80073650 000705B0  C0 61 01 30 */	lfs f3, 0x130(r1)
/* 80073654 000705B4  D0 61 01 C0 */	stfs f3, 0x1c0(r1)
/* 80073658 000705B8  C0 61 01 B8 */	lfs f3, 0x1b8(r1)
/* 8007365C 000705BC  EC 63 50 2A */	fadds f3, f3, f10
/* 80073660 000705C0  D0 61 01 C4 */	stfs f3, 0x1c4(r1)
/* 80073664 000705C4  C0 61 01 BC */	lfs f3, 0x1bc(r1)
/* 80073668 000705C8  EC 63 48 2A */	fadds f3, f3, f9
/* 8007366C 000705CC  D0 61 01 C8 */	stfs f3, 0x1c8(r1)
/* 80073670 000705D0  C0 9F 01 70 */	lfs f4, 0x170(r31)
/* 80073674 000705D4  C0 61 01 C0 */	lfs f3, 0x1c0(r1)
/* 80073678 000705D8  EC 64 18 2A */	fadds f3, f4, f3
/* 8007367C 000705DC  D0 61 01 24 */	stfs f3, 0x124(r1)
/* 80073680 000705E0  C0 61 01 24 */	lfs f3, 0x124(r1)
/* 80073684 000705E4  D0 61 01 CC */	stfs f3, 0x1cc(r1)
/* 80073688 000705E8  C0 9F 01 74 */	lfs f4, 0x174(r31)
/* 8007368C 000705EC  C0 61 01 C4 */	lfs f3, 0x1c4(r1)
/* 80073690 000705F0  EC 64 18 2A */	fadds f3, f4, f3
/* 80073694 000705F4  D0 61 01 D0 */	stfs f3, 0x1d0(r1)
/* 80073698 000705F8  C0 9F 01 78 */	lfs f4, 0x178(r31)
/* 8007369C 000705FC  C0 61 01 C8 */	lfs f3, 0x1c8(r1)
/* 800736A0 00070600  EC 84 18 2A */	fadds f4, f4, f3
/* 800736A4 00070604  D1 01 01 0C */	stfs f8, 0x10c(r1)
/* 800736A8 00070608  D0 01 02 7C */	stfs f0, 0x27c(r1)
/* 800736AC 0007060C  C0 61 01 0C */	lfs f3, 0x10c(r1)
/* 800736B0 00070610  D0 81 01 D4 */	stfs f4, 0x1d4(r1)
/* 800736B4 00070614  80 01 01 CC */	lwz r0, 0x1cc(r1)
/* 800736B8 00070618  81 01 01 D0 */	lwz r8, 0x1d0(r1)
/* 800736BC 0007061C  90 01 02 3C */	stw r0, 0x23c(r1)
/* 800736C0 00070620  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 800736C4 00070624  91 01 02 40 */	stw r8, 0x240(r1)
/* 800736C8 00070628  90 01 02 44 */	stw r0, 0x244(r1)
/* 800736CC 0007062C  D0 01 02 80 */	stfs f0, 0x280(r1)
/* 800736D0 00070630  D0 61 01 90 */	stfs f3, 0x190(r1)
/* 800736D4 00070634  D0 A1 01 94 */	stfs f5, 0x194(r1)
/* 800736D8 00070638  D0 41 01 98 */	stfs f2, 0x198(r1)
/* 800736DC 0007063C  C0 7F 01 70 */	lfs f3, 0x170(r31)
/* 800736E0 00070640  C0 41 01 90 */	lfs f2, 0x190(r1)
/* 800736E4 00070644  EC 43 10 2A */	fadds f2, f3, f2
/* 800736E8 00070648  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 800736EC 0007064C  C0 41 01 00 */	lfs f2, 0x100(r1)
/* 800736F0 00070650  D0 41 01 9C */	stfs f2, 0x19c(r1)
/* 800736F4 00070654  C0 7F 01 74 */	lfs f3, 0x174(r31)
/* 800736F8 00070658  C0 41 01 94 */	lfs f2, 0x194(r1)
/* 800736FC 0007065C  EC 43 10 2A */	fadds f2, f3, f2
/* 80073700 00070660  D0 41 01 A0 */	stfs f2, 0x1a0(r1)
/* 80073704 00070664  C0 7F 01 78 */	lfs f3, 0x178(r31)
/* 80073708 00070668  C0 41 01 98 */	lfs f2, 0x198(r1)
/* 8007370C 0007066C  EC 43 10 2A */	fadds f2, f3, f2
/* 80073710 00070670  D0 21 02 84 */	stfs f1, 0x284(r1)
/* 80073714 00070674  D0 01 02 88 */	stfs f0, 0x288(r1)
/* 80073718 00070678  D0 41 01 A4 */	stfs f2, 0x1a4(r1)
/* 8007371C 0007067C  80 01 01 9C */	lwz r0, 0x19c(r1)
/* 80073720 00070680  81 01 01 A0 */	lwz r8, 0x1a0(r1)
/* 80073724 00070684  90 01 02 48 */	stw r0, 0x248(r1)
/* 80073728 00070688  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 8007372C 0007068C  91 01 02 4C */	stw r8, 0x24c(r1)
/* 80073730 00070690  90 01 02 50 */	stw r0, 0x250(r1)
/* 80073734 00070694  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073738 00070698  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8007373C 0007069C  7D 88 03 A6 */	mtlr r12
/* 80073740 000706A0  4E 80 00 21 */	blrl 
/* 80073744 000706A4  7F 83 E3 78 */	mr r3, r28
/* 80073748 000706A8  80 9C 02 E4 */	lwz r4, 0x2e4(r28)
/* 8007374C 000706AC  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073750 000706B0  38 A0 00 00 */	li r5, 0
/* 80073754 000706B4  38 84 01 E0 */	addi r4, r4, 0x1e0
/* 80073758 000706B8  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8007375C 000706BC  7D 88 03 A6 */	mtlr r12
/* 80073760 000706C0  4E 80 00 21 */	blrl 
/* 80073764 000706C4  7F 83 E3 78 */	mr r3, r28
/* 80073768 000706C8  80 9B 06 68 */	lwz r4, 0x668(r27)
/* 8007376C 000706CC  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073770 000706D0  38 A0 00 00 */	li r5, 0
/* 80073774 000706D4  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 80073778 000706D8  7D 88 03 A6 */	mtlr r12
/* 8007377C 000706DC  4E 80 00 21 */	blrl 
/* 80073780 000706E0  7F 83 E3 78 */	mr r3, r28
/* 80073784 000706E4  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073788 000706E8  38 80 00 04 */	li r4, 4
/* 8007378C 000706EC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80073790 000706F0  7D 88 03 A6 */	mtlr r12
/* 80073794 000706F4  4E 80 00 21 */	blrl 
/* 80073798 000706F8  38 00 00 FF */	li r0, 0xff
/* 8007379C 000706FC  98 01 01 80 */	stb r0, 0x180(r1)
/* 800737A0 00070700  38 81 01 80 */	addi r4, r1, 0x180
/* 800737A4 00070704  38 7C 00 00 */	addi r3, r28, 0
/* 800737A8 00070708  98 01 01 81 */	stb r0, 0x181(r1)
/* 800737AC 0007070C  38 A0 00 01 */	li r5, 1
/* 800737B0 00070710  98 01 01 82 */	stb r0, 0x182(r1)
/* 800737B4 00070714  98 01 01 83 */	stb r0, 0x183(r1)
/* 800737B8 00070718  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 800737BC 0007071C  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 800737C0 00070720  7D 88 03 A6 */	mtlr r12
/* 800737C4 00070724  4E 80 00 21 */	blrl 
/* 800737C8 00070728  7F 83 E3 78 */	mr r3, r28
/* 800737CC 0007072C  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 800737D0 00070730  38 80 00 01 */	li r4, 1
/* 800737D4 00070734  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 800737D8 00070738  7D 88 03 A6 */	mtlr r12
/* 800737DC 0007073C  4E 80 00 21 */	blrl 
/* 800737E0 00070740  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800737E4 00070744  41 82 00 24 */	beq .L_80073808
/* 800737E8 00070748  7F 83 E3 78 */	mr r3, r28
/* 800737EC 0007074C  80 9C 02 E4 */	lwz r4, 0x2e4(r28)
/* 800737F0 00070750  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 800737F4 00070754  38 BF 01 64 */	addi r5, r31, 0x164
/* 800737F8 00070758  C0 22 88 A0 */	lfs f1, lbl_803E8AA0@sda21(r2)
/* 800737FC 0007075C  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 80073800 00070760  7D 88 03 A6 */	mtlr r12
/* 80073804 00070764  4E 80 00 21 */	blrl 
.L_80073808:
/* 80073808 00070768  7F 83 E3 78 */	mr r3, r28
/* 8007380C 0007076C  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073810 00070770  38 9D 00 00 */	addi r4, r29, 0
/* 80073814 00070774  38 A0 00 00 */	li r5, 0
/* 80073818 00070778  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8007381C 0007077C  7D 88 03 A6 */	mtlr r12
/* 80073820 00070780  4E 80 00 21 */	blrl 
/* 80073824 00070784  7F 83 E3 78 */	mr r3, r28
/* 80073828 00070788  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 8007382C 0007078C  7F C4 F3 78 */	mr r4, r30
/* 80073830 00070790  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80073834 00070794  7D 88 03 A6 */	mtlr r12
/* 80073838 00070798  4E 80 00 21 */	blrl 
/* 8007383C 0007079C  7F 83 E3 78 */	mr r3, r28
/* 80073840 000707A0  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073844 000707A4  38 80 00 01 */	li r4, 1
/* 80073848 000707A8  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8007384C 000707AC  7D 88 03 A6 */	mtlr r12
/* 80073850 000707B0  4E 80 00 21 */	blrl 
/* 80073854 000707B4  88 1B 06 6C */	lbz r0, 0x66c(r27)
/* 80073858 000707B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007385C 000707BC  41 82 00 40 */	beq .L_8007389C
/* 80073860 000707C0  7F 83 E3 78 */	mr r3, r28
/* 80073864 000707C4  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 80073868 000707C8  38 80 00 00 */	li r4, 0
/* 8007386C 000707CC  81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 80073870 000707D0  7D 88 03 A6 */	mtlr r12
/* 80073874 000707D4  4E 80 00 21 */	blrl 
/* 80073878 000707D8  38 7F 00 00 */	addi r3, r31, 0
/* 8007387C 000707DC  38 9C 00 00 */	addi r4, r28, 0
/* 80073880 000707E0  4B FC DD 71 */	bl draw__11CullFrustumFR8Graphics
/* 80073884 000707E4  7F 83 E3 78 */	mr r3, r28
/* 80073888 000707E8  81 9C 03 B4 */	lwz r12, 0x3b4(r28)
/* 8007388C 000707EC  38 80 00 01 */	li r4, 1
/* 80073890 000707F0  81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 80073894 000707F4  7D 88 03 A6 */	mtlr r12
/* 80073898 000707F8  4E 80 00 21 */	blrl 
.L_8007389C:
/* 8007389C 000707FC  BB 61 02 BC */	lmw r27, 0x2bc(r1)
/* 800738A0 00070800  80 01 03 04 */	lwz r0, 0x304(r1)
/* 800738A4 00070804  CB E1 02 F8 */	lfd f31, 0x2f8(r1)
/* 800738A8 00070808  CB C1 02 F0 */	lfd f30, 0x2f0(r1)
/* 800738AC 0007080C  CB A1 02 E8 */	lfd f29, 0x2e8(r1)
/* 800738B0 00070810  CB 81 02 E0 */	lfd f28, 0x2e0(r1)
/* 800738B4 00070814  CB 61 02 D8 */	lfd f27, 0x2d8(r1)
/* 800738B8 00070818  CB 41 02 D0 */	lfd f26, 0x2d0(r1)
/* 800738BC 0007081C  38 21 03 00 */	addi r1, r1, 0x300
/* 800738C0 00070820  7C 08 03 A6 */	mtlr r0
/* 800738C4 00070824  4E 80 00 20 */	blr 
.endfn draw__9LightPoolFR8Graphics

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
.obj lbl_802A9F60, local
	.asciz "lightPool.cpp"
.endobj lbl_802A9F60
.balign 4
.obj lbl_802A9F70, local
	.asciz "LightPool"
.endobj lbl_802A9F70
.balign 4
.obj lbl_802A9F7C, local
	.asciz "CoreNode"
.endobj lbl_802A9F7C
.balign 4
.obj lbl_802A9F88, local
	.4byte __RTTI__5ANode
	.4byte 0
	.4byte 0
.endobj lbl_802A9F88
.obj lbl_802A9F94, local
	.4byte __RTTI__5ANode
	.4byte 0
	.4byte __RTTI__8CoreNode
	.4byte 0
	.4byte 0
.endobj lbl_802A9F94
.obj lbl_802A9FA8, local
	.4byte __RTTI__5ANode
	.4byte 0
	.4byte __RTTI__8CoreNode
	.4byte 0
	.4byte __RTTI__4Node
	.4byte 0
	.4byte 0
.endobj lbl_802A9FA8
.obj __vt__9LightPool, global
	.4byte __RTTI__9LightPool
	.4byte 0
	.4byte getAgeNodeType__5ANodeFv
	.4byte read__8CoreNodeFR18RandomAccessStream
	.4byte update__4NodeFv
	.4byte draw__9LightPoolFR8Graphics
	.4byte render__4NodeFR8Graphics
	.4byte concat__4NodeFv
	.4byte concat__4NodeFR3VQS
	.4byte concat__4NodeFR3SRT
	.4byte concat__4NodeFR8Matrix4f
	.4byte getModelMatrix__4NodeFv
.endobj __vt__9LightPool
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
.obj lbl_803DE770, local
	.float 0.0
.endobj lbl_803DE770
.obj lbl_803DE774, local
	.float 50.0
.endobj lbl_803DE774
.obj lbl_803DE778, local
	.float 0.0
.endobj lbl_803DE778
.obj lbl_803DE77C, local
	.float 0.0
.endobj lbl_803DE77C
.obj lbl_803DE780, local
	.float 10.0
.endobj lbl_803DE780
.obj lbl_803DE784, local
	.float 0.00001
.endobj lbl_803DE784
.obj lbl_803DE788, local
	.float 0.0
.endobj lbl_803DE788
.obj lbl_803DE78C, local
	.float 0.0
.endobj lbl_803DE78C
.obj lbl_803DE790, local
	.float 0.0
.endobj lbl_803DE790
.balign 4
.obj lbl_803DE794, local
	.asciz "<Node>"
.endobj lbl_803DE794
.balign 4
.obj lbl_803DE79C, local
	.asciz "ANode"
.endobj lbl_803DE79C
.balign 4
.obj __RTTI__5ANode, local
	.4byte lbl_803DE79C
	.4byte 0
.endobj __RTTI__5ANode
.obj __RTTI__8CoreNode, local
	.4byte lbl_802A9F7C
	.4byte lbl_802A9F88
.endobj __RTTI__8CoreNode
.balign 4
.obj lbl_803DE7B4, local
	.asciz "Node"
.endobj lbl_803DE7B4
.balign 4
.obj __RTTI__4Node, local
	.4byte lbl_803DE7B4
	.4byte lbl_802A9F94
.endobj __RTTI__4Node
.obj __RTTI__9LightPool, local
	.4byte lbl_802A9F70
	.4byte lbl_802A9FA8
.endobj __RTTI__9LightPool

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
.obj lbl_803E8A78, local
	.float 0.0
.endobj lbl_803E8A78
.obj lbl_803E8A7C, local
	.float 1.0
.endobj lbl_803E8A7C
.obj lbl_803E8A80, local
	.float 32767.0
.endobj lbl_803E8A80
.obj lbl_803E8A84, local
	.float 6.2831855
.endobj lbl_803E8A84
.obj lbl_803E8A88, local
	.float 5.0
.endobj lbl_803E8A88
.obj lbl_803E8A8C, local
	.float 200.0
.endobj lbl_803E8A8C
.balign 8
.obj lbl_803E8A90, local
	.8byte 0x4330000080000000
.endobj lbl_803E8A90
.obj lbl_803E8A98, local
	.float 8.0
.endobj lbl_803E8A98
.obj lbl_803E8A9C, local
	.float 2.5
.endobj lbl_803E8A9C
.obj lbl_803E8AA0, local
	.float 80.0
.endobj lbl_803E8AA0
