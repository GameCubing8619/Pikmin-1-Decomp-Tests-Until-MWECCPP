.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.fn calcLagrange__13NsCalculationFfPC8Vector3fR8Vector3f, global
/* 8017C2C8 00179228  C0 62 AE B8 */	lfs f3, lbl_803EB0B8@sda21(r2)
/* 8017C2CC 0017922C  C0 42 AE BC */	lfs f2, lbl_803EB0BC@sda21(r2)
/* 8017C2D0 00179230  C0 03 00 00 */	lfs f0, 0(r3)
/* 8017C2D4 00179234  EC 61 18 28 */	fsubs f3, f1, f3
/* 8017C2D8 00179238  C0 C3 00 18 */	lfs f6, 0x18(r3)
/* 8017C2DC 0017923C  EC A2 00 32 */	fmuls f5, f2, f0
/* 8017C2E0 00179240  C0 02 AE C0 */	lfs f0, lbl_803EB0C0@sda21(r2)
/* 8017C2E4 00179244  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 8017C2E8 00179248  EC C2 01 B2 */	fmuls f6, f2, f6
/* 8017C2EC 0017924C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8017C2F0 00179250  EC A5 00 F2 */	fmuls f5, f5, f3
/* 8017C2F4 00179254  EC 84 00 72 */	fmuls f4, f4, f1
/* 8017C2F8 00179258  EC C6 00 72 */	fmuls f6, f6, f1
/* 8017C2FC 0017925C  EC A0 01 72 */	fmuls f5, f0, f5
/* 8017C300 00179260  EC 80 01 32 */	fmuls f4, f0, f4
/* 8017C304 00179264  EC C3 01 B2 */	fmuls f6, f3, f6
/* 8017C308 00179268  EC 85 20 28 */	fsubs f4, f5, f4
/* 8017C30C 0017926C  EC 86 20 2A */	fadds f4, f6, f4
/* 8017C310 00179270  D0 84 00 00 */	stfs f4, 0(r4)
/* 8017C314 00179274  C0 83 00 04 */	lfs f4, 4(r3)
/* 8017C318 00179278  C0 C3 00 1C */	lfs f6, 0x1c(r3)
/* 8017C31C 0017927C  EC A2 01 32 */	fmuls f5, f2, f4
/* 8017C320 00179280  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 8017C324 00179284  EC C2 01 B2 */	fmuls f6, f2, f6
/* 8017C328 00179288  EC 84 00 72 */	fmuls f4, f4, f1
/* 8017C32C 0017928C  EC A5 00 F2 */	fmuls f5, f5, f3
/* 8017C330 00179290  EC C6 00 72 */	fmuls f6, f6, f1
/* 8017C334 00179294  EC 80 01 32 */	fmuls f4, f0, f4
/* 8017C338 00179298  EC A0 01 72 */	fmuls f5, f0, f5
/* 8017C33C 0017929C  EC C3 01 B2 */	fmuls f6, f3, f6
/* 8017C340 001792A0  EC 85 20 28 */	fsubs f4, f5, f4
/* 8017C344 001792A4  EC 86 20 2A */	fadds f4, f6, f4
/* 8017C348 001792A8  D0 84 00 04 */	stfs f4, 4(r4)
/* 8017C34C 001792AC  C0 83 00 08 */	lfs f4, 8(r3)
/* 8017C350 001792B0  C0 C3 00 20 */	lfs f6, 0x20(r3)
/* 8017C354 001792B4  EC A2 01 32 */	fmuls f5, f2, f4
/* 8017C358 001792B8  C0 83 00 14 */	lfs f4, 0x14(r3)
/* 8017C35C 001792BC  EC C2 01 B2 */	fmuls f6, f2, f6
/* 8017C360 001792C0  EC 44 00 72 */	fmuls f2, f4, f1
/* 8017C364 001792C4  EC 85 00 F2 */	fmuls f4, f5, f3
/* 8017C368 001792C8  EC A6 00 72 */	fmuls f5, f6, f1
/* 8017C36C 001792CC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8017C370 001792D0  EC 00 01 32 */	fmuls f0, f0, f4
/* 8017C374 001792D4  EC 43 01 72 */	fmuls f2, f3, f5
/* 8017C378 001792D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017C37C 001792DC  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C380 001792E0  D0 04 00 08 */	stfs f0, 8(r4)
/* 8017C384 001792E4  4E 80 00 20 */	blr 
.endfn calcLagrange__13NsCalculationFfPC8Vector3fR8Vector3f

.fn calcMatrix__13NsCalculationFRC8Vector3fRC8Vector3fRC8Vector3fRC8Vector3fR8Matrix4f, global
/* 8017C388 001792E8  7C 08 02 A6 */	mflr r0
/* 8017C38C 001792EC  90 01 00 04 */	stw r0, 4(r1)
/* 8017C390 001792F0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8017C394 001792F4  DB E1 00 88 */	stfd f31, 0x88(r1)
/* 8017C398 001792F8  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8017C39C 001792FC  DB A1 00 78 */	stfd f29, 0x78(r1)
/* 8017C3A0 00179300  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 8017C3A4 00179304  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8017C3A8 00179308  7C FF 3B 78 */	mr r31, r7
/* 8017C3AC 0017930C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8017C3B0 00179310  7C DE 33 78 */	mr r30, r6
/* 8017C3B4 00179314  C0 47 00 08 */	lfs f2, 8(r7)
/* 8017C3B8 00179318  C0 07 00 18 */	lfs f0, 0x18(r7)
/* 8017C3BC 0017931C  EC 62 00 B2 */	fmuls f3, f2, f2
/* 8017C3C0 00179320  C0 27 00 28 */	lfs f1, 0x28(r7)
/* 8017C3C4 00179324  EC 00 00 32 */	fmuls f0, f0, f0
/* 8017C3C8 00179328  C0 A3 00 00 */	lfs f5, 0(r3)
/* 8017C3CC 0017932C  EC 81 00 72 */	fmuls f4, f1, f1
/* 8017C3D0 00179330  EC 63 00 2A */	fadds f3, f3, f0
/* 8017C3D4 00179334  C3 A7 00 00 */	lfs f29, 0(r7)
/* 8017C3D8 00179338  C3 C7 00 10 */	lfs f30, 0x10(r7)
/* 8017C3DC 0017933C  C3 E7 00 20 */	lfs f31, 0x20(r7)
/* 8017C3E0 00179340  C0 47 00 04 */	lfs f2, 4(r7)
/* 8017C3E4 00179344  C0 27 00 14 */	lfs f1, 0x14(r7)
/* 8017C3E8 00179348  EF 84 18 2A */	fadds f28, f4, f3
/* 8017C3EC 0017934C  C0 07 00 24 */	lfs f0, 0x24(r7)
/* 8017C3F0 00179350  D0 A7 00 00 */	stfs f5, 0(r7)
/* 8017C3F4 00179354  C0 63 00 04 */	lfs f3, 4(r3)
/* 8017C3F8 00179358  D0 67 00 10 */	stfs f3, 0x10(r7)
/* 8017C3FC 0017935C  C0 63 00 08 */	lfs f3, 8(r3)
/* 8017C400 00179360  D0 67 00 20 */	stfs f3, 0x20(r7)
/* 8017C404 00179364  C0 64 00 00 */	lfs f3, 0(r4)
/* 8017C408 00179368  D0 67 00 04 */	stfs f3, 4(r7)
/* 8017C40C 0017936C  C0 64 00 04 */	lfs f3, 4(r4)
/* 8017C410 00179370  D0 67 00 14 */	stfs f3, 0x14(r7)
/* 8017C414 00179374  C0 64 00 08 */	lfs f3, 8(r4)
/* 8017C418 00179378  D0 67 00 24 */	stfs f3, 0x24(r7)
/* 8017C41C 0017937C  C0 65 00 00 */	lfs f3, 0(r5)
/* 8017C420 00179380  D0 67 00 08 */	stfs f3, 8(r7)
/* 8017C424 00179384  C0 65 00 04 */	lfs f3, 4(r5)
/* 8017C428 00179388  D0 67 00 18 */	stfs f3, 0x18(r7)
/* 8017C42C 0017938C  C0 65 00 08 */	lfs f3, 8(r5)
/* 8017C430 00179390  D0 67 00 28 */	stfs f3, 0x28(r7)
/* 8017C434 00179394  C0 62 AE C4 */	lfs f3, lbl_803EB0C4@sda21(r2)
/* 8017C438 00179398  FC 1C 18 40 */	fcmpo cr0, f28, f3
/* 8017C43C 0017939C  40 81 00 5C */	ble .L_8017C498
/* 8017C440 001793A0  FC 80 E0 34 */	frsqrte f4, f28
/* 8017C444 001793A4  C8 C2 AE C8 */	lfd f6, lbl_803EB0C8@sda21(r2)
/* 8017C448 001793A8  C8 A2 AE D0 */	lfd f5, lbl_803EB0D0@sda21(r2)
/* 8017C44C 001793AC  FC 64 01 32 */	fmul f3, f4, f4
/* 8017C450 001793B0  FC 86 01 32 */	fmul f4, f6, f4
/* 8017C454 001793B4  FC 7C 00 F2 */	fmul f3, f28, f3
/* 8017C458 001793B8  FC 65 18 28 */	fsub f3, f5, f3
/* 8017C45C 001793BC  FC 84 00 F2 */	fmul f4, f4, f3
/* 8017C460 001793C0  FC 64 01 32 */	fmul f3, f4, f4
/* 8017C464 001793C4  FC 86 01 32 */	fmul f4, f6, f4
/* 8017C468 001793C8  FC 7C 00 F2 */	fmul f3, f28, f3
/* 8017C46C 001793CC  FC 65 18 28 */	fsub f3, f5, f3
/* 8017C470 001793D0  FC 84 00 F2 */	fmul f4, f4, f3
/* 8017C474 001793D4  FC 64 01 32 */	fmul f3, f4, f4
/* 8017C478 001793D8  FC 86 01 32 */	fmul f4, f6, f4
/* 8017C47C 001793DC  FC 7C 00 F2 */	fmul f3, f28, f3
/* 8017C480 001793E0  FC 65 18 28 */	fsub f3, f5, f3
/* 8017C484 001793E4  FC 64 00 F2 */	fmul f3, f4, f3
/* 8017C488 001793E8  FC 7C 00 F2 */	fmul f3, f28, f3
/* 8017C48C 001793EC  FC 60 18 18 */	frsp f3, f3
/* 8017C490 001793F0  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8017C494 001793F4  C3 81 00 28 */	lfs f28, 0x28(r1)
.L_8017C498:
/* 8017C498 001793F8  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8017C49C 001793FC  EC 21 00 72 */	fmuls f1, f1, f1
/* 8017C4A0 00179400  EC 60 00 32 */	fmuls f3, f0, f0
/* 8017C4A4 00179404  EC 02 08 2A */	fadds f0, f2, f1
/* 8017C4A8 00179408  EC 23 00 2A */	fadds f1, f3, f0
/* 8017C4AC 0017940C  4B E9 17 95 */	bl sqrtf__3stdFf
/* 8017C4B0 00179410  EC 5D 07 72 */	fmuls f2, f29, f29
/* 8017C4B4 00179414  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 8017C4B8 00179418  EC 7F 07 F2 */	fmuls f3, f31, f31
/* 8017C4BC 0017941C  FF A0 08 90 */	fmr f29, f1
/* 8017C4C0 00179420  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C4C4 00179424  EC 23 00 2A */	fadds f1, f3, f0
/* 8017C4C8 00179428  4B E9 17 79 */	bl sqrtf__3stdFf
/* 8017C4CC 0017942C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8017C4D0 00179430  38 81 00 38 */	addi r4, r1, 0x38
/* 8017C4D4 00179434  38 7F 00 00 */	addi r3, r31, 0
/* 8017C4D8 00179438  D3 A1 00 3C */	stfs f29, 0x3c(r1)
/* 8017C4DC 0017943C  D3 81 00 40 */	stfs f28, 0x40(r1)
/* 8017C4E0 00179440  4B EC 22 DD */	bl scale__8Matrix4fFR8Vector3f
/* 8017C4E4 00179444  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8017C4E8 00179448  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8017C4EC 0017944C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8017C4F0 00179450  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8017C4F4 00179454  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8017C4F8 00179458  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8017C4FC 0017945C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8017C500 00179460  CB E1 00 88 */	lfd f31, 0x88(r1)
/* 8017C504 00179464  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8017C508 00179468  CB A1 00 78 */	lfd f29, 0x78(r1)
/* 8017C50C 0017946C  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8017C510 00179470  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8017C514 00179474  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8017C518 00179478  38 21 00 90 */	addi r1, r1, 0x90
/* 8017C51C 0017947C  7C 08 03 A6 */	mtlr r0
/* 8017C520 00179480  4E 80 00 20 */	blr 
.endfn calcMatrix__13NsCalculationFRC8Vector3fRC8Vector3fRC8Vector3fRC8Vector3fR8Matrix4f

.fn calcJointPos__13NsCalculationFRC8Vector3fRC8Vector3fffR8Vector3fR8Vector3f, global
/* 8017C524 00179484  94 21 FF 98 */	stwu r1, -0x68(r1)
/* 8017C528 00179488  ED 01 00 72 */	fmuls f8, f1, f1
/* 8017C52C 0017948C  EC E2 00 B2 */	fmuls f7, f2, f2
/* 8017C530 00179490  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8017C534 00179494  DB C1 00 58 */	stfd f30, 0x58(r1)
/* 8017C538 00179498  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8017C53C 0017949C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8017C540 001794A0  C1 23 00 00 */	lfs f9, 0(r3)
/* 8017C544 001794A4  C0 24 00 04 */	lfs f1, 4(r4)
/* 8017C548 001794A8  EC 40 48 28 */	fsubs f2, f0, f9
/* 8017C54C 001794AC  C1 63 00 04 */	lfs f11, 4(r3)
/* 8017C550 001794B0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8017C554 001794B4  EC 21 58 28 */	fsubs f1, f1, f11
/* 8017C558 001794B8  C1 83 00 08 */	lfs f12, 8(r3)
/* 8017C55C 001794BC  EC 00 60 28 */	fsubs f0, f0, f12
/* 8017C560 001794C0  C0 62 AE D8 */	lfs f3, lbl_803EB0D8@sda21(r2)
/* 8017C564 001794C4  EC A2 00 B2 */	fmuls f5, f2, f2
/* 8017C568 001794C8  EC 81 00 72 */	fmuls f4, f1, f1
/* 8017C56C 001794CC  EC C0 00 32 */	fmuls f6, f0, f0
/* 8017C570 001794D0  EC 85 20 2A */	fadds f4, f5, f4
/* 8017C574 001794D4  EC A6 20 2A */	fadds f5, f6, f4
/* 8017C578 001794D8  FC 05 18 40 */	fcmpo cr0, f5, f3
/* 8017C57C 001794DC  41 80 01 84 */	blt .L_8017C700
/* 8017C580 001794E0  C0 82 AE BC */	lfs f4, lbl_803EB0BC@sda21(r2)
/* 8017C584 001794E4  EC 68 38 28 */	fsubs f3, f8, f7
/* 8017C588 001794E8  C3 E2 AE C4 */	lfs f31, lbl_803EB0C4@sda21(r2)
/* 8017C58C 001794EC  EC 84 28 24 */	fdivs f4, f4, f5
/* 8017C590 001794F0  EC 65 18 2A */	fadds f3, f5, f3
/* 8017C594 001794F4  EC A4 00 F2 */	fmuls f5, f4, f3
/* 8017C598 001794F8  EC 65 00 B2 */	fmuls f3, f5, f2
/* 8017C59C 001794FC  EC 85 00 72 */	fmuls f4, f5, f1
/* 8017C5A0 00179500  EC A5 00 32 */	fmuls f5, f5, f0
/* 8017C5A4 00179504  EC 69 18 2A */	fadds f3, f9, f3
/* 8017C5A8 00179508  EC 8B 20 2A */	fadds f4, f11, f4
/* 8017C5AC 0017950C  EC AC 28 2A */	fadds f5, f12, f5
/* 8017C5B0 00179510  ED 43 48 28 */	fsubs f10, f3, f9
/* 8017C5B4 00179514  ED 24 58 28 */	fsubs f9, f4, f11
/* 8017C5B8 00179518  EC C5 60 28 */	fsubs f6, f5, f12
/* 8017C5BC 0017951C  ED 4A 02 B2 */	fmuls f10, f10, f10
/* 8017C5C0 00179520  ED 29 02 72 */	fmuls f9, f9, f9
/* 8017C5C4 00179524  EC C6 01 B2 */	fmuls f6, f6, f6
/* 8017C5C8 00179528  ED 48 50 28 */	fsubs f10, f8, f10
/* 8017C5CC 0017952C  ED 2A 48 28 */	fsubs f9, f10, f9
/* 8017C5D0 00179530  EC C9 30 28 */	fsubs f6, f9, f6
/* 8017C5D4 00179534  FC 06 F8 40 */	fcmpo cr0, f6, f31
/* 8017C5D8 00179538  4C 40 13 82 */	cror 2, 0, 2
/* 8017C5DC 0017953C  41 82 01 24 */	beq .L_8017C700
/* 8017C5E0 00179540  C1 A5 00 04 */	lfs f13, 4(r5)
/* 8017C5E4 00179544  C3 C5 00 08 */	lfs f30, 8(r5)
/* 8017C5E8 00179548  C1 45 00 00 */	lfs f10, 0(r5)
/* 8017C5EC 0017954C  ED 2D 00 B2 */	fmuls f9, f13, f2
/* 8017C5F0 00179550  ED 9E 00 B2 */	fmuls f12, f30, f2
/* 8017C5F4 00179554  ED 6A 00 32 */	fmuls f11, f10, f0
/* 8017C5F8 00179558  ED 4A 00 72 */	fmuls f10, f10, f1
/* 8017C5FC 0017955C  ED AD 00 32 */	fmuls f13, f13, f0
/* 8017C600 00179560  EF AC 58 28 */	fsubs f29, f12, f11
/* 8017C604 00179564  ED 8A 48 28 */	fsubs f12, f10, f9
/* 8017C608 00179568  ED 7E 00 72 */	fmuls f11, f30, f1
/* 8017C60C 0017956C  ED 20 07 72 */	fmuls f9, f0, f29
/* 8017C610 00179570  ED 41 03 32 */	fmuls f10, f1, f12
/* 8017C614 00179574  EF CD 58 28 */	fsubs f30, f13, f11
/* 8017C618 00179578  ED 62 03 32 */	fmuls f11, f2, f12
/* 8017C61C 0017957C  ED AA 48 28 */	fsubs f13, f10, f9
/* 8017C620 00179580  ED 80 07 B2 */	fmuls f12, f0, f30
/* 8017C624 00179584  ED 42 07 72 */	fmuls f10, f2, f29
/* 8017C628 00179588  ED 21 07 B2 */	fmuls f9, f1, f30
/* 8017C62C 0017958C  D1 A5 00 00 */	stfs f13, 0(r5)
/* 8017C630 00179590  ED 6C 58 28 */	fsubs f11, f12, f11
/* 8017C634 00179594  ED 2A 48 28 */	fsubs f9, f10, f9
/* 8017C638 00179598  D1 65 00 04 */	stfs f11, 4(r5)
/* 8017C63C 0017959C  D1 25 00 08 */	stfs f9, 8(r5)
/* 8017C640 001795A0  C1 45 00 00 */	lfs f10, 0(r5)
/* 8017C644 001795A4  C1 25 00 04 */	lfs f9, 4(r5)
/* 8017C648 001795A8  C1 65 00 08 */	lfs f11, 8(r5)
/* 8017C64C 001795AC  ED 4A 02 B2 */	fmuls f10, f10, f10
/* 8017C650 001795B0  ED 29 02 72 */	fmuls f9, f9, f9
/* 8017C654 001795B4  ED 6B 02 F2 */	fmuls f11, f11, f11
/* 8017C658 001795B8  ED 2A 48 2A */	fadds f9, f10, f9
/* 8017C65C 001795BC  ED 2B 48 2A */	fadds f9, f11, f9
/* 8017C660 001795C0  FC 1F 48 00 */	fcmpu cr0, f31, f9
/* 8017C664 001795C4  41 82 00 9C */	beq .L_8017C700
/* 8017C668 001795C8  EC E6 48 24 */	fdivs f7, f6, f9
/* 8017C66C 001795CC  FC 07 F8 40 */	fcmpo cr0, f7, f31
/* 8017C670 001795D0  40 81 00 5C */	ble .L_8017C6CC
/* 8017C674 001795D4  FC 20 38 34 */	frsqrte f1, f7
/* 8017C678 001795D8  C8 C2 AE C8 */	lfd f6, lbl_803EB0C8@sda21(r2)
/* 8017C67C 001795DC  C8 42 AE D0 */	lfd f2, lbl_803EB0D0@sda21(r2)
/* 8017C680 001795E0  FC 01 00 72 */	fmul f0, f1, f1
/* 8017C684 001795E4  FC 26 00 72 */	fmul f1, f6, f1
/* 8017C688 001795E8  FC 07 00 32 */	fmul f0, f7, f0
/* 8017C68C 001795EC  FC 02 00 28 */	fsub f0, f2, f0
/* 8017C690 001795F0  FC 21 00 32 */	fmul f1, f1, f0
/* 8017C694 001795F4  FC 01 00 72 */	fmul f0, f1, f1
/* 8017C698 001795F8  FC 26 00 72 */	fmul f1, f6, f1
/* 8017C69C 001795FC  FC 07 00 32 */	fmul f0, f7, f0
/* 8017C6A0 00179600  FC 02 00 28 */	fsub f0, f2, f0
/* 8017C6A4 00179604  FC 21 00 32 */	fmul f1, f1, f0
/* 8017C6A8 00179608  FC 01 00 72 */	fmul f0, f1, f1
/* 8017C6AC 0017960C  FC 26 00 72 */	fmul f1, f6, f1
/* 8017C6B0 00179610  FC 07 00 32 */	fmul f0, f7, f0
/* 8017C6B4 00179614  FC 02 00 28 */	fsub f0, f2, f0
/* 8017C6B8 00179618  FC 01 00 32 */	fmul f0, f1, f0
/* 8017C6BC 0017961C  FC 07 00 32 */	fmul f0, f7, f0
/* 8017C6C0 00179620  FC 00 00 18 */	frsp f0, f0
/* 8017C6C4 00179624  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8017C6C8 00179628  C0 E1 00 28 */	lfs f7, 0x28(r1)
.L_8017C6CC:
/* 8017C6CC 0017962C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8017C6D0 00179630  EC 07 00 32 */	fmuls f0, f7, f0
/* 8017C6D4 00179634  EC 03 00 2A */	fadds f0, f3, f0
/* 8017C6D8 00179638  D0 06 00 00 */	stfs f0, 0(r6)
/* 8017C6DC 0017963C  C0 05 00 04 */	lfs f0, 4(r5)
/* 8017C6E0 00179640  EC 07 00 32 */	fmuls f0, f7, f0
/* 8017C6E4 00179644  EC 04 00 2A */	fadds f0, f4, f0
/* 8017C6E8 00179648  D0 06 00 04 */	stfs f0, 4(r6)
/* 8017C6EC 0017964C  C0 05 00 08 */	lfs f0, 8(r5)
/* 8017C6F0 00179650  EC 07 00 32 */	fmuls f0, f7, f0
/* 8017C6F4 00179654  EC 05 00 2A */	fadds f0, f5, f0
/* 8017C6F8 00179658  D0 06 00 08 */	stfs f0, 8(r6)
/* 8017C6FC 0017965C  48 00 01 0C */	b .L_8017C808
.L_8017C700:
/* 8017C700 00179660  C0 62 AE C4 */	lfs f3, lbl_803EB0C4@sda21(r2)
/* 8017C704 00179664  FC 08 18 40 */	fcmpo cr0, f8, f3
/* 8017C708 00179668  40 81 00 5C */	ble .L_8017C764
/* 8017C70C 0017966C  FC 80 40 34 */	frsqrte f4, f8
/* 8017C710 00179670  C8 C2 AE C8 */	lfd f6, lbl_803EB0C8@sda21(r2)
/* 8017C714 00179674  C8 A2 AE D0 */	lfd f5, lbl_803EB0D0@sda21(r2)
/* 8017C718 00179678  FC 64 01 32 */	fmul f3, f4, f4
/* 8017C71C 0017967C  FC 86 01 32 */	fmul f4, f6, f4
/* 8017C720 00179680  FC 68 00 F2 */	fmul f3, f8, f3
/* 8017C724 00179684  FC 65 18 28 */	fsub f3, f5, f3
/* 8017C728 00179688  FC 84 00 F2 */	fmul f4, f4, f3
/* 8017C72C 0017968C  FC 64 01 32 */	fmul f3, f4, f4
/* 8017C730 00179690  FC 86 01 32 */	fmul f4, f6, f4
/* 8017C734 00179694  FC 68 00 F2 */	fmul f3, f8, f3
/* 8017C738 00179698  FC 65 18 28 */	fsub f3, f5, f3
/* 8017C73C 0017969C  FC 84 00 F2 */	fmul f4, f4, f3
/* 8017C740 001796A0  FC 64 01 32 */	fmul f3, f4, f4
/* 8017C744 001796A4  FC 86 01 32 */	fmul f4, f6, f4
/* 8017C748 001796A8  FC 68 00 F2 */	fmul f3, f8, f3
/* 8017C74C 001796AC  FC 65 18 28 */	fsub f3, f5, f3
/* 8017C750 001796B0  FC 64 00 F2 */	fmul f3, f4, f3
/* 8017C754 001796B4  FC 68 00 F2 */	fmul f3, f8, f3
/* 8017C758 001796B8  FC 60 18 18 */	frsp f3, f3
/* 8017C75C 001796BC  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8017C760 001796C0  C1 01 00 24 */	lfs f8, 0x24(r1)
.L_8017C764:
/* 8017C764 001796C4  C0 62 AE C4 */	lfs f3, lbl_803EB0C4@sda21(r2)
/* 8017C768 001796C8  FC 07 18 40 */	fcmpo cr0, f7, f3
/* 8017C76C 001796CC  40 81 00 60 */	ble .L_8017C7CC
/* 8017C770 001796D0  FC 80 38 34 */	frsqrte f4, f7
/* 8017C774 001796D4  C8 C2 AE C8 */	lfd f6, lbl_803EB0C8@sda21(r2)
/* 8017C778 001796D8  C8 A2 AE D0 */	lfd f5, lbl_803EB0D0@sda21(r2)
/* 8017C77C 001796DC  FC 64 01 32 */	fmul f3, f4, f4
/* 8017C780 001796E0  FC 86 01 32 */	fmul f4, f6, f4
/* 8017C784 001796E4  FC 67 00 F2 */	fmul f3, f7, f3
/* 8017C788 001796E8  FC 65 18 28 */	fsub f3, f5, f3
/* 8017C78C 001796EC  FC 84 00 F2 */	fmul f4, f4, f3
/* 8017C790 001796F0  FC 64 01 32 */	fmul f3, f4, f4
/* 8017C794 001796F4  FC 86 01 32 */	fmul f4, f6, f4
/* 8017C798 001796F8  FC 67 00 F2 */	fmul f3, f7, f3
/* 8017C79C 001796FC  FC 65 18 28 */	fsub f3, f5, f3
/* 8017C7A0 00179700  FC 84 00 F2 */	fmul f4, f4, f3
/* 8017C7A4 00179704  FC 64 01 32 */	fmul f3, f4, f4
/* 8017C7A8 00179708  FC 86 01 32 */	fmul f4, f6, f4
/* 8017C7AC 0017970C  FC 67 00 F2 */	fmul f3, f7, f3
/* 8017C7B0 00179710  FC 65 18 28 */	fsub f3, f5, f3
/* 8017C7B4 00179714  FC 64 00 F2 */	fmul f3, f4, f3
/* 8017C7B8 00179718  FC 67 00 F2 */	fmul f3, f7, f3
/* 8017C7BC 0017971C  FC 60 18 18 */	frsp f3, f3
/* 8017C7C0 00179720  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8017C7C4 00179724  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8017C7C8 00179728  48 00 00 08 */	b .L_8017C7D0
.L_8017C7CC:
/* 8017C7CC 0017972C  FC 60 38 90 */	fmr f3, f7
.L_8017C7D0:
/* 8017C7D0 00179730  EC 88 18 2A */	fadds f4, f8, f3
/* 8017C7D4 00179734  C0 63 00 00 */	lfs f3, 0(r3)
/* 8017C7D8 00179738  EC 88 20 24 */	fdivs f4, f8, f4
/* 8017C7DC 0017973C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8017C7E0 00179740  EC 24 00 72 */	fmuls f1, f4, f1
/* 8017C7E4 00179744  EC 04 00 32 */	fmuls f0, f4, f0
/* 8017C7E8 00179748  EC 43 10 2A */	fadds f2, f3, f2
/* 8017C7EC 0017974C  D0 46 00 00 */	stfs f2, 0(r6)
/* 8017C7F0 00179750  C0 43 00 04 */	lfs f2, 4(r3)
/* 8017C7F4 00179754  EC 22 08 2A */	fadds f1, f2, f1
/* 8017C7F8 00179758  D0 26 00 04 */	stfs f1, 4(r6)
/* 8017C7FC 0017975C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8017C800 00179760  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C804 00179764  D0 06 00 08 */	stfs f0, 8(r6)
.L_8017C808:
/* 8017C808 00179768  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8017C80C 0017976C  CB C1 00 58 */	lfd f30, 0x58(r1)
/* 8017C810 00179770  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8017C814 00179774  38 21 00 68 */	addi r1, r1, 0x68
/* 8017C818 00179778  4E 80 00 20 */	blr 
.endfn calcJointPos__13NsCalculationFRC8Vector3fRC8Vector3fffR8Vector3fR8Vector3f

.fn calcMat4toMat3__13NsCalculationFRC8Matrix4fR8Matrix3f, global
/* 8017C81C 0017977C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8017C820 00179780  D0 04 00 00 */	stfs f0, 0(r4)
/* 8017C824 00179784  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8017C828 00179788  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 8017C82C 0017978C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8017C830 00179790  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 8017C834 00179794  C0 03 00 04 */	lfs f0, 4(r3)
/* 8017C838 00179798  D0 04 00 04 */	stfs f0, 4(r4)
/* 8017C83C 0017979C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8017C840 001797A0  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 8017C844 001797A4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8017C848 001797A8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8017C84C 001797AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8017C850 001797B0  D0 04 00 08 */	stfs f0, 8(r4)
/* 8017C854 001797B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8017C858 001797B8  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 8017C85C 001797BC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8017C860 001797C0  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 8017C864 001797C4  4E 80 00 20 */	blr 
.endfn calcMat4toMat3__13NsCalculationFRC8Matrix4fR8Matrix3f

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
.obj lbl_803EB0B8, local
	.float 1.0
.endobj lbl_803EB0B8
.balign 4
.obj lbl_803EB0BC, local
	.float 0.5
.endobj lbl_803EB0BC
.balign 4
.obj lbl_803EB0C0, local
	.float 2.0
.endobj lbl_803EB0C0
.balign 4
.obj lbl_803EB0C4, local
	.float 0.0
.endobj lbl_803EB0C4
.balign 8
.obj lbl_803EB0C8, local
	.double 0.5
.endobj lbl_803EB0C8
.balign 8
.obj lbl_803EB0D0, local
	.double 3.0
.endobj lbl_803EB0D0
.balign 4
.obj lbl_803EB0D8, local
	.float 0.000001
.endobj lbl_803EB0D8
