.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.fn update__13ControllerMgrFv, global
/* 800471B4 00044114  7C 08 02 A6 */	mflr r0
/* 800471B8 00044118  3C 60 80 3A */	lis r3, sControllerPad@ha
/* 800471BC 0004411C  90 01 00 04 */	stw r0, 4(r1)
/* 800471C0 00044120  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800471C4 00044124  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800471C8 00044128  3B E3 D4 00 */	addi r31, r3, sControllerPad@l
/* 800471CC 0004412C  38 7F 00 00 */	addi r3, r31, 0
/* 800471D0 00044130  48 1B E1 35 */	bl PADRead
/* 800471D4 00044134  7F E3 FB 78 */	mr r3, r31
/* 800471D8 00044138  48 1B CB 25 */	bl PADClamp
/* 800471DC 0004413C  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 800471E0 00044140  3C 60 80 2A */	lis r3, padChannels@ha
/* 800471E4 00044144  38 83 56 CC */	addi r4, r3, padChannels@l
/* 800471E8 00044148  7C 00 07 74 */	extsb r0, r0
/* 800471EC 0004414C  2C 00 FF FF */	cmpwi r0, -1
/* 800471F0 00044150  38 60 00 00 */	li r3, 0
/* 800471F4 00044154  40 82 00 08 */	bne .L_800471FC
/* 800471F8 00044158  80 64 00 00 */	lwz r3, 0(r4)
.L_800471FC:
/* 800471FC 0004415C  38 BF 00 0C */	addi r5, r31, 0xc
/* 80047200 00044160  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 80047204 00044164  38 84 00 04 */	addi r4, r4, 4
/* 80047208 00044168  7C 00 07 74 */	extsb r0, r0
/* 8004720C 0004416C  2C 00 FF FF */	cmpwi r0, -1
/* 80047210 00044170  40 82 00 0C */	bne .L_8004721C
/* 80047214 00044174  80 04 00 00 */	lwz r0, 0(r4)
/* 80047218 00044178  7C 63 03 78 */	or r3, r3, r0
.L_8004721C:
/* 8004721C 0004417C  88 05 00 16 */	lbz r0, 0x16(r5)
/* 80047220 00044180  38 A5 00 0C */	addi r5, r5, 0xc
/* 80047224 00044184  38 84 00 04 */	addi r4, r4, 4
/* 80047228 00044188  7C 00 07 74 */	extsb r0, r0
/* 8004722C 0004418C  2C 00 FF FF */	cmpwi r0, -1
/* 80047230 00044190  40 82 00 0C */	bne .L_8004723C
/* 80047234 00044194  80 04 00 00 */	lwz r0, 0(r4)
/* 80047238 00044198  7C 63 03 78 */	or r3, r3, r0
.L_8004723C:
/* 8004723C 0004419C  88 05 00 16 */	lbz r0, 0x16(r5)
/* 80047240 000441A0  38 84 00 04 */	addi r4, r4, 4
/* 80047244 000441A4  7C 00 07 74 */	extsb r0, r0
/* 80047248 000441A8  2C 00 FF FF */	cmpwi r0, -1
/* 8004724C 000441AC  40 82 00 0C */	bne .L_80047258
/* 80047250 000441B0  80 04 00 00 */	lwz r0, 0(r4)
/* 80047254 000441B4  7C 63 03 78 */	or r3, r3, r0
.L_80047258:
/* 80047258 000441B8  28 03 00 00 */	cmplwi r3, 0
/* 8004725C 000441BC  41 82 00 08 */	beq .L_80047264
/* 80047260 000441C0  48 1B DA C5 */	bl PADReset
.L_80047264:
/* 80047264 000441C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80047268 000441C8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8004726C 000441CC  38 21 00 18 */	addi r1, r1, 0x18
/* 80047270 000441D0  7C 08 03 A6 */	mtlr r0
/* 80047274 000441D4  4E 80 00 20 */	blr 
.endfn update__13ControllerMgrFv

.fn keyDown__13ControllerMgrFi, global
/* 80047278 000441D8  3C 60 80 3A */	lis r3, sControllerPad@ha
/* 8004727C 000441DC  A0 03 D4 00 */	lhz r0, sControllerPad@l(r3)
/* 80047280 000441E0  7C 00 20 38 */	and r0, r0, r4
/* 80047284 000441E4  7C 60 00 D0 */	neg r3, r0
/* 80047288 000441E8  30 03 FF FF */	addic r0, r3, -1
/* 8004728C 000441EC  7C 00 19 10 */	subfe r0, r0, r3
/* 80047290 000441F0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80047294 000441F4  4E 80 00 20 */	blr 
.endfn keyDown__13ControllerMgrFi

.fn init__13ControllerMgrFv, global
/* 80047298 000441F8  7C 08 02 A6 */	mflr r0
/* 8004729C 000441FC  38 60 00 05 */	li r3, 5
/* 800472A0 00044200  90 01 00 04 */	stw r0, 4(r1)
/* 800472A4 00044204  94 21 FF F8 */	stwu r1, -8(r1)
/* 800472A8 00044208  48 1B E5 01 */	bl PADSetSpec
/* 800472AC 0004420C  48 1B DD 39 */	bl PADInit
/* 800472B0 00044210  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800472B4 00044214  38 21 00 08 */	addi r1, r1, 8
/* 800472B8 00044218  7C 08 03 A6 */	mtlr r0
/* 800472BC 0004421C  4E 80 00 20 */	blr 
.endfn init__13ControllerMgrFv

.fn updateController__13ControllerMgrFP10Controller, global
/* 800472C0 00044220  7C 08 02 A6 */	mflr r0
/* 800472C4 00044224  7C 83 23 78 */	mr r3, r4
/* 800472C8 00044228  90 01 00 04 */	stw r0, 4(r1)
/* 800472CC 0004422C  94 21 FF F8 */	stwu r1, -8(r1)
/* 800472D0 00044230  80 04 00 38 */	lwz r0, 0x38(r4)
/* 800472D4 00044234  3C 80 80 3A */	lis r4, sControllerPad@ha
/* 800472D8 00044238  38 A4 D4 00 */	addi r5, r4, sControllerPad@l
/* 800472DC 0004423C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800472E0 00044240  38 E5 FF F6 */	addi r7, r5, -10
/* 800472E4 00044244  7C 07 00 AE */	lbzx r0, r7, r0
/* 800472E8 00044248  39 05 FF F7 */	addi r8, r5, -9
/* 800472EC 0004424C  39 25 FF F8 */	addi r9, r5, -8
/* 800472F0 00044250  98 03 00 45 */	stb r0, 0x45(r3)
/* 800472F4 00044254  39 45 FF F9 */	addi r10, r5, -7
/* 800472F8 00044258  38 80 00 00 */	li r4, 0
/* 800472FC 0004425C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80047300 00044260  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80047304 00044264  7C 08 00 AE */	lbzx r0, r8, r0
/* 80047308 00044268  98 03 00 46 */	stb r0, 0x46(r3)
/* 8004730C 0004426C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80047310 00044270  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80047314 00044274  7C 09 00 AE */	lbzx r0, r9, r0
/* 80047318 00044278  98 03 00 47 */	stb r0, 0x47(r3)
/* 8004731C 0004427C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80047320 00044280  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80047324 00044284  7C 0A 00 AE */	lbzx r0, r10, r0
/* 80047328 00044288  98 03 00 48 */	stb r0, 0x48(r3)
/* 8004732C 0004428C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80047330 00044290  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80047334 00044294  7D 65 32 14 */	add r11, r5, r6
/* 80047338 00044298  A0 0B FF F4 */	lhz r0, -0xc(r11)
/* 8004733C 0004429C  54 0B 05 EF */	rlwinm. r11, r0, 0, 0x17, 0x17
/* 80047340 000442A0  41 82 00 08 */	beq .L_80047348
/* 80047344 000442A4  60 84 10 00 */	ori r4, r4, 0x1000
.L_80047348:
/* 80047348 000442A8  54 0B 05 AD */	rlwinm. r11, r0, 0, 0x16, 0x16
/* 8004734C 000442AC  41 82 00 08 */	beq .L_80047354
/* 80047350 000442B0  60 84 20 00 */	ori r4, r4, 0x2000
.L_80047354:
/* 80047354 000442B4  54 0B 05 6B */	rlwinm. r11, r0, 0, 0x15, 0x15
/* 80047358 000442B8  41 82 00 08 */	beq .L_80047360
/* 8004735C 000442BC  60 84 40 00 */	ori r4, r4, 0x4000
.L_80047360:
/* 80047360 000442C0  54 0B 05 29 */	rlwinm. r11, r0, 0, 0x14, 0x14
/* 80047364 000442C4  41 82 00 08 */	beq .L_8004736C
/* 80047368 000442C8  60 84 80 00 */	ori r4, r4, 0x8000
.L_8004736C:
/* 8004736C 000442CC  54 0B 06 F7 */	rlwinm. r11, r0, 0, 0x1b, 0x1b
/* 80047370 000442D0  41 82 00 08 */	beq .L_80047378
/* 80047374 000442D4  64 84 00 01 */	oris r4, r4, 1
.L_80047378:
/* 80047378 000442D8  54 0B 06 B5 */	rlwinm. r11, r0, 0, 0x1a, 0x1a
/* 8004737C 000442DC  41 82 00 08 */	beq .L_80047384
/* 80047380 000442E0  64 84 00 04 */	oris r4, r4, 4
.L_80047384:
/* 80047384 000442E4  54 0B 06 73 */	rlwinm. r11, r0, 0, 0x19, 0x19
/* 80047388 000442E8  41 82 00 08 */	beq .L_80047390
/* 8004738C 000442EC  64 84 00 02 */	oris r4, r4, 2
.L_80047390:
/* 80047390 000442F0  7D 67 30 AE */	lbzx r11, r7, r6
/* 80047394 000442F4  7D 67 07 74 */	extsb r7, r11
/* 80047398 000442F8  2C 07 FF E0 */	cmpwi r7, -32
/* 8004739C 000442FC  40 80 00 08 */	bge .L_800473A4
/* 800473A0 00044300  64 84 00 40 */	oris r4, r4, 0x40
.L_800473A4:
/* 800473A4 00044304  7D 67 07 74 */	extsb r7, r11
/* 800473A8 00044308  2C 07 00 20 */	cmpwi r7, 0x20
/* 800473AC 0004430C  40 81 00 08 */	ble .L_800473B4
/* 800473B0 00044310  64 84 00 10 */	oris r4, r4, 0x10
.L_800473B4:
/* 800473B4 00044314  7D 08 30 AE */	lbzx r8, r8, r6
/* 800473B8 00044318  7D 07 07 74 */	extsb r7, r8
/* 800473BC 0004431C  2C 07 FF E0 */	cmpwi r7, -32
/* 800473C0 00044320  40 80 00 08 */	bge .L_800473C8
/* 800473C4 00044324  64 84 00 20 */	oris r4, r4, 0x20
.L_800473C8:
/* 800473C8 00044328  7D 07 07 74 */	extsb r7, r8
/* 800473CC 0004432C  2C 07 00 20 */	cmpwi r7, 0x20
/* 800473D0 00044330  40 81 00 08 */	ble .L_800473D8
/* 800473D4 00044334  64 84 00 08 */	oris r4, r4, 8
.L_800473D8:
/* 800473D8 00044338  7D 09 30 AE */	lbzx r8, r9, r6
/* 800473DC 0004433C  7D 07 07 74 */	extsb r7, r8
/* 800473E0 00044340  2C 07 FF E0 */	cmpwi r7, -32
/* 800473E4 00044344  40 80 00 08 */	bge .L_800473EC
/* 800473E8 00044348  60 84 00 01 */	ori r4, r4, 1
.L_800473EC:
/* 800473EC 0004434C  7D 07 07 74 */	extsb r7, r8
/* 800473F0 00044350  2C 07 00 20 */	cmpwi r7, 0x20
/* 800473F4 00044354  40 81 00 08 */	ble .L_800473FC
/* 800473F8 00044358  60 84 00 02 */	ori r4, r4, 2
.L_800473FC:
/* 800473FC 0004435C  7D 0A 30 AE */	lbzx r8, r10, r6
/* 80047400 00044360  7D 07 07 74 */	extsb r7, r8
/* 80047404 00044364  2C 07 FF E0 */	cmpwi r7, -32
/* 80047408 00044368  40 80 00 08 */	bge .L_80047410
/* 8004740C 0004436C  60 84 00 08 */	ori r4, r4, 8
.L_80047410:
/* 80047410 00044370  7D 07 07 74 */	extsb r7, r8
/* 80047414 00044374  2C 07 00 20 */	cmpwi r7, 0x20
/* 80047418 00044378  40 81 00 08 */	ble .L_80047420
/* 8004741C 0004437C  60 84 00 04 */	ori r4, r4, 4
.L_80047420:
/* 80047420 00044380  54 07 07 FF */	clrlwi. r7, r0, 0x1f
/* 80047424 00044384  41 82 00 08 */	beq .L_8004742C
/* 80047428 00044388  60 84 01 00 */	ori r4, r4, 0x100
.L_8004742C:
/* 8004742C 0004438C  54 07 07 BD */	rlwinm. r7, r0, 0, 0x1e, 0x1e
/* 80047430 00044390  41 82 00 08 */	beq .L_80047438
/* 80047434 00044394  60 84 02 00 */	ori r4, r4, 0x200
.L_80047438:
/* 80047438 00044398  54 07 07 39 */	rlwinm. r7, r0, 0, 0x1c, 0x1c
/* 8004743C 0004439C  41 82 00 08 */	beq .L_80047444
/* 80047440 000443A0  60 84 04 00 */	ori r4, r4, 0x400
.L_80047444:
/* 80047444 000443A4  54 07 07 7B */	rlwinm. r7, r0, 0, 0x1d, 0x1d
/* 80047448 000443A8  41 82 00 08 */	beq .L_80047450
/* 8004744C 000443AC  60 84 08 00 */	ori r4, r4, 0x800
.L_80047450:
/* 80047450 000443B0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80047454 000443B4  41 82 00 08 */	beq .L_8004745C
/* 80047458 000443B8  64 84 01 00 */	oris r4, r4, 0x100
.L_8004745C:
/* 8004745C 000443BC  7C C5 32 14 */	add r6, r5, r6
/* 80047460 000443C0  88 06 FF FC */	lbz r0, -4(r6)
/* 80047464 000443C4  98 03 00 49 */	stb r0, 0x49(r3)
/* 80047468 000443C8  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8004746C 000443CC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80047470 000443D0  7C C5 02 14 */	add r6, r5, r0
/* 80047474 000443D4  88 06 FF FD */	lbz r0, -3(r6)
/* 80047478 000443D8  98 03 00 4A */	stb r0, 0x4a(r3)
/* 8004747C 000443DC  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80047480 000443E0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80047484 000443E4  7C C5 02 14 */	add r6, r5, r0
/* 80047488 000443E8  88 06 FF FA */	lbz r0, -6(r6)
/* 8004748C 000443EC  98 03 00 4B */	stb r0, 0x4b(r3)
/* 80047490 000443F0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80047494 000443F4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80047498 000443F8  7C A5 02 14 */	add r5, r5, r0
/* 8004749C 000443FC  88 05 FF FB */	lbz r0, -5(r5)
/* 800474A0 00044400  98 03 00 4C */	stb r0, 0x4c(r3)
/* 800474A4 00044404  4B FF 95 31 */	bl updateCont__10ControllerFUl
/* 800474A8 00044408  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800474AC 0004440C  38 21 00 08 */	addi r1, r1, 8
/* 800474B0 00044410  7C 08 03 A6 */	mtlr r0
/* 800474B4 00044414  4E 80 00 20 */	blr 
.endfn updateController__13ControllerMgrFP10Controller

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
.obj lbl_802A56A8, local
	.asciz "controllerMgr.cpp"
.endobj lbl_802A56A8
.balign 4
.obj lbl_802A56BC, local
	.asciz "ControllerMgr"
.endobj lbl_802A56BC
.balign 4
.obj padChannels, local
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x20000000
	.4byte 0x10000000
.endobj padChannels
.obj __vt__13ControllerMgr, global
	.4byte __RTTI__13ControllerMgr
	.4byte 0
	.4byte keyDown__13ControllerMgrFi
.endobj __vt__13ControllerMgr

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
.obj __RTTI__13ControllerMgr, local
	.4byte lbl_802A56BC
	.4byte 0
.endobj __RTTI__13ControllerMgr
