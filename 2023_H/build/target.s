
D:/G4CODE/2023_D/build/target.elf:     file format elf32-littlearm


Disassembly of section .text:

080001d8 <__aeabi_drsub>:
 80001d8:	f081 4100 	eor.w	r1, r1, #2147483648	@ 0x80000000
 80001dc:	e002      	b.n	80001e4 <__adddf3>
 80001de:	bf00      	nop

080001e0 <__aeabi_dsub>:
 80001e0:	f083 4300 	eor.w	r3, r3, #2147483648	@ 0x80000000

080001e4 <__adddf3>:
 80001e4:	b530      	push	{r4, r5, lr}
 80001e6:	ea4f 0441 	mov.w	r4, r1, lsl #1
 80001ea:	ea4f 0543 	mov.w	r5, r3, lsl #1
 80001ee:	ea94 0f05 	teq	r4, r5
 80001f2:	bf08      	it	eq
 80001f4:	ea90 0f02 	teqeq	r0, r2
 80001f8:	bf1f      	itttt	ne
 80001fa:	ea54 0c00 	orrsne.w	ip, r4, r0
 80001fe:	ea55 0c02 	orrsne.w	ip, r5, r2
 8000202:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8000206:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 800020a:	f000 80e2 	beq.w	80003d2 <__adddf3+0x1ee>
 800020e:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8000212:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 8000216:	bfb8      	it	lt
 8000218:	426d      	neglt	r5, r5
 800021a:	dd0c      	ble.n	8000236 <__adddf3+0x52>
 800021c:	442c      	add	r4, r5
 800021e:	ea80 0202 	eor.w	r2, r0, r2
 8000222:	ea81 0303 	eor.w	r3, r1, r3
 8000226:	ea82 0000 	eor.w	r0, r2, r0
 800022a:	ea83 0101 	eor.w	r1, r3, r1
 800022e:	ea80 0202 	eor.w	r2, r0, r2
 8000232:	ea81 0303 	eor.w	r3, r1, r3
 8000236:	2d36      	cmp	r5, #54	@ 0x36
 8000238:	bf88      	it	hi
 800023a:	bd30      	pophi	{r4, r5, pc}
 800023c:	f011 4f00 	tst.w	r1, #2147483648	@ 0x80000000
 8000240:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000244:	f44f 1c80 	mov.w	ip, #1048576	@ 0x100000
 8000248:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 800024c:	d002      	beq.n	8000254 <__adddf3+0x70>
 800024e:	4240      	negs	r0, r0
 8000250:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000254:	f013 4f00 	tst.w	r3, #2147483648	@ 0x80000000
 8000258:	ea4f 3303 	mov.w	r3, r3, lsl #12
 800025c:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8000260:	d002      	beq.n	8000268 <__adddf3+0x84>
 8000262:	4252      	negs	r2, r2
 8000264:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8000268:	ea94 0f05 	teq	r4, r5
 800026c:	f000 80a7 	beq.w	80003be <__adddf3+0x1da>
 8000270:	f1a4 0401 	sub.w	r4, r4, #1
 8000274:	f1d5 0e20 	rsbs	lr, r5, #32
 8000278:	db0d      	blt.n	8000296 <__adddf3+0xb2>
 800027a:	fa02 fc0e 	lsl.w	ip, r2, lr
 800027e:	fa22 f205 	lsr.w	r2, r2, r5
 8000282:	1880      	adds	r0, r0, r2
 8000284:	f141 0100 	adc.w	r1, r1, #0
 8000288:	fa03 f20e 	lsl.w	r2, r3, lr
 800028c:	1880      	adds	r0, r0, r2
 800028e:	fa43 f305 	asr.w	r3, r3, r5
 8000292:	4159      	adcs	r1, r3
 8000294:	e00e      	b.n	80002b4 <__adddf3+0xd0>
 8000296:	f1a5 0520 	sub.w	r5, r5, #32
 800029a:	f10e 0e20 	add.w	lr, lr, #32
 800029e:	2a01      	cmp	r2, #1
 80002a0:	fa03 fc0e 	lsl.w	ip, r3, lr
 80002a4:	bf28      	it	cs
 80002a6:	f04c 0c02 	orrcs.w	ip, ip, #2
 80002aa:	fa43 f305 	asr.w	r3, r3, r5
 80002ae:	18c0      	adds	r0, r0, r3
 80002b0:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 80002b4:	f001 4500 	and.w	r5, r1, #2147483648	@ 0x80000000
 80002b8:	d507      	bpl.n	80002ca <__adddf3+0xe6>
 80002ba:	f04f 0e00 	mov.w	lr, #0
 80002be:	f1dc 0c00 	rsbs	ip, ip, #0
 80002c2:	eb7e 0000 	sbcs.w	r0, lr, r0
 80002c6:	eb6e 0101 	sbc.w	r1, lr, r1
 80002ca:	f5b1 1f80 	cmp.w	r1, #1048576	@ 0x100000
 80002ce:	d31b      	bcc.n	8000308 <__adddf3+0x124>
 80002d0:	f5b1 1f00 	cmp.w	r1, #2097152	@ 0x200000
 80002d4:	d30c      	bcc.n	80002f0 <__adddf3+0x10c>
 80002d6:	0849      	lsrs	r1, r1, #1
 80002d8:	ea5f 0030 	movs.w	r0, r0, rrx
 80002dc:	ea4f 0c3c 	mov.w	ip, ip, rrx
 80002e0:	f104 0401 	add.w	r4, r4, #1
 80002e4:	ea4f 5244 	mov.w	r2, r4, lsl #21
 80002e8:	f512 0f80 	cmn.w	r2, #4194304	@ 0x400000
 80002ec:	f080 809a 	bcs.w	8000424 <__adddf3+0x240>
 80002f0:	f1bc 4f00 	cmp.w	ip, #2147483648	@ 0x80000000
 80002f4:	bf08      	it	eq
 80002f6:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80002fa:	f150 0000 	adcs.w	r0, r0, #0
 80002fe:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000302:	ea41 0105 	orr.w	r1, r1, r5
 8000306:	bd30      	pop	{r4, r5, pc}
 8000308:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 800030c:	4140      	adcs	r0, r0
 800030e:	eb41 0101 	adc.w	r1, r1, r1
 8000312:	3c01      	subs	r4, #1
 8000314:	bf28      	it	cs
 8000316:	f5b1 1f80 	cmpcs.w	r1, #1048576	@ 0x100000
 800031a:	d2e9      	bcs.n	80002f0 <__adddf3+0x10c>
 800031c:	f091 0f00 	teq	r1, #0
 8000320:	bf04      	itt	eq
 8000322:	4601      	moveq	r1, r0
 8000324:	2000      	moveq	r0, #0
 8000326:	fab1 f381 	clz	r3, r1
 800032a:	bf08      	it	eq
 800032c:	3320      	addeq	r3, #32
 800032e:	f1a3 030b 	sub.w	r3, r3, #11
 8000332:	f1b3 0220 	subs.w	r2, r3, #32
 8000336:	da0c      	bge.n	8000352 <__adddf3+0x16e>
 8000338:	320c      	adds	r2, #12
 800033a:	dd08      	ble.n	800034e <__adddf3+0x16a>
 800033c:	f102 0c14 	add.w	ip, r2, #20
 8000340:	f1c2 020c 	rsb	r2, r2, #12
 8000344:	fa01 f00c 	lsl.w	r0, r1, ip
 8000348:	fa21 f102 	lsr.w	r1, r1, r2
 800034c:	e00c      	b.n	8000368 <__adddf3+0x184>
 800034e:	f102 0214 	add.w	r2, r2, #20
 8000352:	bfd8      	it	le
 8000354:	f1c2 0c20 	rsble	ip, r2, #32
 8000358:	fa01 f102 	lsl.w	r1, r1, r2
 800035c:	fa20 fc0c 	lsr.w	ip, r0, ip
 8000360:	bfdc      	itt	le
 8000362:	ea41 010c 	orrle.w	r1, r1, ip
 8000366:	4090      	lslle	r0, r2
 8000368:	1ae4      	subs	r4, r4, r3
 800036a:	bfa2      	ittt	ge
 800036c:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8000370:	4329      	orrge	r1, r5
 8000372:	bd30      	popge	{r4, r5, pc}
 8000374:	ea6f 0404 	mvn.w	r4, r4
 8000378:	3c1f      	subs	r4, #31
 800037a:	da1c      	bge.n	80003b6 <__adddf3+0x1d2>
 800037c:	340c      	adds	r4, #12
 800037e:	dc0e      	bgt.n	800039e <__adddf3+0x1ba>
 8000380:	f104 0414 	add.w	r4, r4, #20
 8000384:	f1c4 0220 	rsb	r2, r4, #32
 8000388:	fa20 f004 	lsr.w	r0, r0, r4
 800038c:	fa01 f302 	lsl.w	r3, r1, r2
 8000390:	ea40 0003 	orr.w	r0, r0, r3
 8000394:	fa21 f304 	lsr.w	r3, r1, r4
 8000398:	ea45 0103 	orr.w	r1, r5, r3
 800039c:	bd30      	pop	{r4, r5, pc}
 800039e:	f1c4 040c 	rsb	r4, r4, #12
 80003a2:	f1c4 0220 	rsb	r2, r4, #32
 80003a6:	fa20 f002 	lsr.w	r0, r0, r2
 80003aa:	fa01 f304 	lsl.w	r3, r1, r4
 80003ae:	ea40 0003 	orr.w	r0, r0, r3
 80003b2:	4629      	mov	r1, r5
 80003b4:	bd30      	pop	{r4, r5, pc}
 80003b6:	fa21 f004 	lsr.w	r0, r1, r4
 80003ba:	4629      	mov	r1, r5
 80003bc:	bd30      	pop	{r4, r5, pc}
 80003be:	f094 0f00 	teq	r4, #0
 80003c2:	f483 1380 	eor.w	r3, r3, #1048576	@ 0x100000
 80003c6:	bf06      	itte	eq
 80003c8:	f481 1180 	eoreq.w	r1, r1, #1048576	@ 0x100000
 80003cc:	3401      	addeq	r4, #1
 80003ce:	3d01      	subne	r5, #1
 80003d0:	e74e      	b.n	8000270 <__adddf3+0x8c>
 80003d2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80003d6:	bf18      	it	ne
 80003d8:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80003dc:	d029      	beq.n	8000432 <__adddf3+0x24e>
 80003de:	ea94 0f05 	teq	r4, r5
 80003e2:	bf08      	it	eq
 80003e4:	ea90 0f02 	teqeq	r0, r2
 80003e8:	d005      	beq.n	80003f6 <__adddf3+0x212>
 80003ea:	ea54 0c00 	orrs.w	ip, r4, r0
 80003ee:	bf04      	itt	eq
 80003f0:	4619      	moveq	r1, r3
 80003f2:	4610      	moveq	r0, r2
 80003f4:	bd30      	pop	{r4, r5, pc}
 80003f6:	ea91 0f03 	teq	r1, r3
 80003fa:	bf1e      	ittt	ne
 80003fc:	2100      	movne	r1, #0
 80003fe:	2000      	movne	r0, #0
 8000400:	bd30      	popne	{r4, r5, pc}
 8000402:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8000406:	d105      	bne.n	8000414 <__adddf3+0x230>
 8000408:	0040      	lsls	r0, r0, #1
 800040a:	4149      	adcs	r1, r1
 800040c:	bf28      	it	cs
 800040e:	f041 4100 	orrcs.w	r1, r1, #2147483648	@ 0x80000000
 8000412:	bd30      	pop	{r4, r5, pc}
 8000414:	f514 0480 	adds.w	r4, r4, #4194304	@ 0x400000
 8000418:	bf3c      	itt	cc
 800041a:	f501 1180 	addcc.w	r1, r1, #1048576	@ 0x100000
 800041e:	bd30      	popcc	{r4, r5, pc}
 8000420:	f001 4500 	and.w	r5, r1, #2147483648	@ 0x80000000
 8000424:	f045 41fe 	orr.w	r1, r5, #2130706432	@ 0x7f000000
 8000428:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
 800042c:	f04f 0000 	mov.w	r0, #0
 8000430:	bd30      	pop	{r4, r5, pc}
 8000432:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000436:	bf1a      	itte	ne
 8000438:	4619      	movne	r1, r3
 800043a:	4610      	movne	r0, r2
 800043c:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8000440:	bf1c      	itt	ne
 8000442:	460b      	movne	r3, r1
 8000444:	4602      	movne	r2, r0
 8000446:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 800044a:	bf06      	itte	eq
 800044c:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8000450:	ea91 0f03 	teqeq	r1, r3
 8000454:	f441 2100 	orrne.w	r1, r1, #524288	@ 0x80000
 8000458:	bd30      	pop	{r4, r5, pc}
 800045a:	bf00      	nop

0800045c <__aeabi_ui2d>:
 800045c:	f090 0f00 	teq	r0, #0
 8000460:	bf04      	itt	eq
 8000462:	2100      	moveq	r1, #0
 8000464:	4770      	bxeq	lr
 8000466:	b530      	push	{r4, r5, lr}
 8000468:	f44f 6480 	mov.w	r4, #1024	@ 0x400
 800046c:	f104 0432 	add.w	r4, r4, #50	@ 0x32
 8000470:	f04f 0500 	mov.w	r5, #0
 8000474:	f04f 0100 	mov.w	r1, #0
 8000478:	e750      	b.n	800031c <__adddf3+0x138>
 800047a:	bf00      	nop

0800047c <__aeabi_i2d>:
 800047c:	f090 0f00 	teq	r0, #0
 8000480:	bf04      	itt	eq
 8000482:	2100      	moveq	r1, #0
 8000484:	4770      	bxeq	lr
 8000486:	b530      	push	{r4, r5, lr}
 8000488:	f44f 6480 	mov.w	r4, #1024	@ 0x400
 800048c:	f104 0432 	add.w	r4, r4, #50	@ 0x32
 8000490:	f010 4500 	ands.w	r5, r0, #2147483648	@ 0x80000000
 8000494:	bf48      	it	mi
 8000496:	4240      	negmi	r0, r0
 8000498:	f04f 0100 	mov.w	r1, #0
 800049c:	e73e      	b.n	800031c <__adddf3+0x138>
 800049e:	bf00      	nop

080004a0 <__aeabi_f2d>:
 80004a0:	0042      	lsls	r2, r0, #1
 80004a2:	ea4f 01e2 	mov.w	r1, r2, asr #3
 80004a6:	ea4f 0131 	mov.w	r1, r1, rrx
 80004aa:	ea4f 7002 	mov.w	r0, r2, lsl #28
 80004ae:	bf1f      	itttt	ne
 80004b0:	f012 437f 	andsne.w	r3, r2, #4278190080	@ 0xff000000
 80004b4:	f093 4f7f 	teqne	r3, #4278190080	@ 0xff000000
 80004b8:	f081 5160 	eorne.w	r1, r1, #939524096	@ 0x38000000
 80004bc:	4770      	bxne	lr
 80004be:	f032 427f 	bics.w	r2, r2, #4278190080	@ 0xff000000
 80004c2:	bf08      	it	eq
 80004c4:	4770      	bxeq	lr
 80004c6:	f093 4f7f 	teq	r3, #4278190080	@ 0xff000000
 80004ca:	bf04      	itt	eq
 80004cc:	f441 2100 	orreq.w	r1, r1, #524288	@ 0x80000
 80004d0:	4770      	bxeq	lr
 80004d2:	b530      	push	{r4, r5, lr}
 80004d4:	f44f 7460 	mov.w	r4, #896	@ 0x380
 80004d8:	f001 4500 	and.w	r5, r1, #2147483648	@ 0x80000000
 80004dc:	f021 4100 	bic.w	r1, r1, #2147483648	@ 0x80000000
 80004e0:	e71c      	b.n	800031c <__adddf3+0x138>
 80004e2:	bf00      	nop

080004e4 <__aeabi_ul2d>:
 80004e4:	ea50 0201 	orrs.w	r2, r0, r1
 80004e8:	bf08      	it	eq
 80004ea:	4770      	bxeq	lr
 80004ec:	b530      	push	{r4, r5, lr}
 80004ee:	f04f 0500 	mov.w	r5, #0
 80004f2:	e00a      	b.n	800050a <__aeabi_l2d+0x16>

080004f4 <__aeabi_l2d>:
 80004f4:	ea50 0201 	orrs.w	r2, r0, r1
 80004f8:	bf08      	it	eq
 80004fa:	4770      	bxeq	lr
 80004fc:	b530      	push	{r4, r5, lr}
 80004fe:	f011 4500 	ands.w	r5, r1, #2147483648	@ 0x80000000
 8000502:	d502      	bpl.n	800050a <__aeabi_l2d+0x16>
 8000504:	4240      	negs	r0, r0
 8000506:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800050a:	f44f 6480 	mov.w	r4, #1024	@ 0x400
 800050e:	f104 0432 	add.w	r4, r4, #50	@ 0x32
 8000512:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8000516:	f43f aed8 	beq.w	80002ca <__adddf3+0xe6>
 800051a:	f04f 0203 	mov.w	r2, #3
 800051e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000522:	bf18      	it	ne
 8000524:	3203      	addne	r2, #3
 8000526:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 800052a:	bf18      	it	ne
 800052c:	3203      	addne	r2, #3
 800052e:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8000532:	f1c2 0320 	rsb	r3, r2, #32
 8000536:	fa00 fc03 	lsl.w	ip, r0, r3
 800053a:	fa20 f002 	lsr.w	r0, r0, r2
 800053e:	fa01 fe03 	lsl.w	lr, r1, r3
 8000542:	ea40 000e 	orr.w	r0, r0, lr
 8000546:	fa21 f102 	lsr.w	r1, r1, r2
 800054a:	4414      	add	r4, r2
 800054c:	e6bd      	b.n	80002ca <__adddf3+0xe6>
 800054e:	bf00      	nop

08000550 <__aeabi_dmul>:
 8000550:	b570      	push	{r4, r5, r6, lr}
 8000552:	f04f 0cff 	mov.w	ip, #255	@ 0xff
 8000556:	f44c 6ce0 	orr.w	ip, ip, #1792	@ 0x700
 800055a:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 800055e:	bf1d      	ittte	ne
 8000560:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000564:	ea94 0f0c 	teqne	r4, ip
 8000568:	ea95 0f0c 	teqne	r5, ip
 800056c:	f000 f8de 	bleq	800072c <__aeabi_dmul+0x1dc>
 8000570:	442c      	add	r4, r5
 8000572:	ea81 0603 	eor.w	r6, r1, r3
 8000576:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 800057a:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 800057e:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8000582:	bf18      	it	ne
 8000584:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8000588:	f441 1180 	orr.w	r1, r1, #1048576	@ 0x100000
 800058c:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8000590:	d038      	beq.n	8000604 <__aeabi_dmul+0xb4>
 8000592:	fba0 ce02 	umull	ip, lr, r0, r2
 8000596:	f04f 0500 	mov.w	r5, #0
 800059a:	fbe1 e502 	umlal	lr, r5, r1, r2
 800059e:	f006 4200 	and.w	r2, r6, #2147483648	@ 0x80000000
 80005a2:	fbe0 e503 	umlal	lr, r5, r0, r3
 80005a6:	f04f 0600 	mov.w	r6, #0
 80005aa:	fbe1 5603 	umlal	r5, r6, r1, r3
 80005ae:	f09c 0f00 	teq	ip, #0
 80005b2:	bf18      	it	ne
 80005b4:	f04e 0e01 	orrne.w	lr, lr, #1
 80005b8:	f1a4 04ff 	sub.w	r4, r4, #255	@ 0xff
 80005bc:	f5b6 7f00 	cmp.w	r6, #512	@ 0x200
 80005c0:	f564 7440 	sbc.w	r4, r4, #768	@ 0x300
 80005c4:	d204      	bcs.n	80005d0 <__aeabi_dmul+0x80>
 80005c6:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 80005ca:	416d      	adcs	r5, r5
 80005cc:	eb46 0606 	adc.w	r6, r6, r6
 80005d0:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 80005d4:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 80005d8:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 80005dc:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 80005e0:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 80005e4:	f1b4 0cfd 	subs.w	ip, r4, #253	@ 0xfd
 80005e8:	bf88      	it	hi
 80005ea:	f5bc 6fe0 	cmphi.w	ip, #1792	@ 0x700
 80005ee:	d81e      	bhi.n	800062e <__aeabi_dmul+0xde>
 80005f0:	f1be 4f00 	cmp.w	lr, #2147483648	@ 0x80000000
 80005f4:	bf08      	it	eq
 80005f6:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 80005fa:	f150 0000 	adcs.w	r0, r0, #0
 80005fe:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000602:	bd70      	pop	{r4, r5, r6, pc}
 8000604:	f006 4600 	and.w	r6, r6, #2147483648	@ 0x80000000
 8000608:	ea46 0101 	orr.w	r1, r6, r1
 800060c:	ea40 0002 	orr.w	r0, r0, r2
 8000610:	ea81 0103 	eor.w	r1, r1, r3
 8000614:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8000618:	bfc2      	ittt	gt
 800061a:	ebd4 050c 	rsbsgt	r5, r4, ip
 800061e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000622:	bd70      	popgt	{r4, r5, r6, pc}
 8000624:	f441 1180 	orr.w	r1, r1, #1048576	@ 0x100000
 8000628:	f04f 0e00 	mov.w	lr, #0
 800062c:	3c01      	subs	r4, #1
 800062e:	f300 80ab 	bgt.w	8000788 <__aeabi_dmul+0x238>
 8000632:	f114 0f36 	cmn.w	r4, #54	@ 0x36
 8000636:	bfde      	ittt	le
 8000638:	2000      	movle	r0, #0
 800063a:	f001 4100 	andle.w	r1, r1, #2147483648	@ 0x80000000
 800063e:	bd70      	pople	{r4, r5, r6, pc}
 8000640:	f1c4 0400 	rsb	r4, r4, #0
 8000644:	3c20      	subs	r4, #32
 8000646:	da35      	bge.n	80006b4 <__aeabi_dmul+0x164>
 8000648:	340c      	adds	r4, #12
 800064a:	dc1b      	bgt.n	8000684 <__aeabi_dmul+0x134>
 800064c:	f104 0414 	add.w	r4, r4, #20
 8000650:	f1c4 0520 	rsb	r5, r4, #32
 8000654:	fa00 f305 	lsl.w	r3, r0, r5
 8000658:	fa20 f004 	lsr.w	r0, r0, r4
 800065c:	fa01 f205 	lsl.w	r2, r1, r5
 8000660:	ea40 0002 	orr.w	r0, r0, r2
 8000664:	f001 4200 	and.w	r2, r1, #2147483648	@ 0x80000000
 8000668:	f021 4100 	bic.w	r1, r1, #2147483648	@ 0x80000000
 800066c:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000670:	fa21 f604 	lsr.w	r6, r1, r4
 8000674:	eb42 0106 	adc.w	r1, r2, r6
 8000678:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 800067c:	bf08      	it	eq
 800067e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000682:	bd70      	pop	{r4, r5, r6, pc}
 8000684:	f1c4 040c 	rsb	r4, r4, #12
 8000688:	f1c4 0520 	rsb	r5, r4, #32
 800068c:	fa00 f304 	lsl.w	r3, r0, r4
 8000690:	fa20 f005 	lsr.w	r0, r0, r5
 8000694:	fa01 f204 	lsl.w	r2, r1, r4
 8000698:	ea40 0002 	orr.w	r0, r0, r2
 800069c:	f001 4100 	and.w	r1, r1, #2147483648	@ 0x80000000
 80006a0:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 80006a4:	f141 0100 	adc.w	r1, r1, #0
 80006a8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80006ac:	bf08      	it	eq
 80006ae:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80006b2:	bd70      	pop	{r4, r5, r6, pc}
 80006b4:	f1c4 0520 	rsb	r5, r4, #32
 80006b8:	fa00 f205 	lsl.w	r2, r0, r5
 80006bc:	ea4e 0e02 	orr.w	lr, lr, r2
 80006c0:	fa20 f304 	lsr.w	r3, r0, r4
 80006c4:	fa01 f205 	lsl.w	r2, r1, r5
 80006c8:	ea43 0302 	orr.w	r3, r3, r2
 80006cc:	fa21 f004 	lsr.w	r0, r1, r4
 80006d0:	f001 4100 	and.w	r1, r1, #2147483648	@ 0x80000000
 80006d4:	fa21 f204 	lsr.w	r2, r1, r4
 80006d8:	ea20 0002 	bic.w	r0, r0, r2
 80006dc:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 80006e0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80006e4:	bf08      	it	eq
 80006e6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80006ea:	bd70      	pop	{r4, r5, r6, pc}
 80006ec:	f094 0f00 	teq	r4, #0
 80006f0:	d10f      	bne.n	8000712 <__aeabi_dmul+0x1c2>
 80006f2:	f001 4600 	and.w	r6, r1, #2147483648	@ 0x80000000
 80006f6:	0040      	lsls	r0, r0, #1
 80006f8:	eb41 0101 	adc.w	r1, r1, r1
 80006fc:	f411 1f80 	tst.w	r1, #1048576	@ 0x100000
 8000700:	bf08      	it	eq
 8000702:	3c01      	subeq	r4, #1
 8000704:	d0f7      	beq.n	80006f6 <__aeabi_dmul+0x1a6>
 8000706:	ea41 0106 	orr.w	r1, r1, r6
 800070a:	f095 0f00 	teq	r5, #0
 800070e:	bf18      	it	ne
 8000710:	4770      	bxne	lr
 8000712:	f003 4600 	and.w	r6, r3, #2147483648	@ 0x80000000
 8000716:	0052      	lsls	r2, r2, #1
 8000718:	eb43 0303 	adc.w	r3, r3, r3
 800071c:	f413 1f80 	tst.w	r3, #1048576	@ 0x100000
 8000720:	bf08      	it	eq
 8000722:	3d01      	subeq	r5, #1
 8000724:	d0f7      	beq.n	8000716 <__aeabi_dmul+0x1c6>
 8000726:	ea43 0306 	orr.w	r3, r3, r6
 800072a:	4770      	bx	lr
 800072c:	ea94 0f0c 	teq	r4, ip
 8000730:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000734:	bf18      	it	ne
 8000736:	ea95 0f0c 	teqne	r5, ip
 800073a:	d00c      	beq.n	8000756 <__aeabi_dmul+0x206>
 800073c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000740:	bf18      	it	ne
 8000742:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000746:	d1d1      	bne.n	80006ec <__aeabi_dmul+0x19c>
 8000748:	ea81 0103 	eor.w	r1, r1, r3
 800074c:	f001 4100 	and.w	r1, r1, #2147483648	@ 0x80000000
 8000750:	f04f 0000 	mov.w	r0, #0
 8000754:	bd70      	pop	{r4, r5, r6, pc}
 8000756:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 800075a:	bf06      	itte	eq
 800075c:	4610      	moveq	r0, r2
 800075e:	4619      	moveq	r1, r3
 8000760:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000764:	d019      	beq.n	800079a <__aeabi_dmul+0x24a>
 8000766:	ea94 0f0c 	teq	r4, ip
 800076a:	d102      	bne.n	8000772 <__aeabi_dmul+0x222>
 800076c:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000770:	d113      	bne.n	800079a <__aeabi_dmul+0x24a>
 8000772:	ea95 0f0c 	teq	r5, ip
 8000776:	d105      	bne.n	8000784 <__aeabi_dmul+0x234>
 8000778:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 800077c:	bf1c      	itt	ne
 800077e:	4610      	movne	r0, r2
 8000780:	4619      	movne	r1, r3
 8000782:	d10a      	bne.n	800079a <__aeabi_dmul+0x24a>
 8000784:	ea81 0103 	eor.w	r1, r1, r3
 8000788:	f001 4100 	and.w	r1, r1, #2147483648	@ 0x80000000
 800078c:	f041 41fe 	orr.w	r1, r1, #2130706432	@ 0x7f000000
 8000790:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
 8000794:	f04f 0000 	mov.w	r0, #0
 8000798:	bd70      	pop	{r4, r5, r6, pc}
 800079a:	f041 41fe 	orr.w	r1, r1, #2130706432	@ 0x7f000000
 800079e:	f441 0178 	orr.w	r1, r1, #16252928	@ 0xf80000
 80007a2:	bd70      	pop	{r4, r5, r6, pc}

080007a4 <__aeabi_ddiv>:
 80007a4:	b570      	push	{r4, r5, r6, lr}
 80007a6:	f04f 0cff 	mov.w	ip, #255	@ 0xff
 80007aa:	f44c 6ce0 	orr.w	ip, ip, #1792	@ 0x700
 80007ae:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80007b2:	bf1d      	ittte	ne
 80007b4:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80007b8:	ea94 0f0c 	teqne	r4, ip
 80007bc:	ea95 0f0c 	teqne	r5, ip
 80007c0:	f000 f8a7 	bleq	8000912 <__aeabi_ddiv+0x16e>
 80007c4:	eba4 0405 	sub.w	r4, r4, r5
 80007c8:	ea81 0e03 	eor.w	lr, r1, r3
 80007cc:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 80007d0:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80007d4:	f000 8088 	beq.w	80008e8 <__aeabi_ddiv+0x144>
 80007d8:	ea4f 3303 	mov.w	r3, r3, lsl #12
 80007dc:	f04f 5580 	mov.w	r5, #268435456	@ 0x10000000
 80007e0:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 80007e4:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 80007e8:	ea4f 2202 	mov.w	r2, r2, lsl #8
 80007ec:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 80007f0:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 80007f4:	ea4f 2600 	mov.w	r6, r0, lsl #8
 80007f8:	f00e 4100 	and.w	r1, lr, #2147483648	@ 0x80000000
 80007fc:	429d      	cmp	r5, r3
 80007fe:	bf08      	it	eq
 8000800:	4296      	cmpeq	r6, r2
 8000802:	f144 04fd 	adc.w	r4, r4, #253	@ 0xfd
 8000806:	f504 7440 	add.w	r4, r4, #768	@ 0x300
 800080a:	d202      	bcs.n	8000812 <__aeabi_ddiv+0x6e>
 800080c:	085b      	lsrs	r3, r3, #1
 800080e:	ea4f 0232 	mov.w	r2, r2, rrx
 8000812:	1ab6      	subs	r6, r6, r2
 8000814:	eb65 0503 	sbc.w	r5, r5, r3
 8000818:	085b      	lsrs	r3, r3, #1
 800081a:	ea4f 0232 	mov.w	r2, r2, rrx
 800081e:	f44f 1080 	mov.w	r0, #1048576	@ 0x100000
 8000822:	f44f 2c00 	mov.w	ip, #524288	@ 0x80000
 8000826:	ebb6 0e02 	subs.w	lr, r6, r2
 800082a:	eb75 0e03 	sbcs.w	lr, r5, r3
 800082e:	bf22      	ittt	cs
 8000830:	1ab6      	subcs	r6, r6, r2
 8000832:	4675      	movcs	r5, lr
 8000834:	ea40 000c 	orrcs.w	r0, r0, ip
 8000838:	085b      	lsrs	r3, r3, #1
 800083a:	ea4f 0232 	mov.w	r2, r2, rrx
 800083e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000842:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000846:	bf22      	ittt	cs
 8000848:	1ab6      	subcs	r6, r6, r2
 800084a:	4675      	movcs	r5, lr
 800084c:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000850:	085b      	lsrs	r3, r3, #1
 8000852:	ea4f 0232 	mov.w	r2, r2, rrx
 8000856:	ebb6 0e02 	subs.w	lr, r6, r2
 800085a:	eb75 0e03 	sbcs.w	lr, r5, r3
 800085e:	bf22      	ittt	cs
 8000860:	1ab6      	subcs	r6, r6, r2
 8000862:	4675      	movcs	r5, lr
 8000864:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000868:	085b      	lsrs	r3, r3, #1
 800086a:	ea4f 0232 	mov.w	r2, r2, rrx
 800086e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000872:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000876:	bf22      	ittt	cs
 8000878:	1ab6      	subcs	r6, r6, r2
 800087a:	4675      	movcs	r5, lr
 800087c:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000880:	ea55 0e06 	orrs.w	lr, r5, r6
 8000884:	d018      	beq.n	80008b8 <__aeabi_ddiv+0x114>
 8000886:	ea4f 1505 	mov.w	r5, r5, lsl #4
 800088a:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 800088e:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000892:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8000896:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 800089a:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 800089e:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 80008a2:	d1c0      	bne.n	8000826 <__aeabi_ddiv+0x82>
 80008a4:	f411 1f80 	tst.w	r1, #1048576	@ 0x100000
 80008a8:	d10b      	bne.n	80008c2 <__aeabi_ddiv+0x11e>
 80008aa:	ea41 0100 	orr.w	r1, r1, r0
 80008ae:	f04f 0000 	mov.w	r0, #0
 80008b2:	f04f 4c00 	mov.w	ip, #2147483648	@ 0x80000000
 80008b6:	e7b6      	b.n	8000826 <__aeabi_ddiv+0x82>
 80008b8:	f411 1f80 	tst.w	r1, #1048576	@ 0x100000
 80008bc:	bf04      	itt	eq
 80008be:	4301      	orreq	r1, r0
 80008c0:	2000      	moveq	r0, #0
 80008c2:	f1b4 0cfd 	subs.w	ip, r4, #253	@ 0xfd
 80008c6:	bf88      	it	hi
 80008c8:	f5bc 6fe0 	cmphi.w	ip, #1792	@ 0x700
 80008cc:	f63f aeaf 	bhi.w	800062e <__aeabi_dmul+0xde>
 80008d0:	ebb5 0c03 	subs.w	ip, r5, r3
 80008d4:	bf04      	itt	eq
 80008d6:	ebb6 0c02 	subseq.w	ip, r6, r2
 80008da:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80008de:	f150 0000 	adcs.w	r0, r0, #0
 80008e2:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80008e6:	bd70      	pop	{r4, r5, r6, pc}
 80008e8:	f00e 4e00 	and.w	lr, lr, #2147483648	@ 0x80000000
 80008ec:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 80008f0:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 80008f4:	bfc2      	ittt	gt
 80008f6:	ebd4 050c 	rsbsgt	r5, r4, ip
 80008fa:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 80008fe:	bd70      	popgt	{r4, r5, r6, pc}
 8000900:	f441 1180 	orr.w	r1, r1, #1048576	@ 0x100000
 8000904:	f04f 0e00 	mov.w	lr, #0
 8000908:	3c01      	subs	r4, #1
 800090a:	e690      	b.n	800062e <__aeabi_dmul+0xde>
 800090c:	ea45 0e06 	orr.w	lr, r5, r6
 8000910:	e68d      	b.n	800062e <__aeabi_dmul+0xde>
 8000912:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000916:	ea94 0f0c 	teq	r4, ip
 800091a:	bf08      	it	eq
 800091c:	ea95 0f0c 	teqeq	r5, ip
 8000920:	f43f af3b 	beq.w	800079a <__aeabi_dmul+0x24a>
 8000924:	ea94 0f0c 	teq	r4, ip
 8000928:	d10a      	bne.n	8000940 <__aeabi_ddiv+0x19c>
 800092a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 800092e:	f47f af34 	bne.w	800079a <__aeabi_dmul+0x24a>
 8000932:	ea95 0f0c 	teq	r5, ip
 8000936:	f47f af25 	bne.w	8000784 <__aeabi_dmul+0x234>
 800093a:	4610      	mov	r0, r2
 800093c:	4619      	mov	r1, r3
 800093e:	e72c      	b.n	800079a <__aeabi_dmul+0x24a>
 8000940:	ea95 0f0c 	teq	r5, ip
 8000944:	d106      	bne.n	8000954 <__aeabi_ddiv+0x1b0>
 8000946:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 800094a:	f43f aefd 	beq.w	8000748 <__aeabi_dmul+0x1f8>
 800094e:	4610      	mov	r0, r2
 8000950:	4619      	mov	r1, r3
 8000952:	e722      	b.n	800079a <__aeabi_dmul+0x24a>
 8000954:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000958:	bf18      	it	ne
 800095a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 800095e:	f47f aec5 	bne.w	80006ec <__aeabi_dmul+0x19c>
 8000962:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 8000966:	f47f af0d 	bne.w	8000784 <__aeabi_dmul+0x234>
 800096a:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 800096e:	f47f aeeb 	bne.w	8000748 <__aeabi_dmul+0x1f8>
 8000972:	e712      	b.n	800079a <__aeabi_dmul+0x24a>

08000974 <__gedf2>:
 8000974:	f04f 3cff 	mov.w	ip, #4294967295
 8000978:	e006      	b.n	8000988 <__cmpdf2+0x4>
 800097a:	bf00      	nop

0800097c <__ledf2>:
 800097c:	f04f 0c01 	mov.w	ip, #1
 8000980:	e002      	b.n	8000988 <__cmpdf2+0x4>
 8000982:	bf00      	nop

08000984 <__cmpdf2>:
 8000984:	f04f 0c01 	mov.w	ip, #1
 8000988:	f84d cd04 	str.w	ip, [sp, #-4]!
 800098c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000990:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000994:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000998:	bf18      	it	ne
 800099a:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 800099e:	d01b      	beq.n	80009d8 <__cmpdf2+0x54>
 80009a0:	b001      	add	sp, #4
 80009a2:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 80009a6:	bf0c      	ite	eq
 80009a8:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 80009ac:	ea91 0f03 	teqne	r1, r3
 80009b0:	bf02      	ittt	eq
 80009b2:	ea90 0f02 	teqeq	r0, r2
 80009b6:	2000      	moveq	r0, #0
 80009b8:	4770      	bxeq	lr
 80009ba:	f110 0f00 	cmn.w	r0, #0
 80009be:	ea91 0f03 	teq	r1, r3
 80009c2:	bf58      	it	pl
 80009c4:	4299      	cmppl	r1, r3
 80009c6:	bf08      	it	eq
 80009c8:	4290      	cmpeq	r0, r2
 80009ca:	bf2c      	ite	cs
 80009cc:	17d8      	asrcs	r0, r3, #31
 80009ce:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 80009d2:	f040 0001 	orr.w	r0, r0, #1
 80009d6:	4770      	bx	lr
 80009d8:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 80009dc:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80009e0:	d102      	bne.n	80009e8 <__cmpdf2+0x64>
 80009e2:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 80009e6:	d107      	bne.n	80009f8 <__cmpdf2+0x74>
 80009e8:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80009ec:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80009f0:	d1d6      	bne.n	80009a0 <__cmpdf2+0x1c>
 80009f2:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 80009f6:	d0d3      	beq.n	80009a0 <__cmpdf2+0x1c>
 80009f8:	f85d 0b04 	ldr.w	r0, [sp], #4
 80009fc:	4770      	bx	lr
 80009fe:	bf00      	nop

08000a00 <__aeabi_cdrcmple>:
 8000a00:	4684      	mov	ip, r0
 8000a02:	4610      	mov	r0, r2
 8000a04:	4662      	mov	r2, ip
 8000a06:	468c      	mov	ip, r1
 8000a08:	4619      	mov	r1, r3
 8000a0a:	4663      	mov	r3, ip
 8000a0c:	e000      	b.n	8000a10 <__aeabi_cdcmpeq>
 8000a0e:	bf00      	nop

08000a10 <__aeabi_cdcmpeq>:
 8000a10:	b501      	push	{r0, lr}
 8000a12:	f7ff ffb7 	bl	8000984 <__cmpdf2>
 8000a16:	2800      	cmp	r0, #0
 8000a18:	bf48      	it	mi
 8000a1a:	f110 0f00 	cmnmi.w	r0, #0
 8000a1e:	bd01      	pop	{r0, pc}

08000a20 <__aeabi_dcmpeq>:
 8000a20:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a24:	f7ff fff4 	bl	8000a10 <__aeabi_cdcmpeq>
 8000a28:	bf0c      	ite	eq
 8000a2a:	2001      	moveq	r0, #1
 8000a2c:	2000      	movne	r0, #0
 8000a2e:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a32:	bf00      	nop

08000a34 <__aeabi_dcmplt>:
 8000a34:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a38:	f7ff ffea 	bl	8000a10 <__aeabi_cdcmpeq>
 8000a3c:	bf34      	ite	cc
 8000a3e:	2001      	movcc	r0, #1
 8000a40:	2000      	movcs	r0, #0
 8000a42:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a46:	bf00      	nop

08000a48 <__aeabi_dcmple>:
 8000a48:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a4c:	f7ff ffe0 	bl	8000a10 <__aeabi_cdcmpeq>
 8000a50:	bf94      	ite	ls
 8000a52:	2001      	movls	r0, #1
 8000a54:	2000      	movhi	r0, #0
 8000a56:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a5a:	bf00      	nop

08000a5c <__aeabi_dcmpge>:
 8000a5c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a60:	f7ff ffce 	bl	8000a00 <__aeabi_cdrcmple>
 8000a64:	bf94      	ite	ls
 8000a66:	2001      	movls	r0, #1
 8000a68:	2000      	movhi	r0, #0
 8000a6a:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a6e:	bf00      	nop

08000a70 <__aeabi_dcmpgt>:
 8000a70:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a74:	f7ff ffc4 	bl	8000a00 <__aeabi_cdrcmple>
 8000a78:	bf34      	ite	cc
 8000a7a:	2001      	movcc	r0, #1
 8000a7c:	2000      	movcs	r0, #0
 8000a7e:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a82:	bf00      	nop

08000a84 <__aeabi_dcmpun>:
 8000a84:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000a88:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000a8c:	d102      	bne.n	8000a94 <__aeabi_dcmpun+0x10>
 8000a8e:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8000a92:	d10a      	bne.n	8000aaa <__aeabi_dcmpun+0x26>
 8000a94:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000a98:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000a9c:	d102      	bne.n	8000aa4 <__aeabi_dcmpun+0x20>
 8000a9e:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8000aa2:	d102      	bne.n	8000aaa <__aeabi_dcmpun+0x26>
 8000aa4:	f04f 0000 	mov.w	r0, #0
 8000aa8:	4770      	bx	lr
 8000aaa:	f04f 0001 	mov.w	r0, #1
 8000aae:	4770      	bx	lr

08000ab0 <__aeabi_d2f>:
 8000ab0:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8000ab4:	f1b2 43e0 	subs.w	r3, r2, #1879048192	@ 0x70000000
 8000ab8:	bf24      	itt	cs
 8000aba:	f5b3 1c00 	subscs.w	ip, r3, #2097152	@ 0x200000
 8000abe:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	@ 0x1fc00000
 8000ac2:	d90d      	bls.n	8000ae0 <__aeabi_d2f+0x30>
 8000ac4:	f001 4c00 	and.w	ip, r1, #2147483648	@ 0x80000000
 8000ac8:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8000acc:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8000ad0:	f1b2 4f00 	cmp.w	r2, #2147483648	@ 0x80000000
 8000ad4:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8000ad8:	bf08      	it	eq
 8000ada:	f020 0001 	biceq.w	r0, r0, #1
 8000ade:	4770      	bx	lr
 8000ae0:	f011 4f80 	tst.w	r1, #1073741824	@ 0x40000000
 8000ae4:	d121      	bne.n	8000b2a <__aeabi_d2f+0x7a>
 8000ae6:	f113 7238 	adds.w	r2, r3, #48234496	@ 0x2e00000
 8000aea:	bfbc      	itt	lt
 8000aec:	f001 4000 	andlt.w	r0, r1, #2147483648	@ 0x80000000
 8000af0:	4770      	bxlt	lr
 8000af2:	f441 1180 	orr.w	r1, r1, #1048576	@ 0x100000
 8000af6:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8000afa:	f1c2 0218 	rsb	r2, r2, #24
 8000afe:	f1c2 0c20 	rsb	ip, r2, #32
 8000b02:	fa10 f30c 	lsls.w	r3, r0, ip
 8000b06:	fa20 f002 	lsr.w	r0, r0, r2
 8000b0a:	bf18      	it	ne
 8000b0c:	f040 0001 	orrne.w	r0, r0, #1
 8000b10:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8000b14:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8000b18:	fa03 fc0c 	lsl.w	ip, r3, ip
 8000b1c:	ea40 000c 	orr.w	r0, r0, ip
 8000b20:	fa23 f302 	lsr.w	r3, r3, r2
 8000b24:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8000b28:	e7cc      	b.n	8000ac4 <__aeabi_d2f+0x14>
 8000b2a:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8000b2e:	d107      	bne.n	8000b40 <__aeabi_d2f+0x90>
 8000b30:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8000b34:	bf1e      	ittt	ne
 8000b36:	f04f 40fe 	movne.w	r0, #2130706432	@ 0x7f000000
 8000b3a:	f440 0040 	orrne.w	r0, r0, #12582912	@ 0xc00000
 8000b3e:	4770      	bxne	lr
 8000b40:	f001 4000 	and.w	r0, r1, #2147483648	@ 0x80000000
 8000b44:	f040 40fe 	orr.w	r0, r0, #2130706432	@ 0x7f000000
 8000b48:	f440 0000 	orr.w	r0, r0, #8388608	@ 0x800000
 8000b4c:	4770      	bx	lr
 8000b4e:	bf00      	nop

08000b50 <__aeabi_uldivmod>:
 8000b50:	b953      	cbnz	r3, 8000b68 <__aeabi_uldivmod+0x18>
 8000b52:	b94a      	cbnz	r2, 8000b68 <__aeabi_uldivmod+0x18>
 8000b54:	2900      	cmp	r1, #0
 8000b56:	bf08      	it	eq
 8000b58:	2800      	cmpeq	r0, #0
 8000b5a:	bf1c      	itt	ne
 8000b5c:	f04f 31ff 	movne.w	r1, #4294967295
 8000b60:	f04f 30ff 	movne.w	r0, #4294967295
 8000b64:	f000 b80c 	b.w	8000b80 <__aeabi_idiv0>
 8000b68:	f1ad 0c08 	sub.w	ip, sp, #8
 8000b6c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000b70:	f005 fde6 	bl	8006740 <__udivmoddi4>
 8000b74:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000b78:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000b7c:	b004      	add	sp, #16
 8000b7e:	4770      	bx	lr

08000b80 <__aeabi_idiv0>:
 8000b80:	4770      	bx	lr
 8000b82:	bf00      	nop

08000b84 <deregister_tm_clones>:
 8000b84:	4803      	ldr	r0, [pc, #12]	@ (8000b94 <deregister_tm_clones+0x10>)
 8000b86:	4b04      	ldr	r3, [pc, #16]	@ (8000b98 <deregister_tm_clones+0x14>)
 8000b88:	4283      	cmp	r3, r0
 8000b8a:	d002      	beq.n	8000b92 <deregister_tm_clones+0xe>
 8000b8c:	4b03      	ldr	r3, [pc, #12]	@ (8000b9c <deregister_tm_clones+0x18>)
 8000b8e:	b103      	cbz	r3, 8000b92 <deregister_tm_clones+0xe>
 8000b90:	4718      	bx	r3
 8000b92:	4770      	bx	lr
 8000b94:	2000005c 	.word	0x2000005c
 8000b98:	2000005c 	.word	0x2000005c
 8000b9c:	00000000 	.word	0x00000000

08000ba0 <register_tm_clones>:
 8000ba0:	4805      	ldr	r0, [pc, #20]	@ (8000bb8 <register_tm_clones+0x18>)
 8000ba2:	4b06      	ldr	r3, [pc, #24]	@ (8000bbc <register_tm_clones+0x1c>)
 8000ba4:	1a1b      	subs	r3, r3, r0
 8000ba6:	0fd9      	lsrs	r1, r3, #31
 8000ba8:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 8000bac:	1049      	asrs	r1, r1, #1
 8000bae:	d002      	beq.n	8000bb6 <register_tm_clones+0x16>
 8000bb0:	4b03      	ldr	r3, [pc, #12]	@ (8000bc0 <register_tm_clones+0x20>)
 8000bb2:	b103      	cbz	r3, 8000bb6 <register_tm_clones+0x16>
 8000bb4:	4718      	bx	r3
 8000bb6:	4770      	bx	lr
 8000bb8:	2000005c 	.word	0x2000005c
 8000bbc:	2000005c 	.word	0x2000005c
 8000bc0:	00000000 	.word	0x00000000

08000bc4 <__do_global_dtors_aux>:
 8000bc4:	b510      	push	{r4, lr}
 8000bc6:	4c06      	ldr	r4, [pc, #24]	@ (8000be0 <__do_global_dtors_aux+0x1c>)
 8000bc8:	7823      	ldrb	r3, [r4, #0]
 8000bca:	b943      	cbnz	r3, 8000bde <__do_global_dtors_aux+0x1a>
 8000bcc:	f7ff ffda 	bl	8000b84 <deregister_tm_clones>
 8000bd0:	4b04      	ldr	r3, [pc, #16]	@ (8000be4 <__do_global_dtors_aux+0x20>)
 8000bd2:	b113      	cbz	r3, 8000bda <__do_global_dtors_aux+0x16>
 8000bd4:	4804      	ldr	r0, [pc, #16]	@ (8000be8 <__do_global_dtors_aux+0x24>)
 8000bd6:	f3af 8000 	nop.w
 8000bda:	2301      	movs	r3, #1
 8000bdc:	7023      	strb	r3, [r4, #0]
 8000bde:	bd10      	pop	{r4, pc}
 8000be0:	20000060 	.word	0x20000060
 8000be4:	00000000 	.word	0x00000000
 8000be8:	080069fc 	.word	0x080069fc

08000bec <frame_dummy>:
 8000bec:	b508      	push	{r3, lr}
 8000bee:	4b05      	ldr	r3, [pc, #20]	@ (8000c04 <frame_dummy+0x18>)
 8000bf0:	b11b      	cbz	r3, 8000bfa <frame_dummy+0xe>
 8000bf2:	4905      	ldr	r1, [pc, #20]	@ (8000c08 <frame_dummy+0x1c>)
 8000bf4:	4805      	ldr	r0, [pc, #20]	@ (8000c0c <frame_dummy+0x20>)
 8000bf6:	f3af 8000 	nop.w
 8000bfa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000bfe:	f7ff bfcf 	b.w	8000ba0 <register_tm_clones>
 8000c02:	bf00      	nop
 8000c04:	00000000 	.word	0x00000000
 8000c08:	20000064 	.word	0x20000064
 8000c0c:	080069fc 	.word	0x080069fc

08000c10 <FFT_test>:
 8000c10:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000c14:	ed2d 8b02 	vpush	{d8}
 8000c18:	4b82      	ldr	r3, [pc, #520]	@ (8000e24 <FFT_test+0x214>)
 8000c1a:	4a83      	ldr	r2, [pc, #524]	@ (8000e28 <FFT_test+0x218>)
 8000c1c:	eddf 6a83 	vldr	s13, [pc, #524]	@ 8000e2c <FFT_test+0x21c>
 8000c20:	ed9f 7a83 	vldr	s14, [pc, #524]	@ 8000e30 <FFT_test+0x220>
 8000c24:	b087      	sub	sp, #28
 8000c26:	4605      	mov	r5, r0
 8000c28:	f503 6400 	add.w	r4, r3, #2048	@ 0x800
 8000c2c:	f833 1f02 	ldrh.w	r1, [r3, #2]!
 8000c30:	ee07 1a90 	vmov	s15, r1
 8000c34:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8000c38:	42a3      	cmp	r3, r4
 8000c3a:	ee67 7aa6 	vmul.f32	s15, s15, s13
 8000c3e:	ee67 7a87 	vmul.f32	s15, s15, s14
 8000c42:	ece2 7a01 	vstmia	r2!, {s15}
 8000c46:	d1f1      	bne.n	8000c2c <FFT_test+0x1c>
 8000c48:	f44f 6180 	mov.w	r1, #1024	@ 0x400
 8000c4c:	4668      	mov	r0, sp
 8000c4e:	f004 fb4f 	bl	80052f0 <arm_rfft_fast_init_f32>
 8000c52:	2300      	movs	r3, #0
 8000c54:	4a77      	ldr	r2, [pc, #476]	@ (8000e34 <FFT_test+0x224>)
 8000c56:	4629      	mov	r1, r5
 8000c58:	4668      	mov	r0, sp
 8000c5a:	f004 fc2d 	bl	80054b8 <arm_rfft_fast_f32>
 8000c5e:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8000c62:	4975      	ldr	r1, [pc, #468]	@ (8000e38 <FFT_test+0x228>)
 8000c64:	4873      	ldr	r0, [pc, #460]	@ (8000e34 <FFT_test+0x224>)
 8000c66:	f005 f805 	bl	8005c74 <arm_cmplx_mag_f32>
 8000c6a:	4a74      	ldr	r2, [pc, #464]	@ (8000e3c <FFT_test+0x22c>)
 8000c6c:	ed9f 7a74 	vldr	s14, [pc, #464]	@ 8000e40 <FFT_test+0x230>
 8000c70:	f240 134f 	movw	r3, #335	@ 0x14f
 8000c74:	2700      	movs	r7, #0
 8000c76:	ecf2 7a01 	vldmia	r2!, {s15}
 8000c7a:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000c7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000c82:	bfc8      	it	gt
 8000c84:	b29f      	uxthgt	r7, r3
 8000c86:	f103 0301 	add.w	r3, r3, #1
 8000c8a:	bfc8      	it	gt
 8000c8c:	eeb0 7a67 	vmovgt.f32	s14, s15
 8000c90:	f5b3 7fad 	cmp.w	r3, #346	@ 0x15a
 8000c94:	d1ef      	bne.n	8000c76 <FFT_test+0x66>
 8000c96:	4e68      	ldr	r6, [pc, #416]	@ (8000e38 <FFT_test+0x228>)
 8000c98:	ed9f 6a6b 	vldr	s12, [pc, #428]	@ 8000e48 <FFT_test+0x238>
 8000c9c:	eb06 0287 	add.w	r2, r6, r7, lsl #2
 8000ca0:	ed52 7a01 	vldr	s15, [r2, #-4]
 8000ca4:	edd2 6a00 	vldr	s13, [r2]
 8000ca8:	ed92 7a01 	vldr	s14, [r2, #4]
 8000cac:	ee67 7a86 	vmul.f32	s15, s15, s12
 8000cb0:	ee66 6a86 	vmul.f32	s13, s13, s12
 8000cb4:	ee27 7a06 	vmul.f32	s14, s14, s12
 8000cb8:	ee66 6aa6 	vmul.f32	s13, s13, s13
 8000cbc:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8000cc0:	ee27 7a07 	vmul.f32	s14, s14, s14
 8000cc4:	ee77 7aa6 	vadd.f32	s15, s15, s13
 8000cc8:	46bb      	mov	fp, r7
 8000cca:	ee77 7a87 	vadd.f32	s15, s15, s14
 8000cce:	f240 154f 	movw	r5, #335	@ 0x14f
 8000cd2:	ee17 0a90 	vmov	r0, s15
 8000cd6:	f7ff fbe3 	bl	80004a0 <__aeabi_f2d>
 8000cda:	ec41 0b10 	vmov	d0, r0, r1
 8000cde:	f005 fbdf 	bl	80064a0 <sqrt>
 8000ce2:	ec51 0b10 	vmov	r0, r1, d0
 8000ce6:	f7ff fee3 	bl	8000ab0 <__aeabi_d2f>
 8000cea:	f506 63a7 	add.w	r3, r6, #1336	@ 0x538
 8000cee:	ee08 0a10 	vmov	s16, r0
 8000cf2:	eef2 6a00 	vmov.f32	s13, #32	@ 0x41000000  8.0
 8000cf6:	e005      	b.n	8000d04 <FFT_test+0xf4>
 8000cf8:	b295      	uxth	r5, r2
 8000cfa:	2d14      	cmp	r5, #20
 8000cfc:	f1a3 0304 	sub.w	r3, r3, #4
 8000d00:	f000 8185 	beq.w	800100e <FFT_test+0x3fe>
 8000d04:	edd3 7a01 	vldr	s15, [r3, #4]
 8000d08:	eef4 7ae6 	vcmpe.f32	s15, s13
 8000d0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000d10:	f105 32ff 	add.w	r2, r5, #4294967295
 8000d14:	ddf0      	ble.n	8000cf8 <FFT_test+0xe8>
 8000d16:	ed93 7a00 	vldr	s14, [r3]
 8000d1a:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000d1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000d22:	dde9      	ble.n	8000cf8 <FFT_test+0xe8>
 8000d24:	ed93 6a02 	vldr	s12, [r3, #8]
 8000d28:	eef4 7ac6 	vcmpe.f32	s15, s12
 8000d2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000d30:	dde2      	ble.n	8000cf8 <FFT_test+0xe8>
 8000d32:	eddf 6a45 	vldr	s13, [pc, #276]	@ 8000e48 <FFT_test+0x238>
 8000d36:	ee27 7a26 	vmul.f32	s14, s14, s13
 8000d3a:	ee67 7aa6 	vmul.f32	s15, s15, s13
 8000d3e:	ee26 6a26 	vmul.f32	s12, s12, s13
 8000d42:	ee27 7a07 	vmul.f32	s14, s14, s14
 8000d46:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8000d4a:	ee26 6a06 	vmul.f32	s12, s12, s12
 8000d4e:	ee77 7a27 	vadd.f32	s15, s14, s15
 8000d52:	1f6c      	subs	r4, r5, #5
 8000d54:	ee77 7a86 	vadd.f32	s15, s15, s12
 8000d58:	b2a4      	uxth	r4, r4
 8000d5a:	ee17 0a90 	vmov	r0, s15
 8000d5e:	f7ff fb9f 	bl	80004a0 <__aeabi_f2d>
 8000d62:	ec41 0b10 	vmov	d0, r0, r1
 8000d66:	f005 fb9b 	bl	80064a0 <sqrt>
 8000d6a:	ec51 0b10 	vmov	r0, r1, d0
 8000d6e:	f7ff fe9f 	bl	8000ab0 <__aeabi_d2f>
 8000d72:	2c14      	cmp	r4, #20
 8000d74:	ee08 0a90 	vmov	s17, r0
 8000d78:	d921      	bls.n	8000dbe <FFT_test+0x1ae>
 8000d7a:	f1a4 0215 	sub.w	r2, r4, #21
 8000d7e:	b292      	uxth	r2, r2
 8000d80:	1aa2      	subs	r2, r4, r2
 8000d82:	1c63      	adds	r3, r4, #1
 8000d84:	eef2 6a00 	vmov.f32	s13, #32	@ 0x41000000  8.0
 8000d88:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8000d8c:	eb06 0282 	add.w	r2, r6, r2, lsl #2
 8000d90:	ed73 7a01 	vldmdb	r3!, {s15}
 8000d94:	eef4 7ae6 	vcmpe.f32	s15, s13
 8000d98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000d9c:	dd0d      	ble.n	8000dba <FFT_test+0x1aa>
 8000d9e:	ed13 7a01 	vldr	s14, [r3, #-4]
 8000da2:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000da6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000daa:	dd06      	ble.n	8000dba <FFT_test+0x1aa>
 8000dac:	ed93 6a01 	vldr	s12, [r3, #4]
 8000db0:	eef4 7ac6 	vcmpe.f32	s15, s12
 8000db4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000db8:	dc07      	bgt.n	8000dca <FFT_test+0x1ba>
 8000dba:	4293      	cmp	r3, r2
 8000dbc:	d1e8      	bne.n	8000d90 <FFT_test+0x180>
 8000dbe:	ed16 7a01 	vldr	s14, [r6, #-4]
 8000dc2:	edd6 7a00 	vldr	s15, [r6]
 8000dc6:	ed96 6a01 	vldr	s12, [r6, #4]
 8000dca:	eddf 6a1f 	vldr	s13, [pc, #124]	@ 8000e48 <FFT_test+0x238>
 8000dce:	ee27 7a26 	vmul.f32	s14, s14, s13
 8000dd2:	ee67 7aa6 	vmul.f32	s15, s15, s13
 8000dd6:	ee26 6a26 	vmul.f32	s12, s12, s13
 8000dda:	ee27 7a07 	vmul.f32	s14, s14, s14
 8000dde:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8000de2:	ee26 6a06 	vmul.f32	s12, s12, s12
 8000de6:	ee77 7a27 	vadd.f32	s15, s14, s15
 8000dea:	ee77 7a86 	vadd.f32	s15, s15, s12
 8000dee:	ee17 0a90 	vmov	r0, s15
 8000df2:	f7ff fb55 	bl	80004a0 <__aeabi_f2d>
 8000df6:	2200      	movs	r2, #0
 8000df8:	2300      	movs	r3, #0
 8000dfa:	4680      	mov	r8, r0
 8000dfc:	4689      	mov	r9, r1
 8000dfe:	f7ff fe41 	bl	8000a84 <__aeabi_dcmpun>
 8000e02:	b940      	cbnz	r0, 8000e16 <FFT_test+0x206>
 8000e04:	2200      	movs	r2, #0
 8000e06:	2300      	movs	r3, #0
 8000e08:	4640      	mov	r0, r8
 8000e0a:	4649      	mov	r1, r9
 8000e0c:	f7ff fe26 	bl	8000a5c <__aeabi_dcmpge>
 8000e10:	2800      	cmp	r0, #0
 8000e12:	f000 812f 	beq.w	8001074 <FFT_test+0x464>
 8000e16:	4c0b      	ldr	r4, [pc, #44]	@ (8000e44 <FFT_test+0x234>)
 8000e18:	eef2 6a00 	vmov.f32	s13, #32	@ 0x41000000  8.0
 8000e1c:	4623      	mov	r3, r4
 8000e1e:	f240 1863 	movw	r8, #355	@ 0x163
 8000e22:	e01b      	b.n	8000e5c <FFT_test+0x24c>
 8000e24:	2000107a 	.word	0x2000107a
 8000e28:	2000007c 	.word	0x2000007c
 8000e2c:	40533333 	.word	0x40533333
 8000e30:	3a800000 	.word	0x3a800000
 8000e34:	2000207c 	.word	0x2000207c
 8000e38:	2000187c 	.word	0x2000187c
 8000e3c:	20001db8 	.word	0x20001db8
 8000e40:	00000000 	.word	0x00000000
 8000e44:	20001e04 	.word	0x20001e04
 8000e48:	3b000000 	.word	0x3b000000
 8000e4c:	fa1f f882 	uxth.w	r8, r2
 8000e50:	f5b8 7ffb 	cmp.w	r8, #502	@ 0x1f6
 8000e54:	f103 0304 	add.w	r3, r3, #4
 8000e58:	f000 8103 	beq.w	8001062 <FFT_test+0x452>
 8000e5c:	edd3 7a01 	vldr	s15, [r3, #4]
 8000e60:	eef4 7ae6 	vcmpe.f32	s15, s13
 8000e64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000e68:	f108 0201 	add.w	r2, r8, #1
 8000e6c:	ddee      	ble.n	8000e4c <FFT_test+0x23c>
 8000e6e:	ed93 7a00 	vldr	s14, [r3]
 8000e72:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000e76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000e7a:	dde7      	ble.n	8000e4c <FFT_test+0x23c>
 8000e7c:	ed93 6a02 	vldr	s12, [r3, #8]
 8000e80:	eef4 7ac6 	vcmpe.f32	s15, s12
 8000e84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000e88:	dde0      	ble.n	8000e4c <FFT_test+0x23c>
 8000e8a:	ed5f 6a11 	vldr	s13, [pc, #-68]	@ 8000e48 <FFT_test+0x238>
 8000e8e:	ee27 7a26 	vmul.f32	s14, s14, s13
 8000e92:	ee67 7aa6 	vmul.f32	s15, s15, s13
 8000e96:	ee27 7a07 	vmul.f32	s14, s14, s14
 8000e9a:	ee26 6a26 	vmul.f32	s12, s12, s13
 8000e9e:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8000ea2:	ee26 6a06 	vmul.f32	s12, s12, s12
 8000ea6:	ee77 7a27 	vadd.f32	s15, s14, s15
 8000eaa:	ee77 7a86 	vadd.f32	s15, s15, s12
 8000eae:	ee17 0a90 	vmov	r0, s15
 8000eb2:	f7ff faf5 	bl	80004a0 <__aeabi_f2d>
 8000eb6:	ec41 0b10 	vmov	d0, r0, r1
 8000eba:	f005 faf1 	bl	80064a0 <sqrt>
 8000ebe:	ec51 0b10 	vmov	r0, r1, d0
 8000ec2:	f7ff fdf5 	bl	8000ab0 <__aeabi_d2f>
 8000ec6:	496e      	ldr	r1, [pc, #440]	@ (8001080 <FFT_test+0x470>)
 8000ec8:	4b6e      	ldr	r3, [pc, #440]	@ (8001084 <FFT_test+0x474>)
 8000eca:	f8d1 e000 	ldr.w	lr, [r1]
 8000ece:	ee06 0a10 	vmov	s12, r0
 8000ed2:	eeb2 7a00 	vmov.f32	s14, #32	@ 0x41000000  8.0
 8000ed6:	f5a3 6296 	sub.w	r2, r3, #1200	@ 0x4b0
 8000eda:	4670      	mov	r0, lr
 8000edc:	f04f 0c00 	mov.w	ip, #0
 8000ee0:	edd3 7a01 	vldr	s15, [r3, #4]
 8000ee4:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000ee8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000eec:	dd10      	ble.n	8000f10 <FFT_test+0x300>
 8000eee:	edd3 6a00 	vldr	s13, [r3]
 8000ef2:	eef4 6ae7 	vcmpe.f32	s13, s15
 8000ef6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000efa:	d509      	bpl.n	8000f10 <FFT_test+0x300>
 8000efc:	edd3 6a02 	vldr	s13, [r3, #8]
 8000f00:	eef4 6ae7 	vcmpe.f32	s13, s15
 8000f04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f08:	bf44      	itt	mi
 8000f0a:	3001      	addmi	r0, #1
 8000f0c:	f04f 0c01 	movmi.w	ip, #1
 8000f10:	3b04      	subs	r3, #4
 8000f12:	4293      	cmp	r3, r2
 8000f14:	d1e4      	bne.n	8000ee0 <FFT_test+0x2d0>
 8000f16:	f1bc 0f00 	cmp.w	ip, #0
 8000f1a:	bf08      	it	eq
 8000f1c:	4670      	moveq	r0, lr
 8000f1e:	f206 76d4 	addw	r6, r6, #2004	@ 0x7d4
 8000f22:	eeb2 7a00 	vmov.f32	s14, #32	@ 0x41000000  8.0
 8000f26:	4603      	mov	r3, r0
 8000f28:	2200      	movs	r2, #0
 8000f2a:	edd4 7a01 	vldr	s15, [r4, #4]
 8000f2e:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000f32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f36:	dd0f      	ble.n	8000f58 <FFT_test+0x348>
 8000f38:	edd4 6a00 	vldr	s13, [r4]
 8000f3c:	eef4 6ae7 	vcmpe.f32	s13, s15
 8000f40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f44:	d508      	bpl.n	8000f58 <FFT_test+0x348>
 8000f46:	edd4 6a02 	vldr	s13, [r4, #8]
 8000f4a:	eef4 6ae7 	vcmpe.f32	s13, s15
 8000f4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f52:	bf44      	itt	mi
 8000f54:	3301      	addmi	r3, #1
 8000f56:	2201      	movmi	r2, #1
 8000f58:	3404      	adds	r4, #4
 8000f5a:	42b4      	cmp	r4, r6
 8000f5c:	d1e5      	bne.n	8000f2a <FFT_test+0x31a>
 8000f5e:	ee78 8a86 	vadd.f32	s17, s17, s12
 8000f62:	eddf 7a49 	vldr	s15, [pc, #292]	@ 8001088 <FFT_test+0x478>
 8000f66:	4e49      	ldr	r6, [pc, #292]	@ (800108c <FFT_test+0x47c>)
 8000f68:	eec8 6a88 	vdiv.f32	s13, s17, s16
 8000f6c:	2a00      	cmp	r2, #0
 8000f6e:	bf08      	it	eq
 8000f70:	4603      	moveq	r3, r0
 8000f72:	1c5a      	adds	r2, r3, #1
 8000f74:	4b46      	ldr	r3, [pc, #280]	@ (8001090 <FFT_test+0x480>)
 8000f76:	600a      	str	r2, [r1, #0]
 8000f78:	2400      	movs	r4, #0
 8000f7a:	eeb6 6a00 	vmov.f32	s12, #96	@ 0x3f000000  0.5
 8000f7e:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8000f82:	edc3 6a00 	vstr	s13, [r3]
 8000f86:	ee77 7a86 	vadd.f32	s15, s15, s12
 8000f8a:	4b42      	ldr	r3, [pc, #264]	@ (8001094 <FFT_test+0x484>)
 8000f8c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000f90:	eeb2 7a04 	vmov.f32	s14, #36	@ 0x41200000  10.0
 8000f94:	ee17 0a90 	vmov	r0, s15
 8000f98:	8018      	strh	r0, [r3, #0]
 8000f9a:	f44f 73a5 	mov.w	r3, #330	@ 0x14a
 8000f9e:	6033      	str	r3, [r6, #0]
 8000fa0:	483d      	ldr	r0, [pc, #244]	@ (8001098 <FFT_test+0x488>)
 8000fa2:	f240 1349 	movw	r3, #329	@ 0x149
 8000fa6:	e005      	b.n	8000fb4 <FFT_test+0x3a4>
 8000fa8:	469a      	mov	sl, r3
 8000faa:	3b01      	subs	r3, #1
 8000fac:	2bdb      	cmp	r3, #219	@ 0xdb
 8000fae:	f04f 0401 	mov.w	r4, #1
 8000fb2:	d029      	beq.n	8001008 <FFT_test+0x3f8>
 8000fb4:	ed70 7a01 	vldmdb	r0!, {s15}
 8000fb8:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000fbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000fc0:	ddf2      	ble.n	8000fa8 <FFT_test+0x398>
 8000fc2:	b10c      	cbz	r4, 8000fc8 <FFT_test+0x3b8>
 8000fc4:	f8c6 a000 	str.w	sl, [r6]
 8000fc8:	42bd      	cmp	r5, r7
 8000fca:	d217      	bcs.n	8000ffc <FFT_test+0x3ec>
 8000fcc:	4b33      	ldr	r3, [pc, #204]	@ (800109c <FFT_test+0x48c>)
 8000fce:	4545      	cmp	r5, r8
 8000fd0:	601f      	str	r7, [r3, #0]
 8000fd2:	d810      	bhi.n	8000ff6 <FFT_test+0x3e6>
 8000fd4:	463d      	mov	r5, r7
 8000fd6:	45a8      	cmp	r8, r5
 8000fd8:	d30b      	bcc.n	8000ff2 <FFT_test+0x3e2>
 8000fda:	2a01      	cmp	r2, #1
 8000fdc:	d002      	beq.n	8000fe4 <FFT_test+0x3d4>
 8000fde:	680b      	ldr	r3, [r1, #0]
 8000fe0:	2b03      	cmp	r3, #3
 8000fe2:	d101      	bne.n	8000fe8 <FFT_test+0x3d8>
 8000fe4:	2300      	movs	r3, #0
 8000fe6:	600b      	str	r3, [r1, #0]
 8000fe8:	b007      	add	sp, #28
 8000fea:	ecbd 8b02 	vpop	{d8}
 8000fee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000ff2:	4b2a      	ldr	r3, [pc, #168]	@ (800109c <FFT_test+0x48c>)
 8000ff4:	46ab      	mov	fp, r5
 8000ff6:	f8c3 b000 	str.w	fp, [r3]
 8000ffa:	e7ee      	b.n	8000fda <FFT_test+0x3ca>
 8000ffc:	45b8      	cmp	r8, r7
 8000ffe:	d2ea      	bcs.n	8000fd6 <FFT_test+0x3c6>
 8001000:	4b26      	ldr	r3, [pc, #152]	@ (800109c <FFT_test+0x48c>)
 8001002:	46b8      	mov	r8, r7
 8001004:	601f      	str	r7, [r3, #0]
 8001006:	e7e6      	b.n	8000fd6 <FFT_test+0x3c6>
 8001008:	23dc      	movs	r3, #220	@ 0xdc
 800100a:	6033      	str	r3, [r6, #0]
 800100c:	e7dc      	b.n	8000fc8 <FFT_test+0x3b8>
 800100e:	ed9f 6a24 	vldr	s12, [pc, #144]	@ 80010a0 <FFT_test+0x490>
 8001012:	ed56 6a01 	vldr	s13, [r6, #-4]
 8001016:	edd6 7a00 	vldr	s15, [r6]
 800101a:	ed96 7a01 	vldr	s14, [r6, #4]
 800101e:	ee66 6a86 	vmul.f32	s13, s13, s12
 8001022:	ee67 7a86 	vmul.f32	s15, s15, s12
 8001026:	ee27 7a06 	vmul.f32	s14, s14, s12
 800102a:	ee66 6aa6 	vmul.f32	s13, s13, s13
 800102e:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8001032:	ee27 7a07 	vmul.f32	s14, s14, s14
 8001036:	ee77 7aa6 	vadd.f32	s15, s15, s13
 800103a:	f64f 74fb 	movw	r4, #65531	@ 0xfffb
 800103e:	ee77 7a87 	vadd.f32	s15, s15, s14
 8001042:	2500      	movs	r5, #0
 8001044:	ee17 0a90 	vmov	r0, s15
 8001048:	f7ff fa2a 	bl	80004a0 <__aeabi_f2d>
 800104c:	ec41 0b10 	vmov	d0, r0, r1
 8001050:	f005 fa26 	bl	80064a0 <sqrt>
 8001054:	ec51 0b10 	vmov	r0, r1, d0
 8001058:	f7ff fd2a 	bl	8000ab0 <__aeabi_d2f>
 800105c:	ee08 0a90 	vmov	s17, r0
 8001060:	e68b      	b.n	8000d7a <FFT_test+0x16a>
 8001062:	ed16 7a01 	vldr	s14, [r6, #-4]
 8001066:	edd6 7a00 	vldr	s15, [r6]
 800106a:	ed96 6a01 	vldr	s12, [r6, #4]
 800106e:	f04f 0800 	mov.w	r8, #0
 8001072:	e70a      	b.n	8000e8a <FFT_test+0x27a>
 8001074:	ec49 8b10 	vmov	d0, r8, r9
 8001078:	f005 fa12 	bl	80064a0 <sqrt>
 800107c:	e6cb      	b.n	8000e16 <FFT_test+0x206>
 800107e:	bf00      	nop
 8001080:	2000307c 	.word	0x2000307c
 8001084:	20001da0 	.word	0x20001da0
 8001088:	42c80000 	.word	0x42c80000
 800108c:	20003084 	.word	0x20003084
 8001090:	2000308c 	.word	0x2000308c
 8001094:	20003080 	.word	0x20003080
 8001098:	20001da8 	.word	0x20001da8
 800109c:	20003088 	.word	0x20003088
 80010a0:	3b000000 	.word	0x3b000000

080010a4 <ADC_FFT>:
 80010a4:	4b0b      	ldr	r3, [pc, #44]	@ (80010d4 <ADC_FFT+0x30>)
 80010a6:	eddf 6a0c 	vldr	s13, [pc, #48]	@ 80010d8 <ADC_FFT+0x34>
 80010aa:	ed9f 7a0c 	vldr	s14, [pc, #48]	@ 80010dc <ADC_FFT+0x38>
 80010ae:	1e82      	subs	r2, r0, #2
 80010b0:	f503 5180 	add.w	r1, r3, #4096	@ 0x1000
 80010b4:	f832 0f02 	ldrh.w	r0, [r2, #2]!
 80010b8:	ee07 0a90 	vmov	s15, r0
 80010bc:	eef8 7a67 	vcvt.f32.u32	s15, s15
 80010c0:	ee67 7aa6 	vmul.f32	s15, s15, s13
 80010c4:	ee67 7a87 	vmul.f32	s15, s15, s14
 80010c8:	ece3 7a01 	vstmia	r3!, {s15}
 80010cc:	428b      	cmp	r3, r1
 80010ce:	d1f1      	bne.n	80010b4 <ADC_FFT+0x10>
 80010d0:	4770      	bx	lr
 80010d2:	bf00      	nop
 80010d4:	2000007c 	.word	0x2000007c
 80010d8:	40533333 	.word	0x40533333
 80010dc:	3a800000 	.word	0x3a800000

080010e0 <SystemClock_Config>:
 80010e0:	b510      	push	{r4, lr}
 80010e2:	b094      	sub	sp, #80	@ 0x50
 80010e4:	2238      	movs	r2, #56	@ 0x38
 80010e6:	2100      	movs	r1, #0
 80010e8:	a806      	add	r0, sp, #24
 80010ea:	f005 f9a7 	bl	800643c <memset>
 80010ee:	2300      	movs	r3, #0
 80010f0:	f44f 7000 	mov.w	r0, #512	@ 0x200
 80010f4:	e9cd 3301 	strd	r3, r3, [sp, #4]
 80010f8:	e9cd 3303 	strd	r3, r3, [sp, #12]
 80010fc:	9305      	str	r3, [sp, #20]
 80010fe:	f001 f915 	bl	800232c <HAL_PWREx_ControlVoltageScaling>
 8001102:	ed9f 7b13 	vldr	d7, [pc, #76]	@ 8001150 <SystemClock_Config+0x70>
 8001106:	2201      	movs	r2, #1
 8001108:	2302      	movs	r3, #2
 800110a:	2403      	movs	r4, #3
 800110c:	920f      	str	r2, [sp, #60]	@ 0x3c
 800110e:	a806      	add	r0, sp, #24
 8001110:	220c      	movs	r2, #12
 8001112:	ed8d 7b06 	vstr	d7, [sp, #24]
 8001116:	e9cd 340d 	strd	r3, r4, [sp, #52]	@ 0x34
 800111a:	e9cd 2310 	strd	r2, r3, [sp, #64]	@ 0x40
 800111e:	e9cd 3312 	strd	r3, r3, [sp, #72]	@ 0x48
 8001122:	f000 f951 	bl	80013c8 <HAL_RCC_OscConfig>
 8001126:	b108      	cbz	r0, 800112c <SystemClock_Config+0x4c>
 8001128:	b672      	cpsid	i
 800112a:	e7fe      	b.n	800112a <SystemClock_Config+0x4a>
 800112c:	4601      	mov	r1, r0
 800112e:	220f      	movs	r2, #15
 8001130:	23a0      	movs	r3, #160	@ 0xa0
 8001132:	a801      	add	r0, sp, #4
 8001134:	e9cd 2401 	strd	r2, r4, [sp, #4]
 8001138:	e9cd 3103 	strd	r3, r1, [sp, #12]
 800113c:	9105      	str	r1, [sp, #20]
 800113e:	f000 fbc1 	bl	80018c4 <HAL_RCC_ClockConfig>
 8001142:	b108      	cbz	r0, 8001148 <SystemClock_Config+0x68>
 8001144:	b672      	cpsid	i
 8001146:	e7fe      	b.n	8001146 <SystemClock_Config+0x66>
 8001148:	b014      	add	sp, #80	@ 0x50
 800114a:	bd10      	pop	{r4, pc}
 800114c:	f3af 8000 	nop.w
 8001150:	00000001 	.word	0x00000001
 8001154:	00010000 	.word	0x00010000

08001158 <main>:
 8001158:	b580      	push	{r7, lr}
 800115a:	f000 f901 	bl	8001360 <HAL_Init>
 800115e:	f7ff ffbf 	bl	80010e0 <SystemClock_Config>
 8001162:	f000 f849 	bl	80011f8 <MX_GPIO_Init>
 8001166:	f003 ffaf 	bl	80050c8 <MX_DMA_Init>
 800116a:	f001 fcbf 	bl	8002aec <MX_I2C3_Init>
 800116e:	f001 fd81 	bl	8002c74 <MX_USART3_UART_Init>
 8001172:	f002 ff77 	bl	8004064 <MX_ADC1_Init>
 8001176:	f003 f833 	bl	80041e0 <MX_TIM3_Init>
 800117a:	f001 fd37 	bl	8002bec <MX_USART2_UART_Init>
 800117e:	4816      	ldr	r0, [pc, #88]	@ (80011d8 <main+0x80>)
 8001180:	4d16      	ldr	r5, [pc, #88]	@ (80011dc <main+0x84>)
 8001182:	4f17      	ldr	r7, [pc, #92]	@ (80011e0 <main+0x88>)
 8001184:	4e17      	ldr	r6, [pc, #92]	@ (80011e4 <main+0x8c>)
 8001186:	f8df 8064 	ldr.w	r8, [pc, #100]	@ 80011ec <main+0x94>
 800118a:	f001 f9bf 	bl	800250c <HAL_TIM_Base_Start>
 800118e:	4913      	ldr	r1, [pc, #76]	@ (80011dc <main+0x84>)
 8001190:	4815      	ldr	r0, [pc, #84]	@ (80011e8 <main+0x90>)
 8001192:	2201      	movs	r2, #1
 8001194:	f002 feb4 	bl	8003f00 <HAL_UART_Receive_IT>
 8001198:	2002      	movs	r0, #2
 800119a:	f000 f903 	bl	80013a4 <HAL_Delay>
 800119e:	782c      	ldrb	r4, [r5, #0]
 80011a0:	2c01      	cmp	r4, #1
 80011a2:	d1f9      	bne.n	8001198 <main+0x40>
 80011a4:	4639      	mov	r1, r7
 80011a6:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 80011aa:	4630      	mov	r0, r6
 80011ac:	f003 fe26 	bl	8004dfc <HAL_ADC_Start_DMA>
 80011b0:	2014      	movs	r0, #20
 80011b2:	f000 f8f7 	bl	80013a4 <HAL_Delay>
 80011b6:	4630      	mov	r0, r6
 80011b8:	f003 fed0 	bl	8004f5c <HAL_ADC_Stop_DMA>
 80011bc:	4638      	mov	r0, r7
 80011be:	f7ff ff71 	bl	80010a4 <ADC_FFT>
 80011c2:	4640      	mov	r0, r8
 80011c4:	f7ff fd24 	bl	8000c10 <FFT_test>
 80011c8:	2300      	movs	r3, #0
 80011ca:	4904      	ldr	r1, [pc, #16]	@ (80011dc <main+0x84>)
 80011cc:	4806      	ldr	r0, [pc, #24]	@ (80011e8 <main+0x90>)
 80011ce:	702b      	strb	r3, [r5, #0]
 80011d0:	4622      	mov	r2, r4
 80011d2:	f002 fe95 	bl	8003f00 <HAL_UART_Receive_IT>
 80011d6:	e7df      	b.n	8001198 <main+0x40>
 80011d8:	200032e8 	.word	0x200032e8
 80011dc:	20003090 	.word	0x20003090
 80011e0:	2000107c 	.word	0x2000107c
 80011e4:	2000327c 	.word	0x2000327c
 80011e8:	200030f0 	.word	0x200030f0
 80011ec:	2000007c 	.word	0x2000007c

080011f0 <Error_Handler>:
 80011f0:	b672      	cpsid	i
 80011f2:	e7fe      	b.n	80011f2 <Error_Handler+0x2>
 80011f4:	0000      	movs	r0, r0
	...

080011f8 <MX_GPIO_Init>:
 80011f8:	b500      	push	{lr}
 80011fa:	2200      	movs	r2, #0
 80011fc:	b08b      	sub	sp, #44	@ 0x2c
 80011fe:	e9cd 2204 	strd	r2, r2, [sp, #16]
 8001202:	e9cd 2206 	strd	r2, r2, [sp, #24]
 8001206:	4b20      	ldr	r3, [pc, #128]	@ (8001288 <MX_GPIO_Init+0x90>)
 8001208:	9208      	str	r2, [sp, #32]
 800120a:	6cd9      	ldr	r1, [r3, #76]	@ 0x4c
 800120c:	f041 0104 	orr.w	r1, r1, #4
 8001210:	64d9      	str	r1, [r3, #76]	@ 0x4c
 8001212:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
 8001214:	f000 0004 	and.w	r0, r0, #4
 8001218:	9000      	str	r0, [sp, #0]
 800121a:	9800      	ldr	r0, [sp, #0]
 800121c:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
 800121e:	f040 0020 	orr.w	r0, r0, #32
 8001222:	64d8      	str	r0, [r3, #76]	@ 0x4c
 8001224:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
 8001226:	f000 0020 	and.w	r0, r0, #32
 800122a:	9001      	str	r0, [sp, #4]
 800122c:	9801      	ldr	r0, [sp, #4]
 800122e:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
 8001230:	f040 0001 	orr.w	r0, r0, #1
 8001234:	64d8      	str	r0, [r3, #76]	@ 0x4c
 8001236:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
 8001238:	f000 0001 	and.w	r0, r0, #1
 800123c:	9002      	str	r0, [sp, #8]
 800123e:	9802      	ldr	r0, [sp, #8]
 8001240:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
 8001242:	f040 0002 	orr.w	r0, r0, #2
 8001246:	64d8      	str	r0, [r3, #76]	@ 0x4c
 8001248:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 800124a:	f003 0302 	and.w	r3, r3, #2
 800124e:	9303      	str	r3, [sp, #12]
 8001250:	2140      	movs	r1, #64	@ 0x40
 8001252:	f04f 4090 	mov.w	r0, #1207959552	@ 0x48000000
 8001256:	9b03      	ldr	r3, [sp, #12]
 8001258:	f000 feb4 	bl	8001fc4 <HAL_GPIO_WritePin>
 800125c:	ed9f 7b08 	vldr	d7, [pc, #32]	@ 8001280 <MX_GPIO_Init+0x88>
 8001260:	2200      	movs	r2, #0
 8001262:	2300      	movs	r3, #0
 8001264:	a904      	add	r1, sp, #16
 8001266:	f04f 4090 	mov.w	r0, #1207959552	@ 0x48000000
 800126a:	ed8d 7b04 	vstr	d7, [sp, #16]
 800126e:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8001272:	f000 fd9f 	bl	8001db4 <HAL_GPIO_Init>
 8001276:	b00b      	add	sp, #44	@ 0x2c
 8001278:	f85d fb04 	ldr.w	pc, [sp], #4
 800127c:	f3af 8000 	nop.w
 8001280:	00000040 	.word	0x00000040
 8001284:	00000001 	.word	0x00000001
 8001288:	40021000 	.word	0x40021000

0800128c <NMI_Handler>:
 800128c:	e7fe      	b.n	800128c <NMI_Handler>
 800128e:	bf00      	nop

08001290 <HardFault_Handler>:
 8001290:	e7fe      	b.n	8001290 <HardFault_Handler>
 8001292:	bf00      	nop

08001294 <MemManage_Handler>:
 8001294:	e7fe      	b.n	8001294 <MemManage_Handler>
 8001296:	bf00      	nop

08001298 <BusFault_Handler>:
 8001298:	e7fe      	b.n	8001298 <BusFault_Handler>
 800129a:	bf00      	nop

0800129c <UsageFault_Handler>:
 800129c:	e7fe      	b.n	800129c <UsageFault_Handler>
 800129e:	bf00      	nop

080012a0 <SVC_Handler>:
 80012a0:	4770      	bx	lr
 80012a2:	bf00      	nop

080012a4 <DebugMon_Handler>:
 80012a4:	4770      	bx	lr
 80012a6:	bf00      	nop

080012a8 <PendSV_Handler>:
 80012a8:	4770      	bx	lr
 80012aa:	bf00      	nop

080012ac <SysTick_Handler>:
 80012ac:	f000 b868 	b.w	8001380 <HAL_IncTick>

080012b0 <DMA1_Channel1_IRQHandler>:
 80012b0:	4801      	ldr	r0, [pc, #4]	@ (80012b8 <DMA1_Channel1_IRQHandler+0x8>)
 80012b2:	f000 bfed 	b.w	8002290 <HAL_DMA_IRQHandler>
 80012b6:	bf00      	nop
 80012b8:	2000321c 	.word	0x2000321c

080012bc <ADC1_2_IRQHandler>:
 80012bc:	4801      	ldr	r0, [pc, #4]	@ (80012c4 <ADC1_2_IRQHandler+0x8>)
 80012be:	f003 b8eb 	b.w	8004498 <HAL_ADC_IRQHandler>
 80012c2:	bf00      	nop
 80012c4:	2000327c 	.word	0x2000327c

080012c8 <TIM3_IRQHandler>:
 80012c8:	4801      	ldr	r0, [pc, #4]	@ (80012d0 <TIM3_IRQHandler+0x8>)
 80012ca:	f001 ba2d 	b.w	8002728 <HAL_TIM_IRQHandler>
 80012ce:	bf00      	nop
 80012d0:	200032e8 	.word	0x200032e8

080012d4 <USART3_IRQHandler>:
 80012d4:	4801      	ldr	r0, [pc, #4]	@ (80012dc <USART3_IRQHandler+0x8>)
 80012d6:	f001 be97 	b.w	8003008 <HAL_UART_IRQHandler>
 80012da:	bf00      	nop
 80012dc:	200030f0 	.word	0x200030f0

080012e0 <HAL_MspInit>:
 80012e0:	4b0b      	ldr	r3, [pc, #44]	@ (8001310 <HAL_MspInit+0x30>)
 80012e2:	6e1a      	ldr	r2, [r3, #96]	@ 0x60
 80012e4:	f042 0201 	orr.w	r2, r2, #1
 80012e8:	b082      	sub	sp, #8
 80012ea:	661a      	str	r2, [r3, #96]	@ 0x60
 80012ec:	6e1a      	ldr	r2, [r3, #96]	@ 0x60
 80012ee:	f002 0201 	and.w	r2, r2, #1
 80012f2:	9200      	str	r2, [sp, #0]
 80012f4:	9a00      	ldr	r2, [sp, #0]
 80012f6:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 80012f8:	f042 5280 	orr.w	r2, r2, #268435456	@ 0x10000000
 80012fc:	659a      	str	r2, [r3, #88]	@ 0x58
 80012fe:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8001300:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8001304:	9301      	str	r3, [sp, #4]
 8001306:	9b01      	ldr	r3, [sp, #4]
 8001308:	b002      	add	sp, #8
 800130a:	f001 b881 	b.w	8002410 <HAL_PWREx_DisableUCPDDeadBattery>
 800130e:	bf00      	nop
 8001310:	40021000 	.word	0x40021000

08001314 <HAL_InitTick>:
 8001314:	b538      	push	{r3, r4, r5, lr}
 8001316:	4b0f      	ldr	r3, [pc, #60]	@ (8001354 <HAL_InitTick+0x40>)
 8001318:	681b      	ldr	r3, [r3, #0]
 800131a:	b90b      	cbnz	r3, 8001320 <HAL_InitTick+0xc>
 800131c:	2001      	movs	r0, #1
 800131e:	bd38      	pop	{r3, r4, r5, pc}
 8001320:	490d      	ldr	r1, [pc, #52]	@ (8001358 <HAL_InitTick+0x44>)
 8001322:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
 8001326:	4605      	mov	r5, r0
 8001328:	fbb2 f3f3 	udiv	r3, r2, r3
 800132c:	6808      	ldr	r0, [r1, #0]
 800132e:	fbb0 f0f3 	udiv	r0, r0, r3
 8001332:	f001 f8d1 	bl	80024d8 <HAL_SYSTICK_Config>
 8001336:	4604      	mov	r4, r0
 8001338:	2800      	cmp	r0, #0
 800133a:	d1ef      	bne.n	800131c <HAL_InitTick+0x8>
 800133c:	2d0f      	cmp	r5, #15
 800133e:	d8ed      	bhi.n	800131c <HAL_InitTick+0x8>
 8001340:	4602      	mov	r2, r0
 8001342:	4629      	mov	r1, r5
 8001344:	f04f 30ff 	mov.w	r0, #4294967295
 8001348:	f001 f87c 	bl	8002444 <HAL_NVIC_SetPriority>
 800134c:	4b03      	ldr	r3, [pc, #12]	@ (800135c <HAL_InitTick+0x48>)
 800134e:	4620      	mov	r0, r4
 8001350:	601d      	str	r5, [r3, #0]
 8001352:	bd38      	pop	{r3, r4, r5, pc}
 8001354:	20000000 	.word	0x20000000
 8001358:	20000008 	.word	0x20000008
 800135c:	20000004 	.word	0x20000004

08001360 <HAL_Init>:
 8001360:	b510      	push	{r4, lr}
 8001362:	2003      	movs	r0, #3
 8001364:	f001 f85c 	bl	8002420 <HAL_NVIC_SetPriorityGrouping>
 8001368:	200f      	movs	r0, #15
 800136a:	f7ff ffd3 	bl	8001314 <HAL_InitTick>
 800136e:	b110      	cbz	r0, 8001376 <HAL_Init+0x16>
 8001370:	2401      	movs	r4, #1
 8001372:	4620      	mov	r0, r4
 8001374:	bd10      	pop	{r4, pc}
 8001376:	4604      	mov	r4, r0
 8001378:	f7ff ffb2 	bl	80012e0 <HAL_MspInit>
 800137c:	4620      	mov	r0, r4
 800137e:	bd10      	pop	{r4, pc}

08001380 <HAL_IncTick>:
 8001380:	4a03      	ldr	r2, [pc, #12]	@ (8001390 <HAL_IncTick+0x10>)
 8001382:	4904      	ldr	r1, [pc, #16]	@ (8001394 <HAL_IncTick+0x14>)
 8001384:	6813      	ldr	r3, [r2, #0]
 8001386:	6809      	ldr	r1, [r1, #0]
 8001388:	440b      	add	r3, r1
 800138a:	6013      	str	r3, [r2, #0]
 800138c:	4770      	bx	lr
 800138e:	bf00      	nop
 8001390:	20003094 	.word	0x20003094
 8001394:	20000000 	.word	0x20000000

08001398 <HAL_GetTick>:
 8001398:	4b01      	ldr	r3, [pc, #4]	@ (80013a0 <HAL_GetTick+0x8>)
 800139a:	6818      	ldr	r0, [r3, #0]
 800139c:	4770      	bx	lr
 800139e:	bf00      	nop
 80013a0:	20003094 	.word	0x20003094

080013a4 <HAL_Delay>:
 80013a4:	b538      	push	{r3, r4, r5, lr}
 80013a6:	4604      	mov	r4, r0
 80013a8:	f7ff fff6 	bl	8001398 <HAL_GetTick>
 80013ac:	1c63      	adds	r3, r4, #1
 80013ae:	4605      	mov	r5, r0
 80013b0:	d002      	beq.n	80013b8 <HAL_Delay+0x14>
 80013b2:	4b04      	ldr	r3, [pc, #16]	@ (80013c4 <HAL_Delay+0x20>)
 80013b4:	681b      	ldr	r3, [r3, #0]
 80013b6:	441c      	add	r4, r3
 80013b8:	f7ff ffee 	bl	8001398 <HAL_GetTick>
 80013bc:	1b40      	subs	r0, r0, r5
 80013be:	42a0      	cmp	r0, r4
 80013c0:	d3fa      	bcc.n	80013b8 <HAL_Delay+0x14>
 80013c2:	bd38      	pop	{r3, r4, r5, pc}
 80013c4:	20000000 	.word	0x20000000

080013c8 <HAL_RCC_OscConfig>:
 80013c8:	2800      	cmp	r0, #0
 80013ca:	f000 81bd 	beq.w	8001748 <HAL_RCC_OscConfig+0x380>
 80013ce:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80013d2:	6803      	ldr	r3, [r0, #0]
 80013d4:	07d9      	lsls	r1, r3, #31
 80013d6:	b082      	sub	sp, #8
 80013d8:	4604      	mov	r4, r0
 80013da:	d512      	bpl.n	8001402 <HAL_RCC_OscConfig+0x3a>
 80013dc:	49a6      	ldr	r1, [pc, #664]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 80013de:	688a      	ldr	r2, [r1, #8]
 80013e0:	68c9      	ldr	r1, [r1, #12]
 80013e2:	f002 020c 	and.w	r2, r2, #12
 80013e6:	2a0c      	cmp	r2, #12
 80013e8:	f000 80d0 	beq.w	800158c <HAL_RCC_OscConfig+0x1c4>
 80013ec:	2a08      	cmp	r2, #8
 80013ee:	f040 80d2 	bne.w	8001596 <HAL_RCC_OscConfig+0x1ce>
 80013f2:	4aa1      	ldr	r2, [pc, #644]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 80013f4:	6812      	ldr	r2, [r2, #0]
 80013f6:	0392      	lsls	r2, r2, #14
 80013f8:	d503      	bpl.n	8001402 <HAL_RCC_OscConfig+0x3a>
 80013fa:	6862      	ldr	r2, [r4, #4]
 80013fc:	2a00      	cmp	r2, #0
 80013fe:	f000 8137 	beq.w	8001670 <HAL_RCC_OscConfig+0x2a8>
 8001402:	079a      	lsls	r2, r3, #30
 8001404:	d522      	bpl.n	800144c <HAL_RCC_OscConfig+0x84>
 8001406:	4a9c      	ldr	r2, [pc, #624]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 8001408:	6893      	ldr	r3, [r2, #8]
 800140a:	68d2      	ldr	r2, [r2, #12]
 800140c:	f003 030c 	and.w	r3, r3, #12
 8001410:	2b0c      	cmp	r3, #12
 8001412:	f000 80f8 	beq.w	8001606 <HAL_RCC_OscConfig+0x23e>
 8001416:	2b04      	cmp	r3, #4
 8001418:	f040 80fa 	bne.w	8001610 <HAL_RCC_OscConfig+0x248>
 800141c:	4b96      	ldr	r3, [pc, #600]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 800141e:	681b      	ldr	r3, [r3, #0]
 8001420:	055b      	lsls	r3, r3, #21
 8001422:	d503      	bpl.n	800142c <HAL_RCC_OscConfig+0x64>
 8001424:	68e3      	ldr	r3, [r4, #12]
 8001426:	2b00      	cmp	r3, #0
 8001428:	f000 8122 	beq.w	8001670 <HAL_RCC_OscConfig+0x2a8>
 800142c:	4a92      	ldr	r2, [pc, #584]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 800142e:	6920      	ldr	r0, [r4, #16]
 8001430:	6853      	ldr	r3, [r2, #4]
 8001432:	4992      	ldr	r1, [pc, #584]	@ (800167c <HAL_RCC_OscConfig+0x2b4>)
 8001434:	f023 43fe 	bic.w	r3, r3, #2130706432	@ 0x7f000000
 8001438:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
 800143c:	6053      	str	r3, [r2, #4]
 800143e:	6808      	ldr	r0, [r1, #0]
 8001440:	f7ff ff68 	bl	8001314 <HAL_InitTick>
 8001444:	2800      	cmp	r0, #0
 8001446:	f040 8113 	bne.w	8001670 <HAL_RCC_OscConfig+0x2a8>
 800144a:	6823      	ldr	r3, [r4, #0]
 800144c:	071a      	lsls	r2, r3, #28
 800144e:	d519      	bpl.n	8001484 <HAL_RCC_OscConfig+0xbc>
 8001450:	6963      	ldr	r3, [r4, #20]
 8001452:	4d89      	ldr	r5, [pc, #548]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 8001454:	2b00      	cmp	r3, #0
 8001456:	f000 80c2 	beq.w	80015de <HAL_RCC_OscConfig+0x216>
 800145a:	f8d5 3094 	ldr.w	r3, [r5, #148]	@ 0x94
 800145e:	f043 0301 	orr.w	r3, r3, #1
 8001462:	f8c5 3094 	str.w	r3, [r5, #148]	@ 0x94
 8001466:	f7ff ff97 	bl	8001398 <HAL_GetTick>
 800146a:	4606      	mov	r6, r0
 800146c:	e005      	b.n	800147a <HAL_RCC_OscConfig+0xb2>
 800146e:	f7ff ff93 	bl	8001398 <HAL_GetTick>
 8001472:	1b80      	subs	r0, r0, r6
 8001474:	2802      	cmp	r0, #2
 8001476:	f200 8117 	bhi.w	80016a8 <HAL_RCC_OscConfig+0x2e0>
 800147a:	f8d5 3094 	ldr.w	r3, [r5, #148]	@ 0x94
 800147e:	079b      	lsls	r3, r3, #30
 8001480:	d5f5      	bpl.n	800146e <HAL_RCC_OscConfig+0xa6>
 8001482:	6823      	ldr	r3, [r4, #0]
 8001484:	075d      	lsls	r5, r3, #29
 8001486:	d541      	bpl.n	800150c <HAL_RCC_OscConfig+0x144>
 8001488:	4b7b      	ldr	r3, [pc, #492]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 800148a:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 800148c:	00d0      	lsls	r0, r2, #3
 800148e:	f100 810f 	bmi.w	80016b0 <HAL_RCC_OscConfig+0x2e8>
 8001492:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8001494:	f042 5280 	orr.w	r2, r2, #268435456	@ 0x10000000
 8001498:	659a      	str	r2, [r3, #88]	@ 0x58
 800149a:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 800149c:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 80014a0:	9301      	str	r3, [sp, #4]
 80014a2:	9b01      	ldr	r3, [sp, #4]
 80014a4:	2501      	movs	r5, #1
 80014a6:	4e76      	ldr	r6, [pc, #472]	@ (8001680 <HAL_RCC_OscConfig+0x2b8>)
 80014a8:	6833      	ldr	r3, [r6, #0]
 80014aa:	05d9      	lsls	r1, r3, #23
 80014ac:	f140 812e 	bpl.w	800170c <HAL_RCC_OscConfig+0x344>
 80014b0:	68a3      	ldr	r3, [r4, #8]
 80014b2:	2b01      	cmp	r3, #1
 80014b4:	f000 80fe 	beq.w	80016b4 <HAL_RCC_OscConfig+0x2ec>
 80014b8:	2b05      	cmp	r3, #5
 80014ba:	f000 8184 	beq.w	80017c6 <HAL_RCC_OscConfig+0x3fe>
 80014be:	4e6e      	ldr	r6, [pc, #440]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 80014c0:	f8d6 2090 	ldr.w	r2, [r6, #144]	@ 0x90
 80014c4:	f022 0201 	bic.w	r2, r2, #1
 80014c8:	f8c6 2090 	str.w	r2, [r6, #144]	@ 0x90
 80014cc:	f8d6 2090 	ldr.w	r2, [r6, #144]	@ 0x90
 80014d0:	f022 0204 	bic.w	r2, r2, #4
 80014d4:	f8c6 2090 	str.w	r2, [r6, #144]	@ 0x90
 80014d8:	2b00      	cmp	r3, #0
 80014da:	f040 80f2 	bne.w	80016c2 <HAL_RCC_OscConfig+0x2fa>
 80014de:	f7ff ff5b 	bl	8001398 <HAL_GetTick>
 80014e2:	f241 3888 	movw	r8, #5000	@ 0x1388
 80014e6:	4607      	mov	r7, r0
 80014e8:	e005      	b.n	80014f6 <HAL_RCC_OscConfig+0x12e>
 80014ea:	f7ff ff55 	bl	8001398 <HAL_GetTick>
 80014ee:	1bc0      	subs	r0, r0, r7
 80014f0:	4540      	cmp	r0, r8
 80014f2:	f200 80d9 	bhi.w	80016a8 <HAL_RCC_OscConfig+0x2e0>
 80014f6:	f8d6 3090 	ldr.w	r3, [r6, #144]	@ 0x90
 80014fa:	0799      	lsls	r1, r3, #30
 80014fc:	d4f5      	bmi.n	80014ea <HAL_RCC_OscConfig+0x122>
 80014fe:	b125      	cbz	r5, 800150a <HAL_RCC_OscConfig+0x142>
 8001500:	4a5d      	ldr	r2, [pc, #372]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 8001502:	6d93      	ldr	r3, [r2, #88]	@ 0x58
 8001504:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8001508:	6593      	str	r3, [r2, #88]	@ 0x58
 800150a:	6823      	ldr	r3, [r4, #0]
 800150c:	069a      	lsls	r2, r3, #26
 800150e:	d518      	bpl.n	8001542 <HAL_RCC_OscConfig+0x17a>
 8001510:	69a3      	ldr	r3, [r4, #24]
 8001512:	4d59      	ldr	r5, [pc, #356]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 8001514:	2b00      	cmp	r3, #0
 8001516:	f000 80e5 	beq.w	80016e4 <HAL_RCC_OscConfig+0x31c>
 800151a:	f8d5 3098 	ldr.w	r3, [r5, #152]	@ 0x98
 800151e:	f043 0301 	orr.w	r3, r3, #1
 8001522:	f8c5 3098 	str.w	r3, [r5, #152]	@ 0x98
 8001526:	f7ff ff37 	bl	8001398 <HAL_GetTick>
 800152a:	4606      	mov	r6, r0
 800152c:	e005      	b.n	800153a <HAL_RCC_OscConfig+0x172>
 800152e:	f7ff ff33 	bl	8001398 <HAL_GetTick>
 8001532:	1b80      	subs	r0, r0, r6
 8001534:	2802      	cmp	r0, #2
 8001536:	f200 80b7 	bhi.w	80016a8 <HAL_RCC_OscConfig+0x2e0>
 800153a:	f8d5 3098 	ldr.w	r3, [r5, #152]	@ 0x98
 800153e:	079b      	lsls	r3, r3, #30
 8001540:	d5f5      	bpl.n	800152e <HAL_RCC_OscConfig+0x166>
 8001542:	69e3      	ldr	r3, [r4, #28]
 8001544:	b1f3      	cbz	r3, 8001584 <HAL_RCC_OscConfig+0x1bc>
 8001546:	4d4c      	ldr	r5, [pc, #304]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 8001548:	68aa      	ldr	r2, [r5, #8]
 800154a:	f002 020c 	and.w	r2, r2, #12
 800154e:	2a0c      	cmp	r2, #12
 8001550:	f000 8147 	beq.w	80017e2 <HAL_RCC_OscConfig+0x41a>
 8001554:	2b02      	cmp	r3, #2
 8001556:	682b      	ldr	r3, [r5, #0]
 8001558:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 800155c:	602b      	str	r3, [r5, #0]
 800155e:	f000 80f5 	beq.w	800174c <HAL_RCC_OscConfig+0x384>
 8001562:	f7ff ff19 	bl	8001398 <HAL_GetTick>
 8001566:	4604      	mov	r4, r0
 8001568:	e005      	b.n	8001576 <HAL_RCC_OscConfig+0x1ae>
 800156a:	f7ff ff15 	bl	8001398 <HAL_GetTick>
 800156e:	1b00      	subs	r0, r0, r4
 8001570:	2802      	cmp	r0, #2
 8001572:	f200 8099 	bhi.w	80016a8 <HAL_RCC_OscConfig+0x2e0>
 8001576:	682b      	ldr	r3, [r5, #0]
 8001578:	019b      	lsls	r3, r3, #6
 800157a:	d4f6      	bmi.n	800156a <HAL_RCC_OscConfig+0x1a2>
 800157c:	68ea      	ldr	r2, [r5, #12]
 800157e:	4b41      	ldr	r3, [pc, #260]	@ (8001684 <HAL_RCC_OscConfig+0x2bc>)
 8001580:	4013      	ands	r3, r2
 8001582:	60eb      	str	r3, [r5, #12]
 8001584:	2000      	movs	r0, #0
 8001586:	b002      	add	sp, #8
 8001588:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800158c:	f001 0103 	and.w	r1, r1, #3
 8001590:	2903      	cmp	r1, #3
 8001592:	f43f af2e 	beq.w	80013f2 <HAL_RCC_OscConfig+0x2a>
 8001596:	6863      	ldr	r3, [r4, #4]
 8001598:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 800159c:	d055      	beq.n	800164a <HAL_RCC_OscConfig+0x282>
 800159e:	f5b3 2fa0 	cmp.w	r3, #327680	@ 0x50000
 80015a2:	f000 80c4 	beq.w	800172e <HAL_RCC_OscConfig+0x366>
 80015a6:	4d34      	ldr	r5, [pc, #208]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 80015a8:	682a      	ldr	r2, [r5, #0]
 80015aa:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
 80015ae:	602a      	str	r2, [r5, #0]
 80015b0:	682a      	ldr	r2, [r5, #0]
 80015b2:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
 80015b6:	602a      	str	r2, [r5, #0]
 80015b8:	2b00      	cmp	r3, #0
 80015ba:	d14b      	bne.n	8001654 <HAL_RCC_OscConfig+0x28c>
 80015bc:	f7ff feec 	bl	8001398 <HAL_GetTick>
 80015c0:	4606      	mov	r6, r0
 80015c2:	e004      	b.n	80015ce <HAL_RCC_OscConfig+0x206>
 80015c4:	f7ff fee8 	bl	8001398 <HAL_GetTick>
 80015c8:	1b80      	subs	r0, r0, r6
 80015ca:	2864      	cmp	r0, #100	@ 0x64
 80015cc:	d86c      	bhi.n	80016a8 <HAL_RCC_OscConfig+0x2e0>
 80015ce:	682b      	ldr	r3, [r5, #0]
 80015d0:	0399      	lsls	r1, r3, #14
 80015d2:	d4f7      	bmi.n	80015c4 <HAL_RCC_OscConfig+0x1fc>
 80015d4:	6823      	ldr	r3, [r4, #0]
 80015d6:	079a      	lsls	r2, r3, #30
 80015d8:	f57f af38 	bpl.w	800144c <HAL_RCC_OscConfig+0x84>
 80015dc:	e713      	b.n	8001406 <HAL_RCC_OscConfig+0x3e>
 80015de:	f8d5 3094 	ldr.w	r3, [r5, #148]	@ 0x94
 80015e2:	f023 0301 	bic.w	r3, r3, #1
 80015e6:	f8c5 3094 	str.w	r3, [r5, #148]	@ 0x94
 80015ea:	f7ff fed5 	bl	8001398 <HAL_GetTick>
 80015ee:	4606      	mov	r6, r0
 80015f0:	e004      	b.n	80015fc <HAL_RCC_OscConfig+0x234>
 80015f2:	f7ff fed1 	bl	8001398 <HAL_GetTick>
 80015f6:	1b80      	subs	r0, r0, r6
 80015f8:	2802      	cmp	r0, #2
 80015fa:	d855      	bhi.n	80016a8 <HAL_RCC_OscConfig+0x2e0>
 80015fc:	f8d5 3094 	ldr.w	r3, [r5, #148]	@ 0x94
 8001600:	079f      	lsls	r7, r3, #30
 8001602:	d4f6      	bmi.n	80015f2 <HAL_RCC_OscConfig+0x22a>
 8001604:	e73d      	b.n	8001482 <HAL_RCC_OscConfig+0xba>
 8001606:	f002 0203 	and.w	r2, r2, #3
 800160a:	2a02      	cmp	r2, #2
 800160c:	f43f af06 	beq.w	800141c <HAL_RCC_OscConfig+0x54>
 8001610:	68e3      	ldr	r3, [r4, #12]
 8001612:	4d19      	ldr	r5, [pc, #100]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 8001614:	2b00      	cmp	r3, #0
 8001616:	d037      	beq.n	8001688 <HAL_RCC_OscConfig+0x2c0>
 8001618:	682b      	ldr	r3, [r5, #0]
 800161a:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 800161e:	602b      	str	r3, [r5, #0]
 8001620:	f7ff feba 	bl	8001398 <HAL_GetTick>
 8001624:	4606      	mov	r6, r0
 8001626:	e004      	b.n	8001632 <HAL_RCC_OscConfig+0x26a>
 8001628:	f7ff feb6 	bl	8001398 <HAL_GetTick>
 800162c:	1b80      	subs	r0, r0, r6
 800162e:	2802      	cmp	r0, #2
 8001630:	d83a      	bhi.n	80016a8 <HAL_RCC_OscConfig+0x2e0>
 8001632:	682b      	ldr	r3, [r5, #0]
 8001634:	055f      	lsls	r7, r3, #21
 8001636:	d5f7      	bpl.n	8001628 <HAL_RCC_OscConfig+0x260>
 8001638:	686b      	ldr	r3, [r5, #4]
 800163a:	6922      	ldr	r2, [r4, #16]
 800163c:	f023 43fe 	bic.w	r3, r3, #2130706432	@ 0x7f000000
 8001640:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
 8001644:	606b      	str	r3, [r5, #4]
 8001646:	6823      	ldr	r3, [r4, #0]
 8001648:	e700      	b.n	800144c <HAL_RCC_OscConfig+0x84>
 800164a:	4a0b      	ldr	r2, [pc, #44]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 800164c:	6813      	ldr	r3, [r2, #0]
 800164e:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001652:	6013      	str	r3, [r2, #0]
 8001654:	f7ff fea0 	bl	8001398 <HAL_GetTick>
 8001658:	4e07      	ldr	r6, [pc, #28]	@ (8001678 <HAL_RCC_OscConfig+0x2b0>)
 800165a:	4605      	mov	r5, r0
 800165c:	e004      	b.n	8001668 <HAL_RCC_OscConfig+0x2a0>
 800165e:	f7ff fe9b 	bl	8001398 <HAL_GetTick>
 8001662:	1b40      	subs	r0, r0, r5
 8001664:	2864      	cmp	r0, #100	@ 0x64
 8001666:	d81f      	bhi.n	80016a8 <HAL_RCC_OscConfig+0x2e0>
 8001668:	6833      	ldr	r3, [r6, #0]
 800166a:	039f      	lsls	r7, r3, #14
 800166c:	d5f7      	bpl.n	800165e <HAL_RCC_OscConfig+0x296>
 800166e:	e7b1      	b.n	80015d4 <HAL_RCC_OscConfig+0x20c>
 8001670:	2001      	movs	r0, #1
 8001672:	b002      	add	sp, #8
 8001674:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001678:	40021000 	.word	0x40021000
 800167c:	20000004 	.word	0x20000004
 8001680:	40007000 	.word	0x40007000
 8001684:	feeefffc 	.word	0xfeeefffc
 8001688:	682b      	ldr	r3, [r5, #0]
 800168a:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 800168e:	602b      	str	r3, [r5, #0]
 8001690:	f7ff fe82 	bl	8001398 <HAL_GetTick>
 8001694:	4606      	mov	r6, r0
 8001696:	682b      	ldr	r3, [r5, #0]
 8001698:	0559      	lsls	r1, r3, #21
 800169a:	f57f aed6 	bpl.w	800144a <HAL_RCC_OscConfig+0x82>
 800169e:	f7ff fe7b 	bl	8001398 <HAL_GetTick>
 80016a2:	1b80      	subs	r0, r0, r6
 80016a4:	2802      	cmp	r0, #2
 80016a6:	d9f6      	bls.n	8001696 <HAL_RCC_OscConfig+0x2ce>
 80016a8:	2003      	movs	r0, #3
 80016aa:	b002      	add	sp, #8
 80016ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80016b0:	2500      	movs	r5, #0
 80016b2:	e6f8      	b.n	80014a6 <HAL_RCC_OscConfig+0xde>
 80016b4:	4a65      	ldr	r2, [pc, #404]	@ (800184c <HAL_RCC_OscConfig+0x484>)
 80016b6:	f8d2 3090 	ldr.w	r3, [r2, #144]	@ 0x90
 80016ba:	f043 0301 	orr.w	r3, r3, #1
 80016be:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 80016c2:	f7ff fe69 	bl	8001398 <HAL_GetTick>
 80016c6:	4f61      	ldr	r7, [pc, #388]	@ (800184c <HAL_RCC_OscConfig+0x484>)
 80016c8:	4606      	mov	r6, r0
 80016ca:	f241 3888 	movw	r8, #5000	@ 0x1388
 80016ce:	e004      	b.n	80016da <HAL_RCC_OscConfig+0x312>
 80016d0:	f7ff fe62 	bl	8001398 <HAL_GetTick>
 80016d4:	1b80      	subs	r0, r0, r6
 80016d6:	4540      	cmp	r0, r8
 80016d8:	d8e6      	bhi.n	80016a8 <HAL_RCC_OscConfig+0x2e0>
 80016da:	f8d7 3090 	ldr.w	r3, [r7, #144]	@ 0x90
 80016de:	079b      	lsls	r3, r3, #30
 80016e0:	d5f6      	bpl.n	80016d0 <HAL_RCC_OscConfig+0x308>
 80016e2:	e70c      	b.n	80014fe <HAL_RCC_OscConfig+0x136>
 80016e4:	f8d5 3098 	ldr.w	r3, [r5, #152]	@ 0x98
 80016e8:	f023 0301 	bic.w	r3, r3, #1
 80016ec:	f8c5 3098 	str.w	r3, [r5, #152]	@ 0x98
 80016f0:	f7ff fe52 	bl	8001398 <HAL_GetTick>
 80016f4:	4606      	mov	r6, r0
 80016f6:	e004      	b.n	8001702 <HAL_RCC_OscConfig+0x33a>
 80016f8:	f7ff fe4e 	bl	8001398 <HAL_GetTick>
 80016fc:	1b80      	subs	r0, r0, r6
 80016fe:	2802      	cmp	r0, #2
 8001700:	d8d2      	bhi.n	80016a8 <HAL_RCC_OscConfig+0x2e0>
 8001702:	f8d5 3098 	ldr.w	r3, [r5, #152]	@ 0x98
 8001706:	079f      	lsls	r7, r3, #30
 8001708:	d4f6      	bmi.n	80016f8 <HAL_RCC_OscConfig+0x330>
 800170a:	e71a      	b.n	8001542 <HAL_RCC_OscConfig+0x17a>
 800170c:	6833      	ldr	r3, [r6, #0]
 800170e:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8001712:	6033      	str	r3, [r6, #0]
 8001714:	f7ff fe40 	bl	8001398 <HAL_GetTick>
 8001718:	4607      	mov	r7, r0
 800171a:	6833      	ldr	r3, [r6, #0]
 800171c:	05da      	lsls	r2, r3, #23
 800171e:	f53f aec7 	bmi.w	80014b0 <HAL_RCC_OscConfig+0xe8>
 8001722:	f7ff fe39 	bl	8001398 <HAL_GetTick>
 8001726:	1bc0      	subs	r0, r0, r7
 8001728:	2802      	cmp	r0, #2
 800172a:	d9f6      	bls.n	800171a <HAL_RCC_OscConfig+0x352>
 800172c:	e7bc      	b.n	80016a8 <HAL_RCC_OscConfig+0x2e0>
 800172e:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
 8001732:	f5a3 333c 	sub.w	r3, r3, #192512	@ 0x2f000
 8001736:	681a      	ldr	r2, [r3, #0]
 8001738:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
 800173c:	601a      	str	r2, [r3, #0]
 800173e:	681a      	ldr	r2, [r3, #0]
 8001740:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
 8001744:	601a      	str	r2, [r3, #0]
 8001746:	e785      	b.n	8001654 <HAL_RCC_OscConfig+0x28c>
 8001748:	2001      	movs	r0, #1
 800174a:	4770      	bx	lr
 800174c:	f7ff fe24 	bl	8001398 <HAL_GetTick>
 8001750:	4606      	mov	r6, r0
 8001752:	e004      	b.n	800175e <HAL_RCC_OscConfig+0x396>
 8001754:	f7ff fe20 	bl	8001398 <HAL_GetTick>
 8001758:	1b80      	subs	r0, r0, r6
 800175a:	2802      	cmp	r0, #2
 800175c:	d8a4      	bhi.n	80016a8 <HAL_RCC_OscConfig+0x2e0>
 800175e:	682b      	ldr	r3, [r5, #0]
 8001760:	0199      	lsls	r1, r3, #6
 8001762:	d4f7      	bmi.n	8001754 <HAL_RCC_OscConfig+0x38c>
 8001764:	68e9      	ldr	r1, [r5, #12]
 8001766:	4b3a      	ldr	r3, [pc, #232]	@ (8001850 <HAL_RCC_OscConfig+0x488>)
 8001768:	6a22      	ldr	r2, [r4, #32]
 800176a:	6a60      	ldr	r0, [r4, #36]	@ 0x24
 800176c:	400b      	ands	r3, r1
 800176e:	4313      	orrs	r3, r2
 8001770:	e9d4 120a 	ldrd	r1, r2, [r4, #40]	@ 0x28
 8001774:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8001778:	ea43 63c2 	orr.w	r3, r3, r2, lsl #27
 800177c:	e9d4 120c 	ldrd	r1, r2, [r4, #48]	@ 0x30
 8001780:	3801      	subs	r0, #1
 8001782:	0849      	lsrs	r1, r1, #1
 8001784:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
 8001788:	3901      	subs	r1, #1
 800178a:	0852      	lsrs	r2, r2, #1
 800178c:	ea43 5341 	orr.w	r3, r3, r1, lsl #21
 8001790:	3a01      	subs	r2, #1
 8001792:	ea43 6342 	orr.w	r3, r3, r2, lsl #25
 8001796:	60eb      	str	r3, [r5, #12]
 8001798:	682b      	ldr	r3, [r5, #0]
 800179a:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 800179e:	602b      	str	r3, [r5, #0]
 80017a0:	68eb      	ldr	r3, [r5, #12]
 80017a2:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 80017a6:	60eb      	str	r3, [r5, #12]
 80017a8:	f7ff fdf6 	bl	8001398 <HAL_GetTick>
 80017ac:	4d27      	ldr	r5, [pc, #156]	@ (800184c <HAL_RCC_OscConfig+0x484>)
 80017ae:	4604      	mov	r4, r0
 80017b0:	e005      	b.n	80017be <HAL_RCC_OscConfig+0x3f6>
 80017b2:	f7ff fdf1 	bl	8001398 <HAL_GetTick>
 80017b6:	1b00      	subs	r0, r0, r4
 80017b8:	2802      	cmp	r0, #2
 80017ba:	f63f af75 	bhi.w	80016a8 <HAL_RCC_OscConfig+0x2e0>
 80017be:	682b      	ldr	r3, [r5, #0]
 80017c0:	019a      	lsls	r2, r3, #6
 80017c2:	d5f6      	bpl.n	80017b2 <HAL_RCC_OscConfig+0x3ea>
 80017c4:	e6de      	b.n	8001584 <HAL_RCC_OscConfig+0x1bc>
 80017c6:	4b21      	ldr	r3, [pc, #132]	@ (800184c <HAL_RCC_OscConfig+0x484>)
 80017c8:	f8d3 2090 	ldr.w	r2, [r3, #144]	@ 0x90
 80017cc:	f042 0204 	orr.w	r2, r2, #4
 80017d0:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 80017d4:	f8d3 2090 	ldr.w	r2, [r3, #144]	@ 0x90
 80017d8:	f042 0201 	orr.w	r2, r2, #1
 80017dc:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 80017e0:	e76f      	b.n	80016c2 <HAL_RCC_OscConfig+0x2fa>
 80017e2:	2b01      	cmp	r3, #1
 80017e4:	f43f af44 	beq.w	8001670 <HAL_RCC_OscConfig+0x2a8>
 80017e8:	68eb      	ldr	r3, [r5, #12]
 80017ea:	6a22      	ldr	r2, [r4, #32]
 80017ec:	f003 0103 	and.w	r1, r3, #3
 80017f0:	4291      	cmp	r1, r2
 80017f2:	f47f af3d 	bne.w	8001670 <HAL_RCC_OscConfig+0x2a8>
 80017f6:	6a61      	ldr	r1, [r4, #36]	@ 0x24
 80017f8:	f003 02f0 	and.w	r2, r3, #240	@ 0xf0
 80017fc:	3901      	subs	r1, #1
 80017fe:	ebb2 1f01 	cmp.w	r2, r1, lsl #4
 8001802:	f47f af35 	bne.w	8001670 <HAL_RCC_OscConfig+0x2a8>
 8001806:	6aa1      	ldr	r1, [r4, #40]	@ 0x28
 8001808:	f403 42fe 	and.w	r2, r3, #32512	@ 0x7f00
 800180c:	ebb2 2f01 	cmp.w	r2, r1, lsl #8
 8001810:	f47f af2e 	bne.w	8001670 <HAL_RCC_OscConfig+0x2a8>
 8001814:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
 8001816:	f003 4278 	and.w	r2, r3, #4160749568	@ 0xf8000000
 800181a:	ebb2 6fc1 	cmp.w	r2, r1, lsl #27
 800181e:	f47f af27 	bne.w	8001670 <HAL_RCC_OscConfig+0x2a8>
 8001822:	6b22      	ldr	r2, [r4, #48]	@ 0x30
 8001824:	0852      	lsrs	r2, r2, #1
 8001826:	f403 01c0 	and.w	r1, r3, #6291456	@ 0x600000
 800182a:	3a01      	subs	r2, #1
 800182c:	ebb1 5f42 	cmp.w	r1, r2, lsl #21
 8001830:	f47f af1e 	bne.w	8001670 <HAL_RCC_OscConfig+0x2a8>
 8001834:	6b62      	ldr	r2, [r4, #52]	@ 0x34
 8001836:	0852      	lsrs	r2, r2, #1
 8001838:	f003 63c0 	and.w	r3, r3, #100663296	@ 0x6000000
 800183c:	3a01      	subs	r2, #1
 800183e:	ebb3 6f42 	cmp.w	r3, r2, lsl #25
 8001842:	bf14      	ite	ne
 8001844:	2001      	movne	r0, #1
 8001846:	2000      	moveq	r0, #0
 8001848:	e69d      	b.n	8001586 <HAL_RCC_OscConfig+0x1be>
 800184a:	bf00      	nop
 800184c:	40021000 	.word	0x40021000
 8001850:	019f800c 	.word	0x019f800c

08001854 <HAL_RCC_GetSysClockFreq>:
 8001854:	4b18      	ldr	r3, [pc, #96]	@ (80018b8 <HAL_RCC_GetSysClockFreq+0x64>)
 8001856:	689a      	ldr	r2, [r3, #8]
 8001858:	f002 020c 	and.w	r2, r2, #12
 800185c:	2a04      	cmp	r2, #4
 800185e:	d026      	beq.n	80018ae <HAL_RCC_GetSysClockFreq+0x5a>
 8001860:	689a      	ldr	r2, [r3, #8]
 8001862:	f002 020c 	and.w	r2, r2, #12
 8001866:	2a08      	cmp	r2, #8
 8001868:	d023      	beq.n	80018b2 <HAL_RCC_GetSysClockFreq+0x5e>
 800186a:	689a      	ldr	r2, [r3, #8]
 800186c:	f002 020c 	and.w	r2, r2, #12
 8001870:	2a0c      	cmp	r2, #12
 8001872:	d001      	beq.n	8001878 <HAL_RCC_GetSysClockFreq+0x24>
 8001874:	2000      	movs	r0, #0
 8001876:	4770      	bx	lr
 8001878:	68d9      	ldr	r1, [r3, #12]
 800187a:	68da      	ldr	r2, [r3, #12]
 800187c:	68d8      	ldr	r0, [r3, #12]
 800187e:	f001 0103 	and.w	r1, r1, #3
 8001882:	2903      	cmp	r1, #3
 8001884:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001888:	f3c0 2006 	ubfx	r0, r0, #8, #7
 800188c:	bf0c      	ite	eq
 800188e:	4b0b      	ldreq	r3, [pc, #44]	@ (80018bc <HAL_RCC_GetSysClockFreq+0x68>)
 8001890:	4b0b      	ldrne	r3, [pc, #44]	@ (80018c0 <HAL_RCC_GetSysClockFreq+0x6c>)
 8001892:	3201      	adds	r2, #1
 8001894:	fbb3 f3f2 	udiv	r3, r3, r2
 8001898:	fb03 f000 	mul.w	r0, r3, r0
 800189c:	4b06      	ldr	r3, [pc, #24]	@ (80018b8 <HAL_RCC_GetSysClockFreq+0x64>)
 800189e:	68db      	ldr	r3, [r3, #12]
 80018a0:	f3c3 6341 	ubfx	r3, r3, #25, #2
 80018a4:	3301      	adds	r3, #1
 80018a6:	005b      	lsls	r3, r3, #1
 80018a8:	fbb0 f0f3 	udiv	r0, r0, r3
 80018ac:	4770      	bx	lr
 80018ae:	4804      	ldr	r0, [pc, #16]	@ (80018c0 <HAL_RCC_GetSysClockFreq+0x6c>)
 80018b0:	4770      	bx	lr
 80018b2:	4802      	ldr	r0, [pc, #8]	@ (80018bc <HAL_RCC_GetSysClockFreq+0x68>)
 80018b4:	4770      	bx	lr
 80018b6:	bf00      	nop
 80018b8:	40021000 	.word	0x40021000
 80018bc:	007a1200 	.word	0x007a1200
 80018c0:	00f42400 	.word	0x00f42400

080018c4 <HAL_RCC_ClockConfig>:
 80018c4:	2800      	cmp	r0, #0
 80018c6:	f000 80ee 	beq.w	8001aa6 <HAL_RCC_ClockConfig+0x1e2>
 80018ca:	4a78      	ldr	r2, [pc, #480]	@ (8001aac <HAL_RCC_ClockConfig+0x1e8>)
 80018cc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80018d0:	6813      	ldr	r3, [r2, #0]
 80018d2:	f003 030f 	and.w	r3, r3, #15
 80018d6:	428b      	cmp	r3, r1
 80018d8:	460d      	mov	r5, r1
 80018da:	4604      	mov	r4, r0
 80018dc:	d20c      	bcs.n	80018f8 <HAL_RCC_ClockConfig+0x34>
 80018de:	6813      	ldr	r3, [r2, #0]
 80018e0:	f023 030f 	bic.w	r3, r3, #15
 80018e4:	430b      	orrs	r3, r1
 80018e6:	6013      	str	r3, [r2, #0]
 80018e8:	6813      	ldr	r3, [r2, #0]
 80018ea:	f003 030f 	and.w	r3, r3, #15
 80018ee:	428b      	cmp	r3, r1
 80018f0:	d002      	beq.n	80018f8 <HAL_RCC_ClockConfig+0x34>
 80018f2:	2001      	movs	r0, #1
 80018f4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80018f8:	6823      	ldr	r3, [r4, #0]
 80018fa:	07df      	lsls	r7, r3, #31
 80018fc:	d569      	bpl.n	80019d2 <HAL_RCC_ClockConfig+0x10e>
 80018fe:	6867      	ldr	r7, [r4, #4]
 8001900:	2f03      	cmp	r7, #3
 8001902:	f000 80a0 	beq.w	8001a46 <HAL_RCC_ClockConfig+0x182>
 8001906:	4b6a      	ldr	r3, [pc, #424]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 8001908:	2f02      	cmp	r7, #2
 800190a:	681b      	ldr	r3, [r3, #0]
 800190c:	f000 8097 	beq.w	8001a3e <HAL_RCC_ClockConfig+0x17a>
 8001910:	055b      	lsls	r3, r3, #21
 8001912:	d5ee      	bpl.n	80018f2 <HAL_RCC_ClockConfig+0x2e>
 8001914:	f7ff ff9e 	bl	8001854 <HAL_RCC_GetSysClockFreq>
 8001918:	4b66      	ldr	r3, [pc, #408]	@ (8001ab4 <HAL_RCC_ClockConfig+0x1f0>)
 800191a:	4298      	cmp	r0, r3
 800191c:	f240 80c0 	bls.w	8001aa0 <HAL_RCC_ClockConfig+0x1dc>
 8001920:	4a63      	ldr	r2, [pc, #396]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 8001922:	6893      	ldr	r3, [r2, #8]
 8001924:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8001928:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 800192c:	6093      	str	r3, [r2, #8]
 800192e:	f04f 0980 	mov.w	r9, #128	@ 0x80
 8001932:	4e5f      	ldr	r6, [pc, #380]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 8001934:	68b3      	ldr	r3, [r6, #8]
 8001936:	f023 0303 	bic.w	r3, r3, #3
 800193a:	433b      	orrs	r3, r7
 800193c:	60b3      	str	r3, [r6, #8]
 800193e:	f7ff fd2b 	bl	8001398 <HAL_GetTick>
 8001942:	f241 3888 	movw	r8, #5000	@ 0x1388
 8001946:	4607      	mov	r7, r0
 8001948:	e004      	b.n	8001954 <HAL_RCC_ClockConfig+0x90>
 800194a:	f7ff fd25 	bl	8001398 <HAL_GetTick>
 800194e:	1bc0      	subs	r0, r0, r7
 8001950:	4540      	cmp	r0, r8
 8001952:	d871      	bhi.n	8001a38 <HAL_RCC_ClockConfig+0x174>
 8001954:	68b3      	ldr	r3, [r6, #8]
 8001956:	6862      	ldr	r2, [r4, #4]
 8001958:	f003 030c 	and.w	r3, r3, #12
 800195c:	ebb3 0f82 	cmp.w	r3, r2, lsl #2
 8001960:	d1f3      	bne.n	800194a <HAL_RCC_ClockConfig+0x86>
 8001962:	6823      	ldr	r3, [r4, #0]
 8001964:	079f      	lsls	r7, r3, #30
 8001966:	d436      	bmi.n	80019d6 <HAL_RCC_ClockConfig+0x112>
 8001968:	f1b9 0f00 	cmp.w	r9, #0
 800196c:	d003      	beq.n	8001976 <HAL_RCC_ClockConfig+0xb2>
 800196e:	68b3      	ldr	r3, [r6, #8]
 8001970:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8001974:	60b3      	str	r3, [r6, #8]
 8001976:	4e4d      	ldr	r6, [pc, #308]	@ (8001aac <HAL_RCC_ClockConfig+0x1e8>)
 8001978:	6833      	ldr	r3, [r6, #0]
 800197a:	f003 030f 	and.w	r3, r3, #15
 800197e:	42ab      	cmp	r3, r5
 8001980:	d846      	bhi.n	8001a10 <HAL_RCC_ClockConfig+0x14c>
 8001982:	6823      	ldr	r3, [r4, #0]
 8001984:	075a      	lsls	r2, r3, #29
 8001986:	d506      	bpl.n	8001996 <HAL_RCC_ClockConfig+0xd2>
 8001988:	4949      	ldr	r1, [pc, #292]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 800198a:	68e0      	ldr	r0, [r4, #12]
 800198c:	688a      	ldr	r2, [r1, #8]
 800198e:	f422 62e0 	bic.w	r2, r2, #1792	@ 0x700
 8001992:	4302      	orrs	r2, r0
 8001994:	608a      	str	r2, [r1, #8]
 8001996:	071b      	lsls	r3, r3, #28
 8001998:	d507      	bpl.n	80019aa <HAL_RCC_ClockConfig+0xe6>
 800199a:	4a45      	ldr	r2, [pc, #276]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 800199c:	6921      	ldr	r1, [r4, #16]
 800199e:	6893      	ldr	r3, [r2, #8]
 80019a0:	f423 5360 	bic.w	r3, r3, #14336	@ 0x3800
 80019a4:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 80019a8:	6093      	str	r3, [r2, #8]
 80019aa:	f7ff ff53 	bl	8001854 <HAL_RCC_GetSysClockFreq>
 80019ae:	4a40      	ldr	r2, [pc, #256]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 80019b0:	4c41      	ldr	r4, [pc, #260]	@ (8001ab8 <HAL_RCC_ClockConfig+0x1f4>)
 80019b2:	6892      	ldr	r2, [r2, #8]
 80019b4:	4941      	ldr	r1, [pc, #260]	@ (8001abc <HAL_RCC_ClockConfig+0x1f8>)
 80019b6:	f3c2 1203 	ubfx	r2, r2, #4, #4
 80019ba:	4603      	mov	r3, r0
 80019bc:	5ca2      	ldrb	r2, [r4, r2]
 80019be:	4840      	ldr	r0, [pc, #256]	@ (8001ac0 <HAL_RCC_ClockConfig+0x1fc>)
 80019c0:	f002 021f 	and.w	r2, r2, #31
 80019c4:	40d3      	lsrs	r3, r2
 80019c6:	600b      	str	r3, [r1, #0]
 80019c8:	6800      	ldr	r0, [r0, #0]
 80019ca:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80019ce:	f7ff bca1 	b.w	8001314 <HAL_InitTick>
 80019d2:	079e      	lsls	r6, r3, #30
 80019d4:	d5cf      	bpl.n	8001976 <HAL_RCC_ClockConfig+0xb2>
 80019d6:	0758      	lsls	r0, r3, #29
 80019d8:	d504      	bpl.n	80019e4 <HAL_RCC_ClockConfig+0x120>
 80019da:	4935      	ldr	r1, [pc, #212]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 80019dc:	688a      	ldr	r2, [r1, #8]
 80019de:	f442 62e0 	orr.w	r2, r2, #1792	@ 0x700
 80019e2:	608a      	str	r2, [r1, #8]
 80019e4:	0719      	lsls	r1, r3, #28
 80019e6:	d506      	bpl.n	80019f6 <HAL_RCC_ClockConfig+0x132>
 80019e8:	4a31      	ldr	r2, [pc, #196]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 80019ea:	6893      	ldr	r3, [r2, #8]
 80019ec:	f423 537c 	bic.w	r3, r3, #16128	@ 0x3f00
 80019f0:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
 80019f4:	6093      	str	r3, [r2, #8]
 80019f6:	4a2e      	ldr	r2, [pc, #184]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 80019f8:	68a1      	ldr	r1, [r4, #8]
 80019fa:	6893      	ldr	r3, [r2, #8]
 80019fc:	4e2b      	ldr	r6, [pc, #172]	@ (8001aac <HAL_RCC_ClockConfig+0x1e8>)
 80019fe:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8001a02:	430b      	orrs	r3, r1
 8001a04:	6093      	str	r3, [r2, #8]
 8001a06:	6833      	ldr	r3, [r6, #0]
 8001a08:	f003 030f 	and.w	r3, r3, #15
 8001a0c:	42ab      	cmp	r3, r5
 8001a0e:	d9b8      	bls.n	8001982 <HAL_RCC_ClockConfig+0xbe>
 8001a10:	6833      	ldr	r3, [r6, #0]
 8001a12:	f023 030f 	bic.w	r3, r3, #15
 8001a16:	432b      	orrs	r3, r5
 8001a18:	6033      	str	r3, [r6, #0]
 8001a1a:	f7ff fcbd 	bl	8001398 <HAL_GetTick>
 8001a1e:	f241 3888 	movw	r8, #5000	@ 0x1388
 8001a22:	4607      	mov	r7, r0
 8001a24:	6833      	ldr	r3, [r6, #0]
 8001a26:	f003 030f 	and.w	r3, r3, #15
 8001a2a:	42ab      	cmp	r3, r5
 8001a2c:	d0a9      	beq.n	8001982 <HAL_RCC_ClockConfig+0xbe>
 8001a2e:	f7ff fcb3 	bl	8001398 <HAL_GetTick>
 8001a32:	1bc0      	subs	r0, r0, r7
 8001a34:	4540      	cmp	r0, r8
 8001a36:	d9f5      	bls.n	8001a24 <HAL_RCC_ClockConfig+0x160>
 8001a38:	2003      	movs	r0, #3
 8001a3a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8001a3e:	039a      	lsls	r2, r3, #14
 8001a40:	f53f af68 	bmi.w	8001914 <HAL_RCC_ClockConfig+0x50>
 8001a44:	e755      	b.n	80018f2 <HAL_RCC_ClockConfig+0x2e>
 8001a46:	4a1a      	ldr	r2, [pc, #104]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 8001a48:	6811      	ldr	r1, [r2, #0]
 8001a4a:	0188      	lsls	r0, r1, #6
 8001a4c:	f57f af51 	bpl.w	80018f2 <HAL_RCC_ClockConfig+0x2e>
 8001a50:	68d0      	ldr	r0, [r2, #12]
 8001a52:	68d1      	ldr	r1, [r2, #12]
 8001a54:	68d2      	ldr	r2, [r2, #12]
 8001a56:	4e17      	ldr	r6, [pc, #92]	@ (8001ab4 <HAL_RCC_ClockConfig+0x1f0>)
 8001a58:	f000 0003 	and.w	r0, r0, #3
 8001a5c:	2803      	cmp	r0, #3
 8001a5e:	f3c1 1103 	ubfx	r1, r1, #4, #4
 8001a62:	bf0c      	ite	eq
 8001a64:	4817      	ldreq	r0, [pc, #92]	@ (8001ac4 <HAL_RCC_ClockConfig+0x200>)
 8001a66:	4818      	ldrne	r0, [pc, #96]	@ (8001ac8 <HAL_RCC_ClockConfig+0x204>)
 8001a68:	3101      	adds	r1, #1
 8001a6a:	fbb0 f1f1 	udiv	r1, r0, r1
 8001a6e:	4810      	ldr	r0, [pc, #64]	@ (8001ab0 <HAL_RCC_ClockConfig+0x1ec>)
 8001a70:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001a74:	fb01 f202 	mul.w	r2, r1, r2
 8001a78:	68c1      	ldr	r1, [r0, #12]
 8001a7a:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001a7e:	3101      	adds	r1, #1
 8001a80:	0049      	lsls	r1, r1, #1
 8001a82:	fbb2 f2f1 	udiv	r2, r2, r1
 8001a86:	42b2      	cmp	r2, r6
 8001a88:	d90a      	bls.n	8001aa0 <HAL_RCC_ClockConfig+0x1dc>
 8001a8a:	6882      	ldr	r2, [r0, #8]
 8001a8c:	f012 0ff0 	tst.w	r2, #240	@ 0xf0
 8001a90:	f43f af46 	beq.w	8001920 <HAL_RCC_ClockConfig+0x5c>
 8001a94:	0799      	lsls	r1, r3, #30
 8001a96:	d503      	bpl.n	8001aa0 <HAL_RCC_ClockConfig+0x1dc>
 8001a98:	68a3      	ldr	r3, [r4, #8]
 8001a9a:	2b00      	cmp	r3, #0
 8001a9c:	f43f af40 	beq.w	8001920 <HAL_RCC_ClockConfig+0x5c>
 8001aa0:	f04f 0900 	mov.w	r9, #0
 8001aa4:	e745      	b.n	8001932 <HAL_RCC_ClockConfig+0x6e>
 8001aa6:	2001      	movs	r0, #1
 8001aa8:	4770      	bx	lr
 8001aaa:	bf00      	nop
 8001aac:	40022000 	.word	0x40022000
 8001ab0:	40021000 	.word	0x40021000
 8001ab4:	04c4b400 	.word	0x04c4b400
 8001ab8:	08006a20 	.word	0x08006a20
 8001abc:	20000008 	.word	0x20000008
 8001ac0:	20000004 	.word	0x20000004
 8001ac4:	007a1200 	.word	0x007a1200
 8001ac8:	00f42400 	.word	0x00f42400

08001acc <HAL_RCC_GetPCLK1Freq>:
 8001acc:	4b05      	ldr	r3, [pc, #20]	@ (8001ae4 <HAL_RCC_GetPCLK1Freq+0x18>)
 8001ace:	4a06      	ldr	r2, [pc, #24]	@ (8001ae8 <HAL_RCC_GetPCLK1Freq+0x1c>)
 8001ad0:	689b      	ldr	r3, [r3, #8]
 8001ad2:	4906      	ldr	r1, [pc, #24]	@ (8001aec <HAL_RCC_GetPCLK1Freq+0x20>)
 8001ad4:	f3c3 2302 	ubfx	r3, r3, #8, #3
 8001ad8:	6808      	ldr	r0, [r1, #0]
 8001ada:	5cd3      	ldrb	r3, [r2, r3]
 8001adc:	f003 031f 	and.w	r3, r3, #31
 8001ae0:	40d8      	lsrs	r0, r3
 8001ae2:	4770      	bx	lr
 8001ae4:	40021000 	.word	0x40021000
 8001ae8:	08006a18 	.word	0x08006a18
 8001aec:	20000008 	.word	0x20000008

08001af0 <HAL_RCC_GetPCLK2Freq>:
 8001af0:	4b05      	ldr	r3, [pc, #20]	@ (8001b08 <HAL_RCC_GetPCLK2Freq+0x18>)
 8001af2:	4a06      	ldr	r2, [pc, #24]	@ (8001b0c <HAL_RCC_GetPCLK2Freq+0x1c>)
 8001af4:	689b      	ldr	r3, [r3, #8]
 8001af6:	4906      	ldr	r1, [pc, #24]	@ (8001b10 <HAL_RCC_GetPCLK2Freq+0x20>)
 8001af8:	f3c3 23c2 	ubfx	r3, r3, #11, #3
 8001afc:	6808      	ldr	r0, [r1, #0]
 8001afe:	5cd3      	ldrb	r3, [r2, r3]
 8001b00:	f003 031f 	and.w	r3, r3, #31
 8001b04:	40d8      	lsrs	r0, r3
 8001b06:	4770      	bx	lr
 8001b08:	40021000 	.word	0x40021000
 8001b0c:	08006a18 	.word	0x08006a18
 8001b10:	20000008 	.word	0x20000008

08001b14 <HAL_RCCEx_PeriphCLKConfig>:
 8001b14:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001b18:	6803      	ldr	r3, [r0, #0]
 8001b1a:	4604      	mov	r4, r0
 8001b1c:	f413 2000 	ands.w	r0, r3, #524288	@ 0x80000
 8001b20:	b082      	sub	sp, #8
 8001b22:	d052      	beq.n	8001bca <HAL_RCCEx_PeriphCLKConfig+0xb6>
 8001b24:	4ba1      	ldr	r3, [pc, #644]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001b26:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8001b28:	00d5      	lsls	r5, r2, #3
 8001b2a:	f140 8108 	bpl.w	8001d3e <HAL_RCCEx_PeriphCLKConfig+0x22a>
 8001b2e:	2700      	movs	r7, #0
 8001b30:	4d9f      	ldr	r5, [pc, #636]	@ (8001db0 <HAL_RCCEx_PeriphCLKConfig+0x29c>)
 8001b32:	682b      	ldr	r3, [r5, #0]
 8001b34:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8001b38:	602b      	str	r3, [r5, #0]
 8001b3a:	f7ff fc2d 	bl	8001398 <HAL_GetTick>
 8001b3e:	4606      	mov	r6, r0
 8001b40:	e005      	b.n	8001b4e <HAL_RCCEx_PeriphCLKConfig+0x3a>
 8001b42:	f7ff fc29 	bl	8001398 <HAL_GetTick>
 8001b46:	1b83      	subs	r3, r0, r6
 8001b48:	2b02      	cmp	r3, #2
 8001b4a:	f200 8103 	bhi.w	8001d54 <HAL_RCCEx_PeriphCLKConfig+0x240>
 8001b4e:	682b      	ldr	r3, [r5, #0]
 8001b50:	05d8      	lsls	r0, r3, #23
 8001b52:	d5f6      	bpl.n	8001b42 <HAL_RCCEx_PeriphCLKConfig+0x2e>
 8001b54:	4d95      	ldr	r5, [pc, #596]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001b56:	6c22      	ldr	r2, [r4, #64]	@ 0x40
 8001b58:	f8d5 3090 	ldr.w	r3, [r5, #144]	@ 0x90
 8001b5c:	f413 7340 	ands.w	r3, r3, #768	@ 0x300
 8001b60:	d026      	beq.n	8001bb0 <HAL_RCCEx_PeriphCLKConfig+0x9c>
 8001b62:	4293      	cmp	r3, r2
 8001b64:	d024      	beq.n	8001bb0 <HAL_RCCEx_PeriphCLKConfig+0x9c>
 8001b66:	f8d5 1090 	ldr.w	r1, [r5, #144]	@ 0x90
 8001b6a:	f8d5 3090 	ldr.w	r3, [r5, #144]	@ 0x90
 8001b6e:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001b72:	f8c5 3090 	str.w	r3, [r5, #144]	@ 0x90
 8001b76:	f8d5 3090 	ldr.w	r3, [r5, #144]	@ 0x90
 8001b7a:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8001b7e:	f8c5 3090 	str.w	r3, [r5, #144]	@ 0x90
 8001b82:	f421 7340 	bic.w	r3, r1, #768	@ 0x300
 8001b86:	07c9      	lsls	r1, r1, #31
 8001b88:	f8c5 3090 	str.w	r3, [r5, #144]	@ 0x90
 8001b8c:	d510      	bpl.n	8001bb0 <HAL_RCCEx_PeriphCLKConfig+0x9c>
 8001b8e:	f7ff fc03 	bl	8001398 <HAL_GetTick>
 8001b92:	f241 3888 	movw	r8, #5000	@ 0x1388
 8001b96:	4606      	mov	r6, r0
 8001b98:	e005      	b.n	8001ba6 <HAL_RCCEx_PeriphCLKConfig+0x92>
 8001b9a:	f7ff fbfd 	bl	8001398 <HAL_GetTick>
 8001b9e:	1b80      	subs	r0, r0, r6
 8001ba0:	4540      	cmp	r0, r8
 8001ba2:	f200 80d7 	bhi.w	8001d54 <HAL_RCCEx_PeriphCLKConfig+0x240>
 8001ba6:	f8d5 3090 	ldr.w	r3, [r5, #144]	@ 0x90
 8001baa:	079b      	lsls	r3, r3, #30
 8001bac:	d5f5      	bpl.n	8001b9a <HAL_RCCEx_PeriphCLKConfig+0x86>
 8001bae:	6c22      	ldr	r2, [r4, #64]	@ 0x40
 8001bb0:	497e      	ldr	r1, [pc, #504]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001bb2:	f8d1 3090 	ldr.w	r3, [r1, #144]	@ 0x90
 8001bb6:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8001bba:	4313      	orrs	r3, r2
 8001bbc:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 8001bc0:	6823      	ldr	r3, [r4, #0]
 8001bc2:	2000      	movs	r0, #0
 8001bc4:	2f00      	cmp	r7, #0
 8001bc6:	f040 80ca 	bne.w	8001d5e <HAL_RCCEx_PeriphCLKConfig+0x24a>
 8001bca:	07de      	lsls	r6, r3, #31
 8001bcc:	d508      	bpl.n	8001be0 <HAL_RCCEx_PeriphCLKConfig+0xcc>
 8001bce:	4977      	ldr	r1, [pc, #476]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001bd0:	6865      	ldr	r5, [r4, #4]
 8001bd2:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001bd6:	f022 0203 	bic.w	r2, r2, #3
 8001bda:	432a      	orrs	r2, r5
 8001bdc:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001be0:	079d      	lsls	r5, r3, #30
 8001be2:	d508      	bpl.n	8001bf6 <HAL_RCCEx_PeriphCLKConfig+0xe2>
 8001be4:	4971      	ldr	r1, [pc, #452]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001be6:	68a5      	ldr	r5, [r4, #8]
 8001be8:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001bec:	f022 020c 	bic.w	r2, r2, #12
 8001bf0:	432a      	orrs	r2, r5
 8001bf2:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001bf6:	0759      	lsls	r1, r3, #29
 8001bf8:	d508      	bpl.n	8001c0c <HAL_RCCEx_PeriphCLKConfig+0xf8>
 8001bfa:	496c      	ldr	r1, [pc, #432]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001bfc:	68e5      	ldr	r5, [r4, #12]
 8001bfe:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001c02:	f022 0230 	bic.w	r2, r2, #48	@ 0x30
 8001c06:	432a      	orrs	r2, r5
 8001c08:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001c0c:	071a      	lsls	r2, r3, #28
 8001c0e:	d508      	bpl.n	8001c22 <HAL_RCCEx_PeriphCLKConfig+0x10e>
 8001c10:	4966      	ldr	r1, [pc, #408]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001c12:	6925      	ldr	r5, [r4, #16]
 8001c14:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001c18:	f022 02c0 	bic.w	r2, r2, #192	@ 0xc0
 8001c1c:	432a      	orrs	r2, r5
 8001c1e:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001c22:	069f      	lsls	r7, r3, #26
 8001c24:	d508      	bpl.n	8001c38 <HAL_RCCEx_PeriphCLKConfig+0x124>
 8001c26:	4961      	ldr	r1, [pc, #388]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001c28:	6965      	ldr	r5, [r4, #20]
 8001c2a:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001c2e:	f422 6240 	bic.w	r2, r2, #3072	@ 0xc00
 8001c32:	432a      	orrs	r2, r5
 8001c34:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001c38:	065e      	lsls	r6, r3, #25
 8001c3a:	d508      	bpl.n	8001c4e <HAL_RCCEx_PeriphCLKConfig+0x13a>
 8001c3c:	495b      	ldr	r1, [pc, #364]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001c3e:	69a5      	ldr	r5, [r4, #24]
 8001c40:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001c44:	f422 5240 	bic.w	r2, r2, #12288	@ 0x3000
 8001c48:	432a      	orrs	r2, r5
 8001c4a:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001c4e:	061d      	lsls	r5, r3, #24
 8001c50:	d508      	bpl.n	8001c64 <HAL_RCCEx_PeriphCLKConfig+0x150>
 8001c52:	4956      	ldr	r1, [pc, #344]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001c54:	69e5      	ldr	r5, [r4, #28]
 8001c56:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001c5a:	f422 4240 	bic.w	r2, r2, #49152	@ 0xc000
 8001c5e:	432a      	orrs	r2, r5
 8001c60:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001c64:	05d9      	lsls	r1, r3, #23
 8001c66:	d508      	bpl.n	8001c7a <HAL_RCCEx_PeriphCLKConfig+0x166>
 8001c68:	4950      	ldr	r1, [pc, #320]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001c6a:	6a25      	ldr	r5, [r4, #32]
 8001c6c:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001c70:	f422 3240 	bic.w	r2, r2, #196608	@ 0x30000
 8001c74:	432a      	orrs	r2, r5
 8001c76:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001c7a:	059a      	lsls	r2, r3, #22
 8001c7c:	d508      	bpl.n	8001c90 <HAL_RCCEx_PeriphCLKConfig+0x17c>
 8001c7e:	494b      	ldr	r1, [pc, #300]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001c80:	6a65      	ldr	r5, [r4, #36]	@ 0x24
 8001c82:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001c86:	f422 2240 	bic.w	r2, r2, #786432	@ 0xc0000
 8001c8a:	432a      	orrs	r2, r5
 8001c8c:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001c90:	055f      	lsls	r7, r3, #21
 8001c92:	d50b      	bpl.n	8001cac <HAL_RCCEx_PeriphCLKConfig+0x198>
 8001c94:	4945      	ldr	r1, [pc, #276]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001c96:	6aa5      	ldr	r5, [r4, #40]	@ 0x28
 8001c98:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001c9c:	f422 1240 	bic.w	r2, r2, #3145728	@ 0x300000
 8001ca0:	432a      	orrs	r2, r5
 8001ca2:	f5b5 1f80 	cmp.w	r5, #1048576	@ 0x100000
 8001ca6:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001caa:	d05e      	beq.n	8001d6a <HAL_RCCEx_PeriphCLKConfig+0x256>
 8001cac:	051e      	lsls	r6, r3, #20
 8001cae:	d50b      	bpl.n	8001cc8 <HAL_RCCEx_PeriphCLKConfig+0x1b4>
 8001cb0:	493e      	ldr	r1, [pc, #248]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001cb2:	6ae5      	ldr	r5, [r4, #44]	@ 0x2c
 8001cb4:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001cb8:	f422 0240 	bic.w	r2, r2, #12582912	@ 0xc00000
 8001cbc:	432a      	orrs	r2, r5
 8001cbe:	f5b5 0f80 	cmp.w	r5, #4194304	@ 0x400000
 8001cc2:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001cc6:	d055      	beq.n	8001d74 <HAL_RCCEx_PeriphCLKConfig+0x260>
 8001cc8:	04dd      	lsls	r5, r3, #19
 8001cca:	d50b      	bpl.n	8001ce4 <HAL_RCCEx_PeriphCLKConfig+0x1d0>
 8001ccc:	4937      	ldr	r1, [pc, #220]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001cce:	6b25      	ldr	r5, [r4, #48]	@ 0x30
 8001cd0:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001cd4:	f022 7240 	bic.w	r2, r2, #50331648	@ 0x3000000
 8001cd8:	432a      	orrs	r2, r5
 8001cda:	f1b5 7f80 	cmp.w	r5, #16777216	@ 0x1000000
 8001cde:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001ce2:	d04c      	beq.n	8001d7e <HAL_RCCEx_PeriphCLKConfig+0x26a>
 8001ce4:	0499      	lsls	r1, r3, #18
 8001ce6:	d50b      	bpl.n	8001d00 <HAL_RCCEx_PeriphCLKConfig+0x1ec>
 8001ce8:	4930      	ldr	r1, [pc, #192]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001cea:	6b65      	ldr	r5, [r4, #52]	@ 0x34
 8001cec:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001cf0:	f022 6240 	bic.w	r2, r2, #201326592	@ 0xc000000
 8001cf4:	432a      	orrs	r2, r5
 8001cf6:	f1b5 6f00 	cmp.w	r5, #134217728	@ 0x8000000
 8001cfa:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001cfe:	d043      	beq.n	8001d88 <HAL_RCCEx_PeriphCLKConfig+0x274>
 8001d00:	045a      	lsls	r2, r3, #17
 8001d02:	d50b      	bpl.n	8001d1c <HAL_RCCEx_PeriphCLKConfig+0x208>
 8001d04:	4929      	ldr	r1, [pc, #164]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001d06:	6ba5      	ldr	r5, [r4, #56]	@ 0x38
 8001d08:	f8d1 2088 	ldr.w	r2, [r1, #136]	@ 0x88
 8001d0c:	f022 6240 	bic.w	r2, r2, #201326592	@ 0xc000000
 8001d10:	432a      	orrs	r2, r5
 8001d12:	f1b5 6f00 	cmp.w	r5, #134217728	@ 0x8000000
 8001d16:	f8c1 2088 	str.w	r2, [r1, #136]	@ 0x88
 8001d1a:	d03a      	beq.n	8001d92 <HAL_RCCEx_PeriphCLKConfig+0x27e>
 8001d1c:	041b      	lsls	r3, r3, #16
 8001d1e:	d50b      	bpl.n	8001d38 <HAL_RCCEx_PeriphCLKConfig+0x224>
 8001d20:	4a22      	ldr	r2, [pc, #136]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001d22:	6be1      	ldr	r1, [r4, #60]	@ 0x3c
 8001d24:	f8d2 3088 	ldr.w	r3, [r2, #136]	@ 0x88
 8001d28:	f023 5340 	bic.w	r3, r3, #805306368	@ 0x30000000
 8001d2c:	430b      	orrs	r3, r1
 8001d2e:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
 8001d32:	f8c2 3088 	str.w	r3, [r2, #136]	@ 0x88
 8001d36:	d031      	beq.n	8001d9c <HAL_RCCEx_PeriphCLKConfig+0x288>
 8001d38:	b002      	add	sp, #8
 8001d3a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001d3e:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8001d40:	f042 5280 	orr.w	r2, r2, #268435456	@ 0x10000000
 8001d44:	659a      	str	r2, [r3, #88]	@ 0x58
 8001d46:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8001d48:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8001d4c:	9301      	str	r3, [sp, #4]
 8001d4e:	9b01      	ldr	r3, [sp, #4]
 8001d50:	2701      	movs	r7, #1
 8001d52:	e6ed      	b.n	8001b30 <HAL_RCCEx_PeriphCLKConfig+0x1c>
 8001d54:	6823      	ldr	r3, [r4, #0]
 8001d56:	2003      	movs	r0, #3
 8001d58:	2f00      	cmp	r7, #0
 8001d5a:	f43f af36 	beq.w	8001bca <HAL_RCCEx_PeriphCLKConfig+0xb6>
 8001d5e:	4913      	ldr	r1, [pc, #76]	@ (8001dac <HAL_RCCEx_PeriphCLKConfig+0x298>)
 8001d60:	6d8a      	ldr	r2, [r1, #88]	@ 0x58
 8001d62:	f022 5280 	bic.w	r2, r2, #268435456	@ 0x10000000
 8001d66:	658a      	str	r2, [r1, #88]	@ 0x58
 8001d68:	e72f      	b.n	8001bca <HAL_RCCEx_PeriphCLKConfig+0xb6>
 8001d6a:	68ca      	ldr	r2, [r1, #12]
 8001d6c:	f442 1280 	orr.w	r2, r2, #1048576	@ 0x100000
 8001d70:	60ca      	str	r2, [r1, #12]
 8001d72:	e79b      	b.n	8001cac <HAL_RCCEx_PeriphCLKConfig+0x198>
 8001d74:	68ca      	ldr	r2, [r1, #12]
 8001d76:	f442 1280 	orr.w	r2, r2, #1048576	@ 0x100000
 8001d7a:	60ca      	str	r2, [r1, #12]
 8001d7c:	e7a4      	b.n	8001cc8 <HAL_RCCEx_PeriphCLKConfig+0x1b4>
 8001d7e:	68ca      	ldr	r2, [r1, #12]
 8001d80:	f442 1280 	orr.w	r2, r2, #1048576	@ 0x100000
 8001d84:	60ca      	str	r2, [r1, #12]
 8001d86:	e7ad      	b.n	8001ce4 <HAL_RCCEx_PeriphCLKConfig+0x1d0>
 8001d88:	68ca      	ldr	r2, [r1, #12]
 8001d8a:	f442 1280 	orr.w	r2, r2, #1048576	@ 0x100000
 8001d8e:	60ca      	str	r2, [r1, #12]
 8001d90:	e7b6      	b.n	8001d00 <HAL_RCCEx_PeriphCLKConfig+0x1ec>
 8001d92:	68ca      	ldr	r2, [r1, #12]
 8001d94:	f442 1280 	orr.w	r2, r2, #1048576	@ 0x100000
 8001d98:	60ca      	str	r2, [r1, #12]
 8001d9a:	e7bf      	b.n	8001d1c <HAL_RCCEx_PeriphCLKConfig+0x208>
 8001d9c:	68d3      	ldr	r3, [r2, #12]
 8001d9e:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001da2:	60d3      	str	r3, [r2, #12]
 8001da4:	b002      	add	sp, #8
 8001da6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001daa:	bf00      	nop
 8001dac:	40021000 	.word	0x40021000
 8001db0:	40007000 	.word	0x40007000

08001db4 <HAL_GPIO_Init>:
 8001db4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001db8:	680c      	ldr	r4, [r1, #0]
 8001dba:	b085      	sub	sp, #20
 8001dbc:	2c00      	cmp	r4, #0
 8001dbe:	f000 8088 	beq.w	8001ed2 <HAL_GPIO_Init+0x11e>
 8001dc2:	2300      	movs	r3, #0
 8001dc4:	f04f 0b01 	mov.w	fp, #1
 8001dc8:	fa0b fe03 	lsl.w	lr, fp, r3
 8001dcc:	ea1e 0a04 	ands.w	sl, lr, r4
 8001dd0:	d07a      	beq.n	8001ec8 <HAL_GPIO_Init+0x114>
 8001dd2:	684d      	ldr	r5, [r1, #4]
 8001dd4:	f005 0c03 	and.w	ip, r5, #3
 8001dd8:	005a      	lsls	r2, r3, #1
 8001dda:	2603      	movs	r6, #3
 8001ddc:	f10c 38ff 	add.w	r8, ip, #4294967295
 8001de0:	fa06 f702 	lsl.w	r7, r6, r2
 8001de4:	f1b8 0f01 	cmp.w	r8, #1
 8001de8:	ea6f 0707 	mvn.w	r7, r7
 8001dec:	d974      	bls.n	8001ed8 <HAL_GPIO_Init+0x124>
 8001dee:	f1bc 0f03 	cmp.w	ip, #3
 8001df2:	f040 80cc 	bne.w	8001f8e <HAL_GPIO_Init+0x1da>
 8001df6:	fa0c f202 	lsl.w	r2, ip, r2
 8001dfa:	f8d0 c000 	ldr.w	ip, [r0]
 8001dfe:	ea0c 0707 	and.w	r7, ip, r7
 8001e02:	433a      	orrs	r2, r7
 8001e04:	f415 3f40 	tst.w	r5, #196608	@ 0x30000
 8001e08:	6002      	str	r2, [r0, #0]
 8001e0a:	d05d      	beq.n	8001ec8 <HAL_GPIO_Init+0x114>
 8001e0c:	4f66      	ldr	r7, [pc, #408]	@ (8001fa8 <HAL_GPIO_Init+0x1f4>)
 8001e0e:	6e3a      	ldr	r2, [r7, #96]	@ 0x60
 8001e10:	f042 0201 	orr.w	r2, r2, #1
 8001e14:	663a      	str	r2, [r7, #96]	@ 0x60
 8001e16:	6e3a      	ldr	r2, [r7, #96]	@ 0x60
 8001e18:	f002 0201 	and.w	r2, r2, #1
 8001e1c:	9203      	str	r2, [sp, #12]
 8001e1e:	9a03      	ldr	r2, [sp, #12]
 8001e20:	f023 0203 	bic.w	r2, r3, #3
 8001e24:	f102 4280 	add.w	r2, r2, #1073741824	@ 0x40000000
 8001e28:	f502 3280 	add.w	r2, r2, #65536	@ 0x10000
 8001e2c:	f003 0c03 	and.w	ip, r3, #3
 8001e30:	6897      	ldr	r7, [r2, #8]
 8001e32:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
 8001e36:	260f      	movs	r6, #15
 8001e38:	fa06 fe0c 	lsl.w	lr, r6, ip
 8001e3c:	f1b0 4f90 	cmp.w	r0, #1207959552	@ 0x48000000
 8001e40:	ea27 070e 	bic.w	r7, r7, lr
 8001e44:	d01c      	beq.n	8001e80 <HAL_GPIO_Init+0xcc>
 8001e46:	4e59      	ldr	r6, [pc, #356]	@ (8001fac <HAL_GPIO_Init+0x1f8>)
 8001e48:	42b0      	cmp	r0, r6
 8001e4a:	f000 808b 	beq.w	8001f64 <HAL_GPIO_Init+0x1b0>
 8001e4e:	4e58      	ldr	r6, [pc, #352]	@ (8001fb0 <HAL_GPIO_Init+0x1fc>)
 8001e50:	42b0      	cmp	r0, r6
 8001e52:	f000 808e 	beq.w	8001f72 <HAL_GPIO_Init+0x1be>
 8001e56:	f8df e160 	ldr.w	lr, [pc, #352]	@ 8001fb8 <HAL_GPIO_Init+0x204>
 8001e5a:	4570      	cmp	r0, lr
 8001e5c:	d07b      	beq.n	8001f56 <HAL_GPIO_Init+0x1a2>
 8001e5e:	f8df e15c 	ldr.w	lr, [pc, #348]	@ 8001fbc <HAL_GPIO_Init+0x208>
 8001e62:	4570      	cmp	r0, lr
 8001e64:	f000 808c 	beq.w	8001f80 <HAL_GPIO_Init+0x1cc>
 8001e68:	f8df e154 	ldr.w	lr, [pc, #340]	@ 8001fc0 <HAL_GPIO_Init+0x20c>
 8001e6c:	4570      	cmp	r0, lr
 8001e6e:	bf0c      	ite	eq
 8001e70:	f04f 0e05 	moveq.w	lr, #5
 8001e74:	f04f 0e06 	movne.w	lr, #6
 8001e78:	fa0e fc0c 	lsl.w	ip, lr, ip
 8001e7c:	ea47 070c 	orr.w	r7, r7, ip
 8001e80:	6097      	str	r7, [r2, #8]
 8001e82:	4a4c      	ldr	r2, [pc, #304]	@ (8001fb4 <HAL_GPIO_Init+0x200>)
 8001e84:	6892      	ldr	r2, [r2, #8]
 8001e86:	02ee      	lsls	r6, r5, #11
 8001e88:	ea6f 070a 	mvn.w	r7, sl
 8001e8c:	4e49      	ldr	r6, [pc, #292]	@ (8001fb4 <HAL_GPIO_Init+0x200>)
 8001e8e:	bf54      	ite	pl
 8001e90:	403a      	andpl	r2, r7
 8001e92:	ea4a 0202 	orrmi.w	r2, sl, r2
 8001e96:	60b2      	str	r2, [r6, #8]
 8001e98:	68f2      	ldr	r2, [r6, #12]
 8001e9a:	02ae      	lsls	r6, r5, #10
 8001e9c:	4e45      	ldr	r6, [pc, #276]	@ (8001fb4 <HAL_GPIO_Init+0x200>)
 8001e9e:	bf54      	ite	pl
 8001ea0:	403a      	andpl	r2, r7
 8001ea2:	ea4a 0202 	orrmi.w	r2, sl, r2
 8001ea6:	60f2      	str	r2, [r6, #12]
 8001ea8:	6872      	ldr	r2, [r6, #4]
 8001eaa:	03ae      	lsls	r6, r5, #14
 8001eac:	4e41      	ldr	r6, [pc, #260]	@ (8001fb4 <HAL_GPIO_Init+0x200>)
 8001eae:	bf54      	ite	pl
 8001eb0:	403a      	andpl	r2, r7
 8001eb2:	ea4a 0202 	orrmi.w	r2, sl, r2
 8001eb6:	6072      	str	r2, [r6, #4]
 8001eb8:	6832      	ldr	r2, [r6, #0]
 8001eba:	03ed      	lsls	r5, r5, #15
 8001ebc:	4d3d      	ldr	r5, [pc, #244]	@ (8001fb4 <HAL_GPIO_Init+0x200>)
 8001ebe:	bf54      	ite	pl
 8001ec0:	403a      	andpl	r2, r7
 8001ec2:	ea4a 0202 	orrmi.w	r2, sl, r2
 8001ec6:	602a      	str	r2, [r5, #0]
 8001ec8:	3301      	adds	r3, #1
 8001eca:	fa34 f203 	lsrs.w	r2, r4, r3
 8001ece:	f47f af7b 	bne.w	8001dc8 <HAL_GPIO_Init+0x14>
 8001ed2:	b005      	add	sp, #20
 8001ed4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001ed8:	f8d0 9008 	ldr.w	r9, [r0, #8]
 8001edc:	68ce      	ldr	r6, [r1, #12]
 8001ede:	ea09 0907 	and.w	r9, r9, r7
 8001ee2:	fa06 f802 	lsl.w	r8, r6, r2
 8001ee6:	ea48 0809 	orr.w	r8, r8, r9
 8001eea:	f8c0 8008 	str.w	r8, [r0, #8]
 8001eee:	f8d0 8004 	ldr.w	r8, [r0, #4]
 8001ef2:	688e      	ldr	r6, [r1, #8]
 8001ef4:	ea28 080e 	bic.w	r8, r8, lr
 8001ef8:	f3c5 1e00 	ubfx	lr, r5, #4, #1
 8001efc:	fa0e fe03 	lsl.w	lr, lr, r3
 8001f00:	ea4e 0e08 	orr.w	lr, lr, r8
 8001f04:	f8c0 e004 	str.w	lr, [r0, #4]
 8001f08:	f8d0 800c 	ldr.w	r8, [r0, #12]
 8001f0c:	fa06 fe02 	lsl.w	lr, r6, r2
 8001f10:	ea08 0807 	and.w	r8, r8, r7
 8001f14:	ea4e 0e08 	orr.w	lr, lr, r8
 8001f18:	f1bc 0f02 	cmp.w	ip, #2
 8001f1c:	f8c0 e00c 	str.w	lr, [r0, #12]
 8001f20:	f47f af69 	bne.w	8001df6 <HAL_GPIO_Init+0x42>
 8001f24:	690e      	ldr	r6, [r1, #16]
 8001f26:	ea4f 08d3 	mov.w	r8, r3, lsr #3
 8001f2a:	f003 0e07 	and.w	lr, r3, #7
 8001f2e:	eb00 0888 	add.w	r8, r0, r8, lsl #2
 8001f32:	ea4f 0e8e 	mov.w	lr, lr, lsl #2
 8001f36:	fa06 f60e 	lsl.w	r6, r6, lr
 8001f3a:	f8d8 9020 	ldr.w	r9, [r8, #32]
 8001f3e:	9601      	str	r6, [sp, #4]
 8001f40:	260f      	movs	r6, #15
 8001f42:	fa06 fe0e 	lsl.w	lr, r6, lr
 8001f46:	9e01      	ldr	r6, [sp, #4]
 8001f48:	ea29 090e 	bic.w	r9, r9, lr
 8001f4c:	ea46 0e09 	orr.w	lr, r6, r9
 8001f50:	f8c8 e020 	str.w	lr, [r8, #32]
 8001f54:	e74f      	b.n	8001df6 <HAL_GPIO_Init+0x42>
 8001f56:	f04f 0e03 	mov.w	lr, #3
 8001f5a:	fa0e fc0c 	lsl.w	ip, lr, ip
 8001f5e:	ea47 070c 	orr.w	r7, r7, ip
 8001f62:	e78d      	b.n	8001e80 <HAL_GPIO_Init+0xcc>
 8001f64:	f04f 0e01 	mov.w	lr, #1
 8001f68:	fa0e fc0c 	lsl.w	ip, lr, ip
 8001f6c:	ea47 070c 	orr.w	r7, r7, ip
 8001f70:	e786      	b.n	8001e80 <HAL_GPIO_Init+0xcc>
 8001f72:	f04f 0e02 	mov.w	lr, #2
 8001f76:	fa0e fc0c 	lsl.w	ip, lr, ip
 8001f7a:	ea47 070c 	orr.w	r7, r7, ip
 8001f7e:	e77f      	b.n	8001e80 <HAL_GPIO_Init+0xcc>
 8001f80:	f04f 0e04 	mov.w	lr, #4
 8001f84:	fa0e fc0c 	lsl.w	ip, lr, ip
 8001f88:	ea47 070c 	orr.w	r7, r7, ip
 8001f8c:	e778      	b.n	8001e80 <HAL_GPIO_Init+0xcc>
 8001f8e:	f8d0 800c 	ldr.w	r8, [r0, #12]
 8001f92:	688e      	ldr	r6, [r1, #8]
 8001f94:	ea08 0807 	and.w	r8, r8, r7
 8001f98:	fa06 fe02 	lsl.w	lr, r6, r2
 8001f9c:	ea4e 0e08 	orr.w	lr, lr, r8
 8001fa0:	f8c0 e00c 	str.w	lr, [r0, #12]
 8001fa4:	e727      	b.n	8001df6 <HAL_GPIO_Init+0x42>
 8001fa6:	bf00      	nop
 8001fa8:	40021000 	.word	0x40021000
 8001fac:	48000400 	.word	0x48000400
 8001fb0:	48000800 	.word	0x48000800
 8001fb4:	40010400 	.word	0x40010400
 8001fb8:	48000c00 	.word	0x48000c00
 8001fbc:	48001000 	.word	0x48001000
 8001fc0:	48001400 	.word	0x48001400

08001fc4 <HAL_GPIO_WritePin>:
 8001fc4:	b10a      	cbz	r2, 8001fca <HAL_GPIO_WritePin+0x6>
 8001fc6:	6181      	str	r1, [r0, #24]
 8001fc8:	4770      	bx	lr
 8001fca:	6281      	str	r1, [r0, #40]	@ 0x28
 8001fcc:	4770      	bx	lr
 8001fce:	bf00      	nop

08001fd0 <HAL_DMA_Init>:
 8001fd0:	2800      	cmp	r0, #0
 8001fd2:	d076      	beq.n	80020c2 <HAL_DMA_Init+0xf2>
 8001fd4:	b4f0      	push	{r4, r5, r6, r7}
 8001fd6:	4a3c      	ldr	r2, [pc, #240]	@ (80020c8 <HAL_DMA_Init+0xf8>)
 8001fd8:	6804      	ldr	r4, [r0, #0]
 8001fda:	4294      	cmp	r4, r2
 8001fdc:	4603      	mov	r3, r0
 8001fde:	d95c      	bls.n	800209a <HAL_DMA_Init+0xca>
 8001fe0:	493a      	ldr	r1, [pc, #232]	@ (80020cc <HAL_DMA_Init+0xfc>)
 8001fe2:	4a3b      	ldr	r2, [pc, #236]	@ (80020d0 <HAL_DMA_Init+0x100>)
 8001fe4:	483b      	ldr	r0, [pc, #236]	@ (80020d4 <HAL_DMA_Init+0x104>)
 8001fe6:	4421      	add	r1, r4
 8001fe8:	fba2 2101 	umull	r2, r1, r2, r1
 8001fec:	0909      	lsrs	r1, r1, #4
 8001fee:	0089      	lsls	r1, r1, #2
 8001ff0:	2202      	movs	r2, #2
 8001ff2:	689d      	ldr	r5, [r3, #8]
 8001ff4:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8001ff8:	68da      	ldr	r2, [r3, #12]
 8001ffa:	4e35      	ldr	r6, [pc, #212]	@ (80020d0 <HAL_DMA_Init+0x100>)
 8001ffc:	4f36      	ldr	r7, [pc, #216]	@ (80020d8 <HAL_DMA_Init+0x108>)
 8001ffe:	e9c3 0110 	strd	r0, r1, [r3, #64]	@ 0x40
 8002002:	6918      	ldr	r0, [r3, #16]
 8002004:	432a      	orrs	r2, r5
 8002006:	4302      	orrs	r2, r0
 8002008:	6958      	ldr	r0, [r3, #20]
 800200a:	4302      	orrs	r2, r0
 800200c:	6998      	ldr	r0, [r3, #24]
 800200e:	4302      	orrs	r2, r0
 8002010:	69d8      	ldr	r0, [r3, #28]
 8002012:	4302      	orrs	r2, r0
 8002014:	b2e0      	uxtb	r0, r4
 8002016:	3808      	subs	r0, #8
 8002018:	fba6 6000 	umull	r6, r0, r6, r0
 800201c:	6826      	ldr	r6, [r4, #0]
 800201e:	f426 4cff 	bic.w	ip, r6, #32640	@ 0x7f80
 8002022:	6a1e      	ldr	r6, [r3, #32]
 8002024:	f02c 0c70 	bic.w	ip, ip, #112	@ 0x70
 8002028:	4332      	orrs	r2, r6
 800202a:	ea42 020c 	orr.w	r2, r2, ip
 800202e:	6022      	str	r2, [r4, #0]
 8002030:	4e25      	ldr	r6, [pc, #148]	@ (80020c8 <HAL_DMA_Init+0xf8>)
 8002032:	4a2a      	ldr	r2, [pc, #168]	@ (80020dc <HAL_DMA_Init+0x10c>)
 8002034:	f3c0 1004 	ubfx	r0, r0, #4, #5
 8002038:	42b4      	cmp	r4, r6
 800203a:	bf98      	it	ls
 800203c:	463a      	movls	r2, r7
 800203e:	f206 4679 	addw	r6, r6, #1145	@ 0x479
 8002042:	2401      	movs	r4, #1
 8002044:	fa04 f000 	lsl.w	r0, r4, r0
 8002048:	64de      	str	r6, [r3, #76]	@ 0x4c
 800204a:	f5b5 4f80 	cmp.w	r5, #16384	@ 0x4000
 800204e:	eb01 0602 	add.w	r6, r1, r2
 8002052:	6518      	str	r0, [r3, #80]	@ 0x50
 8002054:	649e      	str	r6, [r3, #72]	@ 0x48
 8002056:	ea4f 0191 	mov.w	r1, r1, lsr #2
 800205a:	d027      	beq.n	80020ac <HAL_DMA_Init+0xdc>
 800205c:	685e      	ldr	r6, [r3, #4]
 800205e:	b2f5      	uxtb	r5, r6
 8002060:	3e01      	subs	r6, #1
 8002062:	2e03      	cmp	r6, #3
 8002064:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8002068:	f8c7 0084 	str.w	r0, [r7, #132]	@ 0x84
 800206c:	d824      	bhi.n	80020b8 <HAL_DMA_Init+0xe8>
 800206e:	4a1c      	ldr	r2, [pc, #112]	@ (80020e0 <HAL_DMA_Init+0x110>)
 8002070:	481c      	ldr	r0, [pc, #112]	@ (80020e4 <HAL_DMA_Init+0x114>)
 8002072:	442a      	add	r2, r5
 8002074:	0092      	lsls	r2, r2, #2
 8002076:	3d01      	subs	r5, #1
 8002078:	40ac      	lsls	r4, r5
 800207a:	2100      	movs	r1, #0
 800207c:	e9c3 2015 	strd	r2, r0, [r3, #84]	@ 0x54
 8002080:	65dc      	str	r4, [r3, #92]	@ 0x5c
 8002082:	6011      	str	r1, [r2, #0]
 8002084:	4a18      	ldr	r2, [pc, #96]	@ (80020e8 <HAL_DMA_Init+0x118>)
 8002086:	6454      	str	r4, [r2, #68]	@ 0x44
 8002088:	2000      	movs	r0, #0
 800208a:	2201      	movs	r2, #1
 800208c:	63d8      	str	r0, [r3, #60]	@ 0x3c
 800208e:	f883 0024 	strb.w	r0, [r3, #36]	@ 0x24
 8002092:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8002096:	bcf0      	pop	{r4, r5, r6, r7}
 8002098:	4770      	bx	lr
 800209a:	4914      	ldr	r1, [pc, #80]	@ (80020ec <HAL_DMA_Init+0x11c>)
 800209c:	4a0c      	ldr	r2, [pc, #48]	@ (80020d0 <HAL_DMA_Init+0x100>)
 800209e:	4814      	ldr	r0, [pc, #80]	@ (80020f0 <HAL_DMA_Init+0x120>)
 80020a0:	4421      	add	r1, r4
 80020a2:	fba2 2101 	umull	r2, r1, r2, r1
 80020a6:	0909      	lsrs	r1, r1, #4
 80020a8:	0089      	lsls	r1, r1, #2
 80020aa:	e7a1      	b.n	8001ff0 <HAL_DMA_Init+0x20>
 80020ac:	2400      	movs	r4, #0
 80020ae:	605c      	str	r4, [r3, #4]
 80020b0:	f842 4021 	str.w	r4, [r2, r1, lsl #2]
 80020b4:	f8c7 0084 	str.w	r0, [r7, #132]	@ 0x84
 80020b8:	2200      	movs	r2, #0
 80020ba:	e9c3 2215 	strd	r2, r2, [r3, #84]	@ 0x54
 80020be:	65da      	str	r2, [r3, #92]	@ 0x5c
 80020c0:	e7e2      	b.n	8002088 <HAL_DMA_Init+0xb8>
 80020c2:	2001      	movs	r0, #1
 80020c4:	4770      	bx	lr
 80020c6:	bf00      	nop
 80020c8:	40020407 	.word	0x40020407
 80020cc:	bffdfbf8 	.word	0xbffdfbf8
 80020d0:	cccccccd 	.word	0xcccccccd
 80020d4:	40020400 	.word	0x40020400
 80020d8:	40020800 	.word	0x40020800
 80020dc:	40020820 	.word	0x40020820
 80020e0:	1000823f 	.word	0x1000823f
 80020e4:	40020940 	.word	0x40020940
 80020e8:	40020900 	.word	0x40020900
 80020ec:	bffdfff8 	.word	0xbffdfff8
 80020f0:	40020000 	.word	0x40020000

080020f4 <HAL_DMA_Start_IT>:
 80020f4:	b4f0      	push	{r4, r5, r6, r7}
 80020f6:	f890 4024 	ldrb.w	r4, [r0, #36]	@ 0x24
 80020fa:	2c01      	cmp	r4, #1
 80020fc:	d009      	beq.n	8002112 <HAL_DMA_Start_IT+0x1e>
 80020fe:	2401      	movs	r4, #1
 8002100:	f880 4024 	strb.w	r4, [r0, #36]	@ 0x24
 8002104:	f890 4025 	ldrb.w	r4, [r0, #37]	@ 0x25
 8002108:	2c01      	cmp	r4, #1
 800210a:	d005      	beq.n	8002118 <HAL_DMA_Start_IT+0x24>
 800210c:	2300      	movs	r3, #0
 800210e:	f880 3024 	strb.w	r3, [r0, #36]	@ 0x24
 8002112:	2002      	movs	r0, #2
 8002114:	bcf0      	pop	{r4, r5, r6, r7}
 8002116:	4770      	bx	lr
 8002118:	2402      	movs	r4, #2
 800211a:	f880 4025 	strb.w	r4, [r0, #37]	@ 0x25
 800211e:	2400      	movs	r4, #0
 8002120:	63c4      	str	r4, [r0, #60]	@ 0x3c
 8002122:	6804      	ldr	r4, [r0, #0]
 8002124:	6cc6      	ldr	r6, [r0, #76]	@ 0x4c
 8002126:	6825      	ldr	r5, [r4, #0]
 8002128:	f025 0501 	bic.w	r5, r5, #1
 800212c:	6025      	str	r5, [r4, #0]
 800212e:	e9d0 7514 	ldrd	r7, r5, [r0, #80]	@ 0x50
 8002132:	6077      	str	r7, [r6, #4]
 8002134:	b115      	cbz	r5, 800213c <HAL_DMA_Start_IT+0x48>
 8002136:	e9d0 6716 	ldrd	r6, r7, [r0, #88]	@ 0x58
 800213a:	6077      	str	r7, [r6, #4]
 800213c:	6c46      	ldr	r6, [r0, #68]	@ 0x44
 800213e:	6c07      	ldr	r7, [r0, #64]	@ 0x40
 8002140:	f006 0c1f 	and.w	ip, r6, #31
 8002144:	2601      	movs	r6, #1
 8002146:	fa06 f60c 	lsl.w	r6, r6, ip
 800214a:	607e      	str	r6, [r7, #4]
 800214c:	6063      	str	r3, [r4, #4]
 800214e:	6883      	ldr	r3, [r0, #8]
 8002150:	2b10      	cmp	r3, #16
 8002152:	6b03      	ldr	r3, [r0, #48]	@ 0x30
 8002154:	bf0b      	itete	eq
 8002156:	60a2      	streq	r2, [r4, #8]
 8002158:	60a1      	strne	r1, [r4, #8]
 800215a:	60e1      	streq	r1, [r4, #12]
 800215c:	60e2      	strne	r2, [r4, #12]
 800215e:	b1bb      	cbz	r3, 8002190 <HAL_DMA_Start_IT+0x9c>
 8002160:	6823      	ldr	r3, [r4, #0]
 8002162:	f043 030e 	orr.w	r3, r3, #14
 8002166:	6023      	str	r3, [r4, #0]
 8002168:	6c83      	ldr	r3, [r0, #72]	@ 0x48
 800216a:	681a      	ldr	r2, [r3, #0]
 800216c:	03d2      	lsls	r2, r2, #15
 800216e:	d503      	bpl.n	8002178 <HAL_DMA_Start_IT+0x84>
 8002170:	681a      	ldr	r2, [r3, #0]
 8002172:	f442 7280 	orr.w	r2, r2, #256	@ 0x100
 8002176:	601a      	str	r2, [r3, #0]
 8002178:	b11d      	cbz	r5, 8002182 <HAL_DMA_Start_IT+0x8e>
 800217a:	682b      	ldr	r3, [r5, #0]
 800217c:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8002180:	602b      	str	r3, [r5, #0]
 8002182:	6823      	ldr	r3, [r4, #0]
 8002184:	f043 0301 	orr.w	r3, r3, #1
 8002188:	2000      	movs	r0, #0
 800218a:	6023      	str	r3, [r4, #0]
 800218c:	bcf0      	pop	{r4, r5, r6, r7}
 800218e:	4770      	bx	lr
 8002190:	6823      	ldr	r3, [r4, #0]
 8002192:	f023 0304 	bic.w	r3, r3, #4
 8002196:	6023      	str	r3, [r4, #0]
 8002198:	6823      	ldr	r3, [r4, #0]
 800219a:	f043 030a 	orr.w	r3, r3, #10
 800219e:	6023      	str	r3, [r4, #0]
 80021a0:	e7e2      	b.n	8002168 <HAL_DMA_Start_IT+0x74>
 80021a2:	bf00      	nop

080021a4 <HAL_DMA_Abort>:
 80021a4:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
 80021a8:	2a02      	cmp	r2, #2
 80021aa:	4603      	mov	r3, r0
 80021ac:	d009      	beq.n	80021c2 <HAL_DMA_Abort+0x1e>
 80021ae:	2204      	movs	r2, #4
 80021b0:	63c2      	str	r2, [r0, #60]	@ 0x3c
 80021b2:	2101      	movs	r1, #1
 80021b4:	2200      	movs	r2, #0
 80021b6:	2001      	movs	r0, #1
 80021b8:	f883 1025 	strb.w	r1, [r3, #37]	@ 0x25
 80021bc:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 80021c0:	4770      	bx	lr
 80021c2:	6802      	ldr	r2, [r0, #0]
 80021c4:	6c59      	ldr	r1, [r3, #68]	@ 0x44
 80021c6:	b430      	push	{r4, r5}
 80021c8:	6c84      	ldr	r4, [r0, #72]	@ 0x48
 80021ca:	6810      	ldr	r0, [r2, #0]
 80021cc:	6c1d      	ldr	r5, [r3, #64]	@ 0x40
 80021ce:	f020 000e 	bic.w	r0, r0, #14
 80021d2:	6010      	str	r0, [r2, #0]
 80021d4:	6820      	ldr	r0, [r4, #0]
 80021d6:	f420 7080 	bic.w	r0, r0, #256	@ 0x100
 80021da:	6020      	str	r0, [r4, #0]
 80021dc:	6810      	ldr	r0, [r2, #0]
 80021de:	f020 0001 	bic.w	r0, r0, #1
 80021e2:	6010      	str	r0, [r2, #0]
 80021e4:	f001 011f 	and.w	r1, r1, #31
 80021e8:	2201      	movs	r2, #1
 80021ea:	408a      	lsls	r2, r1
 80021ec:	e9d3 4114 	ldrd	r4, r1, [r3, #80]	@ 0x50
 80021f0:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
 80021f2:	606a      	str	r2, [r5, #4]
 80021f4:	6044      	str	r4, [r0, #4]
 80021f6:	b131      	cbz	r1, 8002206 <HAL_DMA_Abort+0x62>
 80021f8:	680a      	ldr	r2, [r1, #0]
 80021fa:	e9d3 0416 	ldrd	r0, r4, [r3, #88]	@ 0x58
 80021fe:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 8002202:	600a      	str	r2, [r1, #0]
 8002204:	6044      	str	r4, [r0, #4]
 8002206:	2101      	movs	r1, #1
 8002208:	2200      	movs	r2, #0
 800220a:	f883 1025 	strb.w	r1, [r3, #37]	@ 0x25
 800220e:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 8002212:	2000      	movs	r0, #0
 8002214:	bc30      	pop	{r4, r5}
 8002216:	4770      	bx	lr

08002218 <HAL_DMA_Abort_IT>:
 8002218:	b538      	push	{r3, r4, r5, lr}
 800221a:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
 800221e:	2b02      	cmp	r3, #2
 8002220:	d009      	beq.n	8002236 <HAL_DMA_Abort_IT+0x1e>
 8002222:	2301      	movs	r3, #1
 8002224:	2104      	movs	r1, #4
 8002226:	2200      	movs	r2, #0
 8002228:	63c1      	str	r1, [r0, #60]	@ 0x3c
 800222a:	f880 2024 	strb.w	r2, [r0, #36]	@ 0x24
 800222e:	f880 3025 	strb.w	r3, [r0, #37]	@ 0x25
 8002232:	4618      	mov	r0, r3
 8002234:	bd38      	pop	{r3, r4, r5, pc}
 8002236:	6803      	ldr	r3, [r0, #0]
 8002238:	6c84      	ldr	r4, [r0, #72]	@ 0x48
 800223a:	6819      	ldr	r1, [r3, #0]
 800223c:	6c42      	ldr	r2, [r0, #68]	@ 0x44
 800223e:	6c05      	ldr	r5, [r0, #64]	@ 0x40
 8002240:	f021 010e 	bic.w	r1, r1, #14
 8002244:	6019      	str	r1, [r3, #0]
 8002246:	6819      	ldr	r1, [r3, #0]
 8002248:	f021 0101 	bic.w	r1, r1, #1
 800224c:	6019      	str	r1, [r3, #0]
 800224e:	6823      	ldr	r3, [r4, #0]
 8002250:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
 8002252:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 8002256:	6023      	str	r3, [r4, #0]
 8002258:	f002 021f 	and.w	r2, r2, #31
 800225c:	2301      	movs	r3, #1
 800225e:	4093      	lsls	r3, r2
 8002260:	e9d0 4214 	ldrd	r4, r2, [r0, #80]	@ 0x50
 8002264:	606b      	str	r3, [r5, #4]
 8002266:	604c      	str	r4, [r1, #4]
 8002268:	b132      	cbz	r2, 8002278 <HAL_DMA_Abort_IT+0x60>
 800226a:	6813      	ldr	r3, [r2, #0]
 800226c:	e9d0 1416 	ldrd	r1, r4, [r0, #88]	@ 0x58
 8002270:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 8002274:	6013      	str	r3, [r2, #0]
 8002276:	604c      	str	r4, [r1, #4]
 8002278:	6b83      	ldr	r3, [r0, #56]	@ 0x38
 800227a:	2101      	movs	r1, #1
 800227c:	2200      	movs	r2, #0
 800227e:	f880 1025 	strb.w	r1, [r0, #37]	@ 0x25
 8002282:	f880 2024 	strb.w	r2, [r0, #36]	@ 0x24
 8002286:	b103      	cbz	r3, 800228a <HAL_DMA_Abort_IT+0x72>
 8002288:	4798      	blx	r3
 800228a:	2000      	movs	r0, #0
 800228c:	bd38      	pop	{r3, r4, r5, pc}
 800228e:	bf00      	nop

08002290 <HAL_DMA_IRQHandler>:
 8002290:	b470      	push	{r4, r5, r6}
 8002292:	6c43      	ldr	r3, [r0, #68]	@ 0x44
 8002294:	6c06      	ldr	r6, [r0, #64]	@ 0x40
 8002296:	6805      	ldr	r5, [r0, #0]
 8002298:	6831      	ldr	r1, [r6, #0]
 800229a:	682c      	ldr	r4, [r5, #0]
 800229c:	f003 031f 	and.w	r3, r3, #31
 80022a0:	2204      	movs	r2, #4
 80022a2:	409a      	lsls	r2, r3
 80022a4:	420a      	tst	r2, r1
 80022a6:	d00e      	beq.n	80022c6 <HAL_DMA_IRQHandler+0x36>
 80022a8:	f014 0f04 	tst.w	r4, #4
 80022ac:	d00b      	beq.n	80022c6 <HAL_DMA_IRQHandler+0x36>
 80022ae:	682b      	ldr	r3, [r5, #0]
 80022b0:	069b      	lsls	r3, r3, #26
 80022b2:	d403      	bmi.n	80022bc <HAL_DMA_IRQHandler+0x2c>
 80022b4:	682b      	ldr	r3, [r5, #0]
 80022b6:	f023 0304 	bic.w	r3, r3, #4
 80022ba:	602b      	str	r3, [r5, #0]
 80022bc:	6b03      	ldr	r3, [r0, #48]	@ 0x30
 80022be:	6072      	str	r2, [r6, #4]
 80022c0:	b1cb      	cbz	r3, 80022f6 <HAL_DMA_IRQHandler+0x66>
 80022c2:	bc70      	pop	{r4, r5, r6}
 80022c4:	4718      	bx	r3
 80022c6:	2202      	movs	r2, #2
 80022c8:	409a      	lsls	r2, r3
 80022ca:	420a      	tst	r2, r1
 80022cc:	d015      	beq.n	80022fa <HAL_DMA_IRQHandler+0x6a>
 80022ce:	f014 0f02 	tst.w	r4, #2
 80022d2:	d012      	beq.n	80022fa <HAL_DMA_IRQHandler+0x6a>
 80022d4:	682b      	ldr	r3, [r5, #0]
 80022d6:	0699      	lsls	r1, r3, #26
 80022d8:	d406      	bmi.n	80022e8 <HAL_DMA_IRQHandler+0x58>
 80022da:	682b      	ldr	r3, [r5, #0]
 80022dc:	f023 030a 	bic.w	r3, r3, #10
 80022e0:	602b      	str	r3, [r5, #0]
 80022e2:	2301      	movs	r3, #1
 80022e4:	f880 3025 	strb.w	r3, [r0, #37]	@ 0x25
 80022e8:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
 80022ea:	6072      	str	r2, [r6, #4]
 80022ec:	2100      	movs	r1, #0
 80022ee:	f880 1024 	strb.w	r1, [r0, #36]	@ 0x24
 80022f2:	2b00      	cmp	r3, #0
 80022f4:	d1e5      	bne.n	80022c2 <HAL_DMA_IRQHandler+0x32>
 80022f6:	bc70      	pop	{r4, r5, r6}
 80022f8:	4770      	bx	lr
 80022fa:	2208      	movs	r2, #8
 80022fc:	409a      	lsls	r2, r3
 80022fe:	420a      	tst	r2, r1
 8002300:	d0f9      	beq.n	80022f6 <HAL_DMA_IRQHandler+0x66>
 8002302:	0722      	lsls	r2, r4, #28
 8002304:	d5f7      	bpl.n	80022f6 <HAL_DMA_IRQHandler+0x66>
 8002306:	682a      	ldr	r2, [r5, #0]
 8002308:	6b41      	ldr	r1, [r0, #52]	@ 0x34
 800230a:	f022 020e 	bic.w	r2, r2, #14
 800230e:	602a      	str	r2, [r5, #0]
 8002310:	2201      	movs	r2, #1
 8002312:	fa02 f303 	lsl.w	r3, r2, r3
 8002316:	2400      	movs	r4, #0
 8002318:	6073      	str	r3, [r6, #4]
 800231a:	63c2      	str	r2, [r0, #60]	@ 0x3c
 800231c:	f880 4024 	strb.w	r4, [r0, #36]	@ 0x24
 8002320:	f880 2025 	strb.w	r2, [r0, #37]	@ 0x25
 8002324:	2900      	cmp	r1, #0
 8002326:	d0e6      	beq.n	80022f6 <HAL_DMA_IRQHandler+0x66>
 8002328:	bc70      	pop	{r4, r5, r6}
 800232a:	4708      	bx	r1

0800232c <HAL_PWREx_ControlVoltageScaling>:
 800232c:	4a35      	ldr	r2, [pc, #212]	@ (8002404 <HAL_PWREx_ControlVoltageScaling+0xd8>)
 800232e:	6813      	ldr	r3, [r2, #0]
 8002330:	b960      	cbnz	r0, 800234c <HAL_PWREx_ControlVoltageScaling+0x20>
 8002332:	f403 63c0 	and.w	r3, r3, #1536	@ 0x600
 8002336:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 800233a:	f8d2 3080 	ldr.w	r3, [r2, #128]	@ 0x80
 800233e:	d01b      	beq.n	8002378 <HAL_PWREx_ControlVoltageScaling+0x4c>
 8002340:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 8002344:	f8c2 3080 	str.w	r3, [r2, #128]	@ 0x80
 8002348:	2000      	movs	r0, #0
 800234a:	4770      	bx	lr
 800234c:	f5b0 7f00 	cmp.w	r0, #512	@ 0x200
 8002350:	d006      	beq.n	8002360 <HAL_PWREx_ControlVoltageScaling+0x34>
 8002352:	f423 63c0 	bic.w	r3, r3, #1536	@ 0x600
 8002356:	f443 6380 	orr.w	r3, r3, #1024	@ 0x400
 800235a:	6013      	str	r3, [r2, #0]
 800235c:	2000      	movs	r0, #0
 800235e:	4770      	bx	lr
 8002360:	f403 63c0 	and.w	r3, r3, #1536	@ 0x600
 8002364:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8002368:	f8d2 3080 	ldr.w	r3, [r2, #128]	@ 0x80
 800236c:	d029      	beq.n	80023c2 <HAL_PWREx_ControlVoltageScaling+0x96>
 800236e:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8002372:	f8c2 3080 	str.w	r3, [r2, #128]	@ 0x80
 8002376:	e7f1      	b.n	800235c <HAL_PWREx_ControlVoltageScaling+0x30>
 8002378:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 800237c:	f8c2 3080 	str.w	r3, [r2, #128]	@ 0x80
 8002380:	6813      	ldr	r3, [r2, #0]
 8002382:	4821      	ldr	r0, [pc, #132]	@ (8002408 <HAL_PWREx_ControlVoltageScaling+0xdc>)
 8002384:	4921      	ldr	r1, [pc, #132]	@ (800240c <HAL_PWREx_ControlVoltageScaling+0xe0>)
 8002386:	f423 63c0 	bic.w	r3, r3, #1536	@ 0x600
 800238a:	f443 7300 	orr.w	r3, r3, #512	@ 0x200
 800238e:	6013      	str	r3, [r2, #0]
 8002390:	6803      	ldr	r3, [r0, #0]
 8002392:	2032      	movs	r0, #50	@ 0x32
 8002394:	fb00 f303 	mul.w	r3, r0, r3
 8002398:	6950      	ldr	r0, [r2, #20]
 800239a:	fba1 1303 	umull	r1, r3, r1, r3
 800239e:	0c9b      	lsrs	r3, r3, #18
 80023a0:	0540      	lsls	r0, r0, #21
 80023a2:	f103 0301 	add.w	r3, r3, #1
 80023a6:	d506      	bpl.n	80023b6 <HAL_PWREx_ControlVoltageScaling+0x8a>
 80023a8:	e000      	b.n	80023ac <HAL_PWREx_ControlVoltageScaling+0x80>
 80023aa:	b123      	cbz	r3, 80023b6 <HAL_PWREx_ControlVoltageScaling+0x8a>
 80023ac:	6951      	ldr	r1, [r2, #20]
 80023ae:	0549      	lsls	r1, r1, #21
 80023b0:	f103 33ff 	add.w	r3, r3, #4294967295
 80023b4:	d4f9      	bmi.n	80023aa <HAL_PWREx_ControlVoltageScaling+0x7e>
 80023b6:	4b13      	ldr	r3, [pc, #76]	@ (8002404 <HAL_PWREx_ControlVoltageScaling+0xd8>)
 80023b8:	695b      	ldr	r3, [r3, #20]
 80023ba:	055b      	lsls	r3, r3, #21
 80023bc:	d5ce      	bpl.n	800235c <HAL_PWREx_ControlVoltageScaling+0x30>
 80023be:	2003      	movs	r0, #3
 80023c0:	4770      	bx	lr
 80023c2:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 80023c6:	f8c2 3080 	str.w	r3, [r2, #128]	@ 0x80
 80023ca:	6813      	ldr	r3, [r2, #0]
 80023cc:	480e      	ldr	r0, [pc, #56]	@ (8002408 <HAL_PWREx_ControlVoltageScaling+0xdc>)
 80023ce:	490f      	ldr	r1, [pc, #60]	@ (800240c <HAL_PWREx_ControlVoltageScaling+0xe0>)
 80023d0:	f423 63c0 	bic.w	r3, r3, #1536	@ 0x600
 80023d4:	f443 7300 	orr.w	r3, r3, #512	@ 0x200
 80023d8:	6013      	str	r3, [r2, #0]
 80023da:	6803      	ldr	r3, [r0, #0]
 80023dc:	2032      	movs	r0, #50	@ 0x32
 80023de:	fb00 f303 	mul.w	r3, r0, r3
 80023e2:	6950      	ldr	r0, [r2, #20]
 80023e4:	fba1 1303 	umull	r1, r3, r1, r3
 80023e8:	0c9b      	lsrs	r3, r3, #18
 80023ea:	0540      	lsls	r0, r0, #21
 80023ec:	f103 0301 	add.w	r3, r3, #1
 80023f0:	d5e1      	bpl.n	80023b6 <HAL_PWREx_ControlVoltageScaling+0x8a>
 80023f2:	e001      	b.n	80023f8 <HAL_PWREx_ControlVoltageScaling+0xcc>
 80023f4:	2b00      	cmp	r3, #0
 80023f6:	d0de      	beq.n	80023b6 <HAL_PWREx_ControlVoltageScaling+0x8a>
 80023f8:	6951      	ldr	r1, [r2, #20]
 80023fa:	0549      	lsls	r1, r1, #21
 80023fc:	f103 33ff 	add.w	r3, r3, #4294967295
 8002400:	d5d9      	bpl.n	80023b6 <HAL_PWREx_ControlVoltageScaling+0x8a>
 8002402:	e7f7      	b.n	80023f4 <HAL_PWREx_ControlVoltageScaling+0xc8>
 8002404:	40007000 	.word	0x40007000
 8002408:	20000008 	.word	0x20000008
 800240c:	431bde83 	.word	0x431bde83

08002410 <HAL_PWREx_DisableUCPDDeadBattery>:
 8002410:	4a02      	ldr	r2, [pc, #8]	@ (800241c <HAL_PWREx_DisableUCPDDeadBattery+0xc>)
 8002412:	6893      	ldr	r3, [r2, #8]
 8002414:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 8002418:	6093      	str	r3, [r2, #8]
 800241a:	4770      	bx	lr
 800241c:	40007000 	.word	0x40007000

08002420 <HAL_NVIC_SetPriorityGrouping>:
 8002420:	4907      	ldr	r1, [pc, #28]	@ (8002440 <HAL_NVIC_SetPriorityGrouping+0x20>)
 8002422:	68ca      	ldr	r2, [r1, #12]
 8002424:	0203      	lsls	r3, r0, #8
 8002426:	f64f 00ff 	movw	r0, #63743	@ 0xf8ff
 800242a:	f403 63e0 	and.w	r3, r3, #1792	@ 0x700
 800242e:	4002      	ands	r2, r0
 8002430:	4313      	orrs	r3, r2
 8002432:	f043 63bf 	orr.w	r3, r3, #100139008	@ 0x5f80000
 8002436:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 800243a:	60cb      	str	r3, [r1, #12]
 800243c:	4770      	bx	lr
 800243e:	bf00      	nop
 8002440:	e000ed00 	.word	0xe000ed00

08002444 <HAL_NVIC_SetPriority>:
 8002444:	4b1b      	ldr	r3, [pc, #108]	@ (80024b4 <HAL_NVIC_SetPriority+0x70>)
 8002446:	68db      	ldr	r3, [r3, #12]
 8002448:	f3c3 2302 	ubfx	r3, r3, #8, #3
 800244c:	b500      	push	{lr}
 800244e:	f1c3 0e07 	rsb	lr, r3, #7
 8002452:	f1be 0f04 	cmp.w	lr, #4
 8002456:	f103 0c04 	add.w	ip, r3, #4
 800245a:	bf28      	it	cs
 800245c:	f04f 0e04 	movcs.w	lr, #4
 8002460:	f1bc 0f06 	cmp.w	ip, #6
 8002464:	d91c      	bls.n	80024a0 <HAL_NVIC_SetPriority+0x5c>
 8002466:	f1a3 0c03 	sub.w	ip, r3, #3
 800246a:	f04f 33ff 	mov.w	r3, #4294967295
 800246e:	fa03 f30c 	lsl.w	r3, r3, ip
 8002472:	ea22 0203 	bic.w	r2, r2, r3
 8002476:	f04f 33ff 	mov.w	r3, #4294967295
 800247a:	fa03 f30e 	lsl.w	r3, r3, lr
 800247e:	ea21 0303 	bic.w	r3, r1, r3
 8002482:	fa03 f30c 	lsl.w	r3, r3, ip
 8002486:	4313      	orrs	r3, r2
 8002488:	011b      	lsls	r3, r3, #4
 800248a:	2800      	cmp	r0, #0
 800248c:	b2db      	uxtb	r3, r3
 800248e:	db0a      	blt.n	80024a6 <HAL_NVIC_SetPriority+0x62>
 8002490:	f100 4060 	add.w	r0, r0, #3758096384	@ 0xe0000000
 8002494:	f500 4061 	add.w	r0, r0, #57600	@ 0xe100
 8002498:	f880 3300 	strb.w	r3, [r0, #768]	@ 0x300
 800249c:	f85d fb04 	ldr.w	pc, [sp], #4
 80024a0:	2200      	movs	r2, #0
 80024a2:	4694      	mov	ip, r2
 80024a4:	e7e7      	b.n	8002476 <HAL_NVIC_SetPriority+0x32>
 80024a6:	4a04      	ldr	r2, [pc, #16]	@ (80024b8 <HAL_NVIC_SetPriority+0x74>)
 80024a8:	f000 000f 	and.w	r0, r0, #15
 80024ac:	4402      	add	r2, r0
 80024ae:	7613      	strb	r3, [r2, #24]
 80024b0:	f85d fb04 	ldr.w	pc, [sp], #4
 80024b4:	e000ed00 	.word	0xe000ed00
 80024b8:	e000ecfc 	.word	0xe000ecfc

080024bc <HAL_NVIC_EnableIRQ>:
 80024bc:	2800      	cmp	r0, #0
 80024be:	db07      	blt.n	80024d0 <HAL_NVIC_EnableIRQ+0x14>
 80024c0:	4a04      	ldr	r2, [pc, #16]	@ (80024d4 <HAL_NVIC_EnableIRQ+0x18>)
 80024c2:	0941      	lsrs	r1, r0, #5
 80024c4:	2301      	movs	r3, #1
 80024c6:	f000 001f 	and.w	r0, r0, #31
 80024ca:	4083      	lsls	r3, r0
 80024cc:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80024d0:	4770      	bx	lr
 80024d2:	bf00      	nop
 80024d4:	e000e100 	.word	0xe000e100

080024d8 <HAL_SYSTICK_Config>:
 80024d8:	3801      	subs	r0, #1
 80024da:	f1b0 7f80 	cmp.w	r0, #16777216	@ 0x1000000
 80024de:	d301      	bcc.n	80024e4 <HAL_SYSTICK_Config+0xc>
 80024e0:	2001      	movs	r0, #1
 80024e2:	4770      	bx	lr
 80024e4:	b410      	push	{r4}
 80024e6:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 80024ea:	4c07      	ldr	r4, [pc, #28]	@ (8002508 <HAL_SYSTICK_Config+0x30>)
 80024ec:	6158      	str	r0, [r3, #20]
 80024ee:	f04f 0cf0 	mov.w	ip, #240	@ 0xf0
 80024f2:	f884 c023 	strb.w	ip, [r4, #35]	@ 0x23
 80024f6:	2200      	movs	r2, #0
 80024f8:	2107      	movs	r1, #7
 80024fa:	4610      	mov	r0, r2
 80024fc:	619a      	str	r2, [r3, #24]
 80024fe:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002502:	6119      	str	r1, [r3, #16]
 8002504:	4770      	bx	lr
 8002506:	bf00      	nop
 8002508:	e000ed00 	.word	0xe000ed00

0800250c <HAL_TIM_Base_Start>:
 800250c:	f890 303d 	ldrb.w	r3, [r0, #61]	@ 0x3d
 8002510:	2b01      	cmp	r3, #1
 8002512:	d11f      	bne.n	8002554 <HAL_TIM_Base_Start+0x48>
 8002514:	6803      	ldr	r3, [r0, #0]
 8002516:	4a15      	ldr	r2, [pc, #84]	@ (800256c <HAL_TIM_Base_Start+0x60>)
 8002518:	2102      	movs	r1, #2
 800251a:	4293      	cmp	r3, r2
 800251c:	f880 103d 	strb.w	r1, [r0, #61]	@ 0x3d
 8002520:	d01a      	beq.n	8002558 <HAL_TIM_Base_Start+0x4c>
 8002522:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8002526:	d017      	beq.n	8002558 <HAL_TIM_Base_Start+0x4c>
 8002528:	f5a2 3294 	sub.w	r2, r2, #75776	@ 0x12800
 800252c:	4293      	cmp	r3, r2
 800252e:	d013      	beq.n	8002558 <HAL_TIM_Base_Start+0x4c>
 8002530:	f502 6280 	add.w	r2, r2, #1024	@ 0x400
 8002534:	4293      	cmp	r3, r2
 8002536:	d00f      	beq.n	8002558 <HAL_TIM_Base_Start+0x4c>
 8002538:	f502 3296 	add.w	r2, r2, #76800	@ 0x12c00
 800253c:	4293      	cmp	r3, r2
 800253e:	d00b      	beq.n	8002558 <HAL_TIM_Base_Start+0x4c>
 8002540:	f502 6240 	add.w	r2, r2, #3072	@ 0xc00
 8002544:	4293      	cmp	r3, r2
 8002546:	d007      	beq.n	8002558 <HAL_TIM_Base_Start+0x4c>
 8002548:	681a      	ldr	r2, [r3, #0]
 800254a:	f042 0201 	orr.w	r2, r2, #1
 800254e:	601a      	str	r2, [r3, #0]
 8002550:	2000      	movs	r0, #0
 8002552:	4770      	bx	lr
 8002554:	2001      	movs	r0, #1
 8002556:	4770      	bx	lr
 8002558:	6899      	ldr	r1, [r3, #8]
 800255a:	4a05      	ldr	r2, [pc, #20]	@ (8002570 <HAL_TIM_Base_Start+0x64>)
 800255c:	400a      	ands	r2, r1
 800255e:	2a06      	cmp	r2, #6
 8002560:	d0f6      	beq.n	8002550 <HAL_TIM_Base_Start+0x44>
 8002562:	f5b2 3f80 	cmp.w	r2, #65536	@ 0x10000
 8002566:	d1ef      	bne.n	8002548 <HAL_TIM_Base_Start+0x3c>
 8002568:	e7f2      	b.n	8002550 <HAL_TIM_Base_Start+0x44>
 800256a:	bf00      	nop
 800256c:	40012c00 	.word	0x40012c00
 8002570:	00010007 	.word	0x00010007

08002574 <HAL_TIM_ConfigClockSource>:
 8002574:	f890 203c 	ldrb.w	r2, [r0, #60]	@ 0x3c
 8002578:	2a01      	cmp	r2, #1
 800257a:	d073      	beq.n	8002664 <HAL_TIM_ConfigClockSource+0xf0>
 800257c:	4603      	mov	r3, r0
 800257e:	b430      	push	{r4, r5}
 8002580:	6802      	ldr	r2, [r0, #0]
 8002582:	2402      	movs	r4, #2
 8002584:	2001      	movs	r0, #1
 8002586:	f883 403d 	strb.w	r4, [r3, #61]	@ 0x3d
 800258a:	f883 003c 	strb.w	r0, [r3, #60]	@ 0x3c
 800258e:	6895      	ldr	r5, [r2, #8]
 8002590:	4c5d      	ldr	r4, [pc, #372]	@ (8002708 <HAL_TIM_ConfigClockSource+0x194>)
 8002592:	402c      	ands	r4, r5
 8002594:	6094      	str	r4, [r2, #8]
 8002596:	680c      	ldr	r4, [r1, #0]
 8002598:	2c70      	cmp	r4, #112	@ 0x70
 800259a:	f000 808f 	beq.w	80026bc <HAL_TIM_ConfigClockSource+0x148>
 800259e:	d827      	bhi.n	80025f0 <HAL_TIM_ConfigClockSource+0x7c>
 80025a0:	2c50      	cmp	r4, #80	@ 0x50
 80025a2:	d061      	beq.n	8002668 <HAL_TIM_ConfigClockSource+0xf4>
 80025a4:	d82d      	bhi.n	8002602 <HAL_TIM_ConfigClockSource+0x8e>
 80025a6:	2c40      	cmp	r4, #64	@ 0x40
 80025a8:	f040 8098 	bne.w	80026dc <HAL_TIM_ConfigClockSource+0x168>
 80025ac:	6848      	ldr	r0, [r1, #4]
 80025ae:	68cc      	ldr	r4, [r1, #12]
 80025b0:	6a11      	ldr	r1, [r2, #32]
 80025b2:	f021 010a 	bic.w	r1, r1, #10
 80025b6:	4308      	orrs	r0, r1
 80025b8:	6a11      	ldr	r1, [r2, #32]
 80025ba:	f021 0101 	bic.w	r1, r1, #1
 80025be:	6211      	str	r1, [r2, #32]
 80025c0:	6991      	ldr	r1, [r2, #24]
 80025c2:	f021 01f0 	bic.w	r1, r1, #240	@ 0xf0
 80025c6:	ea41 1104 	orr.w	r1, r1, r4, lsl #4
 80025ca:	6191      	str	r1, [r2, #24]
 80025cc:	6210      	str	r0, [r2, #32]
 80025ce:	6891      	ldr	r1, [r2, #8]
 80025d0:	f421 1140 	bic.w	r1, r1, #3145728	@ 0x300000
 80025d4:	f021 0170 	bic.w	r1, r1, #112	@ 0x70
 80025d8:	f041 0147 	orr.w	r1, r1, #71	@ 0x47
 80025dc:	6091      	str	r1, [r2, #8]
 80025de:	2000      	movs	r0, #0
 80025e0:	2101      	movs	r1, #1
 80025e2:	2200      	movs	r2, #0
 80025e4:	f883 103d 	strb.w	r1, [r3, #61]	@ 0x3d
 80025e8:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 80025ec:	bc30      	pop	{r4, r5}
 80025ee:	4770      	bx	lr
 80025f0:	f5b4 5f00 	cmp.w	r4, #8192	@ 0x2000
 80025f4:	d052      	beq.n	800269c <HAL_TIM_ConfigClockSource+0x128>
 80025f6:	d821      	bhi.n	800263c <HAL_TIM_ConfigClockSource+0xc8>
 80025f8:	f5b4 5080 	subs.w	r0, r4, #4096	@ 0x1000
 80025fc:	bf18      	it	ne
 80025fe:	2001      	movne	r0, #1
 8002600:	e7ee      	b.n	80025e0 <HAL_TIM_ConfigClockSource+0x6c>
 8002602:	2c60      	cmp	r4, #96	@ 0x60
 8002604:	d1ec      	bne.n	80025e0 <HAL_TIM_ConfigClockSource+0x6c>
 8002606:	6848      	ldr	r0, [r1, #4]
 8002608:	68cc      	ldr	r4, [r1, #12]
 800260a:	6a11      	ldr	r1, [r2, #32]
 800260c:	f021 01a0 	bic.w	r1, r1, #160	@ 0xa0
 8002610:	ea41 1100 	orr.w	r1, r1, r0, lsl #4
 8002614:	6a10      	ldr	r0, [r2, #32]
 8002616:	f020 0010 	bic.w	r0, r0, #16
 800261a:	6210      	str	r0, [r2, #32]
 800261c:	6990      	ldr	r0, [r2, #24]
 800261e:	f420 4070 	bic.w	r0, r0, #61440	@ 0xf000
 8002622:	ea40 3004 	orr.w	r0, r0, r4, lsl #12
 8002626:	6190      	str	r0, [r2, #24]
 8002628:	6211      	str	r1, [r2, #32]
 800262a:	6891      	ldr	r1, [r2, #8]
 800262c:	f421 1140 	bic.w	r1, r1, #3145728	@ 0x300000
 8002630:	f021 0170 	bic.w	r1, r1, #112	@ 0x70
 8002634:	f041 0167 	orr.w	r1, r1, #103	@ 0x67
 8002638:	6091      	str	r1, [r2, #8]
 800263a:	e7d0      	b.n	80025de <HAL_TIM_ConfigClockSource+0x6a>
 800263c:	4933      	ldr	r1, [pc, #204]	@ (800270c <HAL_TIM_ConfigClockSource+0x198>)
 800263e:	428c      	cmp	r4, r1
 8002640:	d006      	beq.n	8002650 <HAL_TIM_ConfigClockSource+0xdc>
 8002642:	d854      	bhi.n	80026ee <HAL_TIM_ConfigClockSource+0x17a>
 8002644:	f1b4 1f10 	cmp.w	r4, #1048592	@ 0x100010
 8002648:	d002      	beq.n	8002650 <HAL_TIM_ConfigClockSource+0xdc>
 800264a:	3910      	subs	r1, #16
 800264c:	428c      	cmp	r4, r1
 800264e:	d1c7      	bne.n	80025e0 <HAL_TIM_ConfigClockSource+0x6c>
 8002650:	6891      	ldr	r1, [r2, #8]
 8002652:	f421 1140 	bic.w	r1, r1, #3145728	@ 0x300000
 8002656:	f021 0170 	bic.w	r1, r1, #112	@ 0x70
 800265a:	4321      	orrs	r1, r4
 800265c:	f041 0107 	orr.w	r1, r1, #7
 8002660:	6091      	str	r1, [r2, #8]
 8002662:	e7bc      	b.n	80025de <HAL_TIM_ConfigClockSource+0x6a>
 8002664:	2002      	movs	r0, #2
 8002666:	4770      	bx	lr
 8002668:	6848      	ldr	r0, [r1, #4]
 800266a:	68cc      	ldr	r4, [r1, #12]
 800266c:	6a11      	ldr	r1, [r2, #32]
 800266e:	f021 010a 	bic.w	r1, r1, #10
 8002672:	4308      	orrs	r0, r1
 8002674:	6a11      	ldr	r1, [r2, #32]
 8002676:	f021 0101 	bic.w	r1, r1, #1
 800267a:	6211      	str	r1, [r2, #32]
 800267c:	6991      	ldr	r1, [r2, #24]
 800267e:	f021 01f0 	bic.w	r1, r1, #240	@ 0xf0
 8002682:	ea41 1104 	orr.w	r1, r1, r4, lsl #4
 8002686:	6191      	str	r1, [r2, #24]
 8002688:	6210      	str	r0, [r2, #32]
 800268a:	6891      	ldr	r1, [r2, #8]
 800268c:	f421 1140 	bic.w	r1, r1, #3145728	@ 0x300000
 8002690:	f021 0170 	bic.w	r1, r1, #112	@ 0x70
 8002694:	f041 0157 	orr.w	r1, r1, #87	@ 0x57
 8002698:	6091      	str	r1, [r2, #8]
 800269a:	e7a0      	b.n	80025de <HAL_TIM_ConfigClockSource+0x6a>
 800269c:	e9d1 5001 	ldrd	r5, r0, [r1, #4]
 80026a0:	6894      	ldr	r4, [r2, #8]
 80026a2:	4328      	orrs	r0, r5
 80026a4:	68cd      	ldr	r5, [r1, #12]
 80026a6:	f424 417f 	bic.w	r1, r4, #65280	@ 0xff00
 80026aa:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
 80026ae:	4308      	orrs	r0, r1
 80026b0:	6090      	str	r0, [r2, #8]
 80026b2:	6891      	ldr	r1, [r2, #8]
 80026b4:	f441 4180 	orr.w	r1, r1, #16384	@ 0x4000
 80026b8:	6091      	str	r1, [r2, #8]
 80026ba:	e790      	b.n	80025de <HAL_TIM_ConfigClockSource+0x6a>
 80026bc:	e9d1 5001 	ldrd	r5, r0, [r1, #4]
 80026c0:	6894      	ldr	r4, [r2, #8]
 80026c2:	4328      	orrs	r0, r5
 80026c4:	68cd      	ldr	r5, [r1, #12]
 80026c6:	f424 417f 	bic.w	r1, r4, #65280	@ 0xff00
 80026ca:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
 80026ce:	4308      	orrs	r0, r1
 80026d0:	6090      	str	r0, [r2, #8]
 80026d2:	6891      	ldr	r1, [r2, #8]
 80026d4:	f041 0177 	orr.w	r1, r1, #119	@ 0x77
 80026d8:	6091      	str	r1, [r2, #8]
 80026da:	e780      	b.n	80025de <HAL_TIM_ConfigClockSource+0x6a>
 80026dc:	d880      	bhi.n	80025e0 <HAL_TIM_ConfigClockSource+0x6c>
 80026de:	2c20      	cmp	r4, #32
 80026e0:	d0b6      	beq.n	8002650 <HAL_TIM_ConfigClockSource+0xdc>
 80026e2:	d80c      	bhi.n	80026fe <HAL_TIM_ConfigClockSource+0x18a>
 80026e4:	f034 0110 	bics.w	r1, r4, #16
 80026e8:	f47f af7a 	bne.w	80025e0 <HAL_TIM_ConfigClockSource+0x6c>
 80026ec:	e7b0      	b.n	8002650 <HAL_TIM_ConfigClockSource+0xdc>
 80026ee:	4908      	ldr	r1, [pc, #32]	@ (8002710 <HAL_TIM_ConfigClockSource+0x19c>)
 80026f0:	428c      	cmp	r4, r1
 80026f2:	d0ad      	beq.n	8002650 <HAL_TIM_ConfigClockSource+0xdc>
 80026f4:	3130      	adds	r1, #48	@ 0x30
 80026f6:	428c      	cmp	r4, r1
 80026f8:	f47f af72 	bne.w	80025e0 <HAL_TIM_ConfigClockSource+0x6c>
 80026fc:	e7a8      	b.n	8002650 <HAL_TIM_ConfigClockSource+0xdc>
 80026fe:	2c30      	cmp	r4, #48	@ 0x30
 8002700:	d0a6      	beq.n	8002650 <HAL_TIM_ConfigClockSource+0xdc>
 8002702:	2001      	movs	r0, #1
 8002704:	e76c      	b.n	80025e0 <HAL_TIM_ConfigClockSource+0x6c>
 8002706:	bf00      	nop
 8002708:	ffce0088 	.word	0xffce0088
 800270c:	00100030 	.word	0x00100030
 8002710:	00100040 	.word	0x00100040

08002714 <HAL_TIM_PeriodElapsedCallback>:
 8002714:	4770      	bx	lr
 8002716:	bf00      	nop

08002718 <HAL_TIM_OC_DelayElapsedCallback>:
 8002718:	4770      	bx	lr
 800271a:	bf00      	nop

0800271c <HAL_TIM_IC_CaptureCallback>:
 800271c:	4770      	bx	lr
 800271e:	bf00      	nop

08002720 <HAL_TIM_PWM_PulseFinishedCallback>:
 8002720:	4770      	bx	lr
 8002722:	bf00      	nop

08002724 <HAL_TIM_TriggerCallback>:
 8002724:	4770      	bx	lr
 8002726:	bf00      	nop

08002728 <HAL_TIM_IRQHandler>:
 8002728:	6803      	ldr	r3, [r0, #0]
 800272a:	b570      	push	{r4, r5, r6, lr}
 800272c:	68de      	ldr	r6, [r3, #12]
 800272e:	691c      	ldr	r4, [r3, #16]
 8002730:	07a2      	lsls	r2, r4, #30
 8002732:	4605      	mov	r5, r0
 8002734:	d501      	bpl.n	800273a <HAL_TIM_IRQHandler+0x12>
 8002736:	07b1      	lsls	r1, r6, #30
 8002738:	d468      	bmi.n	800280c <HAL_TIM_IRQHandler+0xe4>
 800273a:	0763      	lsls	r3, r4, #29
 800273c:	d501      	bpl.n	8002742 <HAL_TIM_IRQHandler+0x1a>
 800273e:	0770      	lsls	r0, r6, #29
 8002740:	d454      	bmi.n	80027ec <HAL_TIM_IRQHandler+0xc4>
 8002742:	0721      	lsls	r1, r4, #28
 8002744:	d501      	bpl.n	800274a <HAL_TIM_IRQHandler+0x22>
 8002746:	0732      	lsls	r2, r6, #28
 8002748:	d43e      	bmi.n	80027c8 <HAL_TIM_IRQHandler+0xa0>
 800274a:	06e0      	lsls	r0, r4, #27
 800274c:	d501      	bpl.n	8002752 <HAL_TIM_IRQHandler+0x2a>
 800274e:	06f1      	lsls	r1, r6, #27
 8002750:	d426      	bmi.n	80027a0 <HAL_TIM_IRQHandler+0x78>
 8002752:	07e2      	lsls	r2, r4, #31
 8002754:	d501      	bpl.n	800275a <HAL_TIM_IRQHandler+0x32>
 8002756:	07f3      	lsls	r3, r6, #31
 8002758:	d47a      	bmi.n	8002850 <HAL_TIM_IRQHandler+0x128>
 800275a:	f414 5f02 	tst.w	r4, #8320	@ 0x2080
 800275e:	d062      	beq.n	8002826 <HAL_TIM_IRQHandler+0xfe>
 8002760:	0630      	lsls	r0, r6, #24
 8002762:	d47d      	bmi.n	8002860 <HAL_TIM_IRQHandler+0x138>
 8002764:	0660      	lsls	r0, r4, #25
 8002766:	d502      	bpl.n	800276e <HAL_TIM_IRQHandler+0x46>
 8002768:	0671      	lsls	r1, r6, #25
 800276a:	f100 8084 	bmi.w	8002876 <HAL_TIM_IRQHandler+0x14e>
 800276e:	06a2      	lsls	r2, r4, #26
 8002770:	d502      	bpl.n	8002778 <HAL_TIM_IRQHandler+0x50>
 8002772:	06b3      	lsls	r3, r6, #26
 8002774:	f100 8087 	bmi.w	8002886 <HAL_TIM_IRQHandler+0x15e>
 8002778:	02e0      	lsls	r0, r4, #11
 800277a:	d502      	bpl.n	8002782 <HAL_TIM_IRQHandler+0x5a>
 800277c:	02f1      	lsls	r1, r6, #11
 800277e:	f100 808a 	bmi.w	8002896 <HAL_TIM_IRQHandler+0x16e>
 8002782:	02a2      	lsls	r2, r4, #10
 8002784:	d502      	bpl.n	800278c <HAL_TIM_IRQHandler+0x64>
 8002786:	02b3      	lsls	r3, r6, #10
 8002788:	f100 808d 	bmi.w	80028a6 <HAL_TIM_IRQHandler+0x17e>
 800278c:	0260      	lsls	r0, r4, #9
 800278e:	d502      	bpl.n	8002796 <HAL_TIM_IRQHandler+0x6e>
 8002790:	0271      	lsls	r1, r6, #9
 8002792:	f100 8090 	bmi.w	80028b6 <HAL_TIM_IRQHandler+0x18e>
 8002796:	0222      	lsls	r2, r4, #8
 8002798:	d501      	bpl.n	800279e <HAL_TIM_IRQHandler+0x76>
 800279a:	0233      	lsls	r3, r6, #8
 800279c:	d44f      	bmi.n	800283e <HAL_TIM_IRQHandler+0x116>
 800279e:	bd70      	pop	{r4, r5, r6, pc}
 80027a0:	682b      	ldr	r3, [r5, #0]
 80027a2:	f06f 0210 	mvn.w	r2, #16
 80027a6:	611a      	str	r2, [r3, #16]
 80027a8:	2208      	movs	r2, #8
 80027aa:	772a      	strb	r2, [r5, #28]
 80027ac:	69db      	ldr	r3, [r3, #28]
 80027ae:	f413 7f40 	tst.w	r3, #768	@ 0x300
 80027b2:	4628      	mov	r0, r5
 80027b4:	f040 8096 	bne.w	80028e4 <HAL_TIM_IRQHandler+0x1bc>
 80027b8:	f7ff ffae 	bl	8002718 <HAL_TIM_OC_DelayElapsedCallback>
 80027bc:	4628      	mov	r0, r5
 80027be:	f7ff ffaf 	bl	8002720 <HAL_TIM_PWM_PulseFinishedCallback>
 80027c2:	2300      	movs	r3, #0
 80027c4:	772b      	strb	r3, [r5, #28]
 80027c6:	e7c4      	b.n	8002752 <HAL_TIM_IRQHandler+0x2a>
 80027c8:	682b      	ldr	r3, [r5, #0]
 80027ca:	f06f 0208 	mvn.w	r2, #8
 80027ce:	611a      	str	r2, [r3, #16]
 80027d0:	2204      	movs	r2, #4
 80027d2:	772a      	strb	r2, [r5, #28]
 80027d4:	69db      	ldr	r3, [r3, #28]
 80027d6:	079b      	lsls	r3, r3, #30
 80027d8:	4628      	mov	r0, r5
 80027da:	d174      	bne.n	80028c6 <HAL_TIM_IRQHandler+0x19e>
 80027dc:	f7ff ff9c 	bl	8002718 <HAL_TIM_OC_DelayElapsedCallback>
 80027e0:	4628      	mov	r0, r5
 80027e2:	f7ff ff9d 	bl	8002720 <HAL_TIM_PWM_PulseFinishedCallback>
 80027e6:	2300      	movs	r3, #0
 80027e8:	772b      	strb	r3, [r5, #28]
 80027ea:	e7ae      	b.n	800274a <HAL_TIM_IRQHandler+0x22>
 80027ec:	682b      	ldr	r3, [r5, #0]
 80027ee:	f06f 0204 	mvn.w	r2, #4
 80027f2:	611a      	str	r2, [r3, #16]
 80027f4:	2202      	movs	r2, #2
 80027f6:	772a      	strb	r2, [r5, #28]
 80027f8:	699b      	ldr	r3, [r3, #24]
 80027fa:	f413 7f40 	tst.w	r3, #768	@ 0x300
 80027fe:	4628      	mov	r0, r5
 8002800:	d064      	beq.n	80028cc <HAL_TIM_IRQHandler+0x1a4>
 8002802:	f7ff ff8b 	bl	800271c <HAL_TIM_IC_CaptureCallback>
 8002806:	2300      	movs	r3, #0
 8002808:	772b      	strb	r3, [r5, #28]
 800280a:	e79a      	b.n	8002742 <HAL_TIM_IRQHandler+0x1a>
 800280c:	f06f 0202 	mvn.w	r2, #2
 8002810:	611a      	str	r2, [r3, #16]
 8002812:	2201      	movs	r2, #1
 8002814:	7702      	strb	r2, [r0, #28]
 8002816:	699b      	ldr	r3, [r3, #24]
 8002818:	079a      	lsls	r2, r3, #30
 800281a:	d05d      	beq.n	80028d8 <HAL_TIM_IRQHandler+0x1b0>
 800281c:	f7ff ff7e 	bl	800271c <HAL_TIM_IC_CaptureCallback>
 8002820:	2300      	movs	r3, #0
 8002822:	772b      	strb	r3, [r5, #28]
 8002824:	e789      	b.n	800273a <HAL_TIM_IRQHandler+0x12>
 8002826:	05e2      	lsls	r2, r4, #23
 8002828:	d59c      	bpl.n	8002764 <HAL_TIM_IRQHandler+0x3c>
 800282a:	0633      	lsls	r3, r6, #24
 800282c:	d59a      	bpl.n	8002764 <HAL_TIM_IRQHandler+0x3c>
 800282e:	682b      	ldr	r3, [r5, #0]
 8002830:	f46f 7280 	mvn.w	r2, #256	@ 0x100
 8002834:	611a      	str	r2, [r3, #16]
 8002836:	4628      	mov	r0, r5
 8002838:	f000 f944 	bl	8002ac4 <HAL_TIMEx_Break2Callback>
 800283c:	e792      	b.n	8002764 <HAL_TIM_IRQHandler+0x3c>
 800283e:	682b      	ldr	r3, [r5, #0]
 8002840:	f46f 0200 	mvn.w	r2, #8388608	@ 0x800000
 8002844:	4628      	mov	r0, r5
 8002846:	611a      	str	r2, [r3, #16]
 8002848:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800284c:	f000 b942 	b.w	8002ad4 <HAL_TIMEx_TransitionErrorCallback>
 8002850:	682b      	ldr	r3, [r5, #0]
 8002852:	f06f 0201 	mvn.w	r2, #1
 8002856:	611a      	str	r2, [r3, #16]
 8002858:	4628      	mov	r0, r5
 800285a:	f7ff ff5b 	bl	8002714 <HAL_TIM_PeriodElapsedCallback>
 800285e:	e77c      	b.n	800275a <HAL_TIM_IRQHandler+0x32>
 8002860:	682b      	ldr	r3, [r5, #0]
 8002862:	f46f 5202 	mvn.w	r2, #8320	@ 0x2080
 8002866:	611a      	str	r2, [r3, #16]
 8002868:	4628      	mov	r0, r5
 800286a:	f000 f929 	bl	8002ac0 <HAL_TIMEx_BreakCallback>
 800286e:	05e1      	lsls	r1, r4, #23
 8002870:	f57f af78 	bpl.w	8002764 <HAL_TIM_IRQHandler+0x3c>
 8002874:	e7db      	b.n	800282e <HAL_TIM_IRQHandler+0x106>
 8002876:	682b      	ldr	r3, [r5, #0]
 8002878:	f06f 0240 	mvn.w	r2, #64	@ 0x40
 800287c:	611a      	str	r2, [r3, #16]
 800287e:	4628      	mov	r0, r5
 8002880:	f7ff ff50 	bl	8002724 <HAL_TIM_TriggerCallback>
 8002884:	e773      	b.n	800276e <HAL_TIM_IRQHandler+0x46>
 8002886:	682b      	ldr	r3, [r5, #0]
 8002888:	f06f 0220 	mvn.w	r2, #32
 800288c:	611a      	str	r2, [r3, #16]
 800288e:	4628      	mov	r0, r5
 8002890:	f000 f914 	bl	8002abc <HAL_TIMEx_CommutCallback>
 8002894:	e770      	b.n	8002778 <HAL_TIM_IRQHandler+0x50>
 8002896:	682b      	ldr	r3, [r5, #0]
 8002898:	f46f 1280 	mvn.w	r2, #1048576	@ 0x100000
 800289c:	611a      	str	r2, [r3, #16]
 800289e:	4628      	mov	r0, r5
 80028a0:	f000 f912 	bl	8002ac8 <HAL_TIMEx_EncoderIndexCallback>
 80028a4:	e76d      	b.n	8002782 <HAL_TIM_IRQHandler+0x5a>
 80028a6:	682b      	ldr	r3, [r5, #0]
 80028a8:	f46f 1200 	mvn.w	r2, #2097152	@ 0x200000
 80028ac:	611a      	str	r2, [r3, #16]
 80028ae:	4628      	mov	r0, r5
 80028b0:	f000 f90c 	bl	8002acc <HAL_TIMEx_DirectionChangeCallback>
 80028b4:	e76a      	b.n	800278c <HAL_TIM_IRQHandler+0x64>
 80028b6:	682b      	ldr	r3, [r5, #0]
 80028b8:	f46f 0280 	mvn.w	r2, #4194304	@ 0x400000
 80028bc:	611a      	str	r2, [r3, #16]
 80028be:	4628      	mov	r0, r5
 80028c0:	f000 f906 	bl	8002ad0 <HAL_TIMEx_IndexErrorCallback>
 80028c4:	e767      	b.n	8002796 <HAL_TIM_IRQHandler+0x6e>
 80028c6:	f7ff ff29 	bl	800271c <HAL_TIM_IC_CaptureCallback>
 80028ca:	e78c      	b.n	80027e6 <HAL_TIM_IRQHandler+0xbe>
 80028cc:	f7ff ff24 	bl	8002718 <HAL_TIM_OC_DelayElapsedCallback>
 80028d0:	4628      	mov	r0, r5
 80028d2:	f7ff ff25 	bl	8002720 <HAL_TIM_PWM_PulseFinishedCallback>
 80028d6:	e796      	b.n	8002806 <HAL_TIM_IRQHandler+0xde>
 80028d8:	f7ff ff1e 	bl	8002718 <HAL_TIM_OC_DelayElapsedCallback>
 80028dc:	4628      	mov	r0, r5
 80028de:	f7ff ff1f 	bl	8002720 <HAL_TIM_PWM_PulseFinishedCallback>
 80028e2:	e79d      	b.n	8002820 <HAL_TIM_IRQHandler+0xf8>
 80028e4:	f7ff ff1a 	bl	800271c <HAL_TIM_IC_CaptureCallback>
 80028e8:	e76b      	b.n	80027c2 <HAL_TIM_IRQHandler+0x9a>
 80028ea:	bf00      	nop

080028ec <TIM_Base_SetConfig>:
 80028ec:	4a2f      	ldr	r2, [pc, #188]	@ (80029ac <TIM_Base_SetConfig+0xc0>)
 80028ee:	6803      	ldr	r3, [r0, #0]
 80028f0:	4290      	cmp	r0, r2
 80028f2:	b410      	push	{r4}
 80028f4:	d023      	beq.n	800293e <TIM_Base_SetConfig+0x52>
 80028f6:	f1b0 4f80 	cmp.w	r0, #1073741824	@ 0x40000000
 80028fa:	d03f      	beq.n	800297c <TIM_Base_SetConfig+0x90>
 80028fc:	f5a2 3294 	sub.w	r2, r2, #75776	@ 0x12800
 8002900:	4290      	cmp	r0, r2
 8002902:	d03b      	beq.n	800297c <TIM_Base_SetConfig+0x90>
 8002904:	f502 6280 	add.w	r2, r2, #1024	@ 0x400
 8002908:	4290      	cmp	r0, r2
 800290a:	d037      	beq.n	800297c <TIM_Base_SetConfig+0x90>
 800290c:	f502 3296 	add.w	r2, r2, #76800	@ 0x12c00
 8002910:	4290      	cmp	r0, r2
 8002912:	d014      	beq.n	800293e <TIM_Base_SetConfig+0x52>
 8002914:	4a26      	ldr	r2, [pc, #152]	@ (80029b0 <TIM_Base_SetConfig+0xc4>)
 8002916:	4290      	cmp	r0, r2
 8002918:	d042      	beq.n	80029a0 <TIM_Base_SetConfig+0xb4>
 800291a:	f502 6280 	add.w	r2, r2, #1024	@ 0x400
 800291e:	4290      	cmp	r0, r2
 8002920:	d03e      	beq.n	80029a0 <TIM_Base_SetConfig+0xb4>
 8002922:	f502 6280 	add.w	r2, r2, #1024	@ 0x400
 8002926:	4290      	cmp	r0, r2
 8002928:	d03a      	beq.n	80029a0 <TIM_Base_SetConfig+0xb4>
 800292a:	680a      	ldr	r2, [r1, #0]
 800292c:	688c      	ldr	r4, [r1, #8]
 800292e:	6949      	ldr	r1, [r1, #20]
 8002930:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8002934:	430b      	orrs	r3, r1
 8002936:	6003      	str	r3, [r0, #0]
 8002938:	62c4      	str	r4, [r0, #44]	@ 0x2c
 800293a:	6282      	str	r2, [r0, #40]	@ 0x28
 800293c:	e012      	b.n	8002964 <TIM_Base_SetConfig+0x78>
 800293e:	684c      	ldr	r4, [r1, #4]
 8002940:	68ca      	ldr	r2, [r1, #12]
 8002942:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002946:	4323      	orrs	r3, r4
 8002948:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 800294c:	4313      	orrs	r3, r2
 800294e:	694a      	ldr	r2, [r1, #20]
 8002950:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8002954:	4313      	orrs	r3, r2
 8002956:	6003      	str	r3, [r0, #0]
 8002958:	688b      	ldr	r3, [r1, #8]
 800295a:	62c3      	str	r3, [r0, #44]	@ 0x2c
 800295c:	680b      	ldr	r3, [r1, #0]
 800295e:	6283      	str	r3, [r0, #40]	@ 0x28
 8002960:	690b      	ldr	r3, [r1, #16]
 8002962:	6303      	str	r3, [r0, #48]	@ 0x30
 8002964:	2301      	movs	r3, #1
 8002966:	6143      	str	r3, [r0, #20]
 8002968:	6903      	ldr	r3, [r0, #16]
 800296a:	07db      	lsls	r3, r3, #31
 800296c:	d503      	bpl.n	8002976 <TIM_Base_SetConfig+0x8a>
 800296e:	6903      	ldr	r3, [r0, #16]
 8002970:	f023 0301 	bic.w	r3, r3, #1
 8002974:	6103      	str	r3, [r0, #16]
 8002976:	f85d 4b04 	ldr.w	r4, [sp], #4
 800297a:	4770      	bx	lr
 800297c:	684a      	ldr	r2, [r1, #4]
 800297e:	68cc      	ldr	r4, [r1, #12]
 8002980:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002984:	4313      	orrs	r3, r2
 8002986:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 800298a:	694a      	ldr	r2, [r1, #20]
 800298c:	4323      	orrs	r3, r4
 800298e:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8002992:	688c      	ldr	r4, [r1, #8]
 8002994:	4313      	orrs	r3, r2
 8002996:	680a      	ldr	r2, [r1, #0]
 8002998:	6003      	str	r3, [r0, #0]
 800299a:	62c4      	str	r4, [r0, #44]	@ 0x2c
 800299c:	6282      	str	r2, [r0, #40]	@ 0x28
 800299e:	e7e1      	b.n	8002964 <TIM_Base_SetConfig+0x78>
 80029a0:	68cc      	ldr	r4, [r1, #12]
 80029a2:	694a      	ldr	r2, [r1, #20]
 80029a4:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 80029a8:	4323      	orrs	r3, r4
 80029aa:	e7d1      	b.n	8002950 <TIM_Base_SetConfig+0x64>
 80029ac:	40012c00 	.word	0x40012c00
 80029b0:	40014000 	.word	0x40014000

080029b4 <HAL_TIM_Base_Init>:
 80029b4:	b370      	cbz	r0, 8002a14 <HAL_TIM_Base_Init+0x60>
 80029b6:	b510      	push	{r4, lr}
 80029b8:	f890 303d 	ldrb.w	r3, [r0, #61]	@ 0x3d
 80029bc:	4604      	mov	r4, r0
 80029be:	f003 02ff 	and.w	r2, r3, #255	@ 0xff
 80029c2:	b313      	cbz	r3, 8002a0a <HAL_TIM_Base_Init+0x56>
 80029c4:	4621      	mov	r1, r4
 80029c6:	2302      	movs	r3, #2
 80029c8:	f884 303d 	strb.w	r3, [r4, #61]	@ 0x3d
 80029cc:	f851 0b04 	ldr.w	r0, [r1], #4
 80029d0:	f7ff ff8c 	bl	80028ec <TIM_Base_SetConfig>
 80029d4:	2301      	movs	r3, #1
 80029d6:	f884 3048 	strb.w	r3, [r4, #72]	@ 0x48
 80029da:	f884 303e 	strb.w	r3, [r4, #62]	@ 0x3e
 80029de:	f884 303f 	strb.w	r3, [r4, #63]	@ 0x3f
 80029e2:	f884 3040 	strb.w	r3, [r4, #64]	@ 0x40
 80029e6:	f884 3041 	strb.w	r3, [r4, #65]	@ 0x41
 80029ea:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
 80029ee:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 80029f2:	f884 3044 	strb.w	r3, [r4, #68]	@ 0x44
 80029f6:	f884 3045 	strb.w	r3, [r4, #69]	@ 0x45
 80029fa:	f884 3046 	strb.w	r3, [r4, #70]	@ 0x46
 80029fe:	f884 3047 	strb.w	r3, [r4, #71]	@ 0x47
 8002a02:	f884 303d 	strb.w	r3, [r4, #61]	@ 0x3d
 8002a06:	2000      	movs	r0, #0
 8002a08:	bd10      	pop	{r4, pc}
 8002a0a:	f880 203c 	strb.w	r2, [r0, #60]	@ 0x3c
 8002a0e:	f001 fc21 	bl	8004254 <HAL_TIM_Base_MspInit>
 8002a12:	e7d7      	b.n	80029c4 <HAL_TIM_Base_Init+0x10>
 8002a14:	2001      	movs	r0, #1
 8002a16:	4770      	bx	lr

08002a18 <HAL_TIMEx_MasterConfigSynchronization>:
 8002a18:	f890 303c 	ldrb.w	r3, [r0, #60]	@ 0x3c
 8002a1c:	2b01      	cmp	r3, #1
 8002a1e:	d046      	beq.n	8002aae <HAL_TIMEx_MasterConfigSynchronization+0x96>
 8002a20:	b470      	push	{r4, r5, r6}
 8002a22:	4602      	mov	r2, r0
 8002a24:	4e23      	ldr	r6, [pc, #140]	@ (8002ab4 <HAL_TIMEx_MasterConfigSynchronization+0x9c>)
 8002a26:	6800      	ldr	r0, [r0, #0]
 8002a28:	2302      	movs	r3, #2
 8002a2a:	f882 303d 	strb.w	r3, [r2, #61]	@ 0x3d
 8002a2e:	42b0      	cmp	r0, r6
 8002a30:	6843      	ldr	r3, [r0, #4]
 8002a32:	680d      	ldr	r5, [r1, #0]
 8002a34:	6884      	ldr	r4, [r0, #8]
 8002a36:	d024      	beq.n	8002a82 <HAL_TIMEx_MasterConfigSynchronization+0x6a>
 8002a38:	f506 6600 	add.w	r6, r6, #2048	@ 0x800
 8002a3c:	42b0      	cmp	r0, r6
 8002a3e:	d02b      	beq.n	8002a98 <HAL_TIMEx_MasterConfigSynchronization+0x80>
 8002a40:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
 8002a44:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002a48:	432b      	orrs	r3, r5
 8002a4a:	f1b0 4f80 	cmp.w	r0, #1073741824	@ 0x40000000
 8002a4e:	6043      	str	r3, [r0, #4]
 8002a50:	d00a      	beq.n	8002a68 <HAL_TIMEx_MasterConfigSynchronization+0x50>
 8002a52:	4b19      	ldr	r3, [pc, #100]	@ (8002ab8 <HAL_TIMEx_MasterConfigSynchronization+0xa0>)
 8002a54:	4298      	cmp	r0, r3
 8002a56:	d007      	beq.n	8002a68 <HAL_TIMEx_MasterConfigSynchronization+0x50>
 8002a58:	f503 6380 	add.w	r3, r3, #1024	@ 0x400
 8002a5c:	4298      	cmp	r0, r3
 8002a5e:	d003      	beq.n	8002a68 <HAL_TIMEx_MasterConfigSynchronization+0x50>
 8002a60:	f503 339c 	add.w	r3, r3, #79872	@ 0x13800
 8002a64:	4298      	cmp	r0, r3
 8002a66:	d104      	bne.n	8002a72 <HAL_TIMEx_MasterConfigSynchronization+0x5a>
 8002a68:	688b      	ldr	r3, [r1, #8]
 8002a6a:	f024 0480 	bic.w	r4, r4, #128	@ 0x80
 8002a6e:	431c      	orrs	r4, r3
 8002a70:	6084      	str	r4, [r0, #8]
 8002a72:	2000      	movs	r0, #0
 8002a74:	2301      	movs	r3, #1
 8002a76:	f882 303d 	strb.w	r3, [r2, #61]	@ 0x3d
 8002a7a:	f882 003c 	strb.w	r0, [r2, #60]	@ 0x3c
 8002a7e:	bc70      	pop	{r4, r5, r6}
 8002a80:	4770      	bx	lr
 8002a82:	684e      	ldr	r6, [r1, #4]
 8002a84:	f423 0370 	bic.w	r3, r3, #15728640	@ 0xf00000
 8002a88:	4333      	orrs	r3, r6
 8002a8a:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
 8002a8e:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002a92:	432b      	orrs	r3, r5
 8002a94:	6043      	str	r3, [r0, #4]
 8002a96:	e7e7      	b.n	8002a68 <HAL_TIMEx_MasterConfigSynchronization+0x50>
 8002a98:	684e      	ldr	r6, [r1, #4]
 8002a9a:	f423 0370 	bic.w	r3, r3, #15728640	@ 0xf00000
 8002a9e:	4333      	orrs	r3, r6
 8002aa0:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
 8002aa4:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002aa8:	431d      	orrs	r5, r3
 8002aaa:	6045      	str	r5, [r0, #4]
 8002aac:	e7dc      	b.n	8002a68 <HAL_TIMEx_MasterConfigSynchronization+0x50>
 8002aae:	2002      	movs	r0, #2
 8002ab0:	4770      	bx	lr
 8002ab2:	bf00      	nop
 8002ab4:	40012c00 	.word	0x40012c00
 8002ab8:	40000400 	.word	0x40000400

08002abc <HAL_TIMEx_CommutCallback>:
 8002abc:	4770      	bx	lr
 8002abe:	bf00      	nop

08002ac0 <HAL_TIMEx_BreakCallback>:
 8002ac0:	4770      	bx	lr
 8002ac2:	bf00      	nop

08002ac4 <HAL_TIMEx_Break2Callback>:
 8002ac4:	4770      	bx	lr
 8002ac6:	bf00      	nop

08002ac8 <HAL_TIMEx_EncoderIndexCallback>:
 8002ac8:	4770      	bx	lr
 8002aca:	bf00      	nop

08002acc <HAL_TIMEx_DirectionChangeCallback>:
 8002acc:	4770      	bx	lr
 8002ace:	bf00      	nop

08002ad0 <HAL_TIMEx_IndexErrorCallback>:
 8002ad0:	4770      	bx	lr
 8002ad2:	bf00      	nop

08002ad4 <HAL_TIMEx_TransitionErrorCallback>:
 8002ad4:	4770      	bx	lr
 8002ad6:	bf00      	nop

08002ad8 <SystemInit>:
 8002ad8:	4a03      	ldr	r2, [pc, #12]	@ (8002ae8 <SystemInit+0x10>)
 8002ada:	f8d2 3088 	ldr.w	r3, [r2, #136]	@ 0x88
 8002ade:	f443 0370 	orr.w	r3, r3, #15728640	@ 0xf00000
 8002ae2:	f8c2 3088 	str.w	r3, [r2, #136]	@ 0x88
 8002ae6:	4770      	bx	lr
 8002ae8:	e000ed00 	.word	0xe000ed00

08002aec <MX_I2C3_Init>:
 8002aec:	b510      	push	{r4, lr}
 8002aee:	4818      	ldr	r0, [pc, #96]	@ (8002b50 <MX_I2C3_Init+0x64>)
 8002af0:	4c18      	ldr	r4, [pc, #96]	@ (8002b54 <MX_I2C3_Init+0x68>)
 8002af2:	2300      	movs	r3, #0
 8002af4:	f240 1107 	movw	r1, #263	@ 0x107
 8002af8:	2201      	movs	r2, #1
 8002afa:	e9c0 4100 	strd	r4, r1, [r0]
 8002afe:	e9c0 3202 	strd	r3, r2, [r0, #8]
 8002b02:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8002b06:	e9c0 3306 	strd	r3, r3, [r0, #24]
 8002b0a:	6203      	str	r3, [r0, #32]
 8002b0c:	f000 f984 	bl	8002e18 <HAL_I2C_Init>
 8002b10:	b950      	cbnz	r0, 8002b28 <MX_I2C3_Init+0x3c>
 8002b12:	480f      	ldr	r0, [pc, #60]	@ (8002b50 <MX_I2C3_Init+0x64>)
 8002b14:	2100      	movs	r1, #0
 8002b16:	f000 f9d9 	bl	8002ecc <HAL_I2CEx_ConfigAnalogFilter>
 8002b1a:	b968      	cbnz	r0, 8002b38 <MX_I2C3_Init+0x4c>
 8002b1c:	480c      	ldr	r0, [pc, #48]	@ (8002b50 <MX_I2C3_Init+0x64>)
 8002b1e:	2100      	movs	r1, #0
 8002b20:	f000 f9fe 	bl	8002f20 <HAL_I2CEx_ConfigDigitalFilter>
 8002b24:	b980      	cbnz	r0, 8002b48 <MX_I2C3_Init+0x5c>
 8002b26:	bd10      	pop	{r4, pc}
 8002b28:	f7fe fb62 	bl	80011f0 <Error_Handler>
 8002b2c:	4808      	ldr	r0, [pc, #32]	@ (8002b50 <MX_I2C3_Init+0x64>)
 8002b2e:	2100      	movs	r1, #0
 8002b30:	f000 f9cc 	bl	8002ecc <HAL_I2CEx_ConfigAnalogFilter>
 8002b34:	2800      	cmp	r0, #0
 8002b36:	d0f1      	beq.n	8002b1c <MX_I2C3_Init+0x30>
 8002b38:	f7fe fb5a 	bl	80011f0 <Error_Handler>
 8002b3c:	4804      	ldr	r0, [pc, #16]	@ (8002b50 <MX_I2C3_Init+0x64>)
 8002b3e:	2100      	movs	r1, #0
 8002b40:	f000 f9ee 	bl	8002f20 <HAL_I2CEx_ConfigDigitalFilter>
 8002b44:	2800      	cmp	r0, #0
 8002b46:	d0ee      	beq.n	8002b26 <MX_I2C3_Init+0x3a>
 8002b48:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8002b4c:	f7fe bb50 	b.w	80011f0 <Error_Handler>
 8002b50:	20003098 	.word	0x20003098
 8002b54:	40007800 	.word	0x40007800

08002b58 <HAL_I2C_MspInit>:
 8002b58:	b510      	push	{r4, lr}
 8002b5a:	4604      	mov	r4, r0
 8002b5c:	b098      	sub	sp, #96	@ 0x60
 8002b5e:	2100      	movs	r1, #0
 8002b60:	2244      	movs	r2, #68	@ 0x44
 8002b62:	a807      	add	r0, sp, #28
 8002b64:	e9cd 1102 	strd	r1, r1, [sp, #8]
 8002b68:	e9cd 1104 	strd	r1, r1, [sp, #16]
 8002b6c:	9106      	str	r1, [sp, #24]
 8002b6e:	f003 fc65 	bl	800643c <memset>
 8002b72:	4b1b      	ldr	r3, [pc, #108]	@ (8002be0 <HAL_I2C_MspInit+0x88>)
 8002b74:	6822      	ldr	r2, [r4, #0]
 8002b76:	429a      	cmp	r2, r3
 8002b78:	d001      	beq.n	8002b7e <HAL_I2C_MspInit+0x26>
 8002b7a:	b018      	add	sp, #96	@ 0x60
 8002b7c:	bd10      	pop	{r4, pc}
 8002b7e:	f44f 7380 	mov.w	r3, #256	@ 0x100
 8002b82:	a807      	add	r0, sp, #28
 8002b84:	9307      	str	r3, [sp, #28]
 8002b86:	f7fe ffc5 	bl	8001b14 <HAL_RCCEx_PeriphCLKConfig>
 8002b8a:	bb10      	cbnz	r0, 8002bd2 <HAL_I2C_MspInit+0x7a>
 8002b8c:	4c15      	ldr	r4, [pc, #84]	@ (8002be4 <HAL_I2C_MspInit+0x8c>)
 8002b8e:	4816      	ldr	r0, [pc, #88]	@ (8002be8 <HAL_I2C_MspInit+0x90>)
 8002b90:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
 8002b92:	f043 0304 	orr.w	r3, r3, #4
 8002b96:	64e3      	str	r3, [r4, #76]	@ 0x4c
 8002b98:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
 8002b9a:	ed9f 7b0f 	vldr	d7, [pc, #60]	@ 8002bd8 <HAL_I2C_MspInit+0x80>
 8002b9e:	f003 0304 	and.w	r3, r3, #4
 8002ba2:	9300      	str	r3, [sp, #0]
 8002ba4:	2308      	movs	r3, #8
 8002ba6:	9a00      	ldr	r2, [sp, #0]
 8002ba8:	9306      	str	r3, [sp, #24]
 8002baa:	2200      	movs	r2, #0
 8002bac:	2300      	movs	r3, #0
 8002bae:	a902      	add	r1, sp, #8
 8002bb0:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8002bb4:	ed8d 7b02 	vstr	d7, [sp, #8]
 8002bb8:	f7ff f8fc 	bl	8001db4 <HAL_GPIO_Init>
 8002bbc:	6da3      	ldr	r3, [r4, #88]	@ 0x58
 8002bbe:	f043 4380 	orr.w	r3, r3, #1073741824	@ 0x40000000
 8002bc2:	65a3      	str	r3, [r4, #88]	@ 0x58
 8002bc4:	6da3      	ldr	r3, [r4, #88]	@ 0x58
 8002bc6:	f003 4380 	and.w	r3, r3, #1073741824	@ 0x40000000
 8002bca:	9301      	str	r3, [sp, #4]
 8002bcc:	9b01      	ldr	r3, [sp, #4]
 8002bce:	b018      	add	sp, #96	@ 0x60
 8002bd0:	bd10      	pop	{r4, pc}
 8002bd2:	f7fe fb0d 	bl	80011f0 <Error_Handler>
 8002bd6:	e7d9      	b.n	8002b8c <HAL_I2C_MspInit+0x34>
 8002bd8:	00000300 	.word	0x00000300
 8002bdc:	00000012 	.word	0x00000012
 8002be0:	40007800 	.word	0x40007800
 8002be4:	40021000 	.word	0x40021000
 8002be8:	48000800 	.word	0x48000800

08002bec <MX_USART2_UART_Init>:
 8002bec:	b510      	push	{r4, lr}
 8002bee:	481f      	ldr	r0, [pc, #124]	@ (8002c6c <MX_USART2_UART_Init+0x80>)
 8002bf0:	4c1f      	ldr	r4, [pc, #124]	@ (8002c70 <MX_USART2_UART_Init+0x84>)
 8002bf2:	2300      	movs	r3, #0
 8002bf4:	f44f 5116 	mov.w	r1, #9600	@ 0x2580
 8002bf8:	220c      	movs	r2, #12
 8002bfa:	e9c0 4100 	strd	r4, r1, [r0]
 8002bfe:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8002c02:	e9c0 3204 	strd	r3, r2, [r0, #16]
 8002c06:	e9c0 3306 	strd	r3, r3, [r0, #24]
 8002c0a:	e9c0 3308 	strd	r3, r3, [r0, #32]
 8002c0e:	6283      	str	r3, [r0, #40]	@ 0x28
 8002c10:	f001 f8a4 	bl	8003d5c <HAL_UART_Init>
 8002c14:	b970      	cbnz	r0, 8002c34 <MX_USART2_UART_Init+0x48>
 8002c16:	4815      	ldr	r0, [pc, #84]	@ (8002c6c <MX_USART2_UART_Init+0x80>)
 8002c18:	2100      	movs	r1, #0
 8002c1a:	f001 f9d7 	bl	8003fcc <HAL_UARTEx_SetTxFifoThreshold>
 8002c1e:	b988      	cbnz	r0, 8002c44 <MX_USART2_UART_Init+0x58>
 8002c20:	4812      	ldr	r0, [pc, #72]	@ (8002c6c <MX_USART2_UART_Init+0x80>)
 8002c22:	2100      	movs	r1, #0
 8002c24:	f001 f9f8 	bl	8004018 <HAL_UARTEx_SetRxFifoThreshold>
 8002c28:	b9a0      	cbnz	r0, 8002c54 <MX_USART2_UART_Init+0x68>
 8002c2a:	4810      	ldr	r0, [pc, #64]	@ (8002c6c <MX_USART2_UART_Init+0x80>)
 8002c2c:	f001 f9b0 	bl	8003f90 <HAL_UARTEx_DisableFifoMode>
 8002c30:	b9b8      	cbnz	r0, 8002c62 <MX_USART2_UART_Init+0x76>
 8002c32:	bd10      	pop	{r4, pc}
 8002c34:	f7fe fadc 	bl	80011f0 <Error_Handler>
 8002c38:	480c      	ldr	r0, [pc, #48]	@ (8002c6c <MX_USART2_UART_Init+0x80>)
 8002c3a:	2100      	movs	r1, #0
 8002c3c:	f001 f9c6 	bl	8003fcc <HAL_UARTEx_SetTxFifoThreshold>
 8002c40:	2800      	cmp	r0, #0
 8002c42:	d0ed      	beq.n	8002c20 <MX_USART2_UART_Init+0x34>
 8002c44:	f7fe fad4 	bl	80011f0 <Error_Handler>
 8002c48:	4808      	ldr	r0, [pc, #32]	@ (8002c6c <MX_USART2_UART_Init+0x80>)
 8002c4a:	2100      	movs	r1, #0
 8002c4c:	f001 f9e4 	bl	8004018 <HAL_UARTEx_SetRxFifoThreshold>
 8002c50:	2800      	cmp	r0, #0
 8002c52:	d0ea      	beq.n	8002c2a <MX_USART2_UART_Init+0x3e>
 8002c54:	f7fe facc 	bl	80011f0 <Error_Handler>
 8002c58:	4804      	ldr	r0, [pc, #16]	@ (8002c6c <MX_USART2_UART_Init+0x80>)
 8002c5a:	f001 f999 	bl	8003f90 <HAL_UARTEx_DisableFifoMode>
 8002c5e:	2800      	cmp	r0, #0
 8002c60:	d0e7      	beq.n	8002c32 <MX_USART2_UART_Init+0x46>
 8002c62:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8002c66:	f7fe bac3 	b.w	80011f0 <Error_Handler>
 8002c6a:	bf00      	nop
 8002c6c:	20003188 	.word	0x20003188
 8002c70:	40004400 	.word	0x40004400

08002c74 <MX_USART3_UART_Init>:
 8002c74:	b510      	push	{r4, lr}
 8002c76:	481f      	ldr	r0, [pc, #124]	@ (8002cf4 <MX_USART3_UART_Init+0x80>)
 8002c78:	4c1f      	ldr	r4, [pc, #124]	@ (8002cf8 <MX_USART3_UART_Init+0x84>)
 8002c7a:	2300      	movs	r3, #0
 8002c7c:	f44f 31e1 	mov.w	r1, #115200	@ 0x1c200
 8002c80:	220c      	movs	r2, #12
 8002c82:	e9c0 4100 	strd	r4, r1, [r0]
 8002c86:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8002c8a:	e9c0 3204 	strd	r3, r2, [r0, #16]
 8002c8e:	e9c0 3306 	strd	r3, r3, [r0, #24]
 8002c92:	e9c0 3308 	strd	r3, r3, [r0, #32]
 8002c96:	6283      	str	r3, [r0, #40]	@ 0x28
 8002c98:	f001 f860 	bl	8003d5c <HAL_UART_Init>
 8002c9c:	b970      	cbnz	r0, 8002cbc <MX_USART3_UART_Init+0x48>
 8002c9e:	4815      	ldr	r0, [pc, #84]	@ (8002cf4 <MX_USART3_UART_Init+0x80>)
 8002ca0:	2100      	movs	r1, #0
 8002ca2:	f001 f993 	bl	8003fcc <HAL_UARTEx_SetTxFifoThreshold>
 8002ca6:	b988      	cbnz	r0, 8002ccc <MX_USART3_UART_Init+0x58>
 8002ca8:	4812      	ldr	r0, [pc, #72]	@ (8002cf4 <MX_USART3_UART_Init+0x80>)
 8002caa:	2100      	movs	r1, #0
 8002cac:	f001 f9b4 	bl	8004018 <HAL_UARTEx_SetRxFifoThreshold>
 8002cb0:	b9a0      	cbnz	r0, 8002cdc <MX_USART3_UART_Init+0x68>
 8002cb2:	4810      	ldr	r0, [pc, #64]	@ (8002cf4 <MX_USART3_UART_Init+0x80>)
 8002cb4:	f001 f96c 	bl	8003f90 <HAL_UARTEx_DisableFifoMode>
 8002cb8:	b9b8      	cbnz	r0, 8002cea <MX_USART3_UART_Init+0x76>
 8002cba:	bd10      	pop	{r4, pc}
 8002cbc:	f7fe fa98 	bl	80011f0 <Error_Handler>
 8002cc0:	480c      	ldr	r0, [pc, #48]	@ (8002cf4 <MX_USART3_UART_Init+0x80>)
 8002cc2:	2100      	movs	r1, #0
 8002cc4:	f001 f982 	bl	8003fcc <HAL_UARTEx_SetTxFifoThreshold>
 8002cc8:	2800      	cmp	r0, #0
 8002cca:	d0ed      	beq.n	8002ca8 <MX_USART3_UART_Init+0x34>
 8002ccc:	f7fe fa90 	bl	80011f0 <Error_Handler>
 8002cd0:	4808      	ldr	r0, [pc, #32]	@ (8002cf4 <MX_USART3_UART_Init+0x80>)
 8002cd2:	2100      	movs	r1, #0
 8002cd4:	f001 f9a0 	bl	8004018 <HAL_UARTEx_SetRxFifoThreshold>
 8002cd8:	2800      	cmp	r0, #0
 8002cda:	d0ea      	beq.n	8002cb2 <MX_USART3_UART_Init+0x3e>
 8002cdc:	f7fe fa88 	bl	80011f0 <Error_Handler>
 8002ce0:	4804      	ldr	r0, [pc, #16]	@ (8002cf4 <MX_USART3_UART_Init+0x80>)
 8002ce2:	f001 f955 	bl	8003f90 <HAL_UARTEx_DisableFifoMode>
 8002ce6:	2800      	cmp	r0, #0
 8002ce8:	d0e7      	beq.n	8002cba <MX_USART3_UART_Init+0x46>
 8002cea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8002cee:	f7fe ba7f 	b.w	80011f0 <Error_Handler>
 8002cf2:	bf00      	nop
 8002cf4:	200030f0 	.word	0x200030f0
 8002cf8:	40004800 	.word	0x40004800
 8002cfc:	00000000 	.word	0x00000000

08002d00 <HAL_UART_MspInit>:
 8002d00:	b510      	push	{r4, lr}
 8002d02:	4604      	mov	r4, r0
 8002d04:	b09a      	sub	sp, #104	@ 0x68
 8002d06:	2100      	movs	r1, #0
 8002d08:	2244      	movs	r2, #68	@ 0x44
 8002d0a:	a809      	add	r0, sp, #36	@ 0x24
 8002d0c:	e9cd 1104 	strd	r1, r1, [sp, #16]
 8002d10:	e9cd 1106 	strd	r1, r1, [sp, #24]
 8002d14:	9108      	str	r1, [sp, #32]
 8002d16:	f003 fb91 	bl	800643c <memset>
 8002d1a:	4a3b      	ldr	r2, [pc, #236]	@ (8002e08 <HAL_UART_MspInit+0x108>)
 8002d1c:	6823      	ldr	r3, [r4, #0]
 8002d1e:	4293      	cmp	r3, r2
 8002d20:	d004      	beq.n	8002d2c <HAL_UART_MspInit+0x2c>
 8002d22:	4a3a      	ldr	r2, [pc, #232]	@ (8002e0c <HAL_UART_MspInit+0x10c>)
 8002d24:	4293      	cmp	r3, r2
 8002d26:	d02c      	beq.n	8002d82 <HAL_UART_MspInit+0x82>
 8002d28:	b01a      	add	sp, #104	@ 0x68
 8002d2a:	bd10      	pop	{r4, pc}
 8002d2c:	2302      	movs	r3, #2
 8002d2e:	a809      	add	r0, sp, #36	@ 0x24
 8002d30:	9309      	str	r3, [sp, #36]	@ 0x24
 8002d32:	f7fe feef 	bl	8001b14 <HAL_RCCEx_PeriphCLKConfig>
 8002d36:	2800      	cmp	r0, #0
 8002d38:	d154      	bne.n	8002de4 <HAL_UART_MspInit+0xe4>
 8002d3a:	4b35      	ldr	r3, [pc, #212]	@ (8002e10 <HAL_UART_MspInit+0x110>)
 8002d3c:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8002d3e:	f442 3200 	orr.w	r2, r2, #131072	@ 0x20000
 8002d42:	659a      	str	r2, [r3, #88]	@ 0x58
 8002d44:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8002d46:	f402 3200 	and.w	r2, r2, #131072	@ 0x20000
 8002d4a:	9200      	str	r2, [sp, #0]
 8002d4c:	9a00      	ldr	r2, [sp, #0]
 8002d4e:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 8002d50:	ed9f 7b27 	vldr	d7, [pc, #156]	@ 8002df0 <HAL_UART_MspInit+0xf0>
 8002d54:	f042 0201 	orr.w	r2, r2, #1
 8002d58:	64da      	str	r2, [r3, #76]	@ 0x4c
 8002d5a:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8002d5c:	ed8d 7b04 	vstr	d7, [sp, #16]
 8002d60:	ed9f 7b25 	vldr	d7, [pc, #148]	@ 8002df8 <HAL_UART_MspInit+0xf8>
 8002d64:	f003 0301 	and.w	r3, r3, #1
 8002d68:	9301      	str	r3, [sp, #4]
 8002d6a:	a904      	add	r1, sp, #16
 8002d6c:	2307      	movs	r3, #7
 8002d6e:	f04f 4090 	mov.w	r0, #1207959552	@ 0x48000000
 8002d72:	ed8d 7b06 	vstr	d7, [sp, #24]
 8002d76:	9a01      	ldr	r2, [sp, #4]
 8002d78:	9308      	str	r3, [sp, #32]
 8002d7a:	f7ff f81b 	bl	8001db4 <HAL_GPIO_Init>
 8002d7e:	b01a      	add	sp, #104	@ 0x68
 8002d80:	bd10      	pop	{r4, pc}
 8002d82:	2304      	movs	r3, #4
 8002d84:	a809      	add	r0, sp, #36	@ 0x24
 8002d86:	9309      	str	r3, [sp, #36]	@ 0x24
 8002d88:	f7fe fec4 	bl	8001b14 <HAL_RCCEx_PeriphCLKConfig>
 8002d8c:	bb68      	cbnz	r0, 8002dea <HAL_UART_MspInit+0xea>
 8002d8e:	4b20      	ldr	r3, [pc, #128]	@ (8002e10 <HAL_UART_MspInit+0x110>)
 8002d90:	4820      	ldr	r0, [pc, #128]	@ (8002e14 <HAL_UART_MspInit+0x114>)
 8002d92:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8002d94:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
 8002d98:	659a      	str	r2, [r3, #88]	@ 0x58
 8002d9a:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8002d9c:	f402 2280 	and.w	r2, r2, #262144	@ 0x40000
 8002da0:	9202      	str	r2, [sp, #8]
 8002da2:	9a02      	ldr	r2, [sp, #8]
 8002da4:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 8002da6:	ed9f 7b16 	vldr	d7, [pc, #88]	@ 8002e00 <HAL_UART_MspInit+0x100>
 8002daa:	f042 0202 	orr.w	r2, r2, #2
 8002dae:	64da      	str	r2, [r3, #76]	@ 0x4c
 8002db0:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8002db2:	ed8d 7b04 	vstr	d7, [sp, #16]
 8002db6:	ed9f 7b10 	vldr	d7, [pc, #64]	@ 8002df8 <HAL_UART_MspInit+0xf8>
 8002dba:	f003 0302 	and.w	r3, r3, #2
 8002dbe:	9303      	str	r3, [sp, #12]
 8002dc0:	a904      	add	r1, sp, #16
 8002dc2:	2307      	movs	r3, #7
 8002dc4:	ed8d 7b06 	vstr	d7, [sp, #24]
 8002dc8:	9308      	str	r3, [sp, #32]
 8002dca:	9a03      	ldr	r2, [sp, #12]
 8002dcc:	f7fe fff2 	bl	8001db4 <HAL_GPIO_Init>
 8002dd0:	2200      	movs	r2, #0
 8002dd2:	4611      	mov	r1, r2
 8002dd4:	2027      	movs	r0, #39	@ 0x27
 8002dd6:	f7ff fb35 	bl	8002444 <HAL_NVIC_SetPriority>
 8002dda:	2027      	movs	r0, #39	@ 0x27
 8002ddc:	f7ff fb6e 	bl	80024bc <HAL_NVIC_EnableIRQ>
 8002de0:	b01a      	add	sp, #104	@ 0x68
 8002de2:	bd10      	pop	{r4, pc}
 8002de4:	f7fe fa04 	bl	80011f0 <Error_Handler>
 8002de8:	e7a7      	b.n	8002d3a <HAL_UART_MspInit+0x3a>
 8002dea:	f7fe fa01 	bl	80011f0 <Error_Handler>
 8002dee:	e7ce      	b.n	8002d8e <HAL_UART_MspInit+0x8e>
 8002df0:	0000000c 	.word	0x0000000c
 8002df4:	00000002 	.word	0x00000002
	...
 8002e00:	00000c00 	.word	0x00000c00
 8002e04:	00000002 	.word	0x00000002
 8002e08:	40004400 	.word	0x40004400
 8002e0c:	40004800 	.word	0x40004800
 8002e10:	40021000 	.word	0x40021000
 8002e14:	48000400 	.word	0x48000400

08002e18 <HAL_I2C_Init>:
 8002e18:	2800      	cmp	r0, #0
 8002e1a:	d054      	beq.n	8002ec6 <HAL_I2C_Init+0xae>
 8002e1c:	b510      	push	{r4, lr}
 8002e1e:	f890 3041 	ldrb.w	r3, [r0, #65]	@ 0x41
 8002e22:	4604      	mov	r4, r0
 8002e24:	f003 02ff 	and.w	r2, r3, #255	@ 0xff
 8002e28:	2b00      	cmp	r3, #0
 8002e2a:	d047      	beq.n	8002ebc <HAL_I2C_Init+0xa4>
 8002e2c:	6823      	ldr	r3, [r4, #0]
 8002e2e:	2224      	movs	r2, #36	@ 0x24
 8002e30:	f884 2041 	strb.w	r2, [r4, #65]	@ 0x41
 8002e34:	6819      	ldr	r1, [r3, #0]
 8002e36:	6862      	ldr	r2, [r4, #4]
 8002e38:	f021 0101 	bic.w	r1, r1, #1
 8002e3c:	f022 6270 	bic.w	r2, r2, #251658240	@ 0xf000000
 8002e40:	6019      	str	r1, [r3, #0]
 8002e42:	611a      	str	r2, [r3, #16]
 8002e44:	689a      	ldr	r2, [r3, #8]
 8002e46:	68e1      	ldr	r1, [r4, #12]
 8002e48:	f422 4200 	bic.w	r2, r2, #32768	@ 0x8000
 8002e4c:	2901      	cmp	r1, #1
 8002e4e:	609a      	str	r2, [r3, #8]
 8002e50:	68a2      	ldr	r2, [r4, #8]
 8002e52:	d009      	beq.n	8002e68 <HAL_I2C_Init+0x50>
 8002e54:	f442 4204 	orr.w	r2, r2, #33792	@ 0x8400
 8002e58:	2902      	cmp	r1, #2
 8002e5a:	609a      	str	r2, [r3, #8]
 8002e5c:	d107      	bne.n	8002e6e <HAL_I2C_Init+0x56>
 8002e5e:	685a      	ldr	r2, [r3, #4]
 8002e60:	f442 6200 	orr.w	r2, r2, #2048	@ 0x800
 8002e64:	605a      	str	r2, [r3, #4]
 8002e66:	e006      	b.n	8002e76 <HAL_I2C_Init+0x5e>
 8002e68:	f442 4200 	orr.w	r2, r2, #32768	@ 0x8000
 8002e6c:	609a      	str	r2, [r3, #8]
 8002e6e:	685a      	ldr	r2, [r3, #4]
 8002e70:	f422 6200 	bic.w	r2, r2, #2048	@ 0x800
 8002e74:	605a      	str	r2, [r3, #4]
 8002e76:	6859      	ldr	r1, [r3, #4]
 8002e78:	6922      	ldr	r2, [r4, #16]
 8002e7a:	f041 7100 	orr.w	r1, r1, #33554432	@ 0x2000000
 8002e7e:	f441 4100 	orr.w	r1, r1, #32768	@ 0x8000
 8002e82:	6059      	str	r1, [r3, #4]
 8002e84:	6961      	ldr	r1, [r4, #20]
 8002e86:	68d8      	ldr	r0, [r3, #12]
 8002e88:	430a      	orrs	r2, r1
 8002e8a:	69a1      	ldr	r1, [r4, #24]
 8002e8c:	f420 4000 	bic.w	r0, r0, #32768	@ 0x8000
 8002e90:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8002e94:	69e1      	ldr	r1, [r4, #28]
 8002e96:	60d8      	str	r0, [r3, #12]
 8002e98:	6a20      	ldr	r0, [r4, #32]
 8002e9a:	60da      	str	r2, [r3, #12]
 8002e9c:	4301      	orrs	r1, r0
 8002e9e:	6019      	str	r1, [r3, #0]
 8002ea0:	6819      	ldr	r1, [r3, #0]
 8002ea2:	f041 0101 	orr.w	r1, r1, #1
 8002ea6:	6019      	str	r1, [r3, #0]
 8002ea8:	2200      	movs	r2, #0
 8002eaa:	2320      	movs	r3, #32
 8002eac:	6462      	str	r2, [r4, #68]	@ 0x44
 8002eae:	f884 3041 	strb.w	r3, [r4, #65]	@ 0x41
 8002eb2:	6322      	str	r2, [r4, #48]	@ 0x30
 8002eb4:	f884 2042 	strb.w	r2, [r4, #66]	@ 0x42
 8002eb8:	4610      	mov	r0, r2
 8002eba:	bd10      	pop	{r4, pc}
 8002ebc:	f880 2040 	strb.w	r2, [r0, #64]	@ 0x40
 8002ec0:	f7ff fe4a 	bl	8002b58 <HAL_I2C_MspInit>
 8002ec4:	e7b2      	b.n	8002e2c <HAL_I2C_Init+0x14>
 8002ec6:	2001      	movs	r0, #1
 8002ec8:	4770      	bx	lr
 8002eca:	bf00      	nop

08002ecc <HAL_I2CEx_ConfigAnalogFilter>:
 8002ecc:	f890 2041 	ldrb.w	r2, [r0, #65]	@ 0x41
 8002ed0:	2a20      	cmp	r2, #32
 8002ed2:	d123      	bne.n	8002f1c <HAL_I2CEx_ConfigAnalogFilter+0x50>
 8002ed4:	fa5f fc82 	uxtb.w	ip, r2
 8002ed8:	f890 2040 	ldrb.w	r2, [r0, #64]	@ 0x40
 8002edc:	2a01      	cmp	r2, #1
 8002ede:	4603      	mov	r3, r0
 8002ee0:	d01c      	beq.n	8002f1c <HAL_I2CEx_ConfigAnalogFilter+0x50>
 8002ee2:	6802      	ldr	r2, [r0, #0]
 8002ee4:	2024      	movs	r0, #36	@ 0x24
 8002ee6:	b500      	push	{lr}
 8002ee8:	f883 0041 	strb.w	r0, [r3, #65]	@ 0x41
 8002eec:	6810      	ldr	r0, [r2, #0]
 8002eee:	f020 0001 	bic.w	r0, r0, #1
 8002ef2:	6010      	str	r0, [r2, #0]
 8002ef4:	6810      	ldr	r0, [r2, #0]
 8002ef6:	f420 5080 	bic.w	r0, r0, #4096	@ 0x1000
 8002efa:	6010      	str	r0, [r2, #0]
 8002efc:	6810      	ldr	r0, [r2, #0]
 8002efe:	4301      	orrs	r1, r0
 8002f00:	6011      	str	r1, [r2, #0]
 8002f02:	6811      	ldr	r1, [r2, #0]
 8002f04:	f04f 0e00 	mov.w	lr, #0
 8002f08:	f041 0101 	orr.w	r1, r1, #1
 8002f0c:	6011      	str	r1, [r2, #0]
 8002f0e:	f883 c041 	strb.w	ip, [r3, #65]	@ 0x41
 8002f12:	f883 e040 	strb.w	lr, [r3, #64]	@ 0x40
 8002f16:	4670      	mov	r0, lr
 8002f18:	f85d fb04 	ldr.w	pc, [sp], #4
 8002f1c:	2002      	movs	r0, #2
 8002f1e:	4770      	bx	lr

08002f20 <HAL_I2CEx_ConfigDigitalFilter>:
 8002f20:	f890 2041 	ldrb.w	r2, [r0, #65]	@ 0x41
 8002f24:	2a20      	cmp	r2, #32
 8002f26:	d122      	bne.n	8002f6e <HAL_I2CEx_ConfigDigitalFilter+0x4e>
 8002f28:	b500      	push	{lr}
 8002f2a:	fa5f fe82 	uxtb.w	lr, r2
 8002f2e:	f890 2040 	ldrb.w	r2, [r0, #64]	@ 0x40
 8002f32:	2a01      	cmp	r2, #1
 8002f34:	4603      	mov	r3, r0
 8002f36:	d01c      	beq.n	8002f72 <HAL_I2CEx_ConfigDigitalFilter+0x52>
 8002f38:	6802      	ldr	r2, [r0, #0]
 8002f3a:	2024      	movs	r0, #36	@ 0x24
 8002f3c:	f883 0041 	strb.w	r0, [r3, #65]	@ 0x41
 8002f40:	6810      	ldr	r0, [r2, #0]
 8002f42:	f020 0001 	bic.w	r0, r0, #1
 8002f46:	6010      	str	r0, [r2, #0]
 8002f48:	6810      	ldr	r0, [r2, #0]
 8002f4a:	f420 6070 	bic.w	r0, r0, #3840	@ 0xf00
 8002f4e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
 8002f52:	6011      	str	r1, [r2, #0]
 8002f54:	6811      	ldr	r1, [r2, #0]
 8002f56:	f04f 0c00 	mov.w	ip, #0
 8002f5a:	f041 0101 	orr.w	r1, r1, #1
 8002f5e:	6011      	str	r1, [r2, #0]
 8002f60:	f883 e041 	strb.w	lr, [r3, #65]	@ 0x41
 8002f64:	f883 c040 	strb.w	ip, [r3, #64]	@ 0x40
 8002f68:	4660      	mov	r0, ip
 8002f6a:	f85d fb04 	ldr.w	pc, [sp], #4
 8002f6e:	2002      	movs	r0, #2
 8002f70:	4770      	bx	lr
 8002f72:	2002      	movs	r0, #2
 8002f74:	f85d fb04 	ldr.w	pc, [sp], #4

08002f78 <UART_EndRxTransfer>:
 8002f78:	b410      	push	{r4}
 8002f7a:	6802      	ldr	r2, [r0, #0]
 8002f7c:	e852 3f00 	ldrex	r3, [r2]
 8002f80:	f423 7390 	bic.w	r3, r3, #288	@ 0x120
 8002f84:	e842 3100 	strex	r1, r3, [r2]
 8002f88:	2900      	cmp	r1, #0
 8002f8a:	d1f7      	bne.n	8002f7c <UART_EndRxTransfer+0x4>
 8002f8c:	4c14      	ldr	r4, [pc, #80]	@ (8002fe0 <UART_EndRxTransfer+0x68>)
 8002f8e:	f102 0308 	add.w	r3, r2, #8
 8002f92:	e853 3f00 	ldrex	r3, [r3]
 8002f96:	4023      	ands	r3, r4
 8002f98:	f102 0c08 	add.w	ip, r2, #8
 8002f9c:	e84c 3100 	strex	r1, r3, [ip]
 8002fa0:	2900      	cmp	r1, #0
 8002fa2:	d1f4      	bne.n	8002f8e <UART_EndRxTransfer+0x16>
 8002fa4:	6ec3      	ldr	r3, [r0, #108]	@ 0x6c
 8002fa6:	2b01      	cmp	r3, #1
 8002fa8:	d008      	beq.n	8002fbc <UART_EndRxTransfer+0x44>
 8002faa:	2300      	movs	r3, #0
 8002fac:	2220      	movs	r2, #32
 8002fae:	f8c0 208c 	str.w	r2, [r0, #140]	@ 0x8c
 8002fb2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002fb6:	6743      	str	r3, [r0, #116]	@ 0x74
 8002fb8:	66c3      	str	r3, [r0, #108]	@ 0x6c
 8002fba:	4770      	bx	lr
 8002fbc:	e852 3f00 	ldrex	r3, [r2]
 8002fc0:	f023 0310 	bic.w	r3, r3, #16
 8002fc4:	e842 3100 	strex	r1, r3, [r2]
 8002fc8:	2900      	cmp	r1, #0
 8002fca:	d0ee      	beq.n	8002faa <UART_EndRxTransfer+0x32>
 8002fcc:	e852 3f00 	ldrex	r3, [r2]
 8002fd0:	f023 0310 	bic.w	r3, r3, #16
 8002fd4:	e842 3100 	strex	r1, r3, [r2]
 8002fd8:	2900      	cmp	r1, #0
 8002fda:	d1ef      	bne.n	8002fbc <UART_EndRxTransfer+0x44>
 8002fdc:	e7e5      	b.n	8002faa <UART_EndRxTransfer+0x32>
 8002fde:	bf00      	nop
 8002fe0:	effffffe 	.word	0xeffffffe

08002fe4 <HAL_UART_TxCpltCallback>:
 8002fe4:	4770      	bx	lr
 8002fe6:	bf00      	nop

08002fe8 <HAL_UART_RxCpltCallback>:
 8002fe8:	4770      	bx	lr
 8002fea:	bf00      	nop

08002fec <HAL_UART_ErrorCallback>:
 8002fec:	4770      	bx	lr
 8002fee:	bf00      	nop

08002ff0 <UART_DMAAbortOnError>:
 8002ff0:	b508      	push	{r3, lr}
 8002ff2:	6a80      	ldr	r0, [r0, #40]	@ 0x28
 8002ff4:	2300      	movs	r3, #0
 8002ff6:	f8a0 305e 	strh.w	r3, [r0, #94]	@ 0x5e
 8002ffa:	f8a0 3056 	strh.w	r3, [r0, #86]	@ 0x56
 8002ffe:	f7ff fff5 	bl	8002fec <HAL_UART_ErrorCallback>
 8003002:	bd08      	pop	{r3, pc}

08003004 <HAL_UARTEx_RxEventCallback>:
 8003004:	4770      	bx	lr
 8003006:	bf00      	nop

08003008 <HAL_UART_IRQHandler>:
 8003008:	6803      	ldr	r3, [r0, #0]
 800300a:	69da      	ldr	r2, [r3, #28]
 800300c:	f640 0c0f 	movw	ip, #2063	@ 0x80f
 8003010:	ea12 0f0c 	tst.w	r2, ip
 8003014:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003018:	681d      	ldr	r5, [r3, #0]
 800301a:	6899      	ldr	r1, [r3, #8]
 800301c:	4604      	mov	r4, r0
 800301e:	d132      	bne.n	8003086 <HAL_UART_IRQHandler+0x7e>
 8003020:	0696      	lsls	r6, r2, #26
 8003022:	d506      	bpl.n	8003032 <HAL_UART_IRQHandler+0x2a>
 8003024:	f005 0620 	and.w	r6, r5, #32
 8003028:	f001 5780 	and.w	r7, r1, #268435456	@ 0x10000000
 800302c:	433e      	orrs	r6, r7
 800302e:	f040 80e9 	bne.w	8003204 <HAL_UART_IRQHandler+0x1fc>
 8003032:	6ee0      	ldr	r0, [r4, #108]	@ 0x6c
 8003034:	2801      	cmp	r0, #1
 8003036:	f000 80ac 	beq.w	8003192 <HAL_UART_IRQHandler+0x18a>
 800303a:	02d7      	lsls	r7, r2, #11
 800303c:	d419      	bmi.n	8003072 <HAL_UART_IRQHandler+0x6a>
 800303e:	0610      	lsls	r0, r2, #24
 8003040:	d506      	bpl.n	8003050 <HAL_UART_IRQHandler+0x48>
 8003042:	f401 0100 	and.w	r1, r1, #8388608	@ 0x800000
 8003046:	f005 0080 	and.w	r0, r5, #128	@ 0x80
 800304a:	4308      	orrs	r0, r1
 800304c:	f040 80e1 	bne.w	8003212 <HAL_UART_IRQHandler+0x20a>
 8003050:	0657      	lsls	r7, r2, #25
 8003052:	d502      	bpl.n	800305a <HAL_UART_IRQHandler+0x52>
 8003054:	066e      	lsls	r6, r5, #25
 8003056:	f100 80c4 	bmi.w	80031e2 <HAL_UART_IRQHandler+0x1da>
 800305a:	0210      	lsls	r0, r2, #8
 800305c:	d502      	bpl.n	8003064 <HAL_UART_IRQHandler+0x5c>
 800305e:	0069      	lsls	r1, r5, #1
 8003060:	f100 8104 	bmi.w	800326c <HAL_UART_IRQHandler+0x264>
 8003064:	01d3      	lsls	r3, r2, #7
 8003066:	d502      	bpl.n	800306e <HAL_UART_IRQHandler+0x66>
 8003068:	2d00      	cmp	r5, #0
 800306a:	f2c0 8135 	blt.w	80032d8 <HAL_UART_IRQHandler+0x2d0>
 800306e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003072:	024e      	lsls	r6, r1, #9
 8003074:	d5e3      	bpl.n	800303e <HAL_UART_IRQHandler+0x36>
 8003076:	f44f 1280 	mov.w	r2, #1048576	@ 0x100000
 800307a:	4620      	mov	r0, r4
 800307c:	621a      	str	r2, [r3, #32]
 800307e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8003082:	f000 bf7f 	b.w	8003f84 <HAL_UARTEx_WakeupCallback>
 8003086:	48b5      	ldr	r0, [pc, #724]	@ (800335c <HAL_UART_IRQHandler+0x354>)
 8003088:	4008      	ands	r0, r1
 800308a:	461e      	mov	r6, r3
 800308c:	f040 80e3 	bne.w	8003256 <HAL_UART_IRQHandler+0x24e>
 8003090:	4fb3      	ldr	r7, [pc, #716]	@ (8003360 <HAL_UART_IRQHandler+0x358>)
 8003092:	423d      	tst	r5, r7
 8003094:	d0cd      	beq.n	8003032 <HAL_UART_IRQHandler+0x2a>
 8003096:	07d7      	lsls	r7, r2, #31
 8003098:	d51a      	bpl.n	80030d0 <HAL_UART_IRQHandler+0xc8>
 800309a:	05ef      	lsls	r7, r5, #23
 800309c:	f140 80c1 	bpl.w	8003222 <HAL_UART_IRQHandler+0x21a>
 80030a0:	2701      	movs	r7, #1
 80030a2:	621f      	str	r7, [r3, #32]
 80030a4:	f8d4 7090 	ldr.w	r7, [r4, #144]	@ 0x90
 80030a8:	f047 0701 	orr.w	r7, r7, #1
 80030ac:	f8c4 7090 	str.w	r7, [r4, #144]	@ 0x90
 80030b0:	0797      	lsls	r7, r2, #30
 80030b2:	f140 80b9 	bpl.w	8003228 <HAL_UART_IRQHandler+0x220>
 80030b6:	07cf      	lsls	r7, r1, #31
 80030b8:	d50a      	bpl.n	80030d0 <HAL_UART_IRQHandler+0xc8>
 80030ba:	2702      	movs	r7, #2
 80030bc:	621f      	str	r7, [r3, #32]
 80030be:	f8d4 7090 	ldr.w	r7, [r4, #144]	@ 0x90
 80030c2:	f047 0704 	orr.w	r7, r7, #4
 80030c6:	f8c4 7090 	str.w	r7, [r4, #144]	@ 0x90
 80030ca:	0757      	lsls	r7, r2, #29
 80030cc:	f100 80b2 	bmi.w	8003234 <HAL_UART_IRQHandler+0x22c>
 80030d0:	0717      	lsls	r7, r2, #28
 80030d2:	d50b      	bpl.n	80030ec <HAL_UART_IRQHandler+0xe4>
 80030d4:	f005 0720 	and.w	r7, r5, #32
 80030d8:	4307      	orrs	r7, r0
 80030da:	d007      	beq.n	80030ec <HAL_UART_IRQHandler+0xe4>
 80030dc:	2008      	movs	r0, #8
 80030de:	6218      	str	r0, [r3, #32]
 80030e0:	f8d4 0090 	ldr.w	r0, [r4, #144]	@ 0x90
 80030e4:	f040 0008 	orr.w	r0, r0, #8
 80030e8:	f8c4 0090 	str.w	r0, [r4, #144]	@ 0x90
 80030ec:	0517      	lsls	r7, r2, #20
 80030ee:	d50a      	bpl.n	8003106 <HAL_UART_IRQHandler+0xfe>
 80030f0:	0168      	lsls	r0, r5, #5
 80030f2:	d508      	bpl.n	8003106 <HAL_UART_IRQHandler+0xfe>
 80030f4:	f44f 6000 	mov.w	r0, #2048	@ 0x800
 80030f8:	6218      	str	r0, [r3, #32]
 80030fa:	f8d4 3090 	ldr.w	r3, [r4, #144]	@ 0x90
 80030fe:	f043 0320 	orr.w	r3, r3, #32
 8003102:	f8c4 3090 	str.w	r3, [r4, #144]	@ 0x90
 8003106:	f8d4 3090 	ldr.w	r3, [r4, #144]	@ 0x90
 800310a:	2b00      	cmp	r3, #0
 800310c:	d0af      	beq.n	800306e <HAL_UART_IRQHandler+0x66>
 800310e:	0693      	lsls	r3, r2, #26
 8003110:	d506      	bpl.n	8003120 <HAL_UART_IRQHandler+0x118>
 8003112:	f005 0520 	and.w	r5, r5, #32
 8003116:	f001 5180 	and.w	r1, r1, #268435456	@ 0x10000000
 800311a:	430d      	orrs	r5, r1
 800311c:	f040 8093 	bne.w	8003246 <HAL_UART_IRQHandler+0x23e>
 8003120:	f8d4 2090 	ldr.w	r2, [r4, #144]	@ 0x90
 8003124:	68b3      	ldr	r3, [r6, #8]
 8003126:	f002 0228 	and.w	r2, r2, #40	@ 0x28
 800312a:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 800312e:	ea53 0502 	orrs.w	r5, r3, r2
 8003132:	4620      	mov	r0, r4
 8003134:	f000 80d5 	beq.w	80032e2 <HAL_UART_IRQHandler+0x2da>
 8003138:	f7ff ff1e 	bl	8002f78 <UART_EndRxTransfer>
 800313c:	68b3      	ldr	r3, [r6, #8]
 800313e:	065f      	lsls	r7, r3, #25
 8003140:	f140 8090 	bpl.w	8003264 <HAL_UART_IRQHandler+0x25c>
 8003144:	f106 0308 	add.w	r3, r6, #8
 8003148:	e853 3f00 	ldrex	r3, [r3]
 800314c:	f023 0340 	bic.w	r3, r3, #64	@ 0x40
 8003150:	f106 0108 	add.w	r1, r6, #8
 8003154:	e841 3200 	strex	r2, r3, [r1]
 8003158:	b162      	cbz	r2, 8003174 <HAL_UART_IRQHandler+0x16c>
 800315a:	6823      	ldr	r3, [r4, #0]
 800315c:	f103 0208 	add.w	r2, r3, #8
 8003160:	e852 2f00 	ldrex	r2, [r2]
 8003164:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 8003168:	f103 0008 	add.w	r0, r3, #8
 800316c:	e840 2100 	strex	r1, r2, [r0]
 8003170:	2900      	cmp	r1, #0
 8003172:	d1f3      	bne.n	800315c <HAL_UART_IRQHandler+0x154>
 8003174:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
 8003178:	2800      	cmp	r0, #0
 800317a:	d073      	beq.n	8003264 <HAL_UART_IRQHandler+0x25c>
 800317c:	4b79      	ldr	r3, [pc, #484]	@ (8003364 <HAL_UART_IRQHandler+0x35c>)
 800317e:	6383      	str	r3, [r0, #56]	@ 0x38
 8003180:	f7ff f84a 	bl	8002218 <HAL_DMA_Abort_IT>
 8003184:	2800      	cmp	r0, #0
 8003186:	f43f af72 	beq.w	800306e <HAL_UART_IRQHandler+0x66>
 800318a:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
 800318e:	6b83      	ldr	r3, [r0, #56]	@ 0x38
 8003190:	e03c      	b.n	800320c <HAL_UART_IRQHandler+0x204>
 8003192:	06d6      	lsls	r6, r2, #27
 8003194:	f57f af51 	bpl.w	800303a <HAL_UART_IRQHandler+0x32>
 8003198:	06e8      	lsls	r0, r5, #27
 800319a:	f57f af4e 	bpl.w	800303a <HAL_UART_IRQHandler+0x32>
 800319e:	2210      	movs	r2, #16
 80031a0:	621a      	str	r2, [r3, #32]
 80031a2:	689a      	ldr	r2, [r3, #8]
 80031a4:	0651      	lsls	r1, r2, #25
 80031a6:	f140 80a1 	bpl.w	80032ec <HAL_UART_IRQHandler+0x2e4>
 80031aa:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
 80031ae:	6801      	ldr	r1, [r0, #0]
 80031b0:	684a      	ldr	r2, [r1, #4]
 80031b2:	b292      	uxth	r2, r2
 80031b4:	2a00      	cmp	r2, #0
 80031b6:	f43f af5a 	beq.w	800306e <HAL_UART_IRQHandler+0x66>
 80031ba:	f8b4 505c 	ldrh.w	r5, [r4, #92]	@ 0x5c
 80031be:	4295      	cmp	r5, r2
 80031c0:	f67f af55 	bls.w	800306e <HAL_UART_IRQHandler+0x66>
 80031c4:	f8a4 205e 	strh.w	r2, [r4, #94]	@ 0x5e
 80031c8:	680a      	ldr	r2, [r1, #0]
 80031ca:	0692      	lsls	r2, r2, #26
 80031cc:	d553      	bpl.n	8003276 <HAL_UART_IRQHandler+0x26e>
 80031ce:	2302      	movs	r3, #2
 80031d0:	6723      	str	r3, [r4, #112]	@ 0x70
 80031d2:	f8b4 305e 	ldrh.w	r3, [r4, #94]	@ 0x5e
 80031d6:	1ae9      	subs	r1, r5, r3
 80031d8:	4620      	mov	r0, r4
 80031da:	b289      	uxth	r1, r1
 80031dc:	f7ff ff12 	bl	8003004 <HAL_UARTEx_RxEventCallback>
 80031e0:	e745      	b.n	800306e <HAL_UART_IRQHandler+0x66>
 80031e2:	e853 2f00 	ldrex	r2, [r3]
 80031e6:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 80031ea:	e843 2100 	strex	r1, r2, [r3]
 80031ee:	2900      	cmp	r1, #0
 80031f0:	d1f7      	bne.n	80031e2 <HAL_UART_IRQHandler+0x1da>
 80031f2:	2220      	movs	r2, #32
 80031f4:	2300      	movs	r3, #0
 80031f6:	f8c4 2088 	str.w	r2, [r4, #136]	@ 0x88
 80031fa:	67a3      	str	r3, [r4, #120]	@ 0x78
 80031fc:	4620      	mov	r0, r4
 80031fe:	f7ff fef1 	bl	8002fe4 <HAL_UART_TxCpltCallback>
 8003202:	e734      	b.n	800306e <HAL_UART_IRQHandler+0x66>
 8003204:	6f43      	ldr	r3, [r0, #116]	@ 0x74
 8003206:	2b00      	cmp	r3, #0
 8003208:	f43f af31 	beq.w	800306e <HAL_UART_IRQHandler+0x66>
 800320c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8003210:	4718      	bx	r3
 8003212:	6fa3      	ldr	r3, [r4, #120]	@ 0x78
 8003214:	2b00      	cmp	r3, #0
 8003216:	f43f af2a 	beq.w	800306e <HAL_UART_IRQHandler+0x66>
 800321a:	4620      	mov	r0, r4
 800321c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8003220:	4718      	bx	r3
 8003222:	0797      	lsls	r7, r2, #30
 8003224:	f53f af54 	bmi.w	80030d0 <HAL_UART_IRQHandler+0xc8>
 8003228:	0757      	lsls	r7, r2, #29
 800322a:	f57f af51 	bpl.w	80030d0 <HAL_UART_IRQHandler+0xc8>
 800322e:	07cf      	lsls	r7, r1, #31
 8003230:	f57f af4e 	bpl.w	80030d0 <HAL_UART_IRQHandler+0xc8>
 8003234:	2704      	movs	r7, #4
 8003236:	621f      	str	r7, [r3, #32]
 8003238:	f8d4 7090 	ldr.w	r7, [r4, #144]	@ 0x90
 800323c:	f047 0702 	orr.w	r7, r7, #2
 8003240:	f8c4 7090 	str.w	r7, [r4, #144]	@ 0x90
 8003244:	e744      	b.n	80030d0 <HAL_UART_IRQHandler+0xc8>
 8003246:	6f63      	ldr	r3, [r4, #116]	@ 0x74
 8003248:	2b00      	cmp	r3, #0
 800324a:	f43f af69 	beq.w	8003120 <HAL_UART_IRQHandler+0x118>
 800324e:	4620      	mov	r0, r4
 8003250:	4798      	blx	r3
 8003252:	6826      	ldr	r6, [r4, #0]
 8003254:	e764      	b.n	8003120 <HAL_UART_IRQHandler+0x118>
 8003256:	07d7      	lsls	r7, r2, #31
 8003258:	f57f af2a 	bpl.w	80030b0 <HAL_UART_IRQHandler+0xa8>
 800325c:	05ef      	lsls	r7, r5, #23
 800325e:	f57f af27 	bpl.w	80030b0 <HAL_UART_IRQHandler+0xa8>
 8003262:	e71d      	b.n	80030a0 <HAL_UART_IRQHandler+0x98>
 8003264:	4620      	mov	r0, r4
 8003266:	f7ff fec1 	bl	8002fec <HAL_UART_ErrorCallback>
 800326a:	e700      	b.n	800306e <HAL_UART_IRQHandler+0x66>
 800326c:	4620      	mov	r0, r4
 800326e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8003272:	f000 be8b 	b.w	8003f8c <HAL_UARTEx_TxFifoEmptyCallback>
 8003276:	e853 2f00 	ldrex	r2, [r3]
 800327a:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 800327e:	e843 2100 	strex	r1, r2, [r3]
 8003282:	2900      	cmp	r1, #0
 8003284:	d1f7      	bne.n	8003276 <HAL_UART_IRQHandler+0x26e>
 8003286:	f103 0208 	add.w	r2, r3, #8
 800328a:	e852 2f00 	ldrex	r2, [r2]
 800328e:	f022 0201 	bic.w	r2, r2, #1
 8003292:	f103 0508 	add.w	r5, r3, #8
 8003296:	e845 2100 	strex	r1, r2, [r5]
 800329a:	2900      	cmp	r1, #0
 800329c:	d1f3      	bne.n	8003286 <HAL_UART_IRQHandler+0x27e>
 800329e:	f103 0208 	add.w	r2, r3, #8
 80032a2:	e852 2f00 	ldrex	r2, [r2]
 80032a6:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 80032aa:	f103 0508 	add.w	r5, r3, #8
 80032ae:	e845 2100 	strex	r1, r2, [r5]
 80032b2:	2900      	cmp	r1, #0
 80032b4:	d1f3      	bne.n	800329e <HAL_UART_IRQHandler+0x296>
 80032b6:	2220      	movs	r2, #32
 80032b8:	f8c4 208c 	str.w	r2, [r4, #140]	@ 0x8c
 80032bc:	66e1      	str	r1, [r4, #108]	@ 0x6c
 80032be:	e853 2f00 	ldrex	r2, [r3]
 80032c2:	f022 0210 	bic.w	r2, r2, #16
 80032c6:	e843 2100 	strex	r1, r2, [r3]
 80032ca:	2900      	cmp	r1, #0
 80032cc:	d1f7      	bne.n	80032be <HAL_UART_IRQHandler+0x2b6>
 80032ce:	f7fe ff69 	bl	80021a4 <HAL_DMA_Abort>
 80032d2:	f8b4 505c 	ldrh.w	r5, [r4, #92]	@ 0x5c
 80032d6:	e77a      	b.n	80031ce <HAL_UART_IRQHandler+0x1c6>
 80032d8:	4620      	mov	r0, r4
 80032da:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80032de:	f000 be53 	b.w	8003f88 <HAL_UARTEx_RxFifoFullCallback>
 80032e2:	f7ff fe83 	bl	8002fec <HAL_UART_ErrorCallback>
 80032e6:	f8c4 5090 	str.w	r5, [r4, #144]	@ 0x90
 80032ea:	e6c0      	b.n	800306e <HAL_UART_IRQHandler+0x66>
 80032ec:	f8b4 105e 	ldrh.w	r1, [r4, #94]	@ 0x5e
 80032f0:	f8b4 205e 	ldrh.w	r2, [r4, #94]	@ 0x5e
 80032f4:	f8b4 005c 	ldrh.w	r0, [r4, #92]	@ 0x5c
 80032f8:	b292      	uxth	r2, r2
 80032fa:	b289      	uxth	r1, r1
 80032fc:	2a00      	cmp	r2, #0
 80032fe:	f43f aeb6 	beq.w	800306e <HAL_UART_IRQHandler+0x66>
 8003302:	1a41      	subs	r1, r0, r1
 8003304:	b289      	uxth	r1, r1
 8003306:	2900      	cmp	r1, #0
 8003308:	f43f aeb1 	beq.w	800306e <HAL_UART_IRQHandler+0x66>
 800330c:	e853 2f00 	ldrex	r2, [r3]
 8003310:	f422 7290 	bic.w	r2, r2, #288	@ 0x120
 8003314:	e843 2000 	strex	r0, r2, [r3]
 8003318:	2800      	cmp	r0, #0
 800331a:	d1f7      	bne.n	800330c <HAL_UART_IRQHandler+0x304>
 800331c:	4d12      	ldr	r5, [pc, #72]	@ (8003368 <HAL_UART_IRQHandler+0x360>)
 800331e:	f103 0208 	add.w	r2, r3, #8
 8003322:	e852 2f00 	ldrex	r2, [r2]
 8003326:	402a      	ands	r2, r5
 8003328:	f103 0608 	add.w	r6, r3, #8
 800332c:	e846 2000 	strex	r0, r2, [r6]
 8003330:	2800      	cmp	r0, #0
 8003332:	d1f4      	bne.n	800331e <HAL_UART_IRQHandler+0x316>
 8003334:	2220      	movs	r2, #32
 8003336:	f8c4 208c 	str.w	r2, [r4, #140]	@ 0x8c
 800333a:	6760      	str	r0, [r4, #116]	@ 0x74
 800333c:	66e0      	str	r0, [r4, #108]	@ 0x6c
 800333e:	e853 2f00 	ldrex	r2, [r3]
 8003342:	f022 0210 	bic.w	r2, r2, #16
 8003346:	e843 2000 	strex	r0, r2, [r3]
 800334a:	2800      	cmp	r0, #0
 800334c:	d1f7      	bne.n	800333e <HAL_UART_IRQHandler+0x336>
 800334e:	2302      	movs	r3, #2
 8003350:	6723      	str	r3, [r4, #112]	@ 0x70
 8003352:	4620      	mov	r0, r4
 8003354:	f7ff fe56 	bl	8003004 <HAL_UARTEx_RxEventCallback>
 8003358:	e689      	b.n	800306e <HAL_UART_IRQHandler+0x66>
 800335a:	bf00      	nop
 800335c:	10000001 	.word	0x10000001
 8003360:	04000120 	.word	0x04000120
 8003364:	08002ff1 	.word	0x08002ff1
 8003368:	effffffe 	.word	0xeffffffe

0800336c <UART_RxISR_8BIT>:
 800336c:	f8d0 208c 	ldr.w	r2, [r0, #140]	@ 0x8c
 8003370:	f8b0 1060 	ldrh.w	r1, [r0, #96]	@ 0x60
 8003374:	6803      	ldr	r3, [r0, #0]
 8003376:	2a22      	cmp	r2, #34	@ 0x22
 8003378:	d004      	beq.n	8003384 <UART_RxISR_8BIT+0x18>
 800337a:	699a      	ldr	r2, [r3, #24]
 800337c:	f042 0208 	orr.w	r2, r2, #8
 8003380:	619a      	str	r2, [r3, #24]
 8003382:	4770      	bx	lr
 8003384:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8003386:	6d82      	ldr	r2, [r0, #88]	@ 0x58
 8003388:	400b      	ands	r3, r1
 800338a:	7013      	strb	r3, [r2, #0]
 800338c:	f8b0 305e 	ldrh.w	r3, [r0, #94]	@ 0x5e
 8003390:	6d82      	ldr	r2, [r0, #88]	@ 0x58
 8003392:	3b01      	subs	r3, #1
 8003394:	b29b      	uxth	r3, r3
 8003396:	f8a0 305e 	strh.w	r3, [r0, #94]	@ 0x5e
 800339a:	f8b0 305e 	ldrh.w	r3, [r0, #94]	@ 0x5e
 800339e:	3201      	adds	r2, #1
 80033a0:	b29b      	uxth	r3, r3
 80033a2:	6582      	str	r2, [r0, #88]	@ 0x58
 80033a4:	2b00      	cmp	r3, #0
 80033a6:	d137      	bne.n	8003418 <UART_RxISR_8BIT+0xac>
 80033a8:	b510      	push	{r4, lr}
 80033aa:	6803      	ldr	r3, [r0, #0]
 80033ac:	e853 2f00 	ldrex	r2, [r3]
 80033b0:	f422 7290 	bic.w	r2, r2, #288	@ 0x120
 80033b4:	e843 2100 	strex	r1, r2, [r3]
 80033b8:	2900      	cmp	r1, #0
 80033ba:	d1f7      	bne.n	80033ac <UART_RxISR_8BIT+0x40>
 80033bc:	f103 0208 	add.w	r2, r3, #8
 80033c0:	e852 2f00 	ldrex	r2, [r2]
 80033c4:	f022 0201 	bic.w	r2, r2, #1
 80033c8:	f103 0408 	add.w	r4, r3, #8
 80033cc:	e844 2100 	strex	r1, r2, [r4]
 80033d0:	2900      	cmp	r1, #0
 80033d2:	d1f3      	bne.n	80033bc <UART_RxISR_8BIT+0x50>
 80033d4:	4a1b      	ldr	r2, [pc, #108]	@ (8003444 <UART_RxISR_8BIT+0xd8>)
 80033d6:	6741      	str	r1, [r0, #116]	@ 0x74
 80033d8:	2420      	movs	r4, #32
 80033da:	4293      	cmp	r3, r2
 80033dc:	f8c0 408c 	str.w	r4, [r0, #140]	@ 0x8c
 80033e0:	6701      	str	r1, [r0, #112]	@ 0x70
 80033e2:	d002      	beq.n	80033ea <UART_RxISR_8BIT+0x7e>
 80033e4:	685a      	ldr	r2, [r3, #4]
 80033e6:	0211      	lsls	r1, r2, #8
 80033e8:	d417      	bmi.n	800341a <UART_RxISR_8BIT+0xae>
 80033ea:	6ec2      	ldr	r2, [r0, #108]	@ 0x6c
 80033ec:	2a01      	cmp	r2, #1
 80033ee:	d125      	bne.n	800343c <UART_RxISR_8BIT+0xd0>
 80033f0:	2200      	movs	r2, #0
 80033f2:	66c2      	str	r2, [r0, #108]	@ 0x6c
 80033f4:	e853 2f00 	ldrex	r2, [r3]
 80033f8:	f022 0210 	bic.w	r2, r2, #16
 80033fc:	e843 2100 	strex	r1, r2, [r3]
 8003400:	2900      	cmp	r1, #0
 8003402:	d1f7      	bne.n	80033f4 <UART_RxISR_8BIT+0x88>
 8003404:	69da      	ldr	r2, [r3, #28]
 8003406:	f8b0 105c 	ldrh.w	r1, [r0, #92]	@ 0x5c
 800340a:	06d2      	lsls	r2, r2, #27
 800340c:	bf44      	itt	mi
 800340e:	2210      	movmi	r2, #16
 8003410:	621a      	strmi	r2, [r3, #32]
 8003412:	f7ff fdf7 	bl	8003004 <HAL_UARTEx_RxEventCallback>
 8003416:	bd10      	pop	{r4, pc}
 8003418:	4770      	bx	lr
 800341a:	e853 2f00 	ldrex	r2, [r3]
 800341e:	f022 6280 	bic.w	r2, r2, #67108864	@ 0x4000000
 8003422:	e843 2100 	strex	r1, r2, [r3]
 8003426:	2900      	cmp	r1, #0
 8003428:	d0df      	beq.n	80033ea <UART_RxISR_8BIT+0x7e>
 800342a:	e853 2f00 	ldrex	r2, [r3]
 800342e:	f022 6280 	bic.w	r2, r2, #67108864	@ 0x4000000
 8003432:	e843 2100 	strex	r1, r2, [r3]
 8003436:	2900      	cmp	r1, #0
 8003438:	d1ef      	bne.n	800341a <UART_RxISR_8BIT+0xae>
 800343a:	e7d6      	b.n	80033ea <UART_RxISR_8BIT+0x7e>
 800343c:	f7ff fdd4 	bl	8002fe8 <HAL_UART_RxCpltCallback>
 8003440:	bd10      	pop	{r4, pc}
 8003442:	bf00      	nop
 8003444:	40008000 	.word	0x40008000

08003448 <UART_RxISR_16BIT>:
 8003448:	f8d0 108c 	ldr.w	r1, [r0, #140]	@ 0x8c
 800344c:	f8b0 2060 	ldrh.w	r2, [r0, #96]	@ 0x60
 8003450:	6803      	ldr	r3, [r0, #0]
 8003452:	2922      	cmp	r1, #34	@ 0x22
 8003454:	d004      	beq.n	8003460 <UART_RxISR_16BIT+0x18>
 8003456:	699a      	ldr	r2, [r3, #24]
 8003458:	f042 0208 	orr.w	r2, r2, #8
 800345c:	619a      	str	r2, [r3, #24]
 800345e:	4770      	bx	lr
 8003460:	b510      	push	{r4, lr}
 8003462:	6a5c      	ldr	r4, [r3, #36]	@ 0x24
 8003464:	6d81      	ldr	r1, [r0, #88]	@ 0x58
 8003466:	4022      	ands	r2, r4
 8003468:	f821 2b02 	strh.w	r2, [r1], #2
 800346c:	f8b0 205e 	ldrh.w	r2, [r0, #94]	@ 0x5e
 8003470:	6581      	str	r1, [r0, #88]	@ 0x58
 8003472:	3a01      	subs	r2, #1
 8003474:	b292      	uxth	r2, r2
 8003476:	f8a0 205e 	strh.w	r2, [r0, #94]	@ 0x5e
 800347a:	f8b0 205e 	ldrh.w	r2, [r0, #94]	@ 0x5e
 800347e:	b292      	uxth	r2, r2
 8003480:	2a00      	cmp	r2, #0
 8003482:	d134      	bne.n	80034ee <UART_RxISR_16BIT+0xa6>
 8003484:	e853 2f00 	ldrex	r2, [r3]
 8003488:	f422 7290 	bic.w	r2, r2, #288	@ 0x120
 800348c:	e843 2100 	strex	r1, r2, [r3]
 8003490:	2900      	cmp	r1, #0
 8003492:	d1f7      	bne.n	8003484 <UART_RxISR_16BIT+0x3c>
 8003494:	f103 0208 	add.w	r2, r3, #8
 8003498:	e852 2f00 	ldrex	r2, [r2]
 800349c:	f022 0201 	bic.w	r2, r2, #1
 80034a0:	f103 0408 	add.w	r4, r3, #8
 80034a4:	e844 2100 	strex	r1, r2, [r4]
 80034a8:	2900      	cmp	r1, #0
 80034aa:	d1f3      	bne.n	8003494 <UART_RxISR_16BIT+0x4c>
 80034ac:	4a1a      	ldr	r2, [pc, #104]	@ (8003518 <UART_RxISR_16BIT+0xd0>)
 80034ae:	6741      	str	r1, [r0, #116]	@ 0x74
 80034b0:	2420      	movs	r4, #32
 80034b2:	4293      	cmp	r3, r2
 80034b4:	f8c0 408c 	str.w	r4, [r0, #140]	@ 0x8c
 80034b8:	6701      	str	r1, [r0, #112]	@ 0x70
 80034ba:	d002      	beq.n	80034c2 <UART_RxISR_16BIT+0x7a>
 80034bc:	685a      	ldr	r2, [r3, #4]
 80034be:	0211      	lsls	r1, r2, #8
 80034c0:	d416      	bmi.n	80034f0 <UART_RxISR_16BIT+0xa8>
 80034c2:	6ec2      	ldr	r2, [r0, #108]	@ 0x6c
 80034c4:	2a01      	cmp	r2, #1
 80034c6:	d124      	bne.n	8003512 <UART_RxISR_16BIT+0xca>
 80034c8:	2200      	movs	r2, #0
 80034ca:	66c2      	str	r2, [r0, #108]	@ 0x6c
 80034cc:	e853 2f00 	ldrex	r2, [r3]
 80034d0:	f022 0210 	bic.w	r2, r2, #16
 80034d4:	e843 2100 	strex	r1, r2, [r3]
 80034d8:	2900      	cmp	r1, #0
 80034da:	d1f7      	bne.n	80034cc <UART_RxISR_16BIT+0x84>
 80034dc:	69da      	ldr	r2, [r3, #28]
 80034de:	f8b0 105c 	ldrh.w	r1, [r0, #92]	@ 0x5c
 80034e2:	06d2      	lsls	r2, r2, #27
 80034e4:	bf44      	itt	mi
 80034e6:	2210      	movmi	r2, #16
 80034e8:	621a      	strmi	r2, [r3, #32]
 80034ea:	f7ff fd8b 	bl	8003004 <HAL_UARTEx_RxEventCallback>
 80034ee:	bd10      	pop	{r4, pc}
 80034f0:	e853 2f00 	ldrex	r2, [r3]
 80034f4:	f022 6280 	bic.w	r2, r2, #67108864	@ 0x4000000
 80034f8:	e843 2100 	strex	r1, r2, [r3]
 80034fc:	2900      	cmp	r1, #0
 80034fe:	d0e0      	beq.n	80034c2 <UART_RxISR_16BIT+0x7a>
 8003500:	e853 2f00 	ldrex	r2, [r3]
 8003504:	f022 6280 	bic.w	r2, r2, #67108864	@ 0x4000000
 8003508:	e843 2100 	strex	r1, r2, [r3]
 800350c:	2900      	cmp	r1, #0
 800350e:	d1ef      	bne.n	80034f0 <UART_RxISR_16BIT+0xa8>
 8003510:	e7d7      	b.n	80034c2 <UART_RxISR_16BIT+0x7a>
 8003512:	f7ff fd69 	bl	8002fe8 <HAL_UART_RxCpltCallback>
 8003516:	bd10      	pop	{r4, pc}
 8003518:	40008000 	.word	0x40008000

0800351c <UART_RxISR_8BIT_FIFOEN>:
 800351c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003520:	6802      	ldr	r2, [r0, #0]
 8003522:	f8b0 b060 	ldrh.w	fp, [r0, #96]	@ 0x60
 8003526:	4604      	mov	r4, r0
 8003528:	69d0      	ldr	r0, [r2, #28]
 800352a:	6817      	ldr	r7, [r2, #0]
 800352c:	6896      	ldr	r6, [r2, #8]
 800352e:	f8d4 108c 	ldr.w	r1, [r4, #140]	@ 0x8c
 8003532:	2922      	cmp	r1, #34	@ 0x22
 8003534:	d006      	beq.n	8003544 <UART_RxISR_8BIT_FIFOEN+0x28>
 8003536:	4613      	mov	r3, r2
 8003538:	6992      	ldr	r2, [r2, #24]
 800353a:	f042 0208 	orr.w	r2, r2, #8
 800353e:	619a      	str	r2, [r3, #24]
 8003540:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003544:	f8b4 3068 	ldrh.w	r3, [r4, #104]	@ 0x68
 8003548:	2b00      	cmp	r3, #0
 800354a:	f000 80cb 	beq.w	80036e4 <UART_RxISR_8BIT_FIFOEN+0x1c8>
 800354e:	0681      	lsls	r1, r0, #26
 8003550:	d57f      	bpl.n	8003652 <UART_RxISR_8BIT_FIFOEN+0x136>
 8003552:	f8df a19c 	ldr.w	sl, [pc, #412]	@ 80036f0 <UART_RxISR_8BIT_FIFOEN+0x1d4>
 8003556:	f8df 819c 	ldr.w	r8, [pc, #412]	@ 80036f4 <UART_RxISR_8BIT_FIFOEN+0x1d8>
 800355a:	fa5f fb8b 	uxtb.w	fp, fp
 800355e:	f04f 0900 	mov.w	r9, #0
 8003562:	6a52      	ldr	r2, [r2, #36]	@ 0x24
 8003564:	6da3      	ldr	r3, [r4, #88]	@ 0x58
 8003566:	ea0b 0202 	and.w	r2, fp, r2
 800356a:	701a      	strb	r2, [r3, #0]
 800356c:	f8b4 105e 	ldrh.w	r1, [r4, #94]	@ 0x5e
 8003570:	6823      	ldr	r3, [r4, #0]
 8003572:	6da2      	ldr	r2, [r4, #88]	@ 0x58
 8003574:	3901      	subs	r1, #1
 8003576:	b289      	uxth	r1, r1
 8003578:	f8a4 105e 	strh.w	r1, [r4, #94]	@ 0x5e
 800357c:	69dd      	ldr	r5, [r3, #28]
 800357e:	3201      	adds	r2, #1
 8003580:	65a2      	str	r2, [r4, #88]	@ 0x58
 8003582:	076a      	lsls	r2, r5, #29
 8003584:	d01c      	beq.n	80035c0 <UART_RxISR_8BIT_FIFOEN+0xa4>
 8003586:	07e8      	lsls	r0, r5, #31
 8003588:	d509      	bpl.n	800359e <UART_RxISR_8BIT_FIFOEN+0x82>
 800358a:	05f9      	lsls	r1, r7, #23
 800358c:	d507      	bpl.n	800359e <UART_RxISR_8BIT_FIFOEN+0x82>
 800358e:	2201      	movs	r2, #1
 8003590:	621a      	str	r2, [r3, #32]
 8003592:	f8d4 2090 	ldr.w	r2, [r4, #144]	@ 0x90
 8003596:	f042 0201 	orr.w	r2, r2, #1
 800359a:	f8c4 2090 	str.w	r2, [r4, #144]	@ 0x90
 800359e:	07aa      	lsls	r2, r5, #30
 80035a0:	d516      	bpl.n	80035d0 <UART_RxISR_8BIT_FIFOEN+0xb4>
 80035a2:	07f0      	lsls	r0, r6, #31
 80035a4:	d509      	bpl.n	80035ba <UART_RxISR_8BIT_FIFOEN+0x9e>
 80035a6:	2202      	movs	r2, #2
 80035a8:	621a      	str	r2, [r3, #32]
 80035aa:	f8d4 2090 	ldr.w	r2, [r4, #144]	@ 0x90
 80035ae:	0769      	lsls	r1, r5, #29
 80035b0:	f042 0204 	orr.w	r2, r2, #4
 80035b4:	f8c4 2090 	str.w	r2, [r4, #144]	@ 0x90
 80035b8:	d40e      	bmi.n	80035d8 <UART_RxISR_8BIT_FIFOEN+0xbc>
 80035ba:	f8d4 3090 	ldr.w	r3, [r4, #144]	@ 0x90
 80035be:	b9bb      	cbnz	r3, 80035f0 <UART_RxISR_8BIT_FIFOEN+0xd4>
 80035c0:	f8b4 305e 	ldrh.w	r3, [r4, #94]	@ 0x5e
 80035c4:	b29b      	uxth	r3, r3
 80035c6:	b1eb      	cbz	r3, 8003604 <UART_RxISR_8BIT_FIFOEN+0xe8>
 80035c8:	06ab      	lsls	r3, r5, #26
 80035ca:	d542      	bpl.n	8003652 <UART_RxISR_8BIT_FIFOEN+0x136>
 80035cc:	6822      	ldr	r2, [r4, #0]
 80035ce:	e7c8      	b.n	8003562 <UART_RxISR_8BIT_FIFOEN+0x46>
 80035d0:	076a      	lsls	r2, r5, #29
 80035d2:	d5f2      	bpl.n	80035ba <UART_RxISR_8BIT_FIFOEN+0x9e>
 80035d4:	07f0      	lsls	r0, r6, #31
 80035d6:	d5f0      	bpl.n	80035ba <UART_RxISR_8BIT_FIFOEN+0x9e>
 80035d8:	2204      	movs	r2, #4
 80035da:	621a      	str	r2, [r3, #32]
 80035dc:	f8d4 3090 	ldr.w	r3, [r4, #144]	@ 0x90
 80035e0:	f043 0302 	orr.w	r3, r3, #2
 80035e4:	f8c4 3090 	str.w	r3, [r4, #144]	@ 0x90
 80035e8:	f8d4 3090 	ldr.w	r3, [r4, #144]	@ 0x90
 80035ec:	2b00      	cmp	r3, #0
 80035ee:	d0e7      	beq.n	80035c0 <UART_RxISR_8BIT_FIFOEN+0xa4>
 80035f0:	4620      	mov	r0, r4
 80035f2:	f7ff fcfb 	bl	8002fec <HAL_UART_ErrorCallback>
 80035f6:	f8c4 9090 	str.w	r9, [r4, #144]	@ 0x90
 80035fa:	f8b4 305e 	ldrh.w	r3, [r4, #94]	@ 0x5e
 80035fe:	b29b      	uxth	r3, r3
 8003600:	2b00      	cmp	r3, #0
 8003602:	d1e1      	bne.n	80035c8 <UART_RxISR_8BIT_FIFOEN+0xac>
 8003604:	6823      	ldr	r3, [r4, #0]
 8003606:	e853 2f00 	ldrex	r2, [r3]
 800360a:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 800360e:	e843 2100 	strex	r1, r2, [r3]
 8003612:	2900      	cmp	r1, #0
 8003614:	d1f7      	bne.n	8003606 <UART_RxISR_8BIT_FIFOEN+0xea>
 8003616:	f103 0208 	add.w	r2, r3, #8
 800361a:	e852 2f00 	ldrex	r2, [r2]
 800361e:	ea02 020a 	and.w	r2, r2, sl
 8003622:	f103 0008 	add.w	r0, r3, #8
 8003626:	e840 2100 	strex	r1, r2, [r0]
 800362a:	2900      	cmp	r1, #0
 800362c:	d1f3      	bne.n	8003616 <UART_RxISR_8BIT_FIFOEN+0xfa>
 800362e:	2220      	movs	r2, #32
 8003630:	4543      	cmp	r3, r8
 8003632:	f8c4 208c 	str.w	r2, [r4, #140]	@ 0x8c
 8003636:	6761      	str	r1, [r4, #116]	@ 0x74
 8003638:	6721      	str	r1, [r4, #112]	@ 0x70
 800363a:	d002      	beq.n	8003642 <UART_RxISR_8BIT_FIFOEN+0x126>
 800363c:	685a      	ldr	r2, [r3, #4]
 800363e:	0211      	lsls	r1, r2, #8
 8003640:	d42a      	bmi.n	8003698 <UART_RxISR_8BIT_FIFOEN+0x17c>
 8003642:	6ee2      	ldr	r2, [r4, #108]	@ 0x6c
 8003644:	2a01      	cmp	r2, #1
 8003646:	d038      	beq.n	80036ba <UART_RxISR_8BIT_FIFOEN+0x19e>
 8003648:	4620      	mov	r0, r4
 800364a:	f7ff fccd 	bl	8002fe8 <HAL_UART_RxCpltCallback>
 800364e:	06ab      	lsls	r3, r5, #26
 8003650:	d4bc      	bmi.n	80035cc <UART_RxISR_8BIT_FIFOEN+0xb0>
 8003652:	f8b4 305e 	ldrh.w	r3, [r4, #94]	@ 0x5e
 8003656:	b29b      	uxth	r3, r3
 8003658:	2b00      	cmp	r3, #0
 800365a:	f43f af71 	beq.w	8003540 <UART_RxISR_8BIT_FIFOEN+0x24>
 800365e:	f8b4 2068 	ldrh.w	r2, [r4, #104]	@ 0x68
 8003662:	429a      	cmp	r2, r3
 8003664:	f67f af6c 	bls.w	8003540 <UART_RxISR_8BIT_FIFOEN+0x24>
 8003668:	6823      	ldr	r3, [r4, #0]
 800366a:	f103 0208 	add.w	r2, r3, #8
 800366e:	e852 2f00 	ldrex	r2, [r2]
 8003672:	f022 5280 	bic.w	r2, r2, #268435456	@ 0x10000000
 8003676:	f103 0008 	add.w	r0, r3, #8
 800367a:	e840 2100 	strex	r1, r2, [r0]
 800367e:	2900      	cmp	r1, #0
 8003680:	d1f3      	bne.n	800366a <UART_RxISR_8BIT_FIFOEN+0x14e>
 8003682:	4a1a      	ldr	r2, [pc, #104]	@ (80036ec <UART_RxISR_8BIT_FIFOEN+0x1d0>)
 8003684:	6762      	str	r2, [r4, #116]	@ 0x74
 8003686:	e853 2f00 	ldrex	r2, [r3]
 800368a:	f042 0220 	orr.w	r2, r2, #32
 800368e:	e843 2100 	strex	r1, r2, [r3]
 8003692:	2900      	cmp	r1, #0
 8003694:	d1f7      	bne.n	8003686 <UART_RxISR_8BIT_FIFOEN+0x16a>
 8003696:	e753      	b.n	8003540 <UART_RxISR_8BIT_FIFOEN+0x24>
 8003698:	e853 2f00 	ldrex	r2, [r3]
 800369c:	f022 6280 	bic.w	r2, r2, #67108864	@ 0x4000000
 80036a0:	e843 2100 	strex	r1, r2, [r3]
 80036a4:	2900      	cmp	r1, #0
 80036a6:	d0cc      	beq.n	8003642 <UART_RxISR_8BIT_FIFOEN+0x126>
 80036a8:	e853 2f00 	ldrex	r2, [r3]
 80036ac:	f022 6280 	bic.w	r2, r2, #67108864	@ 0x4000000
 80036b0:	e843 2100 	strex	r1, r2, [r3]
 80036b4:	2900      	cmp	r1, #0
 80036b6:	d1ef      	bne.n	8003698 <UART_RxISR_8BIT_FIFOEN+0x17c>
 80036b8:	e7c3      	b.n	8003642 <UART_RxISR_8BIT_FIFOEN+0x126>
 80036ba:	2200      	movs	r2, #0
 80036bc:	66e2      	str	r2, [r4, #108]	@ 0x6c
 80036be:	e853 2f00 	ldrex	r2, [r3]
 80036c2:	f022 0210 	bic.w	r2, r2, #16
 80036c6:	e843 2100 	strex	r1, r2, [r3]
 80036ca:	2900      	cmp	r1, #0
 80036cc:	d1f7      	bne.n	80036be <UART_RxISR_8BIT_FIFOEN+0x1a2>
 80036ce:	69da      	ldr	r2, [r3, #28]
 80036d0:	f8b4 105c 	ldrh.w	r1, [r4, #92]	@ 0x5c
 80036d4:	06d2      	lsls	r2, r2, #27
 80036d6:	bf44      	itt	mi
 80036d8:	2210      	movmi	r2, #16
 80036da:	621a      	strmi	r2, [r3, #32]
 80036dc:	4620      	mov	r0, r4
 80036de:	f7ff fc91 	bl	8003004 <HAL_UARTEx_RxEventCallback>
 80036e2:	e771      	b.n	80035c8 <UART_RxISR_8BIT_FIFOEN+0xac>
 80036e4:	f8b4 305e 	ldrh.w	r3, [r4, #94]	@ 0x5e
 80036e8:	e72a      	b.n	8003540 <UART_RxISR_8BIT_FIFOEN+0x24>
 80036ea:	bf00      	nop
 80036ec:	0800336d 	.word	0x0800336d
 80036f0:	effffffe 	.word	0xeffffffe
 80036f4:	40008000 	.word	0x40008000

080036f8 <UART_RxISR_16BIT_FIFOEN>:
 80036f8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80036fc:	6803      	ldr	r3, [r0, #0]
 80036fe:	f8b0 a060 	ldrh.w	sl, [r0, #96]	@ 0x60
 8003702:	69d9      	ldr	r1, [r3, #28]
 8003704:	681e      	ldr	r6, [r3, #0]
 8003706:	689d      	ldr	r5, [r3, #8]
 8003708:	f8d0 208c 	ldr.w	r2, [r0, #140]	@ 0x8c
 800370c:	2a22      	cmp	r2, #34	@ 0x22
 800370e:	d005      	beq.n	800371c <UART_RxISR_16BIT_FIFOEN+0x24>
 8003710:	699a      	ldr	r2, [r3, #24]
 8003712:	f042 0208 	orr.w	r2, r2, #8
 8003716:	619a      	str	r2, [r3, #24]
 8003718:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800371c:	f8b0 2068 	ldrh.w	r2, [r0, #104]	@ 0x68
 8003720:	4683      	mov	fp, r0
 8003722:	2a00      	cmp	r2, #0
 8003724:	f000 80d1 	beq.w	80038ca <UART_RxISR_16BIT_FIFOEN+0x1d2>
 8003728:	0689      	lsls	r1, r1, #26
 800372a:	f140 8082 	bpl.w	8003832 <UART_RxISR_16BIT_FIFOEN+0x13a>
 800372e:	f8df 91a8 	ldr.w	r9, [pc, #424]	@ 80038d8 <UART_RxISR_16BIT_FIFOEN+0x1e0>
 8003732:	4f67      	ldr	r7, [pc, #412]	@ (80038d0 <UART_RxISR_16BIT_FIFOEN+0x1d8>)
 8003734:	f04f 0800 	mov.w	r8, #0
 8003738:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 800373a:	f8db 1058 	ldr.w	r1, [fp, #88]	@ 0x58
 800373e:	ea0a 0202 	and.w	r2, sl, r2
 8003742:	f821 2b02 	strh.w	r2, [r1], #2
 8003746:	f8bb 205e 	ldrh.w	r2, [fp, #94]	@ 0x5e
 800374a:	f8cb 1058 	str.w	r1, [fp, #88]	@ 0x58
 800374e:	3a01      	subs	r2, #1
 8003750:	b292      	uxth	r2, r2
 8003752:	f8ab 205e 	strh.w	r2, [fp, #94]	@ 0x5e
 8003756:	69dc      	ldr	r4, [r3, #28]
 8003758:	0762      	lsls	r2, r4, #29
 800375a:	d01c      	beq.n	8003796 <UART_RxISR_16BIT_FIFOEN+0x9e>
 800375c:	07e0      	lsls	r0, r4, #31
 800375e:	d509      	bpl.n	8003774 <UART_RxISR_16BIT_FIFOEN+0x7c>
 8003760:	05f1      	lsls	r1, r6, #23
 8003762:	d507      	bpl.n	8003774 <UART_RxISR_16BIT_FIFOEN+0x7c>
 8003764:	2201      	movs	r2, #1
 8003766:	621a      	str	r2, [r3, #32]
 8003768:	f8db 2090 	ldr.w	r2, [fp, #144]	@ 0x90
 800376c:	f042 0201 	orr.w	r2, r2, #1
 8003770:	f8cb 2090 	str.w	r2, [fp, #144]	@ 0x90
 8003774:	07a2      	lsls	r2, r4, #30
 8003776:	d517      	bpl.n	80037a8 <UART_RxISR_16BIT_FIFOEN+0xb0>
 8003778:	07e8      	lsls	r0, r5, #31
 800377a:	d509      	bpl.n	8003790 <UART_RxISR_16BIT_FIFOEN+0x98>
 800377c:	2202      	movs	r2, #2
 800377e:	621a      	str	r2, [r3, #32]
 8003780:	f8db 2090 	ldr.w	r2, [fp, #144]	@ 0x90
 8003784:	0761      	lsls	r1, r4, #29
 8003786:	f042 0204 	orr.w	r2, r2, #4
 800378a:	f8cb 2090 	str.w	r2, [fp, #144]	@ 0x90
 800378e:	d40f      	bmi.n	80037b0 <UART_RxISR_16BIT_FIFOEN+0xb8>
 8003790:	f8db 3090 	ldr.w	r3, [fp, #144]	@ 0x90
 8003794:	b9c3      	cbnz	r3, 80037c8 <UART_RxISR_16BIT_FIFOEN+0xd0>
 8003796:	f8bb 305e 	ldrh.w	r3, [fp, #94]	@ 0x5e
 800379a:	b29b      	uxth	r3, r3
 800379c:	b1f3      	cbz	r3, 80037dc <UART_RxISR_16BIT_FIFOEN+0xe4>
 800379e:	06a3      	lsls	r3, r4, #26
 80037a0:	d547      	bpl.n	8003832 <UART_RxISR_16BIT_FIFOEN+0x13a>
 80037a2:	f8db 3000 	ldr.w	r3, [fp]
 80037a6:	e7c7      	b.n	8003738 <UART_RxISR_16BIT_FIFOEN+0x40>
 80037a8:	0762      	lsls	r2, r4, #29
 80037aa:	d5f1      	bpl.n	8003790 <UART_RxISR_16BIT_FIFOEN+0x98>
 80037ac:	07e8      	lsls	r0, r5, #31
 80037ae:	d5ef      	bpl.n	8003790 <UART_RxISR_16BIT_FIFOEN+0x98>
 80037b0:	2204      	movs	r2, #4
 80037b2:	621a      	str	r2, [r3, #32]
 80037b4:	f8db 3090 	ldr.w	r3, [fp, #144]	@ 0x90
 80037b8:	f043 0302 	orr.w	r3, r3, #2
 80037bc:	f8cb 3090 	str.w	r3, [fp, #144]	@ 0x90
 80037c0:	f8db 3090 	ldr.w	r3, [fp, #144]	@ 0x90
 80037c4:	2b00      	cmp	r3, #0
 80037c6:	d0e6      	beq.n	8003796 <UART_RxISR_16BIT_FIFOEN+0x9e>
 80037c8:	4658      	mov	r0, fp
 80037ca:	f7ff fc0f 	bl	8002fec <HAL_UART_ErrorCallback>
 80037ce:	f8cb 8090 	str.w	r8, [fp, #144]	@ 0x90
 80037d2:	f8bb 305e 	ldrh.w	r3, [fp, #94]	@ 0x5e
 80037d6:	b29b      	uxth	r3, r3
 80037d8:	2b00      	cmp	r3, #0
 80037da:	d1e0      	bne.n	800379e <UART_RxISR_16BIT_FIFOEN+0xa6>
 80037dc:	f8db 3000 	ldr.w	r3, [fp]
 80037e0:	e853 2f00 	ldrex	r2, [r3]
 80037e4:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 80037e8:	e843 2100 	strex	r1, r2, [r3]
 80037ec:	2900      	cmp	r1, #0
 80037ee:	d1f7      	bne.n	80037e0 <UART_RxISR_16BIT_FIFOEN+0xe8>
 80037f0:	f103 0208 	add.w	r2, r3, #8
 80037f4:	e852 2f00 	ldrex	r2, [r2]
 80037f8:	ea02 0209 	and.w	r2, r2, r9
 80037fc:	f103 0008 	add.w	r0, r3, #8
 8003800:	e840 2100 	strex	r1, r2, [r0]
 8003804:	2900      	cmp	r1, #0
 8003806:	d1f3      	bne.n	80037f0 <UART_RxISR_16BIT_FIFOEN+0xf8>
 8003808:	2220      	movs	r2, #32
 800380a:	42bb      	cmp	r3, r7
 800380c:	f8cb 208c 	str.w	r2, [fp, #140]	@ 0x8c
 8003810:	f8cb 1074 	str.w	r1, [fp, #116]	@ 0x74
 8003814:	f8cb 1070 	str.w	r1, [fp, #112]	@ 0x70
 8003818:	d002      	beq.n	8003820 <UART_RxISR_16BIT_FIFOEN+0x128>
 800381a:	685a      	ldr	r2, [r3, #4]
 800381c:	0211      	lsls	r1, r2, #8
 800381e:	d42d      	bmi.n	800387c <UART_RxISR_16BIT_FIFOEN+0x184>
 8003820:	f8db 206c 	ldr.w	r2, [fp, #108]	@ 0x6c
 8003824:	2a01      	cmp	r2, #1
 8003826:	d03a      	beq.n	800389e <UART_RxISR_16BIT_FIFOEN+0x1a6>
 8003828:	4658      	mov	r0, fp
 800382a:	f7ff fbdd 	bl	8002fe8 <HAL_UART_RxCpltCallback>
 800382e:	06a3      	lsls	r3, r4, #26
 8003830:	d4b7      	bmi.n	80037a2 <UART_RxISR_16BIT_FIFOEN+0xaa>
 8003832:	f8bb 305e 	ldrh.w	r3, [fp, #94]	@ 0x5e
 8003836:	b29b      	uxth	r3, r3
 8003838:	2b00      	cmp	r3, #0
 800383a:	f43f af6d 	beq.w	8003718 <UART_RxISR_16BIT_FIFOEN+0x20>
 800383e:	f8bb 2068 	ldrh.w	r2, [fp, #104]	@ 0x68
 8003842:	429a      	cmp	r2, r3
 8003844:	f67f af68 	bls.w	8003718 <UART_RxISR_16BIT_FIFOEN+0x20>
 8003848:	f8db 3000 	ldr.w	r3, [fp]
 800384c:	f103 0208 	add.w	r2, r3, #8
 8003850:	e852 2f00 	ldrex	r2, [r2]
 8003854:	f022 5280 	bic.w	r2, r2, #268435456	@ 0x10000000
 8003858:	f103 0008 	add.w	r0, r3, #8
 800385c:	e840 2100 	strex	r1, r2, [r0]
 8003860:	2900      	cmp	r1, #0
 8003862:	d1f3      	bne.n	800384c <UART_RxISR_16BIT_FIFOEN+0x154>
 8003864:	4a1b      	ldr	r2, [pc, #108]	@ (80038d4 <UART_RxISR_16BIT_FIFOEN+0x1dc>)
 8003866:	f8cb 2074 	str.w	r2, [fp, #116]	@ 0x74
 800386a:	e853 2f00 	ldrex	r2, [r3]
 800386e:	f042 0220 	orr.w	r2, r2, #32
 8003872:	e843 2100 	strex	r1, r2, [r3]
 8003876:	2900      	cmp	r1, #0
 8003878:	d1f7      	bne.n	800386a <UART_RxISR_16BIT_FIFOEN+0x172>
 800387a:	e74d      	b.n	8003718 <UART_RxISR_16BIT_FIFOEN+0x20>
 800387c:	e853 2f00 	ldrex	r2, [r3]
 8003880:	f022 6280 	bic.w	r2, r2, #67108864	@ 0x4000000
 8003884:	e843 2100 	strex	r1, r2, [r3]
 8003888:	2900      	cmp	r1, #0
 800388a:	d0c9      	beq.n	8003820 <UART_RxISR_16BIT_FIFOEN+0x128>
 800388c:	e853 2f00 	ldrex	r2, [r3]
 8003890:	f022 6280 	bic.w	r2, r2, #67108864	@ 0x4000000
 8003894:	e843 2100 	strex	r1, r2, [r3]
 8003898:	2900      	cmp	r1, #0
 800389a:	d1ef      	bne.n	800387c <UART_RxISR_16BIT_FIFOEN+0x184>
 800389c:	e7c0      	b.n	8003820 <UART_RxISR_16BIT_FIFOEN+0x128>
 800389e:	2200      	movs	r2, #0
 80038a0:	f8cb 206c 	str.w	r2, [fp, #108]	@ 0x6c
 80038a4:	e853 2f00 	ldrex	r2, [r3]
 80038a8:	f022 0210 	bic.w	r2, r2, #16
 80038ac:	e843 2100 	strex	r1, r2, [r3]
 80038b0:	2900      	cmp	r1, #0
 80038b2:	d1f7      	bne.n	80038a4 <UART_RxISR_16BIT_FIFOEN+0x1ac>
 80038b4:	69da      	ldr	r2, [r3, #28]
 80038b6:	f8bb 105c 	ldrh.w	r1, [fp, #92]	@ 0x5c
 80038ba:	06d2      	lsls	r2, r2, #27
 80038bc:	bf44      	itt	mi
 80038be:	2210      	movmi	r2, #16
 80038c0:	621a      	strmi	r2, [r3, #32]
 80038c2:	4658      	mov	r0, fp
 80038c4:	f7ff fb9e 	bl	8003004 <HAL_UARTEx_RxEventCallback>
 80038c8:	e769      	b.n	800379e <UART_RxISR_16BIT_FIFOEN+0xa6>
 80038ca:	f8b0 305e 	ldrh.w	r3, [r0, #94]	@ 0x5e
 80038ce:	e723      	b.n	8003718 <UART_RxISR_16BIT_FIFOEN+0x20>
 80038d0:	40008000 	.word	0x40008000
 80038d4:	08003449 	.word	0x08003449
 80038d8:	effffffe 	.word	0xeffffffe

080038dc <UART_SetConfig>:
 80038dc:	b570      	push	{r4, r5, r6, lr}
 80038de:	4604      	mov	r4, r0
 80038e0:	6803      	ldr	r3, [r0, #0]
 80038e2:	6882      	ldr	r2, [r0, #8]
 80038e4:	6900      	ldr	r0, [r0, #16]
 80038e6:	6961      	ldr	r1, [r4, #20]
 80038e8:	681d      	ldr	r5, [r3, #0]
 80038ea:	4302      	orrs	r2, r0
 80038ec:	430a      	orrs	r2, r1
 80038ee:	69e0      	ldr	r0, [r4, #28]
 80038f0:	498e      	ldr	r1, [pc, #568]	@ (8003b2c <UART_SetConfig+0x250>)
 80038f2:	4302      	orrs	r2, r0
 80038f4:	4029      	ands	r1, r5
 80038f6:	430a      	orrs	r2, r1
 80038f8:	601a      	str	r2, [r3, #0]
 80038fa:	685a      	ldr	r2, [r3, #4]
 80038fc:	68e1      	ldr	r1, [r4, #12]
 80038fe:	6a65      	ldr	r5, [r4, #36]	@ 0x24
 8003900:	f422 5240 	bic.w	r2, r2, #12288	@ 0x3000
 8003904:	430a      	orrs	r2, r1
 8003906:	498a      	ldr	r1, [pc, #552]	@ (8003b30 <UART_SetConfig+0x254>)
 8003908:	605a      	str	r2, [r3, #4]
 800390a:	428b      	cmp	r3, r1
 800390c:	6899      	ldr	r1, [r3, #8]
 800390e:	69a2      	ldr	r2, [r4, #24]
 8003910:	f021 416e 	bic.w	r1, r1, #3992977408	@ 0xee000000
 8003914:	f421 6130 	bic.w	r1, r1, #2816	@ 0xb00
 8003918:	f000 80b0 	beq.w	8003a7c <UART_SetConfig+0x1a0>
 800391c:	6a26      	ldr	r6, [r4, #32]
 800391e:	4332      	orrs	r2, r6
 8003920:	430a      	orrs	r2, r1
 8003922:	609a      	str	r2, [r3, #8]
 8003924:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8003926:	f022 020f 	bic.w	r2, r2, #15
 800392a:	432a      	orrs	r2, r5
 800392c:	62da      	str	r2, [r3, #44]	@ 0x2c
 800392e:	4a81      	ldr	r2, [pc, #516]	@ (8003b34 <UART_SetConfig+0x258>)
 8003930:	4293      	cmp	r3, r2
 8003932:	d035      	beq.n	80039a0 <UART_SetConfig+0xc4>
 8003934:	4a80      	ldr	r2, [pc, #512]	@ (8003b38 <UART_SetConfig+0x25c>)
 8003936:	4293      	cmp	r3, r2
 8003938:	d00d      	beq.n	8003956 <UART_SetConfig+0x7a>
 800393a:	4a80      	ldr	r2, [pc, #512]	@ (8003b3c <UART_SetConfig+0x260>)
 800393c:	4293      	cmp	r3, r2
 800393e:	d055      	beq.n	80039ec <UART_SetConfig+0x110>
 8003940:	4a7f      	ldr	r2, [pc, #508]	@ (8003b40 <UART_SetConfig+0x264>)
 8003942:	4293      	cmp	r3, r2
 8003944:	d040      	beq.n	80039c8 <UART_SetConfig+0xec>
 8003946:	2001      	movs	r0, #1
 8003948:	2300      	movs	r3, #0
 800394a:	f04f 1201 	mov.w	r2, #65537	@ 0x10001
 800394e:	e9c4 331d 	strd	r3, r3, [r4, #116]	@ 0x74
 8003952:	66a2      	str	r2, [r4, #104]	@ 0x68
 8003954:	bd70      	pop	{r4, r5, r6, pc}
 8003956:	4b7b      	ldr	r3, [pc, #492]	@ (8003b44 <UART_SetConfig+0x268>)
 8003958:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 800395c:	f003 030c 	and.w	r3, r3, #12
 8003960:	2b0c      	cmp	r3, #12
 8003962:	d8f0      	bhi.n	8003946 <UART_SetConfig+0x6a>
 8003964:	a201      	add	r2, pc, #4	@ (adr r2, 800396c <UART_SetConfig+0x90>)
 8003966:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800396a:	bf00      	nop
 800396c:	08003a71 	.word	0x08003a71
 8003970:	08003947 	.word	0x08003947
 8003974:	08003947 	.word	0x08003947
 8003978:	08003947 	.word	0x08003947
 800397c:	080039df 	.word	0x080039df
 8003980:	08003947 	.word	0x08003947
 8003984:	08003947 	.word	0x08003947
 8003988:	08003947 	.word	0x08003947
 800398c:	08003a33 	.word	0x08003a33
 8003990:	08003947 	.word	0x08003947
 8003994:	08003947 	.word	0x08003947
 8003998:	08003947 	.word	0x08003947
 800399c:	08003a01 	.word	0x08003a01
 80039a0:	4b68      	ldr	r3, [pc, #416]	@ (8003b44 <UART_SetConfig+0x268>)
 80039a2:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80039a6:	f003 0303 	and.w	r3, r3, #3
 80039aa:	2b02      	cmp	r3, #2
 80039ac:	d041      	beq.n	8003a32 <UART_SetConfig+0x156>
 80039ae:	2b03      	cmp	r3, #3
 80039b0:	d026      	beq.n	8003a00 <UART_SetConfig+0x124>
 80039b2:	2b01      	cmp	r3, #1
 80039b4:	d013      	beq.n	80039de <UART_SetConfig+0x102>
 80039b6:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 80039ba:	f000 80ac 	beq.w	8003b16 <UART_SetConfig+0x23a>
 80039be:	f7fe f897 	bl	8001af0 <HAL_RCC_GetPCLK2Freq>
 80039c2:	b3a0      	cbz	r0, 8003a2e <UART_SetConfig+0x152>
 80039c4:	6a65      	ldr	r5, [r4, #36]	@ 0x24
 80039c6:	e020      	b.n	8003a0a <UART_SetConfig+0x12e>
 80039c8:	4b5e      	ldr	r3, [pc, #376]	@ (8003b44 <UART_SetConfig+0x268>)
 80039ca:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80039ce:	f003 03c0 	and.w	r3, r3, #192	@ 0xc0
 80039d2:	2b80      	cmp	r3, #128	@ 0x80
 80039d4:	d02d      	beq.n	8003a32 <UART_SetConfig+0x156>
 80039d6:	f200 808e 	bhi.w	8003af6 <UART_SetConfig+0x21a>
 80039da:	2b00      	cmp	r3, #0
 80039dc:	d048      	beq.n	8003a70 <UART_SetConfig+0x194>
 80039de:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 80039e2:	f000 809e 	beq.w	8003b22 <UART_SetConfig+0x246>
 80039e6:	f7fd ff35 	bl	8001854 <HAL_RCC_GetSysClockFreq>
 80039ea:	e7ea      	b.n	80039c2 <UART_SetConfig+0xe6>
 80039ec:	4b55      	ldr	r3, [pc, #340]	@ (8003b44 <UART_SetConfig+0x268>)
 80039ee:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80039f2:	f003 0330 	and.w	r3, r3, #48	@ 0x30
 80039f6:	2b20      	cmp	r3, #32
 80039f8:	d01b      	beq.n	8003a32 <UART_SetConfig+0x156>
 80039fa:	d9ee      	bls.n	80039da <UART_SetConfig+0xfe>
 80039fc:	2b30      	cmp	r3, #48	@ 0x30
 80039fe:	d1a2      	bne.n	8003946 <UART_SetConfig+0x6a>
 8003a00:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8003a04:	d019      	beq.n	8003a3a <UART_SetConfig+0x15e>
 8003a06:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 8003a0a:	6863      	ldr	r3, [r4, #4]
 8003a0c:	4a4e      	ldr	r2, [pc, #312]	@ (8003b48 <UART_SetConfig+0x26c>)
 8003a0e:	f832 1015 	ldrh.w	r1, [r2, r5, lsl #1]
 8003a12:	fbb0 f0f1 	udiv	r0, r0, r1
 8003a16:	f64f 72ef 	movw	r2, #65519	@ 0xffef
 8003a1a:	eb00 0053 	add.w	r0, r0, r3, lsr #1
 8003a1e:	fbb0 f0f3 	udiv	r0, r0, r3
 8003a22:	f1a0 0310 	sub.w	r3, r0, #16
 8003a26:	4293      	cmp	r3, r2
 8003a28:	d88d      	bhi.n	8003946 <UART_SetConfig+0x6a>
 8003a2a:	6823      	ldr	r3, [r4, #0]
 8003a2c:	60d8      	str	r0, [r3, #12]
 8003a2e:	2000      	movs	r0, #0
 8003a30:	e78a      	b.n	8003948 <UART_SetConfig+0x6c>
 8003a32:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8003a36:	4845      	ldr	r0, [pc, #276]	@ (8003b4c <UART_SetConfig+0x270>)
 8003a38:	d1e7      	bne.n	8003a0a <UART_SetConfig+0x12e>
 8003a3a:	6862      	ldr	r2, [r4, #4]
 8003a3c:	4b42      	ldr	r3, [pc, #264]	@ (8003b48 <UART_SetConfig+0x26c>)
 8003a3e:	f833 1015 	ldrh.w	r1, [r3, r5, lsl #1]
 8003a42:	fbb0 f0f1 	udiv	r0, r0, r1
 8003a46:	0853      	lsrs	r3, r2, #1
 8003a48:	eb03 0340 	add.w	r3, r3, r0, lsl #1
 8003a4c:	f64f 71ef 	movw	r1, #65519	@ 0xffef
 8003a50:	fbb3 f3f2 	udiv	r3, r3, r2
 8003a54:	f1a3 0210 	sub.w	r2, r3, #16
 8003a58:	428a      	cmp	r2, r1
 8003a5a:	f63f af74 	bhi.w	8003946 <UART_SetConfig+0x6a>
 8003a5e:	f023 020f 	bic.w	r2, r3, #15
 8003a62:	6821      	ldr	r1, [r4, #0]
 8003a64:	b292      	uxth	r2, r2
 8003a66:	f3c3 0342 	ubfx	r3, r3, #1, #3
 8003a6a:	4313      	orrs	r3, r2
 8003a6c:	60cb      	str	r3, [r1, #12]
 8003a6e:	e7de      	b.n	8003a2e <UART_SetConfig+0x152>
 8003a70:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8003a74:	d049      	beq.n	8003b0a <UART_SetConfig+0x22e>
 8003a76:	f7fe f829 	bl	8001acc <HAL_RCC_GetPCLK1Freq>
 8003a7a:	e7a2      	b.n	80039c2 <UART_SetConfig+0xe6>
 8003a7c:	4311      	orrs	r1, r2
 8003a7e:	6099      	str	r1, [r3, #8]
 8003a80:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8003a82:	4930      	ldr	r1, [pc, #192]	@ (8003b44 <UART_SetConfig+0x268>)
 8003a84:	f022 020f 	bic.w	r2, r2, #15
 8003a88:	432a      	orrs	r2, r5
 8003a8a:	62da      	str	r2, [r3, #44]	@ 0x2c
 8003a8c:	f8d1 3088 	ldr.w	r3, [r1, #136]	@ 0x88
 8003a90:	f403 6340 	and.w	r3, r3, #3072	@ 0xc00
 8003a94:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 8003a98:	d046      	beq.n	8003b28 <UART_SetConfig+0x24c>
 8003a9a:	d82f      	bhi.n	8003afc <UART_SetConfig+0x220>
 8003a9c:	2b00      	cmp	r3, #0
 8003a9e:	d03d      	beq.n	8003b1c <UART_SetConfig+0x240>
 8003aa0:	f7fd fed8 	bl	8001854 <HAL_RCC_GetSysClockFreq>
 8003aa4:	2800      	cmp	r0, #0
 8003aa6:	d0c2      	beq.n	8003a2e <UART_SetConfig+0x152>
 8003aa8:	6a65      	ldr	r5, [r4, #36]	@ 0x24
 8003aaa:	6866      	ldr	r6, [r4, #4]
 8003aac:	4b26      	ldr	r3, [pc, #152]	@ (8003b48 <UART_SetConfig+0x26c>)
 8003aae:	eb06 0146 	add.w	r1, r6, r6, lsl #1
 8003ab2:	f833 2015 	ldrh.w	r2, [r3, r5, lsl #1]
 8003ab6:	fbb0 f3f2 	udiv	r3, r0, r2
 8003aba:	4299      	cmp	r1, r3
 8003abc:	f63f af43 	bhi.w	8003946 <UART_SetConfig+0x6a>
 8003ac0:	ebb3 3f06 	cmp.w	r3, r6, lsl #12
 8003ac4:	f63f af3f 	bhi.w	8003946 <UART_SetConfig+0x6a>
 8003ac8:	2300      	movs	r3, #0
 8003aca:	4619      	mov	r1, r3
 8003acc:	f7fd f840 	bl	8000b50 <__aeabi_uldivmod>
 8003ad0:	0872      	lsrs	r2, r6, #1
 8003ad2:	0203      	lsls	r3, r0, #8
 8003ad4:	0209      	lsls	r1, r1, #8
 8003ad6:	ea41 6110 	orr.w	r1, r1, r0, lsr #24
 8003ada:	1898      	adds	r0, r3, r2
 8003adc:	f141 0100 	adc.w	r1, r1, #0
 8003ae0:	4632      	mov	r2, r6
 8003ae2:	2300      	movs	r3, #0
 8003ae4:	f7fd f834 	bl	8000b50 <__aeabi_uldivmod>
 8003ae8:	4b19      	ldr	r3, [pc, #100]	@ (8003b50 <UART_SetConfig+0x274>)
 8003aea:	f5a0 7240 	sub.w	r2, r0, #768	@ 0x300
 8003aee:	429a      	cmp	r2, r3
 8003af0:	f63f af29 	bhi.w	8003946 <UART_SetConfig+0x6a>
 8003af4:	e799      	b.n	8003a2a <UART_SetConfig+0x14e>
 8003af6:	2bc0      	cmp	r3, #192	@ 0xc0
 8003af8:	d082      	beq.n	8003a00 <UART_SetConfig+0x124>
 8003afa:	e724      	b.n	8003946 <UART_SetConfig+0x6a>
 8003afc:	f5b3 6f40 	cmp.w	r3, #3072	@ 0xc00
 8003b00:	f47f af21 	bne.w	8003946 <UART_SetConfig+0x6a>
 8003b04:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 8003b08:	e7cf      	b.n	8003aaa <UART_SetConfig+0x1ce>
 8003b0a:	f7fd ffdf 	bl	8001acc <HAL_RCC_GetPCLK1Freq>
 8003b0e:	2800      	cmp	r0, #0
 8003b10:	d08d      	beq.n	8003a2e <UART_SetConfig+0x152>
 8003b12:	6a65      	ldr	r5, [r4, #36]	@ 0x24
 8003b14:	e791      	b.n	8003a3a <UART_SetConfig+0x15e>
 8003b16:	f7fd ffeb 	bl	8001af0 <HAL_RCC_GetPCLK2Freq>
 8003b1a:	e7f8      	b.n	8003b0e <UART_SetConfig+0x232>
 8003b1c:	f7fd ffd6 	bl	8001acc <HAL_RCC_GetPCLK1Freq>
 8003b20:	e7c0      	b.n	8003aa4 <UART_SetConfig+0x1c8>
 8003b22:	f7fd fe97 	bl	8001854 <HAL_RCC_GetSysClockFreq>
 8003b26:	e7f2      	b.n	8003b0e <UART_SetConfig+0x232>
 8003b28:	4808      	ldr	r0, [pc, #32]	@ (8003b4c <UART_SetConfig+0x270>)
 8003b2a:	e7be      	b.n	8003aaa <UART_SetConfig+0x1ce>
 8003b2c:	cfff69f3 	.word	0xcfff69f3
 8003b30:	40008000 	.word	0x40008000
 8003b34:	40013800 	.word	0x40013800
 8003b38:	40004400 	.word	0x40004400
 8003b3c:	40004800 	.word	0x40004800
 8003b40:	40004c00 	.word	0x40004c00
 8003b44:	40021000 	.word	0x40021000
 8003b48:	08006a30 	.word	0x08006a30
 8003b4c:	00f42400 	.word	0x00f42400
 8003b50:	000ffcff 	.word	0x000ffcff

08003b54 <UART_AdvFeatureConfig>:
 8003b54:	6a83      	ldr	r3, [r0, #40]	@ 0x28
 8003b56:	071a      	lsls	r2, r3, #28
 8003b58:	b410      	push	{r4}
 8003b5a:	d506      	bpl.n	8003b6a <UART_AdvFeatureConfig+0x16>
 8003b5c:	6801      	ldr	r1, [r0, #0]
 8003b5e:	6b84      	ldr	r4, [r0, #56]	@ 0x38
 8003b60:	684a      	ldr	r2, [r1, #4]
 8003b62:	f422 4200 	bic.w	r2, r2, #32768	@ 0x8000
 8003b66:	4322      	orrs	r2, r4
 8003b68:	604a      	str	r2, [r1, #4]
 8003b6a:	07dc      	lsls	r4, r3, #31
 8003b6c:	d506      	bpl.n	8003b7c <UART_AdvFeatureConfig+0x28>
 8003b6e:	6801      	ldr	r1, [r0, #0]
 8003b70:	6ac4      	ldr	r4, [r0, #44]	@ 0x2c
 8003b72:	684a      	ldr	r2, [r1, #4]
 8003b74:	f422 3200 	bic.w	r2, r2, #131072	@ 0x20000
 8003b78:	4322      	orrs	r2, r4
 8003b7a:	604a      	str	r2, [r1, #4]
 8003b7c:	0799      	lsls	r1, r3, #30
 8003b7e:	d506      	bpl.n	8003b8e <UART_AdvFeatureConfig+0x3a>
 8003b80:	6801      	ldr	r1, [r0, #0]
 8003b82:	6b04      	ldr	r4, [r0, #48]	@ 0x30
 8003b84:	684a      	ldr	r2, [r1, #4]
 8003b86:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
 8003b8a:	4322      	orrs	r2, r4
 8003b8c:	604a      	str	r2, [r1, #4]
 8003b8e:	075a      	lsls	r2, r3, #29
 8003b90:	d506      	bpl.n	8003ba0 <UART_AdvFeatureConfig+0x4c>
 8003b92:	6801      	ldr	r1, [r0, #0]
 8003b94:	6b44      	ldr	r4, [r0, #52]	@ 0x34
 8003b96:	684a      	ldr	r2, [r1, #4]
 8003b98:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
 8003b9c:	4322      	orrs	r2, r4
 8003b9e:	604a      	str	r2, [r1, #4]
 8003ba0:	06dc      	lsls	r4, r3, #27
 8003ba2:	d506      	bpl.n	8003bb2 <UART_AdvFeatureConfig+0x5e>
 8003ba4:	6801      	ldr	r1, [r0, #0]
 8003ba6:	6bc4      	ldr	r4, [r0, #60]	@ 0x3c
 8003ba8:	688a      	ldr	r2, [r1, #8]
 8003baa:	f422 5280 	bic.w	r2, r2, #4096	@ 0x1000
 8003bae:	4322      	orrs	r2, r4
 8003bb0:	608a      	str	r2, [r1, #8]
 8003bb2:	0699      	lsls	r1, r3, #26
 8003bb4:	d506      	bpl.n	8003bc4 <UART_AdvFeatureConfig+0x70>
 8003bb6:	6801      	ldr	r1, [r0, #0]
 8003bb8:	6c04      	ldr	r4, [r0, #64]	@ 0x40
 8003bba:	688a      	ldr	r2, [r1, #8]
 8003bbc:	f422 5200 	bic.w	r2, r2, #8192	@ 0x2000
 8003bc0:	4322      	orrs	r2, r4
 8003bc2:	608a      	str	r2, [r1, #8]
 8003bc4:	065a      	lsls	r2, r3, #25
 8003bc6:	d509      	bpl.n	8003bdc <UART_AdvFeatureConfig+0x88>
 8003bc8:	6801      	ldr	r1, [r0, #0]
 8003bca:	6c44      	ldr	r4, [r0, #68]	@ 0x44
 8003bcc:	684a      	ldr	r2, [r1, #4]
 8003bce:	f422 1280 	bic.w	r2, r2, #1048576	@ 0x100000
 8003bd2:	4322      	orrs	r2, r4
 8003bd4:	f5b4 1f80 	cmp.w	r4, #1048576	@ 0x100000
 8003bd8:	604a      	str	r2, [r1, #4]
 8003bda:	d00b      	beq.n	8003bf4 <UART_AdvFeatureConfig+0xa0>
 8003bdc:	061b      	lsls	r3, r3, #24
 8003bde:	d506      	bpl.n	8003bee <UART_AdvFeatureConfig+0x9a>
 8003be0:	6802      	ldr	r2, [r0, #0]
 8003be2:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
 8003be4:	6853      	ldr	r3, [r2, #4]
 8003be6:	f423 2300 	bic.w	r3, r3, #524288	@ 0x80000
 8003bea:	430b      	orrs	r3, r1
 8003bec:	6053      	str	r3, [r2, #4]
 8003bee:	f85d 4b04 	ldr.w	r4, [sp], #4
 8003bf2:	4770      	bx	lr
 8003bf4:	684a      	ldr	r2, [r1, #4]
 8003bf6:	6c84      	ldr	r4, [r0, #72]	@ 0x48
 8003bf8:	f422 02c0 	bic.w	r2, r2, #6291456	@ 0x600000
 8003bfc:	4322      	orrs	r2, r4
 8003bfe:	604a      	str	r2, [r1, #4]
 8003c00:	e7ec      	b.n	8003bdc <UART_AdvFeatureConfig+0x88>
 8003c02:	bf00      	nop

08003c04 <UART_WaitOnFlagUntilTimeout>:
 8003c04:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8003c08:	9f08      	ldr	r7, [sp, #32]
 8003c0a:	460c      	mov	r4, r1
 8003c0c:	6801      	ldr	r1, [r0, #0]
 8003c0e:	4606      	mov	r6, r0
 8003c10:	4615      	mov	r5, r2
 8003c12:	4698      	mov	r8, r3
 8003c14:	69ca      	ldr	r2, [r1, #28]
 8003c16:	ea34 0202 	bics.w	r2, r4, r2
 8003c1a:	bf0c      	ite	eq
 8003c1c:	2201      	moveq	r2, #1
 8003c1e:	2200      	movne	r2, #0
 8003c20:	42aa      	cmp	r2, r5
 8003c22:	d109      	bne.n	8003c38 <UART_WaitOnFlagUntilTimeout+0x34>
 8003c24:	1c78      	adds	r0, r7, #1
 8003c26:	d10b      	bne.n	8003c40 <UART_WaitOnFlagUntilTimeout+0x3c>
 8003c28:	69cb      	ldr	r3, [r1, #28]
 8003c2a:	ea34 0303 	bics.w	r3, r4, r3
 8003c2e:	bf0c      	ite	eq
 8003c30:	2301      	moveq	r3, #1
 8003c32:	2300      	movne	r3, #0
 8003c34:	42ab      	cmp	r3, r5
 8003c36:	d0f7      	beq.n	8003c28 <UART_WaitOnFlagUntilTimeout+0x24>
 8003c38:	2300      	movs	r3, #0
 8003c3a:	4618      	mov	r0, r3
 8003c3c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8003c40:	f7fd fbaa 	bl	8001398 <HAL_GetTick>
 8003c44:	eba0 0008 	sub.w	r0, r0, r8
 8003c48:	42b8      	cmp	r0, r7
 8003c4a:	d81a      	bhi.n	8003c82 <UART_WaitOnFlagUntilTimeout+0x7e>
 8003c4c:	b1cf      	cbz	r7, 8003c82 <UART_WaitOnFlagUntilTimeout+0x7e>
 8003c4e:	6831      	ldr	r1, [r6, #0]
 8003c50:	680b      	ldr	r3, [r1, #0]
 8003c52:	075a      	lsls	r2, r3, #29
 8003c54:	d5de      	bpl.n	8003c14 <UART_WaitOnFlagUntilTimeout+0x10>
 8003c56:	2c80      	cmp	r4, #128	@ 0x80
 8003c58:	d0dc      	beq.n	8003c14 <UART_WaitOnFlagUntilTimeout+0x10>
 8003c5a:	2c40      	cmp	r4, #64	@ 0x40
 8003c5c:	d0da      	beq.n	8003c14 <UART_WaitOnFlagUntilTimeout+0x10>
 8003c5e:	69cb      	ldr	r3, [r1, #28]
 8003c60:	f013 0908 	ands.w	r9, r3, #8
 8003c64:	d10f      	bne.n	8003c86 <UART_WaitOnFlagUntilTimeout+0x82>
 8003c66:	69ca      	ldr	r2, [r1, #28]
 8003c68:	0513      	lsls	r3, r2, #20
 8003c6a:	d5d3      	bpl.n	8003c14 <UART_WaitOnFlagUntilTimeout+0x10>
 8003c6c:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8003c70:	620a      	str	r2, [r1, #32]
 8003c72:	4630      	mov	r0, r6
 8003c74:	f7ff f980 	bl	8002f78 <UART_EndRxTransfer>
 8003c78:	2220      	movs	r2, #32
 8003c7a:	f8c6 2090 	str.w	r2, [r6, #144]	@ 0x90
 8003c7e:	f886 9084 	strb.w	r9, [r6, #132]	@ 0x84
 8003c82:	2303      	movs	r3, #3
 8003c84:	e7d9      	b.n	8003c3a <UART_WaitOnFlagUntilTimeout+0x36>
 8003c86:	2408      	movs	r4, #8
 8003c88:	620c      	str	r4, [r1, #32]
 8003c8a:	4630      	mov	r0, r6
 8003c8c:	f7ff f974 	bl	8002f78 <UART_EndRxTransfer>
 8003c90:	2200      	movs	r2, #0
 8003c92:	2301      	movs	r3, #1
 8003c94:	f8c6 4090 	str.w	r4, [r6, #144]	@ 0x90
 8003c98:	f886 2084 	strb.w	r2, [r6, #132]	@ 0x84
 8003c9c:	e7cd      	b.n	8003c3a <UART_WaitOnFlagUntilTimeout+0x36>
 8003c9e:	bf00      	nop

08003ca0 <UART_CheckIdleState>:
 8003ca0:	b570      	push	{r4, r5, r6, lr}
 8003ca2:	4604      	mov	r4, r0
 8003ca4:	2600      	movs	r6, #0
 8003ca6:	b082      	sub	sp, #8
 8003ca8:	f8c0 6090 	str.w	r6, [r0, #144]	@ 0x90
 8003cac:	f7fd fb74 	bl	8001398 <HAL_GetTick>
 8003cb0:	6823      	ldr	r3, [r4, #0]
 8003cb2:	681a      	ldr	r2, [r3, #0]
 8003cb4:	0712      	lsls	r2, r2, #28
 8003cb6:	4605      	mov	r5, r0
 8003cb8:	d410      	bmi.n	8003cdc <UART_CheckIdleState+0x3c>
 8003cba:	681b      	ldr	r3, [r3, #0]
 8003cbc:	075b      	lsls	r3, r3, #29
 8003cbe:	d427      	bmi.n	8003d10 <UART_CheckIdleState+0x70>
 8003cc0:	2300      	movs	r3, #0
 8003cc2:	2220      	movs	r2, #32
 8003cc4:	f8c4 2088 	str.w	r2, [r4, #136]	@ 0x88
 8003cc8:	4618      	mov	r0, r3
 8003cca:	f8c4 208c 	str.w	r2, [r4, #140]	@ 0x8c
 8003cce:	66e3      	str	r3, [r4, #108]	@ 0x6c
 8003cd0:	6723      	str	r3, [r4, #112]	@ 0x70
 8003cd2:	2300      	movs	r3, #0
 8003cd4:	f884 3084 	strb.w	r3, [r4, #132]	@ 0x84
 8003cd8:	b002      	add	sp, #8
 8003cda:	bd70      	pop	{r4, r5, r6, pc}
 8003cdc:	f06f 437e 	mvn.w	r3, #4261412864	@ 0xfe000000
 8003ce0:	9300      	str	r3, [sp, #0]
 8003ce2:	4632      	mov	r2, r6
 8003ce4:	4603      	mov	r3, r0
 8003ce6:	f44f 1100 	mov.w	r1, #2097152	@ 0x200000
 8003cea:	4620      	mov	r0, r4
 8003cec:	f7ff ff8a 	bl	8003c04 <UART_WaitOnFlagUntilTimeout>
 8003cf0:	6823      	ldr	r3, [r4, #0]
 8003cf2:	2800      	cmp	r0, #0
 8003cf4:	d0e1      	beq.n	8003cba <UART_CheckIdleState+0x1a>
 8003cf6:	e853 2f00 	ldrex	r2, [r3]
 8003cfa:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 8003cfe:	e843 2100 	strex	r1, r2, [r3]
 8003d02:	2900      	cmp	r1, #0
 8003d04:	d1f7      	bne.n	8003cf6 <UART_CheckIdleState+0x56>
 8003d06:	2320      	movs	r3, #32
 8003d08:	f8c4 3088 	str.w	r3, [r4, #136]	@ 0x88
 8003d0c:	2003      	movs	r0, #3
 8003d0e:	e7e0      	b.n	8003cd2 <UART_CheckIdleState+0x32>
 8003d10:	f06f 437e 	mvn.w	r3, #4261412864	@ 0xfe000000
 8003d14:	9300      	str	r3, [sp, #0]
 8003d16:	2200      	movs	r2, #0
 8003d18:	462b      	mov	r3, r5
 8003d1a:	f44f 0180 	mov.w	r1, #4194304	@ 0x400000
 8003d1e:	4620      	mov	r0, r4
 8003d20:	f7ff ff70 	bl	8003c04 <UART_WaitOnFlagUntilTimeout>
 8003d24:	2800      	cmp	r0, #0
 8003d26:	d0cb      	beq.n	8003cc0 <UART_CheckIdleState+0x20>
 8003d28:	6823      	ldr	r3, [r4, #0]
 8003d2a:	e853 2f00 	ldrex	r2, [r3]
 8003d2e:	f422 7290 	bic.w	r2, r2, #288	@ 0x120
 8003d32:	e843 2100 	strex	r1, r2, [r3]
 8003d36:	2900      	cmp	r1, #0
 8003d38:	d1f7      	bne.n	8003d2a <UART_CheckIdleState+0x8a>
 8003d3a:	f103 0208 	add.w	r2, r3, #8
 8003d3e:	e852 2f00 	ldrex	r2, [r2]
 8003d42:	f022 0201 	bic.w	r2, r2, #1
 8003d46:	f103 0008 	add.w	r0, r3, #8
 8003d4a:	e840 2100 	strex	r1, r2, [r0]
 8003d4e:	2900      	cmp	r1, #0
 8003d50:	d1f3      	bne.n	8003d3a <UART_CheckIdleState+0x9a>
 8003d52:	2320      	movs	r3, #32
 8003d54:	f8c4 308c 	str.w	r3, [r4, #140]	@ 0x8c
 8003d58:	e7d8      	b.n	8003d0c <UART_CheckIdleState+0x6c>
 8003d5a:	bf00      	nop

08003d5c <HAL_UART_Init>:
 8003d5c:	b380      	cbz	r0, 8003dc0 <HAL_UART_Init+0x64>
 8003d5e:	f8d0 3088 	ldr.w	r3, [r0, #136]	@ 0x88
 8003d62:	b510      	push	{r4, lr}
 8003d64:	4604      	mov	r4, r0
 8003d66:	b333      	cbz	r3, 8003db6 <HAL_UART_Init+0x5a>
 8003d68:	6822      	ldr	r2, [r4, #0]
 8003d6a:	6aa1      	ldr	r1, [r4, #40]	@ 0x28
 8003d6c:	2324      	movs	r3, #36	@ 0x24
 8003d6e:	f8c4 3088 	str.w	r3, [r4, #136]	@ 0x88
 8003d72:	6813      	ldr	r3, [r2, #0]
 8003d74:	f023 0301 	bic.w	r3, r3, #1
 8003d78:	6013      	str	r3, [r2, #0]
 8003d7a:	b9c1      	cbnz	r1, 8003dae <HAL_UART_Init+0x52>
 8003d7c:	4620      	mov	r0, r4
 8003d7e:	f7ff fdad 	bl	80038dc <UART_SetConfig>
 8003d82:	2801      	cmp	r0, #1
 8003d84:	d011      	beq.n	8003daa <HAL_UART_Init+0x4e>
 8003d86:	6823      	ldr	r3, [r4, #0]
 8003d88:	685a      	ldr	r2, [r3, #4]
 8003d8a:	f422 4290 	bic.w	r2, r2, #18432	@ 0x4800
 8003d8e:	605a      	str	r2, [r3, #4]
 8003d90:	689a      	ldr	r2, [r3, #8]
 8003d92:	f022 022a 	bic.w	r2, r2, #42	@ 0x2a
 8003d96:	609a      	str	r2, [r3, #8]
 8003d98:	681a      	ldr	r2, [r3, #0]
 8003d9a:	f042 0201 	orr.w	r2, r2, #1
 8003d9e:	4620      	mov	r0, r4
 8003da0:	601a      	str	r2, [r3, #0]
 8003da2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003da6:	f7ff bf7b 	b.w	8003ca0 <UART_CheckIdleState>
 8003daa:	2001      	movs	r0, #1
 8003dac:	bd10      	pop	{r4, pc}
 8003dae:	4620      	mov	r0, r4
 8003db0:	f7ff fed0 	bl	8003b54 <UART_AdvFeatureConfig>
 8003db4:	e7e2      	b.n	8003d7c <HAL_UART_Init+0x20>
 8003db6:	f880 3084 	strb.w	r3, [r0, #132]	@ 0x84
 8003dba:	f7fe ffa1 	bl	8002d00 <HAL_UART_MspInit>
 8003dbe:	e7d3      	b.n	8003d68 <HAL_UART_Init+0xc>
 8003dc0:	2001      	movs	r0, #1
 8003dc2:	4770      	bx	lr

08003dc4 <UART_Start_Receive_IT>:
 8003dc4:	b430      	push	{r4, r5}
 8003dc6:	6884      	ldr	r4, [r0, #8]
 8003dc8:	6581      	str	r1, [r0, #88]	@ 0x58
 8003dca:	2300      	movs	r3, #0
 8003dcc:	f5b4 5f80 	cmp.w	r4, #4096	@ 0x1000
 8003dd0:	f8a0 205c 	strh.w	r2, [r0, #92]	@ 0x5c
 8003dd4:	f8a0 205e 	strh.w	r2, [r0, #94]	@ 0x5e
 8003dd8:	6743      	str	r3, [r0, #116]	@ 0x74
 8003dda:	d04f      	beq.n	8003e7c <UART_Start_Receive_IT+0xb8>
 8003ddc:	bb84      	cbnz	r4, 8003e40 <UART_Start_Receive_IT+0x7c>
 8003dde:	6903      	ldr	r3, [r0, #16]
 8003de0:	2b00      	cmp	r3, #0
 8003de2:	bf0c      	ite	eq
 8003de4:	23ff      	moveq	r3, #255	@ 0xff
 8003de6:	237f      	movne	r3, #127	@ 0x7f
 8003de8:	2122      	movs	r1, #34	@ 0x22
 8003dea:	2400      	movs	r4, #0
 8003dec:	f8c0 4090 	str.w	r4, [r0, #144]	@ 0x90
 8003df0:	f8c0 108c 	str.w	r1, [r0, #140]	@ 0x8c
 8003df4:	6801      	ldr	r1, [r0, #0]
 8003df6:	f8a0 3060 	strh.w	r3, [r0, #96]	@ 0x60
 8003dfa:	f101 0308 	add.w	r3, r1, #8
 8003dfe:	e853 3f00 	ldrex	r3, [r3]
 8003e02:	f043 0301 	orr.w	r3, r3, #1
 8003e06:	f101 0508 	add.w	r5, r1, #8
 8003e0a:	e845 3400 	strex	r4, r3, [r5]
 8003e0e:	2c00      	cmp	r4, #0
 8003e10:	d1f3      	bne.n	8003dfa <UART_Start_Receive_IT+0x36>
 8003e12:	6e43      	ldr	r3, [r0, #100]	@ 0x64
 8003e14:	6885      	ldr	r5, [r0, #8]
 8003e16:	6904      	ldr	r4, [r0, #16]
 8003e18:	f1b3 5f00 	cmp.w	r3, #536870912	@ 0x20000000
 8003e1c:	d035      	beq.n	8003e8a <UART_Start_Receive_IT+0xc6>
 8003e1e:	f5b5 5f80 	cmp.w	r5, #4096	@ 0x1000
 8003e22:	d016      	beq.n	8003e52 <UART_Start_Receive_IT+0x8e>
 8003e24:	4b32      	ldr	r3, [pc, #200]	@ (8003ef0 <UART_Start_Receive_IT+0x12c>)
 8003e26:	6743      	str	r3, [r0, #116]	@ 0x74
 8003e28:	b1bc      	cbz	r4, 8003e5a <UART_Start_Receive_IT+0x96>
 8003e2a:	e851 3f00 	ldrex	r3, [r1]
 8003e2e:	f443 7390 	orr.w	r3, r3, #288	@ 0x120
 8003e32:	e841 3200 	strex	r2, r3, [r1]
 8003e36:	2a00      	cmp	r2, #0
 8003e38:	d1f7      	bne.n	8003e2a <UART_Start_Receive_IT+0x66>
 8003e3a:	2000      	movs	r0, #0
 8003e3c:	bc30      	pop	{r4, r5}
 8003e3e:	4770      	bx	lr
 8003e40:	f1b4 5f80 	cmp.w	r4, #268435456	@ 0x10000000
 8003e44:	d1d0      	bne.n	8003de8 <UART_Start_Receive_IT+0x24>
 8003e46:	6903      	ldr	r3, [r0, #16]
 8003e48:	2b00      	cmp	r3, #0
 8003e4a:	bf0c      	ite	eq
 8003e4c:	237f      	moveq	r3, #127	@ 0x7f
 8003e4e:	233f      	movne	r3, #63	@ 0x3f
 8003e50:	e7ca      	b.n	8003de8 <UART_Start_Receive_IT+0x24>
 8003e52:	2c00      	cmp	r4, #0
 8003e54:	d146      	bne.n	8003ee4 <UART_Start_Receive_IT+0x120>
 8003e56:	4b27      	ldr	r3, [pc, #156]	@ (8003ef4 <UART_Start_Receive_IT+0x130>)
 8003e58:	6743      	str	r3, [r0, #116]	@ 0x74
 8003e5a:	e851 3f00 	ldrex	r3, [r1]
 8003e5e:	f043 0320 	orr.w	r3, r3, #32
 8003e62:	e841 3200 	strex	r2, r3, [r1]
 8003e66:	2a00      	cmp	r2, #0
 8003e68:	d0e7      	beq.n	8003e3a <UART_Start_Receive_IT+0x76>
 8003e6a:	e851 3f00 	ldrex	r3, [r1]
 8003e6e:	f043 0320 	orr.w	r3, r3, #32
 8003e72:	e841 3200 	strex	r2, r3, [r1]
 8003e76:	2a00      	cmp	r2, #0
 8003e78:	d1ef      	bne.n	8003e5a <UART_Start_Receive_IT+0x96>
 8003e7a:	e7de      	b.n	8003e3a <UART_Start_Receive_IT+0x76>
 8003e7c:	6901      	ldr	r1, [r0, #16]
 8003e7e:	2900      	cmp	r1, #0
 8003e80:	f240 13ff 	movw	r3, #511	@ 0x1ff
 8003e84:	bf18      	it	ne
 8003e86:	23ff      	movne	r3, #255	@ 0xff
 8003e88:	e7ae      	b.n	8003de8 <UART_Start_Receive_IT+0x24>
 8003e8a:	f8b0 3068 	ldrh.w	r3, [r0, #104]	@ 0x68
 8003e8e:	4293      	cmp	r3, r2
 8003e90:	d8c5      	bhi.n	8003e1e <UART_Start_Receive_IT+0x5a>
 8003e92:	f5b5 5f80 	cmp.w	r5, #4096	@ 0x1000
 8003e96:	d011      	beq.n	8003ebc <UART_Start_Receive_IT+0xf8>
 8003e98:	4b17      	ldr	r3, [pc, #92]	@ (8003ef8 <UART_Start_Receive_IT+0x134>)
 8003e9a:	6743      	str	r3, [r0, #116]	@ 0x74
 8003e9c:	b98c      	cbnz	r4, 8003ec2 <UART_Start_Receive_IT+0xfe>
 8003e9e:	f101 0308 	add.w	r3, r1, #8
 8003ea2:	e853 3f00 	ldrex	r3, [r3]
 8003ea6:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8003eaa:	f101 0008 	add.w	r0, r1, #8
 8003eae:	e840 3200 	strex	r2, r3, [r0]
 8003eb2:	2a00      	cmp	r2, #0
 8003eb4:	d1f3      	bne.n	8003e9e <UART_Start_Receive_IT+0xda>
 8003eb6:	2000      	movs	r0, #0
 8003eb8:	bc30      	pop	{r4, r5}
 8003eba:	4770      	bx	lr
 8003ebc:	b1ac      	cbz	r4, 8003eea <UART_Start_Receive_IT+0x126>
 8003ebe:	4b0e      	ldr	r3, [pc, #56]	@ (8003ef8 <UART_Start_Receive_IT+0x134>)
 8003ec0:	6743      	str	r3, [r0, #116]	@ 0x74
 8003ec2:	e851 3f00 	ldrex	r3, [r1]
 8003ec6:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8003eca:	e841 3200 	strex	r2, r3, [r1]
 8003ece:	2a00      	cmp	r2, #0
 8003ed0:	d0e5      	beq.n	8003e9e <UART_Start_Receive_IT+0xda>
 8003ed2:	e851 3f00 	ldrex	r3, [r1]
 8003ed6:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8003eda:	e841 3200 	strex	r2, r3, [r1]
 8003ede:	2a00      	cmp	r2, #0
 8003ee0:	d1ef      	bne.n	8003ec2 <UART_Start_Receive_IT+0xfe>
 8003ee2:	e7dc      	b.n	8003e9e <UART_Start_Receive_IT+0xda>
 8003ee4:	4b02      	ldr	r3, [pc, #8]	@ (8003ef0 <UART_Start_Receive_IT+0x12c>)
 8003ee6:	6743      	str	r3, [r0, #116]	@ 0x74
 8003ee8:	e79f      	b.n	8003e2a <UART_Start_Receive_IT+0x66>
 8003eea:	4b04      	ldr	r3, [pc, #16]	@ (8003efc <UART_Start_Receive_IT+0x138>)
 8003eec:	6743      	str	r3, [r0, #116]	@ 0x74
 8003eee:	e7d6      	b.n	8003e9e <UART_Start_Receive_IT+0xda>
 8003ef0:	0800336d 	.word	0x0800336d
 8003ef4:	08003449 	.word	0x08003449
 8003ef8:	0800351d 	.word	0x0800351d
 8003efc:	080036f9 	.word	0x080036f9

08003f00 <HAL_UART_Receive_IT>:
 8003f00:	f8d0 308c 	ldr.w	r3, [r0, #140]	@ 0x8c
 8003f04:	2b20      	cmp	r3, #32
 8003f06:	d118      	bne.n	8003f3a <HAL_UART_Receive_IT+0x3a>
 8003f08:	b101      	cbz	r1, 8003f0c <HAL_UART_Receive_IT+0xc>
 8003f0a:	b90a      	cbnz	r2, 8003f10 <HAL_UART_Receive_IT+0x10>
 8003f0c:	2001      	movs	r0, #1
 8003f0e:	4770      	bx	lr
 8003f10:	b430      	push	{r4, r5}
 8003f12:	4b0b      	ldr	r3, [pc, #44]	@ (8003f40 <HAL_UART_Receive_IT+0x40>)
 8003f14:	6804      	ldr	r4, [r0, #0]
 8003f16:	2500      	movs	r5, #0
 8003f18:	429c      	cmp	r4, r3
 8003f1a:	66c5      	str	r5, [r0, #108]	@ 0x6c
 8003f1c:	d00a      	beq.n	8003f34 <HAL_UART_Receive_IT+0x34>
 8003f1e:	6863      	ldr	r3, [r4, #4]
 8003f20:	021b      	lsls	r3, r3, #8
 8003f22:	d507      	bpl.n	8003f34 <HAL_UART_Receive_IT+0x34>
 8003f24:	e854 3f00 	ldrex	r3, [r4]
 8003f28:	f043 6380 	orr.w	r3, r3, #67108864	@ 0x4000000
 8003f2c:	e844 3500 	strex	r5, r3, [r4]
 8003f30:	2d00      	cmp	r5, #0
 8003f32:	d1f7      	bne.n	8003f24 <HAL_UART_Receive_IT+0x24>
 8003f34:	bc30      	pop	{r4, r5}
 8003f36:	f7ff bf45 	b.w	8003dc4 <UART_Start_Receive_IT>
 8003f3a:	2002      	movs	r0, #2
 8003f3c:	4770      	bx	lr
 8003f3e:	bf00      	nop
 8003f40:	40008000 	.word	0x40008000

08003f44 <UARTEx_SetNbDataToProcess.part.0>:
 8003f44:	6803      	ldr	r3, [r0, #0]
 8003f46:	6899      	ldr	r1, [r3, #8]
 8003f48:	689b      	ldr	r3, [r3, #8]
 8003f4a:	b430      	push	{r4, r5}
 8003f4c:	ea4f 7c53 	mov.w	ip, r3, lsr #29
 8003f50:	4d0a      	ldr	r5, [pc, #40]	@ (8003f7c <UARTEx_SetNbDataToProcess.part.0+0x38>)
 8003f52:	4c0b      	ldr	r4, [pc, #44]	@ (8003f80 <UARTEx_SetNbDataToProcess.part.0+0x3c>)
 8003f54:	f815 200c 	ldrb.w	r2, [r5, ip]
 8003f58:	f3c1 6142 	ubfx	r1, r1, #25, #3
 8003f5c:	00d2      	lsls	r2, r2, #3
 8003f5e:	5c6b      	ldrb	r3, [r5, r1]
 8003f60:	f814 500c 	ldrb.w	r5, [r4, ip]
 8003f64:	5c61      	ldrb	r1, [r4, r1]
 8003f66:	fbb2 f2f5 	udiv	r2, r2, r5
 8003f6a:	00db      	lsls	r3, r3, #3
 8003f6c:	bc30      	pop	{r4, r5}
 8003f6e:	fbb3 f3f1 	udiv	r3, r3, r1
 8003f72:	f8a0 206a 	strh.w	r2, [r0, #106]	@ 0x6a
 8003f76:	f8a0 3068 	strh.w	r3, [r0, #104]	@ 0x68
 8003f7a:	4770      	bx	lr
 8003f7c:	08006a50 	.word	0x08006a50
 8003f80:	08006a48 	.word	0x08006a48

08003f84 <HAL_UARTEx_WakeupCallback>:
 8003f84:	4770      	bx	lr
 8003f86:	bf00      	nop

08003f88 <HAL_UARTEx_RxFifoFullCallback>:
 8003f88:	4770      	bx	lr
 8003f8a:	bf00      	nop

08003f8c <HAL_UARTEx_TxFifoEmptyCallback>:
 8003f8c:	4770      	bx	lr
 8003f8e:	bf00      	nop

08003f90 <HAL_UARTEx_DisableFifoMode>:
 8003f90:	f890 3084 	ldrb.w	r3, [r0, #132]	@ 0x84
 8003f94:	2b01      	cmp	r3, #1
 8003f96:	d017      	beq.n	8003fc8 <HAL_UARTEx_DisableFifoMode+0x38>
 8003f98:	6802      	ldr	r2, [r0, #0]
 8003f9a:	2324      	movs	r3, #36	@ 0x24
 8003f9c:	b410      	push	{r4}
 8003f9e:	f8c0 3088 	str.w	r3, [r0, #136]	@ 0x88
 8003fa2:	6811      	ldr	r1, [r2, #0]
 8003fa4:	6814      	ldr	r4, [r2, #0]
 8003fa6:	2300      	movs	r3, #0
 8003fa8:	f024 0401 	bic.w	r4, r4, #1
 8003fac:	f021 5100 	bic.w	r1, r1, #536870912	@ 0x20000000
 8003fb0:	6014      	str	r4, [r2, #0]
 8003fb2:	6643      	str	r3, [r0, #100]	@ 0x64
 8003fb4:	6011      	str	r1, [r2, #0]
 8003fb6:	f880 3084 	strb.w	r3, [r0, #132]	@ 0x84
 8003fba:	2220      	movs	r2, #32
 8003fbc:	f8c0 2088 	str.w	r2, [r0, #136]	@ 0x88
 8003fc0:	f85d 4b04 	ldr.w	r4, [sp], #4
 8003fc4:	4618      	mov	r0, r3
 8003fc6:	4770      	bx	lr
 8003fc8:	2002      	movs	r0, #2
 8003fca:	4770      	bx	lr

08003fcc <HAL_UARTEx_SetTxFifoThreshold>:
 8003fcc:	f890 3084 	ldrb.w	r3, [r0, #132]	@ 0x84
 8003fd0:	2b01      	cmp	r3, #1
 8003fd2:	d01f      	beq.n	8004014 <HAL_UARTEx_SetTxFifoThreshold+0x48>
 8003fd4:	b570      	push	{r4, r5, r6, lr}
 8003fd6:	2324      	movs	r3, #36	@ 0x24
 8003fd8:	6805      	ldr	r5, [r0, #0]
 8003fda:	f8c0 3088 	str.w	r3, [r0, #136]	@ 0x88
 8003fde:	682e      	ldr	r6, [r5, #0]
 8003fe0:	682b      	ldr	r3, [r5, #0]
 8003fe2:	f023 0301 	bic.w	r3, r3, #1
 8003fe6:	602b      	str	r3, [r5, #0]
 8003fe8:	68ab      	ldr	r3, [r5, #8]
 8003fea:	f023 4360 	bic.w	r3, r3, #3758096384	@ 0xe0000000
 8003fee:	4319      	orrs	r1, r3
 8003ff0:	6e43      	ldr	r3, [r0, #100]	@ 0x64
 8003ff2:	60a9      	str	r1, [r5, #8]
 8003ff4:	4604      	mov	r4, r0
 8003ff6:	b14b      	cbz	r3, 800400c <HAL_UARTEx_SetTxFifoThreshold+0x40>
 8003ff8:	f7ff ffa4 	bl	8003f44 <UARTEx_SetNbDataToProcess.part.0>
 8003ffc:	2000      	movs	r0, #0
 8003ffe:	602e      	str	r6, [r5, #0]
 8004000:	2320      	movs	r3, #32
 8004002:	f884 0084 	strb.w	r0, [r4, #132]	@ 0x84
 8004006:	f8c4 3088 	str.w	r3, [r4, #136]	@ 0x88
 800400a:	bd70      	pop	{r4, r5, r6, pc}
 800400c:	f04f 1301 	mov.w	r3, #65537	@ 0x10001
 8004010:	6683      	str	r3, [r0, #104]	@ 0x68
 8004012:	e7f3      	b.n	8003ffc <HAL_UARTEx_SetTxFifoThreshold+0x30>
 8004014:	2002      	movs	r0, #2
 8004016:	4770      	bx	lr

08004018 <HAL_UARTEx_SetRxFifoThreshold>:
 8004018:	f890 3084 	ldrb.w	r3, [r0, #132]	@ 0x84
 800401c:	2b01      	cmp	r3, #1
 800401e:	d01f      	beq.n	8004060 <HAL_UARTEx_SetRxFifoThreshold+0x48>
 8004020:	b570      	push	{r4, r5, r6, lr}
 8004022:	2324      	movs	r3, #36	@ 0x24
 8004024:	6805      	ldr	r5, [r0, #0]
 8004026:	f8c0 3088 	str.w	r3, [r0, #136]	@ 0x88
 800402a:	682e      	ldr	r6, [r5, #0]
 800402c:	682b      	ldr	r3, [r5, #0]
 800402e:	f023 0301 	bic.w	r3, r3, #1
 8004032:	602b      	str	r3, [r5, #0]
 8004034:	68ab      	ldr	r3, [r5, #8]
 8004036:	f023 6360 	bic.w	r3, r3, #234881024	@ 0xe000000
 800403a:	4319      	orrs	r1, r3
 800403c:	6e43      	ldr	r3, [r0, #100]	@ 0x64
 800403e:	60a9      	str	r1, [r5, #8]
 8004040:	4604      	mov	r4, r0
 8004042:	b14b      	cbz	r3, 8004058 <HAL_UARTEx_SetRxFifoThreshold+0x40>
 8004044:	f7ff ff7e 	bl	8003f44 <UARTEx_SetNbDataToProcess.part.0>
 8004048:	2000      	movs	r0, #0
 800404a:	602e      	str	r6, [r5, #0]
 800404c:	2320      	movs	r3, #32
 800404e:	f884 0084 	strb.w	r0, [r4, #132]	@ 0x84
 8004052:	f8c4 3088 	str.w	r3, [r4, #136]	@ 0x88
 8004056:	bd70      	pop	{r4, r5, r6, pc}
 8004058:	f04f 1301 	mov.w	r3, #65537	@ 0x10001
 800405c:	6683      	str	r3, [r0, #104]	@ 0x68
 800405e:	e7f3      	b.n	8004048 <HAL_UARTEx_SetRxFifoThreshold+0x30>
 8004060:	2002      	movs	r0, #2
 8004062:	4770      	bx	lr

08004064 <MX_ADC1_Init>:
 8004064:	b510      	push	{r4, lr}
 8004066:	2400      	movs	r4, #0
 8004068:	b08c      	sub	sp, #48	@ 0x30
 800406a:	2220      	movs	r2, #32
 800406c:	4621      	mov	r1, r4
 800406e:	a804      	add	r0, sp, #16
 8004070:	e9cd 4401 	strd	r4, r4, [sp, #4]
 8004074:	9403      	str	r4, [sp, #12]
 8004076:	f002 f9e1 	bl	800643c <memset>
 800407a:	4822      	ldr	r0, [pc, #136]	@ (8004104 <MX_ADC1_Init+0xa0>)
 800407c:	f44f 3300 	mov.w	r3, #131072	@ 0x20000
 8004080:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
 8004084:	e9c0 2300 	strd	r2, r3, [r0]
 8004088:	2308      	movs	r3, #8
 800408a:	6083      	str	r3, [r0, #8]
 800408c:	2304      	movs	r3, #4
 800408e:	e9c0 4305 	strd	r4, r3, [r0, #20]
 8004092:	2301      	movs	r3, #1
 8004094:	6203      	str	r3, [r0, #32]
 8004096:	f44f 6390 	mov.w	r3, #1152	@ 0x480
 800409a:	62c3      	str	r3, [r0, #44]	@ 0x2c
 800409c:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 80040a0:	e9c0 4403 	strd	r4, r4, [r0, #12]
 80040a4:	8384      	strh	r4, [r0, #28]
 80040a6:	f880 4024 	strb.w	r4, [r0, #36]	@ 0x24
 80040aa:	6303      	str	r3, [r0, #48]	@ 0x30
 80040ac:	f880 4038 	strb.w	r4, [r0, #56]	@ 0x38
 80040b0:	63c4      	str	r4, [r0, #60]	@ 0x3c
 80040b2:	f880 4040 	strb.w	r4, [r0, #64]	@ 0x40
 80040b6:	f000 f8ed 	bl	8004294 <HAL_ADC_Init>
 80040ba:	b9c0      	cbnz	r0, 80040ee <MX_ADC1_Init+0x8a>
 80040bc:	2300      	movs	r3, #0
 80040be:	4811      	ldr	r0, [pc, #68]	@ (8004104 <MX_ADC1_Init+0xa0>)
 80040c0:	9301      	str	r3, [sp, #4]
 80040c2:	a901      	add	r1, sp, #4
 80040c4:	f000 ff9c 	bl	8005000 <HAL_ADCEx_MultiModeConfigChannel>
 80040c8:	b9c0      	cbnz	r0, 80040fc <MX_ADC1_Init+0x98>
 80040ca:	480f      	ldr	r0, [pc, #60]	@ (8004108 <MX_ADC1_Init+0xa4>)
 80040cc:	2206      	movs	r2, #6
 80040ce:	e9cd 0204 	strd	r0, r2, [sp, #16]
 80040d2:	2300      	movs	r3, #0
 80040d4:	247f      	movs	r4, #127	@ 0x7f
 80040d6:	2204      	movs	r2, #4
 80040d8:	480a      	ldr	r0, [pc, #40]	@ (8004104 <MX_ADC1_Init+0xa0>)
 80040da:	a904      	add	r1, sp, #16
 80040dc:	e9cd 3406 	strd	r3, r4, [sp, #24]
 80040e0:	e9cd 2308 	strd	r2, r3, [sp, #32]
 80040e4:	f000 fb3e 	bl	8004764 <HAL_ADC_ConfigChannel>
 80040e8:	b920      	cbnz	r0, 80040f4 <MX_ADC1_Init+0x90>
 80040ea:	b00c      	add	sp, #48	@ 0x30
 80040ec:	bd10      	pop	{r4, pc}
 80040ee:	f7fd f87f 	bl	80011f0 <Error_Handler>
 80040f2:	e7e3      	b.n	80040bc <MX_ADC1_Init+0x58>
 80040f4:	f7fd f87c 	bl	80011f0 <Error_Handler>
 80040f8:	b00c      	add	sp, #48	@ 0x30
 80040fa:	bd10      	pop	{r4, pc}
 80040fc:	f7fd f878 	bl	80011f0 <Error_Handler>
 8004100:	e7e3      	b.n	80040ca <MX_ADC1_Init+0x66>
 8004102:	bf00      	nop
 8004104:	2000327c 	.word	0x2000327c
 8004108:	04300002 	.word	0x04300002

0800410c <HAL_ADC_MspInit>:
 800410c:	b570      	push	{r4, r5, r6, lr}
 800410e:	4604      	mov	r4, r0
 8004110:	b098      	sub	sp, #96	@ 0x60
 8004112:	2100      	movs	r1, #0
 8004114:	2244      	movs	r2, #68	@ 0x44
 8004116:	a807      	add	r0, sp, #28
 8004118:	e9cd 1102 	strd	r1, r1, [sp, #8]
 800411c:	e9cd 1104 	strd	r1, r1, [sp, #16]
 8004120:	9106      	str	r1, [sp, #24]
 8004122:	f002 f98b 	bl	800643c <memset>
 8004126:	6823      	ldr	r3, [r4, #0]
 8004128:	f1b3 4fa0 	cmp.w	r3, #1342177280	@ 0x50000000
 800412c:	d001      	beq.n	8004132 <HAL_ADC_MspInit+0x26>
 800412e:	b018      	add	sp, #96	@ 0x60
 8004130:	bd70      	pop	{r4, r5, r6, pc}
 8004132:	f44f 4200 	mov.w	r2, #32768	@ 0x8000
 8004136:	f04f 5300 	mov.w	r3, #536870912	@ 0x20000000
 800413a:	a807      	add	r0, sp, #28
 800413c:	9207      	str	r2, [sp, #28]
 800413e:	9316      	str	r3, [sp, #88]	@ 0x58
 8004140:	f7fd fce8 	bl	8001b14 <HAL_RCCEx_PeriphCLKConfig>
 8004144:	2800      	cmp	r0, #0
 8004146:	d13e      	bne.n	80041c6 <HAL_ADC_MspInit+0xba>
 8004148:	4b22      	ldr	r3, [pc, #136]	@ (80041d4 <HAL_ADC_MspInit+0xc8>)
 800414a:	4d23      	ldr	r5, [pc, #140]	@ (80041d8 <HAL_ADC_MspInit+0xcc>)
 800414c:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 800414e:	f442 5200 	orr.w	r2, r2, #8192	@ 0x2000
 8004152:	64da      	str	r2, [r3, #76]	@ 0x4c
 8004154:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 8004156:	f402 5200 	and.w	r2, r2, #8192	@ 0x2000
 800415a:	9200      	str	r2, [sp, #0]
 800415c:	9a00      	ldr	r2, [sp, #0]
 800415e:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 8004160:	f042 0201 	orr.w	r2, r2, #1
 8004164:	64da      	str	r2, [r3, #76]	@ 0x4c
 8004166:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8004168:	f003 0301 	and.w	r3, r3, #1
 800416c:	2600      	movs	r6, #0
 800416e:	9301      	str	r3, [sp, #4]
 8004170:	2201      	movs	r2, #1
 8004172:	2303      	movs	r3, #3
 8004174:	f04f 4090 	mov.w	r0, #1207959552	@ 0x48000000
 8004178:	a902      	add	r1, sp, #8
 800417a:	e9cd 2302 	strd	r2, r3, [sp, #8]
 800417e:	9604      	str	r6, [sp, #16]
 8004180:	9b01      	ldr	r3, [sp, #4]
 8004182:	f7fd fe17 	bl	8001db4 <HAL_GPIO_Init>
 8004186:	4a15      	ldr	r2, [pc, #84]	@ (80041dc <HAL_ADC_MspInit+0xd0>)
 8004188:	622e      	str	r6, [r5, #32]
 800418a:	2305      	movs	r3, #5
 800418c:	e9c5 2300 	strd	r2, r3, [r5]
 8004190:	f44f 7380 	mov.w	r3, #256	@ 0x100
 8004194:	2280      	movs	r2, #128	@ 0x80
 8004196:	e9c5 2304 	strd	r2, r3, [r5, #16]
 800419a:	4628      	mov	r0, r5
 800419c:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 80041a0:	e9c5 6602 	strd	r6, r6, [r5, #8]
 80041a4:	e9c5 3606 	strd	r3, r6, [r5, #24]
 80041a8:	f7fd ff12 	bl	8001fd0 <HAL_DMA_Init>
 80041ac:	b970      	cbnz	r0, 80041cc <HAL_ADC_MspInit+0xc0>
 80041ae:	2200      	movs	r2, #0
 80041b0:	4611      	mov	r1, r2
 80041b2:	6565      	str	r5, [r4, #84]	@ 0x54
 80041b4:	2012      	movs	r0, #18
 80041b6:	62ac      	str	r4, [r5, #40]	@ 0x28
 80041b8:	f7fe f944 	bl	8002444 <HAL_NVIC_SetPriority>
 80041bc:	2012      	movs	r0, #18
 80041be:	f7fe f97d 	bl	80024bc <HAL_NVIC_EnableIRQ>
 80041c2:	b018      	add	sp, #96	@ 0x60
 80041c4:	bd70      	pop	{r4, r5, r6, pc}
 80041c6:	f7fd f813 	bl	80011f0 <Error_Handler>
 80041ca:	e7bd      	b.n	8004148 <HAL_ADC_MspInit+0x3c>
 80041cc:	f7fd f810 	bl	80011f0 <Error_Handler>
 80041d0:	e7ed      	b.n	80041ae <HAL_ADC_MspInit+0xa2>
 80041d2:	bf00      	nop
 80041d4:	40021000 	.word	0x40021000
 80041d8:	2000321c 	.word	0x2000321c
 80041dc:	40020008 	.word	0x40020008

080041e0 <MX_TIM3_Init>:
 80041e0:	b500      	push	{lr}
 80041e2:	481a      	ldr	r0, [pc, #104]	@ (800424c <MX_TIM3_Init+0x6c>)
 80041e4:	4a1a      	ldr	r2, [pc, #104]	@ (8004250 <MX_TIM3_Init+0x70>)
 80041e6:	b089      	sub	sp, #36	@ 0x24
 80041e8:	6002      	str	r2, [r0, #0]
 80041ea:	2203      	movs	r2, #3
 80041ec:	2300      	movs	r3, #0
 80041ee:	6042      	str	r2, [r0, #4]
 80041f0:	2218      	movs	r2, #24
 80041f2:	e9cd 3304 	strd	r3, r3, [sp, #16]
 80041f6:	e9cd 3306 	strd	r3, r3, [sp, #24]
 80041fa:	e9cd 3301 	strd	r3, r3, [sp, #4]
 80041fe:	e9c0 3202 	strd	r3, r2, [r0, #8]
 8004202:	9303      	str	r3, [sp, #12]
 8004204:	6103      	str	r3, [r0, #16]
 8004206:	6183      	str	r3, [r0, #24]
 8004208:	f7fe fbd4 	bl	80029b4 <HAL_TIM_Base_Init>
 800420c:	b998      	cbnz	r0, 8004236 <MX_TIM3_Init+0x56>
 800420e:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8004212:	480e      	ldr	r0, [pc, #56]	@ (800424c <MX_TIM3_Init+0x6c>)
 8004214:	9304      	str	r3, [sp, #16]
 8004216:	a904      	add	r1, sp, #16
 8004218:	f7fe f9ac 	bl	8002574 <HAL_TIM_ConfigClockSource>
 800421c:	b998      	cbnz	r0, 8004246 <MX_TIM3_Init+0x66>
 800421e:	2220      	movs	r2, #32
 8004220:	2300      	movs	r3, #0
 8004222:	480a      	ldr	r0, [pc, #40]	@ (800424c <MX_TIM3_Init+0x6c>)
 8004224:	9201      	str	r2, [sp, #4]
 8004226:	a901      	add	r1, sp, #4
 8004228:	9303      	str	r3, [sp, #12]
 800422a:	f7fe fbf5 	bl	8002a18 <HAL_TIMEx_MasterConfigSynchronization>
 800422e:	b928      	cbnz	r0, 800423c <MX_TIM3_Init+0x5c>
 8004230:	b009      	add	sp, #36	@ 0x24
 8004232:	f85d fb04 	ldr.w	pc, [sp], #4
 8004236:	f7fc ffdb 	bl	80011f0 <Error_Handler>
 800423a:	e7e8      	b.n	800420e <MX_TIM3_Init+0x2e>
 800423c:	f7fc ffd8 	bl	80011f0 <Error_Handler>
 8004240:	b009      	add	sp, #36	@ 0x24
 8004242:	f85d fb04 	ldr.w	pc, [sp], #4
 8004246:	f7fc ffd3 	bl	80011f0 <Error_Handler>
 800424a:	e7e8      	b.n	800421e <MX_TIM3_Init+0x3e>
 800424c:	200032e8 	.word	0x200032e8
 8004250:	40000400 	.word	0x40000400

08004254 <HAL_TIM_Base_MspInit>:
 8004254:	4b0e      	ldr	r3, [pc, #56]	@ (8004290 <HAL_TIM_Base_MspInit+0x3c>)
 8004256:	6802      	ldr	r2, [r0, #0]
 8004258:	429a      	cmp	r2, r3
 800425a:	d000      	beq.n	800425e <HAL_TIM_Base_MspInit+0xa>
 800425c:	4770      	bx	lr
 800425e:	b500      	push	{lr}
 8004260:	f503 3303 	add.w	r3, r3, #134144	@ 0x20c00
 8004264:	b083      	sub	sp, #12
 8004266:	6d98      	ldr	r0, [r3, #88]	@ 0x58
 8004268:	f040 0002 	orr.w	r0, r0, #2
 800426c:	6598      	str	r0, [r3, #88]	@ 0x58
 800426e:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8004270:	2200      	movs	r2, #0
 8004272:	f003 0302 	and.w	r3, r3, #2
 8004276:	9301      	str	r3, [sp, #4]
 8004278:	4611      	mov	r1, r2
 800427a:	201d      	movs	r0, #29
 800427c:	9b01      	ldr	r3, [sp, #4]
 800427e:	f7fe f8e1 	bl	8002444 <HAL_NVIC_SetPriority>
 8004282:	201d      	movs	r0, #29
 8004284:	b003      	add	sp, #12
 8004286:	f85d eb04 	ldr.w	lr, [sp], #4
 800428a:	f7fe b917 	b.w	80024bc <HAL_NVIC_EnableIRQ>
 800428e:	bf00      	nop
 8004290:	40000400 	.word	0x40000400

08004294 <HAL_ADC_Init>:
 8004294:	b530      	push	{r4, r5, lr}
 8004296:	b083      	sub	sp, #12
 8004298:	2300      	movs	r3, #0
 800429a:	9301      	str	r3, [sp, #4]
 800429c:	2800      	cmp	r0, #0
 800429e:	f000 80aa 	beq.w	80043f6 <HAL_ADC_Init+0x162>
 80042a2:	6dc5      	ldr	r5, [r0, #92]	@ 0x5c
 80042a4:	4604      	mov	r4, r0
 80042a6:	2d00      	cmp	r5, #0
 80042a8:	f000 80aa 	beq.w	8004400 <HAL_ADC_Init+0x16c>
 80042ac:	6822      	ldr	r2, [r4, #0]
 80042ae:	6893      	ldr	r3, [r2, #8]
 80042b0:	009d      	lsls	r5, r3, #2
 80042b2:	d505      	bpl.n	80042c0 <HAL_ADC_Init+0x2c>
 80042b4:	6893      	ldr	r3, [r2, #8]
 80042b6:	f023 4320 	bic.w	r3, r3, #2684354560	@ 0xa0000000
 80042ba:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
 80042be:	6093      	str	r3, [r2, #8]
 80042c0:	6893      	ldr	r3, [r2, #8]
 80042c2:	00d8      	lsls	r0, r3, #3
 80042c4:	d419      	bmi.n	80042fa <HAL_ADC_Init+0x66>
 80042c6:	4b68      	ldr	r3, [pc, #416]	@ (8004468 <HAL_ADC_Init+0x1d4>)
 80042c8:	4868      	ldr	r0, [pc, #416]	@ (800446c <HAL_ADC_Init+0x1d8>)
 80042ca:	681b      	ldr	r3, [r3, #0]
 80042cc:	6891      	ldr	r1, [r2, #8]
 80042ce:	099b      	lsrs	r3, r3, #6
 80042d0:	fba0 0303 	umull	r0, r3, r0, r3
 80042d4:	f021 4110 	bic.w	r1, r1, #2415919104	@ 0x90000000
 80042d8:	099b      	lsrs	r3, r3, #6
 80042da:	f021 013f 	bic.w	r1, r1, #63	@ 0x3f
 80042de:	3301      	adds	r3, #1
 80042e0:	005b      	lsls	r3, r3, #1
 80042e2:	f041 5180 	orr.w	r1, r1, #268435456	@ 0x10000000
 80042e6:	6091      	str	r1, [r2, #8]
 80042e8:	9301      	str	r3, [sp, #4]
 80042ea:	9b01      	ldr	r3, [sp, #4]
 80042ec:	b12b      	cbz	r3, 80042fa <HAL_ADC_Init+0x66>
 80042ee:	9b01      	ldr	r3, [sp, #4]
 80042f0:	3b01      	subs	r3, #1
 80042f2:	9301      	str	r3, [sp, #4]
 80042f4:	9b01      	ldr	r3, [sp, #4]
 80042f6:	2b00      	cmp	r3, #0
 80042f8:	d1f9      	bne.n	80042ee <HAL_ADC_Init+0x5a>
 80042fa:	6893      	ldr	r3, [r2, #8]
 80042fc:	00d9      	lsls	r1, r3, #3
 80042fe:	d47d      	bmi.n	80043fc <HAL_ADC_Init+0x168>
 8004300:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004302:	f043 0310 	orr.w	r3, r3, #16
 8004306:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004308:	6e23      	ldr	r3, [r4, #96]	@ 0x60
 800430a:	2001      	movs	r0, #1
 800430c:	4303      	orrs	r3, r0
 800430e:	6623      	str	r3, [r4, #96]	@ 0x60
 8004310:	6893      	ldr	r3, [r2, #8]
 8004312:	f013 0f04 	tst.w	r3, #4
 8004316:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004318:	d169      	bne.n	80043ee <HAL_ADC_Init+0x15a>
 800431a:	06db      	lsls	r3, r3, #27
 800431c:	d467      	bmi.n	80043ee <HAL_ADC_Init+0x15a>
 800431e:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004320:	f423 7381 	bic.w	r3, r3, #258	@ 0x102
 8004324:	f043 0302 	orr.w	r3, r3, #2
 8004328:	65e3      	str	r3, [r4, #92]	@ 0x5c
 800432a:	6893      	ldr	r3, [r2, #8]
 800432c:	07dd      	lsls	r5, r3, #31
 800432e:	d409      	bmi.n	8004344 <HAL_ADC_Init+0xb0>
 8004330:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
 8004334:	689b      	ldr	r3, [r3, #8]
 8004336:	f013 0f01 	tst.w	r3, #1
 800433a:	4b4d      	ldr	r3, [pc, #308]	@ (8004470 <HAL_ADC_Init+0x1dc>)
 800433c:	689b      	ldr	r3, [r3, #8]
 800433e:	d101      	bne.n	8004344 <HAL_ADC_Init+0xb0>
 8004340:	07d9      	lsls	r1, r3, #31
 8004342:	d570      	bpl.n	8004426 <HAL_ADC_Init+0x192>
 8004344:	68e5      	ldr	r5, [r4, #12]
 8004346:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 8004348:	f894 1024 	ldrb.w	r1, [r4, #36]	@ 0x24
 800434c:	432b      	orrs	r3, r5
 800434e:	68a5      	ldr	r5, [r4, #8]
 8004350:	432b      	orrs	r3, r5
 8004352:	7f65      	ldrb	r5, [r4, #29]
 8004354:	2901      	cmp	r1, #1
 8004356:	ea43 3345 	orr.w	r3, r3, r5, lsl #13
 800435a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800435e:	d055      	beq.n	800440c <HAL_ADC_Init+0x178>
 8004360:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
 8004362:	b121      	cbz	r1, 800436e <HAL_ADC_Init+0xda>
 8004364:	6b25      	ldr	r5, [r4, #48]	@ 0x30
 8004366:	f401 7178 	and.w	r1, r1, #992	@ 0x3e0
 800436a:	4329      	orrs	r1, r5
 800436c:	430b      	orrs	r3, r1
 800436e:	68d5      	ldr	r5, [r2, #12]
 8004370:	4940      	ldr	r1, [pc, #256]	@ (8004474 <HAL_ADC_Init+0x1e0>)
 8004372:	4029      	ands	r1, r5
 8004374:	4319      	orrs	r1, r3
 8004376:	60d1      	str	r1, [r2, #12]
 8004378:	6913      	ldr	r3, [r2, #16]
 800437a:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 800437c:	f023 6340 	bic.w	r3, r3, #201326592	@ 0xc000000
 8004380:	430b      	orrs	r3, r1
 8004382:	6113      	str	r3, [r2, #16]
 8004384:	6893      	ldr	r3, [r2, #8]
 8004386:	071b      	lsls	r3, r3, #28
 8004388:	d422      	bmi.n	80043d0 <HAL_ADC_Init+0x13c>
 800438a:	68d1      	ldr	r1, [r2, #12]
 800438c:	f894 3038 	ldrb.w	r3, [r4, #56]	@ 0x38
 8004390:	7f25      	ldrb	r5, [r4, #28]
 8004392:	f421 4180 	bic.w	r1, r1, #16384	@ 0x4000
 8004396:	005b      	lsls	r3, r3, #1
 8004398:	f021 0102 	bic.w	r1, r1, #2
 800439c:	ea43 3385 	orr.w	r3, r3, r5, lsl #14
 80043a0:	430b      	orrs	r3, r1
 80043a2:	6921      	ldr	r1, [r4, #16]
 80043a4:	60d3      	str	r3, [r2, #12]
 80043a6:	6913      	ldr	r3, [r2, #16]
 80043a8:	2900      	cmp	r1, #0
 80043aa:	d044      	beq.n	8004436 <HAL_ADC_Init+0x1a2>
 80043ac:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 80043b0:	6113      	str	r3, [r2, #16]
 80043b2:	f8d2 30c0 	ldr.w	r3, [r2, #192]	@ 0xc0
 80043b6:	f36f 030d 	bfc	r3, #0, #14
 80043ba:	430b      	orrs	r3, r1
 80043bc:	f8c2 30c0 	str.w	r3, [r2, #192]	@ 0xc0
 80043c0:	f894 3040 	ldrb.w	r3, [r4, #64]	@ 0x40
 80043c4:	2b01      	cmp	r3, #1
 80043c6:	d040      	beq.n	800444a <HAL_ADC_Init+0x1b6>
 80043c8:	6913      	ldr	r3, [r2, #16]
 80043ca:	f023 0301 	bic.w	r3, r3, #1
 80043ce:	6113      	str	r3, [r2, #16]
 80043d0:	6963      	ldr	r3, [r4, #20]
 80043d2:	2b01      	cmp	r3, #1
 80043d4:	d01f      	beq.n	8004416 <HAL_ADC_Init+0x182>
 80043d6:	6b13      	ldr	r3, [r2, #48]	@ 0x30
 80043d8:	f023 030f 	bic.w	r3, r3, #15
 80043dc:	6313      	str	r3, [r2, #48]	@ 0x30
 80043de:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 80043e0:	f023 0303 	bic.w	r3, r3, #3
 80043e4:	f043 0301 	orr.w	r3, r3, #1
 80043e8:	65e3      	str	r3, [r4, #92]	@ 0x5c
 80043ea:	b003      	add	sp, #12
 80043ec:	bd30      	pop	{r4, r5, pc}
 80043ee:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 80043f0:	f043 0310 	orr.w	r3, r3, #16
 80043f4:	65e3      	str	r3, [r4, #92]	@ 0x5c
 80043f6:	2001      	movs	r0, #1
 80043f8:	b003      	add	sp, #12
 80043fa:	bd30      	pop	{r4, r5, pc}
 80043fc:	2000      	movs	r0, #0
 80043fe:	e787      	b.n	8004310 <HAL_ADC_Init+0x7c>
 8004400:	f7ff fe84 	bl	800410c <HAL_ADC_MspInit>
 8004404:	6625      	str	r5, [r4, #96]	@ 0x60
 8004406:	f884 5058 	strb.w	r5, [r4, #88]	@ 0x58
 800440a:	e74f      	b.n	80042ac <HAL_ADC_Init+0x18>
 800440c:	6aa1      	ldr	r1, [r4, #40]	@ 0x28
 800440e:	3901      	subs	r1, #1
 8004410:	ea43 4341 	orr.w	r3, r3, r1, lsl #17
 8004414:	e7a4      	b.n	8004360 <HAL_ADC_Init+0xcc>
 8004416:	6b11      	ldr	r1, [r2, #48]	@ 0x30
 8004418:	6a23      	ldr	r3, [r4, #32]
 800441a:	f021 010f 	bic.w	r1, r1, #15
 800441e:	3b01      	subs	r3, #1
 8004420:	430b      	orrs	r3, r1
 8004422:	6313      	str	r3, [r2, #48]	@ 0x30
 8004424:	e7db      	b.n	80043de <HAL_ADC_Init+0x14a>
 8004426:	4914      	ldr	r1, [pc, #80]	@ (8004478 <HAL_ADC_Init+0x1e4>)
 8004428:	6865      	ldr	r5, [r4, #4]
 800442a:	688b      	ldr	r3, [r1, #8]
 800442c:	f423 137c 	bic.w	r3, r3, #4128768	@ 0x3f0000
 8004430:	432b      	orrs	r3, r5
 8004432:	608b      	str	r3, [r1, #8]
 8004434:	e786      	b.n	8004344 <HAL_ADC_Init+0xb0>
 8004436:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 800443a:	6113      	str	r3, [r2, #16]
 800443c:	f8d2 30c0 	ldr.w	r3, [r2, #192]	@ 0xc0
 8004440:	f36f 030d 	bfc	r3, #0, #14
 8004444:	f8c2 30c0 	str.w	r3, [r2, #192]	@ 0xc0
 8004448:	e7ba      	b.n	80043c0 <HAL_ADC_Init+0x12c>
 800444a:	6911      	ldr	r1, [r2, #16]
 800444c:	6c63      	ldr	r3, [r4, #68]	@ 0x44
 800444e:	6ca5      	ldr	r5, [r4, #72]	@ 0x48
 8004450:	f36f 018a 	bfc	r1, #2, #9
 8004454:	432b      	orrs	r3, r5
 8004456:	430b      	orrs	r3, r1
 8004458:	6ce1      	ldr	r1, [r4, #76]	@ 0x4c
 800445a:	430b      	orrs	r3, r1
 800445c:	6d21      	ldr	r1, [r4, #80]	@ 0x50
 800445e:	430b      	orrs	r3, r1
 8004460:	f043 0301 	orr.w	r3, r3, #1
 8004464:	6113      	str	r3, [r2, #16]
 8004466:	e7b3      	b.n	80043d0 <HAL_ADC_Init+0x13c>
 8004468:	20000008 	.word	0x20000008
 800446c:	053e2d63 	.word	0x053e2d63
 8004470:	50000100 	.word	0x50000100
 8004474:	fff04007 	.word	0xfff04007
 8004478:	50000300 	.word	0x50000300

0800447c <HAL_ADC_ConvCpltCallback>:
 800447c:	4770      	bx	lr
 800447e:	bf00      	nop

08004480 <HAL_ADC_ConvHalfCpltCallback>:
 8004480:	4770      	bx	lr
 8004482:	bf00      	nop

08004484 <ADC_DMAHalfConvCplt>:
 8004484:	b508      	push	{r3, lr}
 8004486:	6a80      	ldr	r0, [r0, #40]	@ 0x28
 8004488:	f7ff fffa 	bl	8004480 <HAL_ADC_ConvHalfCpltCallback>
 800448c:	bd08      	pop	{r3, pc}
 800448e:	bf00      	nop

08004490 <HAL_ADC_LevelOutOfWindowCallback>:
 8004490:	4770      	bx	lr
 8004492:	bf00      	nop

08004494 <HAL_ADC_ErrorCallback>:
 8004494:	4770      	bx	lr
 8004496:	bf00      	nop

08004498 <HAL_ADC_IRQHandler>:
 8004498:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800449a:	6803      	ldr	r3, [r0, #0]
 800449c:	4a8d      	ldr	r2, [pc, #564]	@ (80046d4 <HAL_ADC_IRQHandler+0x23c>)
 800449e:	681d      	ldr	r5, [r3, #0]
 80044a0:	685e      	ldr	r6, [r3, #4]
 80044a2:	6897      	ldr	r7, [r2, #8]
 80044a4:	07a9      	lsls	r1, r5, #30
 80044a6:	4604      	mov	r4, r0
 80044a8:	f007 071f 	and.w	r7, r7, #31
 80044ac:	d502      	bpl.n	80044b4 <HAL_ADC_IRQHandler+0x1c>
 80044ae:	07b2      	lsls	r2, r6, #30
 80044b0:	f100 809f 	bmi.w	80045f2 <HAL_ADC_IRQHandler+0x15a>
 80044b4:	0769      	lsls	r1, r5, #29
 80044b6:	d579      	bpl.n	80045ac <HAL_ADC_IRQHandler+0x114>
 80044b8:	0772      	lsls	r2, r6, #29
 80044ba:	d577      	bpl.n	80045ac <HAL_ADC_IRQHandler+0x114>
 80044bc:	6de2      	ldr	r2, [r4, #92]	@ 0x5c
 80044be:	06d2      	lsls	r2, r2, #27
 80044c0:	d403      	bmi.n	80044ca <HAL_ADC_IRQHandler+0x32>
 80044c2:	6de2      	ldr	r2, [r4, #92]	@ 0x5c
 80044c4:	f442 7200 	orr.w	r2, r2, #512	@ 0x200
 80044c8:	65e2      	str	r2, [r4, #92]	@ 0x5c
 80044ca:	68da      	ldr	r2, [r3, #12]
 80044cc:	f412 6f40 	tst.w	r2, #3072	@ 0xc00
 80044d0:	d11c      	bne.n	800450c <HAL_ADC_IRQHandler+0x74>
 80044d2:	4a81      	ldr	r2, [pc, #516]	@ (80046d8 <HAL_ADC_IRQHandler+0x240>)
 80044d4:	4293      	cmp	r3, r2
 80044d6:	f000 80dd 	beq.w	8004694 <HAL_ADC_IRQHandler+0x1fc>
 80044da:	68da      	ldr	r2, [r3, #12]
 80044dc:	0491      	lsls	r1, r2, #18
 80044de:	d415      	bmi.n	800450c <HAL_ADC_IRQHandler+0x74>
 80044e0:	681a      	ldr	r2, [r3, #0]
 80044e2:	0712      	lsls	r2, r2, #28
 80044e4:	d512      	bpl.n	800450c <HAL_ADC_IRQHandler+0x74>
 80044e6:	689a      	ldr	r2, [r3, #8]
 80044e8:	0750      	lsls	r0, r2, #29
 80044ea:	f100 80e1 	bmi.w	80046b0 <HAL_ADC_IRQHandler+0x218>
 80044ee:	685a      	ldr	r2, [r3, #4]
 80044f0:	f022 020c 	bic.w	r2, r2, #12
 80044f4:	605a      	str	r2, [r3, #4]
 80044f6:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 80044f8:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 80044fc:	65e3      	str	r3, [r4, #92]	@ 0x5c
 80044fe:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004500:	04d9      	lsls	r1, r3, #19
 8004502:	d403      	bmi.n	800450c <HAL_ADC_IRQHandler+0x74>
 8004504:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004506:	f043 0301 	orr.w	r3, r3, #1
 800450a:	65e3      	str	r3, [r4, #92]	@ 0x5c
 800450c:	4620      	mov	r0, r4
 800450e:	f7ff ffb5 	bl	800447c <HAL_ADC_ConvCpltCallback>
 8004512:	6823      	ldr	r3, [r4, #0]
 8004514:	220c      	movs	r2, #12
 8004516:	601a      	str	r2, [r3, #0]
 8004518:	06aa      	lsls	r2, r5, #26
 800451a:	d54d      	bpl.n	80045b8 <HAL_ADC_IRQHandler+0x120>
 800451c:	06b0      	lsls	r0, r6, #26
 800451e:	d54b      	bpl.n	80045b8 <HAL_ADC_IRQHandler+0x120>
 8004520:	6de2      	ldr	r2, [r4, #92]	@ 0x5c
 8004522:	06d0      	lsls	r0, r2, #27
 8004524:	d403      	bmi.n	800452e <HAL_ADC_IRQHandler+0x96>
 8004526:	6de2      	ldr	r2, [r4, #92]	@ 0x5c
 8004528:	f442 5200 	orr.w	r2, r2, #8192	@ 0x2000
 800452c:	65e2      	str	r2, [r4, #92]	@ 0x5c
 800452e:	496a      	ldr	r1, [pc, #424]	@ (80046d8 <HAL_ADC_IRQHandler+0x240>)
 8004530:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 8004532:	68d8      	ldr	r0, [r3, #12]
 8004534:	428b      	cmp	r3, r1
 8004536:	f402 72c0 	and.w	r2, r2, #384	@ 0x180
 800453a:	d068      	beq.n	800460e <HAL_ADC_IRQHandler+0x176>
 800453c:	68d9      	ldr	r1, [r3, #12]
 800453e:	b9d2      	cbnz	r2, 8004576 <HAL_ADC_IRQHandler+0xde>
 8004540:	018a      	lsls	r2, r1, #6
 8004542:	f100 809f 	bmi.w	8004684 <HAL_ADC_IRQHandler+0x1ec>
 8004546:	681a      	ldr	r2, [r3, #0]
 8004548:	0650      	lsls	r0, r2, #25
 800454a:	d514      	bpl.n	8004576 <HAL_ADC_IRQHandler+0xde>
 800454c:	0289      	lsls	r1, r1, #10
 800454e:	d412      	bmi.n	8004576 <HAL_ADC_IRQHandler+0xde>
 8004550:	689a      	ldr	r2, [r3, #8]
 8004552:	0712      	lsls	r2, r2, #28
 8004554:	f100 80b5 	bmi.w	80046c2 <HAL_ADC_IRQHandler+0x22a>
 8004558:	685a      	ldr	r2, [r3, #4]
 800455a:	f022 0260 	bic.w	r2, r2, #96	@ 0x60
 800455e:	605a      	str	r2, [r3, #4]
 8004560:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004562:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
 8004566:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004568:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 800456a:	05d8      	lsls	r0, r3, #23
 800456c:	d403      	bmi.n	8004576 <HAL_ADC_IRQHandler+0xde>
 800456e:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004570:	f043 0301 	orr.w	r3, r3, #1
 8004574:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004576:	4620      	mov	r0, r4
 8004578:	f000 fd38 	bl	8004fec <HAL_ADCEx_InjectedConvCpltCallback>
 800457c:	6823      	ldr	r3, [r4, #0]
 800457e:	2260      	movs	r2, #96	@ 0x60
 8004580:	601a      	str	r2, [r3, #0]
 8004582:	0629      	lsls	r1, r5, #24
 8004584:	d501      	bpl.n	800458a <HAL_ADC_IRQHandler+0xf2>
 8004586:	0632      	lsls	r2, r6, #24
 8004588:	d455      	bmi.n	8004636 <HAL_ADC_IRQHandler+0x19e>
 800458a:	05e8      	lsls	r0, r5, #23
 800458c:	d501      	bpl.n	8004592 <HAL_ADC_IRQHandler+0xfa>
 800458e:	05f1      	lsls	r1, r6, #23
 8004590:	d45c      	bmi.n	800464c <HAL_ADC_IRQHandler+0x1b4>
 8004592:	05aa      	lsls	r2, r5, #22
 8004594:	d501      	bpl.n	800459a <HAL_ADC_IRQHandler+0x102>
 8004596:	05b0      	lsls	r0, r6, #22
 8004598:	d441      	bmi.n	800461e <HAL_ADC_IRQHandler+0x186>
 800459a:	06e9      	lsls	r1, r5, #27
 800459c:	d501      	bpl.n	80045a2 <HAL_ADC_IRQHandler+0x10a>
 800459e:	06f2      	lsls	r2, r6, #27
 80045a0:	d40f      	bmi.n	80045c2 <HAL_ADC_IRQHandler+0x12a>
 80045a2:	0569      	lsls	r1, r5, #21
 80045a4:	d501      	bpl.n	80045aa <HAL_ADC_IRQHandler+0x112>
 80045a6:	0572      	lsls	r2, r6, #21
 80045a8:	d45c      	bmi.n	8004664 <HAL_ADC_IRQHandler+0x1cc>
 80045aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80045ac:	0728      	lsls	r0, r5, #28
 80045ae:	d5b3      	bpl.n	8004518 <HAL_ADC_IRQHandler+0x80>
 80045b0:	0731      	lsls	r1, r6, #28
 80045b2:	d483      	bmi.n	80044bc <HAL_ADC_IRQHandler+0x24>
 80045b4:	06aa      	lsls	r2, r5, #26
 80045b6:	d4b1      	bmi.n	800451c <HAL_ADC_IRQHandler+0x84>
 80045b8:	0669      	lsls	r1, r5, #25
 80045ba:	d5e2      	bpl.n	8004582 <HAL_ADC_IRQHandler+0xea>
 80045bc:	0672      	lsls	r2, r6, #25
 80045be:	d5e0      	bpl.n	8004582 <HAL_ADC_IRQHandler+0xea>
 80045c0:	e7ae      	b.n	8004520 <HAL_ADC_IRQHandler+0x88>
 80045c2:	6be2      	ldr	r2, [r4, #60]	@ 0x3c
 80045c4:	b132      	cbz	r2, 80045d4 <HAL_ADC_IRQHandler+0x13c>
 80045c6:	2f00      	cmp	r7, #0
 80045c8:	d06e      	beq.n	80046a8 <HAL_ADC_IRQHandler+0x210>
 80045ca:	4a42      	ldr	r2, [pc, #264]	@ (80046d4 <HAL_ADC_IRQHandler+0x23c>)
 80045cc:	6892      	ldr	r2, [r2, #8]
 80045ce:	f412 4f60 	tst.w	r2, #57344	@ 0xe000
 80045d2:	d00b      	beq.n	80045ec <HAL_ADC_IRQHandler+0x154>
 80045d4:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 80045d6:	f443 6380 	orr.w	r3, r3, #1024	@ 0x400
 80045da:	65e3      	str	r3, [r4, #92]	@ 0x5c
 80045dc:	6e23      	ldr	r3, [r4, #96]	@ 0x60
 80045de:	f043 0302 	orr.w	r3, r3, #2
 80045e2:	6623      	str	r3, [r4, #96]	@ 0x60
 80045e4:	4620      	mov	r0, r4
 80045e6:	f7ff ff55 	bl	8004494 <HAL_ADC_ErrorCallback>
 80045ea:	6823      	ldr	r3, [r4, #0]
 80045ec:	2210      	movs	r2, #16
 80045ee:	601a      	str	r2, [r3, #0]
 80045f0:	e7d7      	b.n	80045a2 <HAL_ADC_IRQHandler+0x10a>
 80045f2:	6dc3      	ldr	r3, [r0, #92]	@ 0x5c
 80045f4:	06d8      	lsls	r0, r3, #27
 80045f6:	d403      	bmi.n	8004600 <HAL_ADC_IRQHandler+0x168>
 80045f8:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 80045fa:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
 80045fe:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004600:	4620      	mov	r0, r4
 8004602:	f000 fcfb 	bl	8004ffc <HAL_ADCEx_EndOfSamplingCallback>
 8004606:	6823      	ldr	r3, [r4, #0]
 8004608:	2202      	movs	r2, #2
 800460a:	601a      	str	r2, [r3, #0]
 800460c:	e752      	b.n	80044b4 <HAL_ADC_IRQHandler+0x1c>
 800460e:	21c1      	movs	r1, #193	@ 0xc1
 8004610:	40f9      	lsrs	r1, r7
 8004612:	07c9      	lsls	r1, r1, #31
 8004614:	d492      	bmi.n	800453c <HAL_ADC_IRQHandler+0xa4>
 8004616:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
 800461a:	68c9      	ldr	r1, [r1, #12]
 800461c:	e78f      	b.n	800453e <HAL_ADC_IRQHandler+0xa6>
 800461e:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004620:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 8004624:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004626:	4620      	mov	r0, r4
 8004628:	f000 fce6 	bl	8004ff8 <HAL_ADCEx_LevelOutOfWindow3Callback>
 800462c:	6823      	ldr	r3, [r4, #0]
 800462e:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8004632:	601a      	str	r2, [r3, #0]
 8004634:	e7b1      	b.n	800459a <HAL_ADC_IRQHandler+0x102>
 8004636:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004638:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 800463c:	65e3      	str	r3, [r4, #92]	@ 0x5c
 800463e:	4620      	mov	r0, r4
 8004640:	f7ff ff26 	bl	8004490 <HAL_ADC_LevelOutOfWindowCallback>
 8004644:	6823      	ldr	r3, [r4, #0]
 8004646:	2280      	movs	r2, #128	@ 0x80
 8004648:	601a      	str	r2, [r3, #0]
 800464a:	e79e      	b.n	800458a <HAL_ADC_IRQHandler+0xf2>
 800464c:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 800464e:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 8004652:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004654:	4620      	mov	r0, r4
 8004656:	f000 fccd 	bl	8004ff4 <HAL_ADCEx_LevelOutOfWindow2Callback>
 800465a:	6823      	ldr	r3, [r4, #0]
 800465c:	f44f 7280 	mov.w	r2, #256	@ 0x100
 8004660:	601a      	str	r2, [r3, #0]
 8004662:	e796      	b.n	8004592 <HAL_ADC_IRQHandler+0xfa>
 8004664:	6de2      	ldr	r2, [r4, #92]	@ 0x5c
 8004666:	f442 4280 	orr.w	r2, r2, #16384	@ 0x4000
 800466a:	65e2      	str	r2, [r4, #92]	@ 0x5c
 800466c:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 800466e:	f44f 6180 	mov.w	r1, #1024	@ 0x400
 8004672:	f042 0208 	orr.w	r2, r2, #8
 8004676:	6622      	str	r2, [r4, #96]	@ 0x60
 8004678:	4620      	mov	r0, r4
 800467a:	6019      	str	r1, [r3, #0]
 800467c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8004680:	f000 bcb6 	b.w	8004ff0 <HAL_ADCEx_InjectedQueueOverflowCallback>
 8004684:	f400 6040 	and.w	r0, r0, #3072	@ 0xc00
 8004688:	f401 5200 	and.w	r2, r1, #8192	@ 0x2000
 800468c:	4302      	orrs	r2, r0
 800468e:	f47f af72 	bne.w	8004576 <HAL_ADC_IRQHandler+0xde>
 8004692:	e758      	b.n	8004546 <HAL_ADC_IRQHandler+0xae>
 8004694:	f240 2221 	movw	r2, #545	@ 0x221
 8004698:	40fa      	lsrs	r2, r7
 800469a:	07d0      	lsls	r0, r2, #31
 800469c:	f53f af1d 	bmi.w	80044da <HAL_ADC_IRQHandler+0x42>
 80046a0:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
 80046a4:	68d2      	ldr	r2, [r2, #12]
 80046a6:	e719      	b.n	80044dc <HAL_ADC_IRQHandler+0x44>
 80046a8:	68da      	ldr	r2, [r3, #12]
 80046aa:	07d0      	lsls	r0, r2, #31
 80046ac:	d59e      	bpl.n	80045ec <HAL_ADC_IRQHandler+0x154>
 80046ae:	e791      	b.n	80045d4 <HAL_ADC_IRQHandler+0x13c>
 80046b0:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 80046b2:	f043 0310 	orr.w	r3, r3, #16
 80046b6:	65e3      	str	r3, [r4, #92]	@ 0x5c
 80046b8:	6e23      	ldr	r3, [r4, #96]	@ 0x60
 80046ba:	f043 0301 	orr.w	r3, r3, #1
 80046be:	6623      	str	r3, [r4, #96]	@ 0x60
 80046c0:	e724      	b.n	800450c <HAL_ADC_IRQHandler+0x74>
 80046c2:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 80046c4:	f043 0310 	orr.w	r3, r3, #16
 80046c8:	65e3      	str	r3, [r4, #92]	@ 0x5c
 80046ca:	6e23      	ldr	r3, [r4, #96]	@ 0x60
 80046cc:	f043 0301 	orr.w	r3, r3, #1
 80046d0:	6623      	str	r3, [r4, #96]	@ 0x60
 80046d2:	e750      	b.n	8004576 <HAL_ADC_IRQHandler+0xde>
 80046d4:	50000300 	.word	0x50000300
 80046d8:	50000100 	.word	0x50000100

080046dc <ADC_DMAConvCplt>:
 80046dc:	6a83      	ldr	r3, [r0, #40]	@ 0x28
 80046de:	6dda      	ldr	r2, [r3, #92]	@ 0x5c
 80046e0:	f012 0f50 	tst.w	r2, #80	@ 0x50
 80046e4:	b510      	push	{r4, lr}
 80046e6:	6dda      	ldr	r2, [r3, #92]	@ 0x5c
 80046e8:	d11d      	bne.n	8004726 <ADC_DMAConvCplt+0x4a>
 80046ea:	6819      	ldr	r1, [r3, #0]
 80046ec:	f442 7200 	orr.w	r2, r2, #512	@ 0x200
 80046f0:	65da      	str	r2, [r3, #92]	@ 0x5c
 80046f2:	680a      	ldr	r2, [r1, #0]
 80046f4:	f012 0f08 	tst.w	r2, #8
 80046f8:	68ca      	ldr	r2, [r1, #12]
 80046fa:	d01b      	beq.n	8004734 <ADC_DMAConvCplt+0x58>
 80046fc:	f412 6f40 	tst.w	r2, #3072	@ 0xc00
 8004700:	d10d      	bne.n	800471e <ADC_DMAConvCplt+0x42>
 8004702:	68ca      	ldr	r2, [r1, #12]
 8004704:	0494      	lsls	r4, r2, #18
 8004706:	d40a      	bmi.n	800471e <ADC_DMAConvCplt+0x42>
 8004708:	6dda      	ldr	r2, [r3, #92]	@ 0x5c
 800470a:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 800470e:	65da      	str	r2, [r3, #92]	@ 0x5c
 8004710:	6dda      	ldr	r2, [r3, #92]	@ 0x5c
 8004712:	04d1      	lsls	r1, r2, #19
 8004714:	d403      	bmi.n	800471e <ADC_DMAConvCplt+0x42>
 8004716:	6dda      	ldr	r2, [r3, #92]	@ 0x5c
 8004718:	f042 0201 	orr.w	r2, r2, #1
 800471c:	65da      	str	r2, [r3, #92]	@ 0x5c
 800471e:	4618      	mov	r0, r3
 8004720:	f7ff feac 	bl	800447c <HAL_ADC_ConvCpltCallback>
 8004724:	bd10      	pop	{r4, pc}
 8004726:	06d2      	lsls	r2, r2, #27
 8004728:	d40a      	bmi.n	8004740 <ADC_DMAConvCplt+0x64>
 800472a:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 800472c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004730:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8004732:	4718      	bx	r3
 8004734:	0790      	lsls	r0, r2, #30
 8004736:	d5e7      	bpl.n	8004708 <ADC_DMAConvCplt+0x2c>
 8004738:	4618      	mov	r0, r3
 800473a:	f7ff fe9f 	bl	800447c <HAL_ADC_ConvCpltCallback>
 800473e:	e7f1      	b.n	8004724 <ADC_DMAConvCplt+0x48>
 8004740:	4618      	mov	r0, r3
 8004742:	f7ff fea7 	bl	8004494 <HAL_ADC_ErrorCallback>
 8004746:	bd10      	pop	{r4, pc}

08004748 <ADC_DMAError>:
 8004748:	6a80      	ldr	r0, [r0, #40]	@ 0x28
 800474a:	b508      	push	{r3, lr}
 800474c:	6dc3      	ldr	r3, [r0, #92]	@ 0x5c
 800474e:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8004752:	65c3      	str	r3, [r0, #92]	@ 0x5c
 8004754:	6e03      	ldr	r3, [r0, #96]	@ 0x60
 8004756:	f043 0304 	orr.w	r3, r3, #4
 800475a:	6603      	str	r3, [r0, #96]	@ 0x60
 800475c:	f7ff fe9a 	bl	8004494 <HAL_ADC_ErrorCallback>
 8004760:	bd08      	pop	{r3, pc}
 8004762:	bf00      	nop

08004764 <HAL_ADC_ConfigChannel>:
 8004764:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004766:	f890 2058 	ldrb.w	r2, [r0, #88]	@ 0x58
 800476a:	b083      	sub	sp, #12
 800476c:	4603      	mov	r3, r0
 800476e:	2a01      	cmp	r2, #1
 8004770:	f04f 0000 	mov.w	r0, #0
 8004774:	9001      	str	r0, [sp, #4]
 8004776:	f000 812e 	beq.w	80049d6 <HAL_ADC_ConfigChannel+0x272>
 800477a:	681a      	ldr	r2, [r3, #0]
 800477c:	2001      	movs	r0, #1
 800477e:	f883 0058 	strb.w	r0, [r3, #88]	@ 0x58
 8004782:	6894      	ldr	r4, [r2, #8]
 8004784:	0764      	lsls	r4, r4, #29
 8004786:	d457      	bmi.n	8004838 <HAL_ADC_ConfigChannel+0xd4>
 8004788:	6848      	ldr	r0, [r1, #4]
 800478a:	ea4f 1e90 	mov.w	lr, r0, lsr #6
 800478e:	f000 0c1f 	and.w	ip, r0, #31
 8004792:	f00e 0e0c 	and.w	lr, lr, #12
 8004796:	6808      	ldr	r0, [r1, #0]
 8004798:	f102 0430 	add.w	r4, r2, #48	@ 0x30
 800479c:	f3c0 6084 	ubfx	r0, r0, #26, #5
 80047a0:	f854 500e 	ldr.w	r5, [r4, lr]
 80047a4:	261f      	movs	r6, #31
 80047a6:	fa00 f00c 	lsl.w	r0, r0, ip
 80047aa:	fa06 fc0c 	lsl.w	ip, r6, ip
 80047ae:	ea25 0c0c 	bic.w	ip, r5, ip
 80047b2:	ea40 000c 	orr.w	r0, r0, ip
 80047b6:	f844 000e 	str.w	r0, [r4, lr]
 80047ba:	6890      	ldr	r0, [r2, #8]
 80047bc:	0740      	lsls	r0, r0, #29
 80047be:	d544      	bpl.n	800484a <HAL_ADC_ConfigChannel+0xe6>
 80047c0:	6890      	ldr	r0, [r2, #8]
 80047c2:	6808      	ldr	r0, [r1, #0]
 80047c4:	6894      	ldr	r4, [r2, #8]
 80047c6:	07e6      	lsls	r6, r4, #31
 80047c8:	4605      	mov	r5, r0
 80047ca:	d413      	bmi.n	80047f4 <HAL_ADC_ConfigChannel+0x90>
 80047cc:	68cf      	ldr	r7, [r1, #12]
 80047ce:	4cb4      	ldr	r4, [pc, #720]	@ (8004aa0 <HAL_ADC_ConfigChannel+0x33c>)
 80047d0:	f8d2 60b0 	ldr.w	r6, [r2, #176]	@ 0xb0
 80047d4:	f007 0c18 	and.w	ip, r7, #24
 80047d8:	fa24 f40c 	lsr.w	r4, r4, ip
 80047dc:	f3c0 0c12 	ubfx	ip, r0, #0, #19
 80047e0:	4004      	ands	r4, r0
 80047e2:	ea26 060c 	bic.w	r6, r6, ip
 80047e6:	4334      	orrs	r4, r6
 80047e8:	f8c2 40b0 	str.w	r4, [r2, #176]	@ 0xb0
 80047ec:	4cad      	ldr	r4, [pc, #692]	@ (8004aa4 <HAL_ADC_ConfigChannel+0x340>)
 80047ee:	42a7      	cmp	r7, r4
 80047f0:	f000 80a0 	beq.w	8004934 <HAL_ADC_ConfigChannel+0x1d0>
 80047f4:	49ac      	ldr	r1, [pc, #688]	@ (8004aa8 <HAL_ADC_ConfigChannel+0x344>)
 80047f6:	420d      	tst	r5, r1
 80047f8:	d01c      	beq.n	8004834 <HAL_ADC_ConfigChannel+0xd0>
 80047fa:	48ac      	ldr	r0, [pc, #688]	@ (8004aac <HAL_ADC_ConfigChannel+0x348>)
 80047fc:	4cac      	ldr	r4, [pc, #688]	@ (8004ab0 <HAL_ADC_ConfigChannel+0x34c>)
 80047fe:	6881      	ldr	r1, [r0, #8]
 8004800:	42a5      	cmp	r5, r4
 8004802:	f001 76e0 	and.w	r6, r1, #29360128	@ 0x1c00000
 8004806:	d072      	beq.n	80048ee <HAL_ADC_ConfigChannel+0x18a>
 8004808:	4caa      	ldr	r4, [pc, #680]	@ (8004ab4 <HAL_ADC_ConfigChannel+0x350>)
 800480a:	42a5      	cmp	r5, r4
 800480c:	d06f      	beq.n	80048ee <HAL_ADC_ConfigChannel+0x18a>
 800480e:	4caa      	ldr	r4, [pc, #680]	@ (8004ab8 <HAL_ADC_ConfigChannel+0x354>)
 8004810:	42a5      	cmp	r5, r4
 8004812:	f000 80e3 	beq.w	80049dc <HAL_ADC_ConfigChannel+0x278>
 8004816:	4ca9      	ldr	r4, [pc, #676]	@ (8004abc <HAL_ADC_ConfigChannel+0x358>)
 8004818:	42a5      	cmp	r5, r4
 800481a:	d10b      	bne.n	8004834 <HAL_ADC_ConfigChannel+0xd0>
 800481c:	0249      	lsls	r1, r1, #9
 800481e:	d409      	bmi.n	8004834 <HAL_ADC_ConfigChannel+0xd0>
 8004820:	49a7      	ldr	r1, [pc, #668]	@ (8004ac0 <HAL_ADC_ConfigChannel+0x35c>)
 8004822:	428a      	cmp	r2, r1
 8004824:	d006      	beq.n	8004834 <HAL_ADC_ConfigChannel+0xd0>
 8004826:	6882      	ldr	r2, [r0, #8]
 8004828:	f022 72e0 	bic.w	r2, r2, #29360128	@ 0x1c00000
 800482c:	4332      	orrs	r2, r6
 800482e:	f442 0280 	orr.w	r2, r2, #4194304	@ 0x400000
 8004832:	6082      	str	r2, [r0, #8]
 8004834:	2000      	movs	r0, #0
 8004836:	e003      	b.n	8004840 <HAL_ADC_ConfigChannel+0xdc>
 8004838:	6dda      	ldr	r2, [r3, #92]	@ 0x5c
 800483a:	f042 0220 	orr.w	r2, r2, #32
 800483e:	65da      	str	r2, [r3, #92]	@ 0x5c
 8004840:	2200      	movs	r2, #0
 8004842:	f883 2058 	strb.w	r2, [r3, #88]	@ 0x58
 8004846:	b003      	add	sp, #12
 8004848:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800484a:	6894      	ldr	r4, [r2, #8]
 800484c:	6808      	ldr	r0, [r1, #0]
 800484e:	0727      	lsls	r7, r4, #28
 8004850:	d4b8      	bmi.n	80047c4 <HAL_ADC_ConfigChannel+0x60>
 8004852:	688d      	ldr	r5, [r1, #8]
 8004854:	f3c0 5604 	ubfx	r6, r0, #20, #5
 8004858:	2407      	movs	r4, #7
 800485a:	0dc0      	lsrs	r0, r0, #23
 800485c:	40b4      	lsls	r4, r6
 800485e:	f1b5 4f00 	cmp.w	r5, #2147483648	@ 0x80000000
 8004862:	f000 0004 	and.w	r0, r0, #4
 8004866:	ea6f 0404 	mvn.w	r4, r4
 800486a:	f000 810f 	beq.w	8004a8c <HAL_ADC_ConfigChannel+0x328>
 800486e:	f102 0714 	add.w	r7, r2, #20
 8004872:	40b5      	lsls	r5, r6
 8004874:	583e      	ldr	r6, [r7, r0]
 8004876:	4034      	ands	r4, r6
 8004878:	432c      	orrs	r4, r5
 800487a:	503c      	str	r4, [r7, r0]
 800487c:	6950      	ldr	r0, [r2, #20]
 800487e:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 8004882:	6150      	str	r0, [r2, #20]
 8004884:	e9d1 6404 	ldrd	r6, r4, [r1, #16]
 8004888:	2e04      	cmp	r6, #4
 800488a:	68d5      	ldr	r5, [r2, #12]
 800488c:	6808      	ldr	r0, [r1, #0]
 800488e:	f000 80c9 	beq.w	8004a24 <HAL_ADC_ConfigChannel+0x2c0>
 8004892:	f3c5 05c1 	ubfx	r5, r5, #3, #2
 8004896:	006d      	lsls	r5, r5, #1
 8004898:	f000 47f8 	and.w	r7, r0, #2080374784	@ 0x7c000000
 800489c:	fa04 f005 	lsl.w	r0, r4, r5
 80048a0:	f102 0460 	add.w	r4, r2, #96	@ 0x60
 80048a4:	4d87      	ldr	r5, [pc, #540]	@ (8004ac4 <HAL_ADC_ConfigChannel+0x360>)
 80048a6:	f854 c026 	ldr.w	ip, [r4, r6, lsl #2]
 80048aa:	ea0c 0505 	and.w	r5, ip, r5
 80048ae:	433d      	orrs	r5, r7
 80048b0:	4328      	orrs	r0, r5
 80048b2:	f040 4000 	orr.w	r0, r0, #2147483648	@ 0x80000000
 80048b6:	f844 0026 	str.w	r0, [r4, r6, lsl #2]
 80048ba:	690d      	ldr	r5, [r1, #16]
 80048bc:	698e      	ldr	r6, [r1, #24]
 80048be:	f854 0025 	ldr.w	r0, [r4, r5, lsl #2]
 80048c2:	f020 7080 	bic.w	r0, r0, #16777216	@ 0x1000000
 80048c6:	4330      	orrs	r0, r6
 80048c8:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
 80048cc:	690e      	ldr	r6, [r1, #16]
 80048ce:	7f0d      	ldrb	r5, [r1, #28]
 80048d0:	f854 0026 	ldr.w	r0, [r4, r6, lsl #2]
 80048d4:	f1a5 0501 	sub.w	r5, r5, #1
 80048d8:	fab5 f585 	clz	r5, r5
 80048dc:	096d      	lsrs	r5, r5, #5
 80048de:	f020 7000 	bic.w	r0, r0, #33554432	@ 0x2000000
 80048e2:	ea40 6045 	orr.w	r0, r0, r5, lsl #25
 80048e6:	f844 0026 	str.w	r0, [r4, r6, lsl #2]
 80048ea:	6808      	ldr	r0, [r1, #0]
 80048ec:	e76a      	b.n	80047c4 <HAL_ADC_ConfigChannel+0x60>
 80048ee:	020d      	lsls	r5, r1, #8
 80048f0:	d4a0      	bmi.n	8004834 <HAL_ADC_ConfigChannel+0xd0>
 80048f2:	f1b2 4fa0 	cmp.w	r2, #1342177280	@ 0x50000000
 80048f6:	d19d      	bne.n	8004834 <HAL_ADC_ConfigChannel+0xd0>
 80048f8:	496c      	ldr	r1, [pc, #432]	@ (8004aac <HAL_ADC_ConfigChannel+0x348>)
 80048fa:	4873      	ldr	r0, [pc, #460]	@ (8004ac8 <HAL_ADC_ConfigChannel+0x364>)
 80048fc:	688a      	ldr	r2, [r1, #8]
 80048fe:	f022 72e0 	bic.w	r2, r2, #29360128	@ 0x1c00000
 8004902:	4332      	orrs	r2, r6
 8004904:	f442 0200 	orr.w	r2, r2, #8388608	@ 0x800000
 8004908:	608a      	str	r2, [r1, #8]
 800490a:	6802      	ldr	r2, [r0, #0]
 800490c:	496f      	ldr	r1, [pc, #444]	@ (8004acc <HAL_ADC_ConfigChannel+0x368>)
 800490e:	0992      	lsrs	r2, r2, #6
 8004910:	fba1 1202 	umull	r1, r2, r1, r2
 8004914:	0992      	lsrs	r2, r2, #6
 8004916:	3201      	adds	r2, #1
 8004918:	eb02 0242 	add.w	r2, r2, r2, lsl #1
 800491c:	0092      	lsls	r2, r2, #2
 800491e:	9201      	str	r2, [sp, #4]
 8004920:	9a01      	ldr	r2, [sp, #4]
 8004922:	2a00      	cmp	r2, #0
 8004924:	d086      	beq.n	8004834 <HAL_ADC_ConfigChannel+0xd0>
 8004926:	9a01      	ldr	r2, [sp, #4]
 8004928:	3a01      	subs	r2, #1
 800492a:	9201      	str	r2, [sp, #4]
 800492c:	9a01      	ldr	r2, [sp, #4]
 800492e:	2a00      	cmp	r2, #0
 8004930:	d1f9      	bne.n	8004926 <HAL_ADC_ConfigChannel+0x1c2>
 8004932:	e77f      	b.n	8004834 <HAL_ADC_ConfigChannel+0xd0>
 8004934:	f1bc 0f00 	cmp.w	ip, #0
 8004938:	d05f      	beq.n	80049fa <HAL_ADC_ConfigChannel+0x296>
 800493a:	fa90 f4a0 	rbit	r4, r0
 800493e:	2c00      	cmp	r4, #0
 8004940:	f000 80c6 	beq.w	8004ad0 <HAL_ADC_ConfigChannel+0x36c>
 8004944:	fab4 f484 	clz	r4, r4
 8004948:	3401      	adds	r4, #1
 800494a:	f004 041f 	and.w	r4, r4, #31
 800494e:	2c09      	cmp	r4, #9
 8004950:	f240 80be 	bls.w	8004ad0 <HAL_ADC_ConfigChannel+0x36c>
 8004954:	fa90 f4a0 	rbit	r4, r0
 8004958:	2c00      	cmp	r4, #0
 800495a:	f000 815e 	beq.w	8004c1a <HAL_ADC_ConfigChannel+0x4b6>
 800495e:	fab4 f484 	clz	r4, r4
 8004962:	3401      	adds	r4, #1
 8004964:	06a4      	lsls	r4, r4, #26
 8004966:	f004 44f8 	and.w	r4, r4, #2080374784	@ 0x7c000000
 800496a:	fa90 f5a0 	rbit	r5, r0
 800496e:	2d00      	cmp	r5, #0
 8004970:	f000 8151 	beq.w	8004c16 <HAL_ADC_ConfigChannel+0x4b2>
 8004974:	fab5 f585 	clz	r5, r5
 8004978:	3501      	adds	r5, #1
 800497a:	f005 051f 	and.w	r5, r5, #31
 800497e:	2601      	movs	r6, #1
 8004980:	fa06 f505 	lsl.w	r5, r6, r5
 8004984:	432c      	orrs	r4, r5
 8004986:	fa90 f0a0 	rbit	r0, r0
 800498a:	2800      	cmp	r0, #0
 800498c:	f000 8141 	beq.w	8004c12 <HAL_ADC_ConfigChannel+0x4ae>
 8004990:	fab0 f080 	clz	r0, r0
 8004994:	1c45      	adds	r5, r0, #1
 8004996:	f005 051f 	and.w	r5, r5, #31
 800499a:	2003      	movs	r0, #3
 800499c:	f06f 061d 	mvn.w	r6, #29
 80049a0:	fb10 6005 	smlabb	r0, r0, r5, r6
 80049a4:	0500      	lsls	r0, r0, #20
 80049a6:	f040 7000 	orr.w	r0, r0, #33554432	@ 0x2000000
 80049aa:	4320      	orrs	r0, r4
 80049ac:	0dc5      	lsrs	r5, r0, #23
 80049ae:	688c      	ldr	r4, [r1, #8]
 80049b0:	f005 0504 	and.w	r5, r5, #4
 80049b4:	f102 0614 	add.w	r6, r2, #20
 80049b8:	f3c0 5004 	ubfx	r0, r0, #20, #5
 80049bc:	fa04 f700 	lsl.w	r7, r4, r0
 80049c0:	f04f 0c07 	mov.w	ip, #7
 80049c4:	5974      	ldr	r4, [r6, r5]
 80049c6:	fa0c f000 	lsl.w	r0, ip, r0
 80049ca:	ea24 0000 	bic.w	r0, r4, r0
 80049ce:	4338      	orrs	r0, r7
 80049d0:	5170      	str	r0, [r6, r5]
 80049d2:	680d      	ldr	r5, [r1, #0]
 80049d4:	e70e      	b.n	80047f4 <HAL_ADC_ConfigChannel+0x90>
 80049d6:	2002      	movs	r0, #2
 80049d8:	b003      	add	sp, #12
 80049da:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80049dc:	01cc      	lsls	r4, r1, #7
 80049de:	f53f af29 	bmi.w	8004834 <HAL_ADC_ConfigChannel+0xd0>
 80049e2:	4937      	ldr	r1, [pc, #220]	@ (8004ac0 <HAL_ADC_ConfigChannel+0x35c>)
 80049e4:	428a      	cmp	r2, r1
 80049e6:	f43f af25 	beq.w	8004834 <HAL_ADC_ConfigChannel+0xd0>
 80049ea:	6882      	ldr	r2, [r0, #8]
 80049ec:	f022 72e0 	bic.w	r2, r2, #29360128	@ 0x1c00000
 80049f0:	4332      	orrs	r2, r6
 80049f2:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
 80049f6:	6082      	str	r2, [r0, #8]
 80049f8:	e71c      	b.n	8004834 <HAL_ADC_ConfigChannel+0xd0>
 80049fa:	0e80      	lsrs	r0, r0, #26
 80049fc:	3001      	adds	r0, #1
 80049fe:	f000 051f 	and.w	r5, r0, #31
 8004a02:	2401      	movs	r4, #1
 8004a04:	0680      	lsls	r0, r0, #26
 8004a06:	f000 40f8 	and.w	r0, r0, #2080374784	@ 0x7c000000
 8004a0a:	40ac      	lsls	r4, r5
 8004a0c:	2d09      	cmp	r5, #9
 8004a0e:	ea44 0400 	orr.w	r4, r4, r0
 8004a12:	eb05 0045 	add.w	r0, r5, r5, lsl #1
 8004a16:	f240 8080 	bls.w	8004b1a <HAL_ADC_ConfigChannel+0x3b6>
 8004a1a:	381e      	subs	r0, #30
 8004a1c:	0500      	lsls	r0, r0, #20
 8004a1e:	f040 7000 	orr.w	r0, r0, #33554432	@ 0x2000000
 8004a22:	e7c2      	b.n	80049aa <HAL_ADC_ConfigChannel+0x246>
 8004a24:	6e14      	ldr	r4, [r2, #96]	@ 0x60
 8004a26:	6e14      	ldr	r4, [r2, #96]	@ 0x60
 8004a28:	f3c0 0512 	ubfx	r5, r0, #0, #19
 8004a2c:	f3c4 6484 	ubfx	r4, r4, #26, #5
 8004a30:	2d00      	cmp	r5, #0
 8004a32:	d174      	bne.n	8004b1e <HAL_ADC_ConfigChannel+0x3ba>
 8004a34:	f3c0 6684 	ubfx	r6, r0, #26, #5
 8004a38:	42b4      	cmp	r4, r6
 8004a3a:	f000 80a6 	beq.w	8004b8a <HAL_ADC_ConfigChannel+0x426>
 8004a3e:	6e54      	ldr	r4, [r2, #100]	@ 0x64
 8004a40:	6e55      	ldr	r5, [r2, #100]	@ 0x64
 8004a42:	f102 0460 	add.w	r4, r2, #96	@ 0x60
 8004a46:	f3c5 6584 	ubfx	r5, r5, #26, #5
 8004a4a:	f102 0c64 	add.w	ip, r2, #100	@ 0x64
 8004a4e:	42b5      	cmp	r5, r6
 8004a50:	f000 80c1 	beq.w	8004bd6 <HAL_ADC_ConfigChannel+0x472>
 8004a54:	68a5      	ldr	r5, [r4, #8]
 8004a56:	68a5      	ldr	r5, [r4, #8]
 8004a58:	f104 0708 	add.w	r7, r4, #8
 8004a5c:	f3c5 6584 	ubfx	r5, r5, #26, #5
 8004a60:	f3c0 6684 	ubfx	r6, r0, #26, #5
 8004a64:	42ae      	cmp	r6, r5
 8004a66:	f000 80a4 	beq.w	8004bb2 <HAL_ADC_ConfigChannel+0x44e>
 8004a6a:	68e5      	ldr	r5, [r4, #12]
 8004a6c:	68e5      	ldr	r5, [r4, #12]
 8004a6e:	f104 060c 	add.w	r6, r4, #12
 8004a72:	f3c5 6484 	ubfx	r4, r5, #26, #5
 8004a76:	f3c0 6584 	ubfx	r5, r0, #26, #5
 8004a7a:	42a5      	cmp	r5, r4
 8004a7c:	f47f aea2 	bne.w	80047c4 <HAL_ADC_ConfigChannel+0x60>
 8004a80:	6830      	ldr	r0, [r6, #0]
 8004a82:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 8004a86:	6030      	str	r0, [r6, #0]
 8004a88:	6808      	ldr	r0, [r1, #0]
 8004a8a:	e69b      	b.n	80047c4 <HAL_ADC_ConfigChannel+0x60>
 8004a8c:	f102 0614 	add.w	r6, r2, #20
 8004a90:	5835      	ldr	r5, [r6, r0]
 8004a92:	402c      	ands	r4, r5
 8004a94:	5034      	str	r4, [r6, r0]
 8004a96:	6950      	ldr	r0, [r2, #20]
 8004a98:	f040 4000 	orr.w	r0, r0, #2147483648	@ 0x80000000
 8004a9c:	6150      	str	r0, [r2, #20]
 8004a9e:	e6f1      	b.n	8004884 <HAL_ADC_ConfigChannel+0x120>
 8004aa0:	0007ffff 	.word	0x0007ffff
 8004aa4:	407f0000 	.word	0x407f0000
 8004aa8:	80080000 	.word	0x80080000
 8004aac:	50000300 	.word	0x50000300
 8004ab0:	c3210000 	.word	0xc3210000
 8004ab4:	90c00010 	.word	0x90c00010
 8004ab8:	c7520000 	.word	0xc7520000
 8004abc:	cb840000 	.word	0xcb840000
 8004ac0:	50000100 	.word	0x50000100
 8004ac4:	03fff000 	.word	0x03fff000
 8004ac8:	20000008 	.word	0x20000008
 8004acc:	053e2d63 	.word	0x053e2d63
 8004ad0:	fa90 f4a0 	rbit	r4, r0
 8004ad4:	2c00      	cmp	r4, #0
 8004ad6:	f000 80a8 	beq.w	8004c2a <HAL_ADC_ConfigChannel+0x4c6>
 8004ada:	fab4 f484 	clz	r4, r4
 8004ade:	3401      	adds	r4, #1
 8004ae0:	06a4      	lsls	r4, r4, #26
 8004ae2:	f004 44f8 	and.w	r4, r4, #2080374784	@ 0x7c000000
 8004ae6:	fa90 f5a0 	rbit	r5, r0
 8004aea:	2d00      	cmp	r5, #0
 8004aec:	f000 809b 	beq.w	8004c26 <HAL_ADC_ConfigChannel+0x4c2>
 8004af0:	fab5 f585 	clz	r5, r5
 8004af4:	3501      	adds	r5, #1
 8004af6:	f005 051f 	and.w	r5, r5, #31
 8004afa:	2601      	movs	r6, #1
 8004afc:	fa06 f505 	lsl.w	r5, r6, r5
 8004b00:	432c      	orrs	r4, r5
 8004b02:	fa90 f0a0 	rbit	r0, r0
 8004b06:	2800      	cmp	r0, #0
 8004b08:	f000 808a 	beq.w	8004c20 <HAL_ADC_ConfigChannel+0x4bc>
 8004b0c:	fab0 f080 	clz	r0, r0
 8004b10:	3001      	adds	r0, #1
 8004b12:	f000 001f 	and.w	r0, r0, #31
 8004b16:	eb00 0040 	add.w	r0, r0, r0, lsl #1
 8004b1a:	0500      	lsls	r0, r0, #20
 8004b1c:	e745      	b.n	80049aa <HAL_ADC_ConfigChannel+0x246>
 8004b1e:	fa90 f5a0 	rbit	r5, r0
 8004b22:	b11d      	cbz	r5, 8004b2c <HAL_ADC_ConfigChannel+0x3c8>
 8004b24:	fab5 f585 	clz	r5, r5
 8004b28:	42ac      	cmp	r4, r5
 8004b2a:	d02e      	beq.n	8004b8a <HAL_ADC_ConfigChannel+0x426>
 8004b2c:	6e54      	ldr	r4, [r2, #100]	@ 0x64
 8004b2e:	6e55      	ldr	r5, [r2, #100]	@ 0x64
 8004b30:	f102 0460 	add.w	r4, r2, #96	@ 0x60
 8004b34:	f3c5 6584 	ubfx	r5, r5, #26, #5
 8004b38:	f102 0c64 	add.w	ip, r2, #100	@ 0x64
 8004b3c:	fa90 f6a0 	rbit	r6, r0
 8004b40:	f104 0708 	add.w	r7, r4, #8
 8004b44:	46be      	mov	lr, r7
 8004b46:	2e00      	cmp	r6, #0
 8004b48:	d05e      	beq.n	8004c08 <HAL_ADC_ConfigChannel+0x4a4>
 8004b4a:	fab6 f686 	clz	r6, r6
 8004b4e:	42ae      	cmp	r6, r5
 8004b50:	d043      	beq.n	8004bda <HAL_ADC_ConfigChannel+0x476>
 8004b52:	683d      	ldr	r5, [r7, #0]
 8004b54:	683d      	ldr	r5, [r7, #0]
 8004b56:	f3c5 6584 	ubfx	r5, r5, #26, #5
 8004b5a:	fa90 fca0 	rbit	ip, r0
 8004b5e:	f104 060c 	add.w	r6, r4, #12
 8004b62:	46b6      	mov	lr, r6
 8004b64:	f1bc 0f00 	cmp.w	ip, #0
 8004b68:	d049      	beq.n	8004bfe <HAL_ADC_ConfigChannel+0x49a>
 8004b6a:	fabc fc8c 	clz	ip, ip
 8004b6e:	45ac      	cmp	ip, r5
 8004b70:	d021      	beq.n	8004bb6 <HAL_ADC_ConfigChannel+0x452>
 8004b72:	6834      	ldr	r4, [r6, #0]
 8004b74:	6834      	ldr	r4, [r6, #0]
 8004b76:	f3c4 6484 	ubfx	r4, r4, #26, #5
 8004b7a:	fa90 f5a0 	rbit	r5, r0
 8004b7e:	2d00      	cmp	r5, #0
 8004b80:	f43f ae20 	beq.w	80047c4 <HAL_ADC_ConfigChannel+0x60>
 8004b84:	fab5 f585 	clz	r5, r5
 8004b88:	e777      	b.n	8004a7a <HAL_ADC_ConfigChannel+0x316>
 8004b8a:	6e10      	ldr	r0, [r2, #96]	@ 0x60
 8004b8c:	4614      	mov	r4, r2
 8004b8e:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 8004b92:	f844 0f60 	str.w	r0, [r4, #96]!
 8004b96:	6e50      	ldr	r0, [r2, #100]	@ 0x64
 8004b98:	6808      	ldr	r0, [r1, #0]
 8004b9a:	6e55      	ldr	r5, [r2, #100]	@ 0x64
 8004b9c:	f3c0 0612 	ubfx	r6, r0, #0, #19
 8004ba0:	f102 0c64 	add.w	ip, r2, #100	@ 0x64
 8004ba4:	f3c5 6584 	ubfx	r5, r5, #26, #5
 8004ba8:	2e00      	cmp	r6, #0
 8004baa:	d1c7      	bne.n	8004b3c <HAL_ADC_ConfigChannel+0x3d8>
 8004bac:	f3c0 6684 	ubfx	r6, r0, #26, #5
 8004bb0:	e74d      	b.n	8004a4e <HAL_ADC_ConfigChannel+0x2ea>
 8004bb2:	f104 0e0c 	add.w	lr, r4, #12
 8004bb6:	6838      	ldr	r0, [r7, #0]
 8004bb8:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 8004bbc:	6038      	str	r0, [r7, #0]
 8004bbe:	68e0      	ldr	r0, [r4, #12]
 8004bc0:	6808      	ldr	r0, [r1, #0]
 8004bc2:	68e4      	ldr	r4, [r4, #12]
 8004bc4:	f3c0 0512 	ubfx	r5, r0, #0, #19
 8004bc8:	4676      	mov	r6, lr
 8004bca:	f3c4 6484 	ubfx	r4, r4, #26, #5
 8004bce:	2d00      	cmp	r5, #0
 8004bd0:	f43f af51 	beq.w	8004a76 <HAL_ADC_ConfigChannel+0x312>
 8004bd4:	e7d1      	b.n	8004b7a <HAL_ADC_ConfigChannel+0x416>
 8004bd6:	f104 0e08 	add.w	lr, r4, #8
 8004bda:	f8dc 0000 	ldr.w	r0, [ip]
 8004bde:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 8004be2:	f8cc 0000 	str.w	r0, [ip]
 8004be6:	68a0      	ldr	r0, [r4, #8]
 8004be8:	6808      	ldr	r0, [r1, #0]
 8004bea:	68a5      	ldr	r5, [r4, #8]
 8004bec:	f3c0 0612 	ubfx	r6, r0, #0, #19
 8004bf0:	4677      	mov	r7, lr
 8004bf2:	f3c5 6584 	ubfx	r5, r5, #26, #5
 8004bf6:	2e00      	cmp	r6, #0
 8004bf8:	f43f af32 	beq.w	8004a60 <HAL_ADC_ConfigChannel+0x2fc>
 8004bfc:	e7ad      	b.n	8004b5a <HAL_ADC_ConfigChannel+0x3f6>
 8004bfe:	68e5      	ldr	r5, [r4, #12]
 8004c00:	68e4      	ldr	r4, [r4, #12]
 8004c02:	f3c4 6484 	ubfx	r4, r4, #26, #5
 8004c06:	e7b8      	b.n	8004b7a <HAL_ADC_ConfigChannel+0x416>
 8004c08:	68a5      	ldr	r5, [r4, #8]
 8004c0a:	68a5      	ldr	r5, [r4, #8]
 8004c0c:	f3c5 6584 	ubfx	r5, r5, #26, #5
 8004c10:	e7a3      	b.n	8004b5a <HAL_ADC_ConfigChannel+0x3f6>
 8004c12:	4807      	ldr	r0, [pc, #28]	@ (8004c30 <HAL_ADC_ConfigChannel+0x4cc>)
 8004c14:	e6c9      	b.n	80049aa <HAL_ADC_ConfigChannel+0x246>
 8004c16:	2502      	movs	r5, #2
 8004c18:	e6b4      	b.n	8004984 <HAL_ADC_ConfigChannel+0x220>
 8004c1a:	f04f 6480 	mov.w	r4, #67108864	@ 0x4000000
 8004c1e:	e6a4      	b.n	800496a <HAL_ADC_ConfigChannel+0x206>
 8004c20:	f44f 1040 	mov.w	r0, #3145728	@ 0x300000
 8004c24:	e6c1      	b.n	80049aa <HAL_ADC_ConfigChannel+0x246>
 8004c26:	2502      	movs	r5, #2
 8004c28:	e76a      	b.n	8004b00 <HAL_ADC_ConfigChannel+0x39c>
 8004c2a:	f04f 6480 	mov.w	r4, #67108864	@ 0x4000000
 8004c2e:	e75a      	b.n	8004ae6 <HAL_ADC_ConfigChannel+0x382>
 8004c30:	fe500000 	.word	0xfe500000

08004c34 <ADC_ConversionStop>:
 8004c34:	6803      	ldr	r3, [r0, #0]
 8004c36:	689a      	ldr	r2, [r3, #8]
 8004c38:	f012 0f04 	tst.w	r2, #4
 8004c3c:	b570      	push	{r4, r5, r6, lr}
 8004c3e:	689a      	ldr	r2, [r3, #8]
 8004c40:	4604      	mov	r4, r0
 8004c42:	d101      	bne.n	8004c48 <ADC_ConversionStop+0x14>
 8004c44:	0716      	lsls	r6, r2, #28
 8004c46:	d53c      	bpl.n	8004cc2 <ADC_ConversionStop+0x8e>
 8004c48:	68da      	ldr	r2, [r3, #12]
 8004c4a:	0195      	lsls	r5, r2, #6
 8004c4c:	d504      	bpl.n	8004c58 <ADC_ConversionStop+0x24>
 8004c4e:	8ba0      	ldrh	r0, [r4, #28]
 8004c50:	f240 1201 	movw	r2, #257	@ 0x101
 8004c54:	4290      	cmp	r0, r2
 8004c56:	d045      	beq.n	8004ce4 <ADC_ConversionStop+0xb0>
 8004c58:	2902      	cmp	r1, #2
 8004c5a:	689a      	ldr	r2, [r3, #8]
 8004c5c:	d033      	beq.n	8004cc6 <ADC_ConversionStop+0x92>
 8004c5e:	0750      	lsls	r0, r2, #29
 8004c60:	d502      	bpl.n	8004c68 <ADC_ConversionStop+0x34>
 8004c62:	689a      	ldr	r2, [r3, #8]
 8004c64:	0792      	lsls	r2, r2, #30
 8004c66:	d559      	bpl.n	8004d1c <ADC_ConversionStop+0xe8>
 8004c68:	2901      	cmp	r1, #1
 8004c6a:	d055      	beq.n	8004d18 <ADC_ConversionStop+0xe4>
 8004c6c:	689a      	ldr	r2, [r3, #8]
 8004c6e:	0710      	lsls	r0, r2, #28
 8004c70:	d50a      	bpl.n	8004c88 <ADC_ConversionStop+0x54>
 8004c72:	689a      	ldr	r2, [r3, #8]
 8004c74:	0792      	lsls	r2, r2, #30
 8004c76:	d407      	bmi.n	8004c88 <ADC_ConversionStop+0x54>
 8004c78:	689a      	ldr	r2, [r3, #8]
 8004c7a:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
 8004c7e:	f022 023f 	bic.w	r2, r2, #63	@ 0x3f
 8004c82:	f042 0220 	orr.w	r2, r2, #32
 8004c86:	609a      	str	r2, [r3, #8]
 8004c88:	2903      	cmp	r1, #3
 8004c8a:	d145      	bne.n	8004d18 <ADC_ConversionStop+0xe4>
 8004c8c:	250c      	movs	r5, #12
 8004c8e:	f7fc fb83 	bl	8001398 <HAL_GetTick>
 8004c92:	6823      	ldr	r3, [r4, #0]
 8004c94:	4606      	mov	r6, r0
 8004c96:	689b      	ldr	r3, [r3, #8]
 8004c98:	421d      	tst	r5, r3
 8004c9a:	d012      	beq.n	8004cc2 <ADC_ConversionStop+0x8e>
 8004c9c:	f7fc fb7c 	bl	8001398 <HAL_GetTick>
 8004ca0:	1b80      	subs	r0, r0, r6
 8004ca2:	2805      	cmp	r0, #5
 8004ca4:	6823      	ldr	r3, [r4, #0]
 8004ca6:	d9f6      	bls.n	8004c96 <ADC_ConversionStop+0x62>
 8004ca8:	689a      	ldr	r2, [r3, #8]
 8004caa:	422a      	tst	r2, r5
 8004cac:	d0f3      	beq.n	8004c96 <ADC_ConversionStop+0x62>
 8004cae:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004cb0:	f043 0310 	orr.w	r3, r3, #16
 8004cb4:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004cb6:	6e23      	ldr	r3, [r4, #96]	@ 0x60
 8004cb8:	f043 0301 	orr.w	r3, r3, #1
 8004cbc:	6623      	str	r3, [r4, #96]	@ 0x60
 8004cbe:	2001      	movs	r0, #1
 8004cc0:	bd70      	pop	{r4, r5, r6, pc}
 8004cc2:	2000      	movs	r0, #0
 8004cc4:	bd70      	pop	{r4, r5, r6, pc}
 8004cc6:	0716      	lsls	r6, r2, #28
 8004cc8:	d50a      	bpl.n	8004ce0 <ADC_ConversionStop+0xac>
 8004cca:	689a      	ldr	r2, [r3, #8]
 8004ccc:	0795      	lsls	r5, r2, #30
 8004cce:	d407      	bmi.n	8004ce0 <ADC_ConversionStop+0xac>
 8004cd0:	689a      	ldr	r2, [r3, #8]
 8004cd2:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
 8004cd6:	f022 023f 	bic.w	r2, r2, #63	@ 0x3f
 8004cda:	f042 0220 	orr.w	r2, r2, #32
 8004cde:	609a      	str	r2, [r3, #8]
 8004ce0:	2508      	movs	r5, #8
 8004ce2:	e7d4      	b.n	8004c8e <ADC_ConversionStop+0x5a>
 8004ce4:	681a      	ldr	r2, [r3, #0]
 8004ce6:	0650      	lsls	r0, r2, #25
 8004ce8:	d406      	bmi.n	8004cf8 <ADC_ConversionStop+0xc4>
 8004cea:	4a11      	ldr	r2, [pc, #68]	@ (8004d30 <ADC_ConversionStop+0xfc>)
 8004cec:	e001      	b.n	8004cf2 <ADC_ConversionStop+0xbe>
 8004cee:	3a01      	subs	r2, #1
 8004cf0:	d0dd      	beq.n	8004cae <ADC_ConversionStop+0x7a>
 8004cf2:	6819      	ldr	r1, [r3, #0]
 8004cf4:	0649      	lsls	r1, r1, #25
 8004cf6:	d5fa      	bpl.n	8004cee <ADC_ConversionStop+0xba>
 8004cf8:	2240      	movs	r2, #64	@ 0x40
 8004cfa:	601a      	str	r2, [r3, #0]
 8004cfc:	689a      	ldr	r2, [r3, #8]
 8004cfe:	0756      	lsls	r6, r2, #29
 8004d00:	d50a      	bpl.n	8004d18 <ADC_ConversionStop+0xe4>
 8004d02:	689a      	ldr	r2, [r3, #8]
 8004d04:	0795      	lsls	r5, r2, #30
 8004d06:	d407      	bmi.n	8004d18 <ADC_ConversionStop+0xe4>
 8004d08:	689a      	ldr	r2, [r3, #8]
 8004d0a:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
 8004d0e:	f022 023f 	bic.w	r2, r2, #63	@ 0x3f
 8004d12:	f042 0210 	orr.w	r2, r2, #16
 8004d16:	609a      	str	r2, [r3, #8]
 8004d18:	2504      	movs	r5, #4
 8004d1a:	e7b8      	b.n	8004c8e <ADC_ConversionStop+0x5a>
 8004d1c:	689a      	ldr	r2, [r3, #8]
 8004d1e:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
 8004d22:	f022 023f 	bic.w	r2, r2, #63	@ 0x3f
 8004d26:	f042 0210 	orr.w	r2, r2, #16
 8004d2a:	609a      	str	r2, [r3, #8]
 8004d2c:	e79c      	b.n	8004c68 <ADC_ConversionStop+0x34>
 8004d2e:	bf00      	nop
 8004d30:	a3400000 	.word	0xa3400000

08004d34 <ADC_Enable>:
 8004d34:	b570      	push	{r4, r5, r6, lr}
 8004d36:	b082      	sub	sp, #8
 8004d38:	2200      	movs	r2, #0
 8004d3a:	6803      	ldr	r3, [r0, #0]
 8004d3c:	9201      	str	r2, [sp, #4]
 8004d3e:	689a      	ldr	r2, [r3, #8]
 8004d40:	07d2      	lsls	r2, r2, #31
 8004d42:	d42c      	bmi.n	8004d9e <ADC_Enable+0x6a>
 8004d44:	6899      	ldr	r1, [r3, #8]
 8004d46:	4a28      	ldr	r2, [pc, #160]	@ (8004de8 <ADC_Enable+0xb4>)
 8004d48:	4211      	tst	r1, r2
 8004d4a:	4604      	mov	r4, r0
 8004d4c:	d12a      	bne.n	8004da4 <ADC_Enable+0x70>
 8004d4e:	689a      	ldr	r2, [r3, #8]
 8004d50:	4926      	ldr	r1, [pc, #152]	@ (8004dec <ADC_Enable+0xb8>)
 8004d52:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
 8004d56:	f022 023f 	bic.w	r2, r2, #63	@ 0x3f
 8004d5a:	f042 0201 	orr.w	r2, r2, #1
 8004d5e:	609a      	str	r2, [r3, #8]
 8004d60:	688b      	ldr	r3, [r1, #8]
 8004d62:	021b      	lsls	r3, r3, #8
 8004d64:	d429      	bmi.n	8004dba <ADC_Enable+0x86>
 8004d66:	f7fc fb17 	bl	8001398 <HAL_GetTick>
 8004d6a:	6823      	ldr	r3, [r4, #0]
 8004d6c:	681a      	ldr	r2, [r3, #0]
 8004d6e:	07d6      	lsls	r6, r2, #31
 8004d70:	4605      	mov	r5, r0
 8004d72:	d414      	bmi.n	8004d9e <ADC_Enable+0x6a>
 8004d74:	4e1e      	ldr	r6, [pc, #120]	@ (8004df0 <ADC_Enable+0xbc>)
 8004d76:	689a      	ldr	r2, [r3, #8]
 8004d78:	07d0      	lsls	r0, r2, #31
 8004d7a:	d404      	bmi.n	8004d86 <ADC_Enable+0x52>
 8004d7c:	689a      	ldr	r2, [r3, #8]
 8004d7e:	4032      	ands	r2, r6
 8004d80:	f042 0201 	orr.w	r2, r2, #1
 8004d84:	609a      	str	r2, [r3, #8]
 8004d86:	f7fc fb07 	bl	8001398 <HAL_GetTick>
 8004d8a:	1b43      	subs	r3, r0, r5
 8004d8c:	2b02      	cmp	r3, #2
 8004d8e:	6823      	ldr	r3, [r4, #0]
 8004d90:	d902      	bls.n	8004d98 <ADC_Enable+0x64>
 8004d92:	681a      	ldr	r2, [r3, #0]
 8004d94:	07d1      	lsls	r1, r2, #31
 8004d96:	d505      	bpl.n	8004da4 <ADC_Enable+0x70>
 8004d98:	681a      	ldr	r2, [r3, #0]
 8004d9a:	07d2      	lsls	r2, r2, #31
 8004d9c:	d5eb      	bpl.n	8004d76 <ADC_Enable+0x42>
 8004d9e:	2000      	movs	r0, #0
 8004da0:	b002      	add	sp, #8
 8004da2:	bd70      	pop	{r4, r5, r6, pc}
 8004da4:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004da6:	f043 0310 	orr.w	r3, r3, #16
 8004daa:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004dac:	6e23      	ldr	r3, [r4, #96]	@ 0x60
 8004dae:	2001      	movs	r0, #1
 8004db0:	f043 0301 	orr.w	r3, r3, #1
 8004db4:	6623      	str	r3, [r4, #96]	@ 0x60
 8004db6:	b002      	add	sp, #8
 8004db8:	bd70      	pop	{r4, r5, r6, pc}
 8004dba:	4b0e      	ldr	r3, [pc, #56]	@ (8004df4 <ADC_Enable+0xc0>)
 8004dbc:	4a0e      	ldr	r2, [pc, #56]	@ (8004df8 <ADC_Enable+0xc4>)
 8004dbe:	681b      	ldr	r3, [r3, #0]
 8004dc0:	099b      	lsrs	r3, r3, #6
 8004dc2:	fba2 2303 	umull	r2, r3, r2, r3
 8004dc6:	099b      	lsrs	r3, r3, #6
 8004dc8:	3301      	adds	r3, #1
 8004dca:	eb03 0343 	add.w	r3, r3, r3, lsl #1
 8004dce:	009b      	lsls	r3, r3, #2
 8004dd0:	9301      	str	r3, [sp, #4]
 8004dd2:	9b01      	ldr	r3, [sp, #4]
 8004dd4:	2b00      	cmp	r3, #0
 8004dd6:	d0c6      	beq.n	8004d66 <ADC_Enable+0x32>
 8004dd8:	9b01      	ldr	r3, [sp, #4]
 8004dda:	3b01      	subs	r3, #1
 8004ddc:	9301      	str	r3, [sp, #4]
 8004dde:	9b01      	ldr	r3, [sp, #4]
 8004de0:	2b00      	cmp	r3, #0
 8004de2:	d1f9      	bne.n	8004dd8 <ADC_Enable+0xa4>
 8004de4:	e7bf      	b.n	8004d66 <ADC_Enable+0x32>
 8004de6:	bf00      	nop
 8004de8:	8000003f 	.word	0x8000003f
 8004dec:	50000300 	.word	0x50000300
 8004df0:	7fffffc0 	.word	0x7fffffc0
 8004df4:	20000008 	.word	0x20000008
 8004df8:	053e2d63 	.word	0x053e2d63

08004dfc <HAL_ADC_Start_DMA>:
 8004dfc:	4b35      	ldr	r3, [pc, #212]	@ (8004ed4 <HAL_ADC_Start_DMA+0xd8>)
 8004dfe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004e02:	f8d3 8008 	ldr.w	r8, [r3, #8]
 8004e06:	6803      	ldr	r3, [r0, #0]
 8004e08:	689d      	ldr	r5, [r3, #8]
 8004e0a:	f015 0504 	ands.w	r5, r5, #4
 8004e0e:	d116      	bne.n	8004e3e <HAL_ADC_Start_DMA+0x42>
 8004e10:	f890 3058 	ldrb.w	r3, [r0, #88]	@ 0x58
 8004e14:	2b01      	cmp	r3, #1
 8004e16:	4604      	mov	r4, r0
 8004e18:	d011      	beq.n	8004e3e <HAL_ADC_Start_DMA+0x42>
 8004e1a:	f008 081f 	and.w	r8, r8, #31
 8004e1e:	f240 2321 	movw	r3, #545	@ 0x221
 8004e22:	f04f 0c01 	mov.w	ip, #1
 8004e26:	fa23 f308 	lsr.w	r3, r3, r8
 8004e2a:	ea13 030c 	ands.w	r3, r3, ip
 8004e2e:	f880 c058 	strb.w	ip, [r0, #88]	@ 0x58
 8004e32:	d107      	bne.n	8004e44 <HAL_ADC_Start_DMA+0x48>
 8004e34:	f880 3058 	strb.w	r3, [r0, #88]	@ 0x58
 8004e38:	4660      	mov	r0, ip
 8004e3a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004e3e:	2002      	movs	r0, #2
 8004e40:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004e44:	460e      	mov	r6, r1
 8004e46:	4617      	mov	r7, r2
 8004e48:	f7ff ff74 	bl	8004d34 <ADC_Enable>
 8004e4c:	2800      	cmp	r0, #0
 8004e4e:	d13a      	bne.n	8004ec6 <HAL_ADC_Start_DMA+0xca>
 8004e50:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004e52:	6821      	ldr	r1, [r4, #0]
 8004e54:	f423 6370 	bic.w	r3, r3, #3840	@ 0xf00
 8004e58:	f023 0301 	bic.w	r3, r3, #1
 8004e5c:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8004e60:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004e62:	4b1d      	ldr	r3, [pc, #116]	@ (8004ed8 <HAL_ADC_Start_DMA+0xdc>)
 8004e64:	4299      	cmp	r1, r3
 8004e66:	d031      	beq.n	8004ecc <HAL_ADC_Start_DMA+0xd0>
 8004e68:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004e6a:	f423 1380 	bic.w	r3, r3, #1048576	@ 0x100000
 8004e6e:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004e70:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004e72:	6d60      	ldr	r0, [r4, #84]	@ 0x54
 8004e74:	4d19      	ldr	r5, [pc, #100]	@ (8004edc <HAL_ADC_Start_DMA+0xe0>)
 8004e76:	f413 5380 	ands.w	r3, r3, #4096	@ 0x1000
 8004e7a:	bf1c      	itt	ne
 8004e7c:	6e23      	ldrne	r3, [r4, #96]	@ 0x60
 8004e7e:	f023 0306 	bicne.w	r3, r3, #6
 8004e82:	6623      	str	r3, [r4, #96]	@ 0x60
 8004e84:	62c5      	str	r5, [r0, #44]	@ 0x2c
 8004e86:	4d16      	ldr	r5, [pc, #88]	@ (8004ee0 <HAL_ADC_Start_DMA+0xe4>)
 8004e88:	6305      	str	r5, [r0, #48]	@ 0x30
 8004e8a:	4d16      	ldr	r5, [pc, #88]	@ (8004ee4 <HAL_ADC_Start_DMA+0xe8>)
 8004e8c:	6345      	str	r5, [r0, #52]	@ 0x34
 8004e8e:	251c      	movs	r5, #28
 8004e90:	600d      	str	r5, [r1, #0]
 8004e92:	2500      	movs	r5, #0
 8004e94:	f884 5058 	strb.w	r5, [r4, #88]	@ 0x58
 8004e98:	684d      	ldr	r5, [r1, #4]
 8004e9a:	f045 0510 	orr.w	r5, r5, #16
 8004e9e:	604d      	str	r5, [r1, #4]
 8004ea0:	68cd      	ldr	r5, [r1, #12]
 8004ea2:	f045 0501 	orr.w	r5, r5, #1
 8004ea6:	463b      	mov	r3, r7
 8004ea8:	4632      	mov	r2, r6
 8004eaa:	60cd      	str	r5, [r1, #12]
 8004eac:	3140      	adds	r1, #64	@ 0x40
 8004eae:	f7fd f921 	bl	80020f4 <HAL_DMA_Start_IT>
 8004eb2:	6822      	ldr	r2, [r4, #0]
 8004eb4:	6893      	ldr	r3, [r2, #8]
 8004eb6:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8004eba:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
 8004ebe:	f043 0304 	orr.w	r3, r3, #4
 8004ec2:	6093      	str	r3, [r2, #8]
 8004ec4:	e7bc      	b.n	8004e40 <HAL_ADC_Start_DMA+0x44>
 8004ec6:	f884 5058 	strb.w	r5, [r4, #88]	@ 0x58
 8004eca:	e7b9      	b.n	8004e40 <HAL_ADC_Start_DMA+0x44>
 8004ecc:	f1b8 0f00 	cmp.w	r8, #0
 8004ed0:	d1ce      	bne.n	8004e70 <HAL_ADC_Start_DMA+0x74>
 8004ed2:	e7c9      	b.n	8004e68 <HAL_ADC_Start_DMA+0x6c>
 8004ed4:	50000300 	.word	0x50000300
 8004ed8:	50000100 	.word	0x50000100
 8004edc:	080046dd 	.word	0x080046dd
 8004ee0:	08004485 	.word	0x08004485
 8004ee4:	08004749 	.word	0x08004749

08004ee8 <ADC_Disable>:
 8004ee8:	b538      	push	{r3, r4, r5, lr}
 8004eea:	6803      	ldr	r3, [r0, #0]
 8004eec:	689a      	ldr	r2, [r3, #8]
 8004eee:	0795      	lsls	r5, r2, #30
 8004ef0:	d502      	bpl.n	8004ef8 <ADC_Disable+0x10>
 8004ef2:	689b      	ldr	r3, [r3, #8]
 8004ef4:	2000      	movs	r0, #0
 8004ef6:	bd38      	pop	{r3, r4, r5, pc}
 8004ef8:	689a      	ldr	r2, [r3, #8]
 8004efa:	07d4      	lsls	r4, r2, #31
 8004efc:	d5fa      	bpl.n	8004ef4 <ADC_Disable+0xc>
 8004efe:	689a      	ldr	r2, [r3, #8]
 8004f00:	f002 020d 	and.w	r2, r2, #13
 8004f04:	2a01      	cmp	r2, #1
 8004f06:	4604      	mov	r4, r0
 8004f08:	d009      	beq.n	8004f1e <ADC_Disable+0x36>
 8004f0a:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004f0c:	f043 0310 	orr.w	r3, r3, #16
 8004f10:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004f12:	6e23      	ldr	r3, [r4, #96]	@ 0x60
 8004f14:	f043 0301 	orr.w	r3, r3, #1
 8004f18:	6623      	str	r3, [r4, #96]	@ 0x60
 8004f1a:	2001      	movs	r0, #1
 8004f1c:	bd38      	pop	{r3, r4, r5, pc}
 8004f1e:	689a      	ldr	r2, [r3, #8]
 8004f20:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
 8004f24:	f022 023f 	bic.w	r2, r2, #63	@ 0x3f
 8004f28:	2103      	movs	r1, #3
 8004f2a:	f042 0202 	orr.w	r2, r2, #2
 8004f2e:	609a      	str	r2, [r3, #8]
 8004f30:	6019      	str	r1, [r3, #0]
 8004f32:	f7fc fa31 	bl	8001398 <HAL_GetTick>
 8004f36:	6823      	ldr	r3, [r4, #0]
 8004f38:	689b      	ldr	r3, [r3, #8]
 8004f3a:	07d9      	lsls	r1, r3, #31
 8004f3c:	4605      	mov	r5, r0
 8004f3e:	d403      	bmi.n	8004f48 <ADC_Disable+0x60>
 8004f40:	e7d8      	b.n	8004ef4 <ADC_Disable+0xc>
 8004f42:	689b      	ldr	r3, [r3, #8]
 8004f44:	07db      	lsls	r3, r3, #31
 8004f46:	d5d5      	bpl.n	8004ef4 <ADC_Disable+0xc>
 8004f48:	f7fc fa26 	bl	8001398 <HAL_GetTick>
 8004f4c:	1b40      	subs	r0, r0, r5
 8004f4e:	2802      	cmp	r0, #2
 8004f50:	6823      	ldr	r3, [r4, #0]
 8004f52:	d9f6      	bls.n	8004f42 <ADC_Disable+0x5a>
 8004f54:	689a      	ldr	r2, [r3, #8]
 8004f56:	07d2      	lsls	r2, r2, #31
 8004f58:	d5f3      	bpl.n	8004f42 <ADC_Disable+0x5a>
 8004f5a:	e7d6      	b.n	8004f0a <ADC_Disable+0x22>

08004f5c <HAL_ADC_Stop_DMA>:
 8004f5c:	b538      	push	{r3, r4, r5, lr}
 8004f5e:	f890 3058 	ldrb.w	r3, [r0, #88]	@ 0x58
 8004f62:	2b01      	cmp	r3, #1
 8004f64:	d028      	beq.n	8004fb8 <HAL_ADC_Stop_DMA+0x5c>
 8004f66:	2301      	movs	r3, #1
 8004f68:	f880 3058 	strb.w	r3, [r0, #88]	@ 0x58
 8004f6c:	2103      	movs	r1, #3
 8004f6e:	4604      	mov	r4, r0
 8004f70:	f7ff fe60 	bl	8004c34 <ADC_ConversionStop>
 8004f74:	4605      	mov	r5, r0
 8004f76:	b9d0      	cbnz	r0, 8004fae <HAL_ADC_Stop_DMA+0x52>
 8004f78:	6823      	ldr	r3, [r4, #0]
 8004f7a:	6d60      	ldr	r0, [r4, #84]	@ 0x54
 8004f7c:	68da      	ldr	r2, [r3, #12]
 8004f7e:	f022 0201 	bic.w	r2, r2, #1
 8004f82:	60da      	str	r2, [r3, #12]
 8004f84:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
 8004f88:	2a02      	cmp	r2, #2
 8004f8a:	d018      	beq.n	8004fbe <HAL_ADC_Stop_DMA+0x62>
 8004f8c:	685a      	ldr	r2, [r3, #4]
 8004f8e:	f022 0210 	bic.w	r2, r2, #16
 8004f92:	605a      	str	r2, [r3, #4]
 8004f94:	4620      	mov	r0, r4
 8004f96:	f7ff ffa7 	bl	8004ee8 <ADC_Disable>
 8004f9a:	4605      	mov	r5, r0
 8004f9c:	b938      	cbnz	r0, 8004fae <HAL_ADC_Stop_DMA+0x52>
 8004f9e:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004fa0:	f423 5388 	bic.w	r3, r3, #4352	@ 0x1100
 8004fa4:	f023 0301 	bic.w	r3, r3, #1
 8004fa8:	f043 0301 	orr.w	r3, r3, #1
 8004fac:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004fae:	2300      	movs	r3, #0
 8004fb0:	f884 3058 	strb.w	r3, [r4, #88]	@ 0x58
 8004fb4:	4628      	mov	r0, r5
 8004fb6:	bd38      	pop	{r3, r4, r5, pc}
 8004fb8:	2502      	movs	r5, #2
 8004fba:	4628      	mov	r0, r5
 8004fbc:	bd38      	pop	{r3, r4, r5, pc}
 8004fbe:	f7fd f8f1 	bl	80021a4 <HAL_DMA_Abort>
 8004fc2:	4605      	mov	r5, r0
 8004fc4:	b160      	cbz	r0, 8004fe0 <HAL_ADC_Stop_DMA+0x84>
 8004fc6:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 8004fc8:	6822      	ldr	r2, [r4, #0]
 8004fca:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8004fce:	65e3      	str	r3, [r4, #92]	@ 0x5c
 8004fd0:	6853      	ldr	r3, [r2, #4]
 8004fd2:	f023 0310 	bic.w	r3, r3, #16
 8004fd6:	4620      	mov	r0, r4
 8004fd8:	6053      	str	r3, [r2, #4]
 8004fda:	f7ff ff85 	bl	8004ee8 <ADC_Disable>
 8004fde:	e7e6      	b.n	8004fae <HAL_ADC_Stop_DMA+0x52>
 8004fe0:	6822      	ldr	r2, [r4, #0]
 8004fe2:	6853      	ldr	r3, [r2, #4]
 8004fe4:	f023 0310 	bic.w	r3, r3, #16
 8004fe8:	6053      	str	r3, [r2, #4]
 8004fea:	e7d3      	b.n	8004f94 <HAL_ADC_Stop_DMA+0x38>

08004fec <HAL_ADCEx_InjectedConvCpltCallback>:
 8004fec:	4770      	bx	lr
 8004fee:	bf00      	nop

08004ff0 <HAL_ADCEx_InjectedQueueOverflowCallback>:
 8004ff0:	4770      	bx	lr
 8004ff2:	bf00      	nop

08004ff4 <HAL_ADCEx_LevelOutOfWindow2Callback>:
 8004ff4:	4770      	bx	lr
 8004ff6:	bf00      	nop

08004ff8 <HAL_ADCEx_LevelOutOfWindow3Callback>:
 8004ff8:	4770      	bx	lr
 8004ffa:	bf00      	nop

08004ffc <HAL_ADCEx_EndOfSamplingCallback>:
 8004ffc:	4770      	bx	lr
 8004ffe:	bf00      	nop

08005000 <HAL_ADCEx_MultiModeConfigChannel>:
 8005000:	f890 2058 	ldrb.w	r2, [r0, #88]	@ 0x58
 8005004:	2a01      	cmp	r2, #1
 8005006:	d045      	beq.n	8005094 <HAL_ADCEx_MultiModeConfigChannel+0x94>
 8005008:	b4f0      	push	{r4, r5, r6, r7}
 800500a:	6804      	ldr	r4, [r0, #0]
 800500c:	b09c      	sub	sp, #112	@ 0x70
 800500e:	4603      	mov	r3, r0
 8005010:	2200      	movs	r2, #0
 8005012:	2001      	movs	r0, #1
 8005014:	f1b4 4fa0 	cmp.w	r4, #1342177280	@ 0x50000000
 8005018:	9218      	str	r2, [sp, #96]	@ 0x60
 800501a:	f883 0058 	strb.w	r0, [r3, #88]	@ 0x58
 800501e:	9219      	str	r2, [sp, #100]	@ 0x64
 8005020:	d008      	beq.n	8005034 <HAL_ADCEx_MultiModeConfigChannel+0x34>
 8005022:	6dd9      	ldr	r1, [r3, #92]	@ 0x5c
 8005024:	f883 2058 	strb.w	r2, [r3, #88]	@ 0x58
 8005028:	f041 0120 	orr.w	r1, r1, #32
 800502c:	65d9      	str	r1, [r3, #92]	@ 0x5c
 800502e:	b01c      	add	sp, #112	@ 0x70
 8005030:	bcf0      	pop	{r4, r5, r6, r7}
 8005032:	4770      	bx	lr
 8005034:	4a22      	ldr	r2, [pc, #136]	@ (80050c0 <HAL_ADCEx_MultiModeConfigChannel+0xc0>)
 8005036:	6890      	ldr	r0, [r2, #8]
 8005038:	0740      	lsls	r0, r0, #29
 800503a:	d50b      	bpl.n	8005054 <HAL_ADCEx_MultiModeConfigChannel+0x54>
 800503c:	68a2      	ldr	r2, [r4, #8]
 800503e:	6dda      	ldr	r2, [r3, #92]	@ 0x5c
 8005040:	f042 0220 	orr.w	r2, r2, #32
 8005044:	2001      	movs	r0, #1
 8005046:	65da      	str	r2, [r3, #92]	@ 0x5c
 8005048:	2200      	movs	r2, #0
 800504a:	f883 2058 	strb.w	r2, [r3, #88]	@ 0x58
 800504e:	b01c      	add	sp, #112	@ 0x70
 8005050:	bcf0      	pop	{r4, r5, r6, r7}
 8005052:	4770      	bx	lr
 8005054:	68a0      	ldr	r0, [r4, #8]
 8005056:	0745      	lsls	r5, r0, #29
 8005058:	d4f1      	bmi.n	800503e <HAL_ADCEx_MultiModeConfigChannel+0x3e>
 800505a:	680d      	ldr	r5, [r1, #0]
 800505c:	b1e5      	cbz	r5, 8005098 <HAL_ADCEx_MultiModeConfigChannel+0x98>
 800505e:	4e19      	ldr	r6, [pc, #100]	@ (80050c4 <HAL_ADCEx_MultiModeConfigChannel+0xc4>)
 8005060:	684f      	ldr	r7, [r1, #4]
 8005062:	68b0      	ldr	r0, [r6, #8]
 8005064:	f893 c038 	ldrb.w	ip, [r3, #56]	@ 0x38
 8005068:	f420 4060 	bic.w	r0, r0, #57344	@ 0xe000
 800506c:	4338      	orrs	r0, r7
 800506e:	ea40 304c 	orr.w	r0, r0, ip, lsl #13
 8005072:	60b0      	str	r0, [r6, #8]
 8005074:	68a0      	ldr	r0, [r4, #8]
 8005076:	6892      	ldr	r2, [r2, #8]
 8005078:	07c0      	lsls	r0, r0, #31
 800507a:	d41e      	bmi.n	80050ba <HAL_ADCEx_MultiModeConfigChannel+0xba>
 800507c:	07d7      	lsls	r7, r2, #31
 800507e:	d41c      	bmi.n	80050ba <HAL_ADCEx_MultiModeConfigChannel+0xba>
 8005080:	68b2      	ldr	r2, [r6, #8]
 8005082:	6889      	ldr	r1, [r1, #8]
 8005084:	f422 6271 	bic.w	r2, r2, #3856	@ 0xf10
 8005088:	430d      	orrs	r5, r1
 800508a:	f022 020f 	bic.w	r2, r2, #15
 800508e:	4315      	orrs	r5, r2
 8005090:	60b5      	str	r5, [r6, #8]
 8005092:	e012      	b.n	80050ba <HAL_ADCEx_MultiModeConfigChannel+0xba>
 8005094:	2002      	movs	r0, #2
 8005096:	4770      	bx	lr
 8005098:	480a      	ldr	r0, [pc, #40]	@ (80050c4 <HAL_ADCEx_MultiModeConfigChannel+0xc4>)
 800509a:	6881      	ldr	r1, [r0, #8]
 800509c:	f421 4160 	bic.w	r1, r1, #57344	@ 0xe000
 80050a0:	6081      	str	r1, [r0, #8]
 80050a2:	68a1      	ldr	r1, [r4, #8]
 80050a4:	6892      	ldr	r2, [r2, #8]
 80050a6:	07cd      	lsls	r5, r1, #31
 80050a8:	d407      	bmi.n	80050ba <HAL_ADCEx_MultiModeConfigChannel+0xba>
 80050aa:	07d4      	lsls	r4, r2, #31
 80050ac:	d405      	bmi.n	80050ba <HAL_ADCEx_MultiModeConfigChannel+0xba>
 80050ae:	6882      	ldr	r2, [r0, #8]
 80050b0:	f422 6271 	bic.w	r2, r2, #3856	@ 0xf10
 80050b4:	f022 020f 	bic.w	r2, r2, #15
 80050b8:	6082      	str	r2, [r0, #8]
 80050ba:	2000      	movs	r0, #0
 80050bc:	e7c4      	b.n	8005048 <HAL_ADCEx_MultiModeConfigChannel+0x48>
 80050be:	bf00      	nop
 80050c0:	50000100 	.word	0x50000100
 80050c4:	50000300 	.word	0x50000300

080050c8 <MX_DMA_Init>:
 80050c8:	b510      	push	{r4, lr}
 80050ca:	4b0f      	ldr	r3, [pc, #60]	@ (8005108 <MX_DMA_Init+0x40>)
 80050cc:	6c98      	ldr	r0, [r3, #72]	@ 0x48
 80050ce:	f040 0004 	orr.w	r0, r0, #4
 80050d2:	b082      	sub	sp, #8
 80050d4:	6498      	str	r0, [r3, #72]	@ 0x48
 80050d6:	6c9c      	ldr	r4, [r3, #72]	@ 0x48
 80050d8:	f004 0404 	and.w	r4, r4, #4
 80050dc:	9400      	str	r4, [sp, #0]
 80050de:	9c00      	ldr	r4, [sp, #0]
 80050e0:	6c9c      	ldr	r4, [r3, #72]	@ 0x48
 80050e2:	f044 0401 	orr.w	r4, r4, #1
 80050e6:	649c      	str	r4, [r3, #72]	@ 0x48
 80050e8:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 80050ea:	2200      	movs	r2, #0
 80050ec:	f003 0301 	and.w	r3, r3, #1
 80050f0:	9301      	str	r3, [sp, #4]
 80050f2:	4611      	mov	r1, r2
 80050f4:	200b      	movs	r0, #11
 80050f6:	9b01      	ldr	r3, [sp, #4]
 80050f8:	f7fd f9a4 	bl	8002444 <HAL_NVIC_SetPriority>
 80050fc:	200b      	movs	r0, #11
 80050fe:	b002      	add	sp, #8
 8005100:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005104:	f7fd b9da 	b.w	80024bc <HAL_NVIC_EnableIRQ>
 8005108:	40021000 	.word	0x40021000

0800510c <Reset_Handler>:
 800510c:	480d      	ldr	r0, [pc, #52]	@ (8005144 <LoopForever+0x2>)
 800510e:	4685      	mov	sp, r0
 8005110:	f7fd fce2 	bl	8002ad8 <SystemInit>
 8005114:	480c      	ldr	r0, [pc, #48]	@ (8005148 <LoopForever+0x6>)
 8005116:	490d      	ldr	r1, [pc, #52]	@ (800514c <LoopForever+0xa>)
 8005118:	4a0d      	ldr	r2, [pc, #52]	@ (8005150 <LoopForever+0xe>)
 800511a:	2300      	movs	r3, #0
 800511c:	e002      	b.n	8005124 <LoopCopyDataInit>

0800511e <CopyDataInit>:
 800511e:	58d4      	ldr	r4, [r2, r3]
 8005120:	50c4      	str	r4, [r0, r3]
 8005122:	3304      	adds	r3, #4

08005124 <LoopCopyDataInit>:
 8005124:	18c4      	adds	r4, r0, r3
 8005126:	428c      	cmp	r4, r1
 8005128:	d3f9      	bcc.n	800511e <CopyDataInit>
 800512a:	4a0a      	ldr	r2, [pc, #40]	@ (8005154 <LoopForever+0x12>)
 800512c:	4c0a      	ldr	r4, [pc, #40]	@ (8005158 <LoopForever+0x16>)
 800512e:	2300      	movs	r3, #0
 8005130:	e001      	b.n	8005136 <LoopFillZerobss>

08005132 <FillZerobss>:
 8005132:	6013      	str	r3, [r2, #0]
 8005134:	3204      	adds	r2, #4

08005136 <LoopFillZerobss>:
 8005136:	42a2      	cmp	r2, r4
 8005138:	d3fb      	bcc.n	8005132 <FillZerobss>
 800513a:	f001 f98d 	bl	8006458 <__libc_init_array>
 800513e:	f7fc f80b 	bl	8001158 <main>

08005142 <LoopForever>:
 8005142:	e7fe      	b.n	8005142 <LoopForever>
 8005144:	20008000 	.word	0x20008000
 8005148:	20000000 	.word	0x20000000
 800514c:	2000005c 	.word	0x2000005c
 8005150:	08019a60 	.word	0x08019a60
 8005154:	20000060 	.word	0x20000060
 8005158:	2000346c 	.word	0x2000346c

0800515c <COMP1_2_3_IRQHandler>:
 800515c:	e7fe      	b.n	800515c <COMP1_2_3_IRQHandler>
	...

08005160 <arm_rfft_32_fast_init_f32>:
 8005160:	b178      	cbz	r0, 8005182 <arm_rfft_32_fast_init_f32+0x22>
 8005162:	b430      	push	{r4, r5}
 8005164:	4908      	ldr	r1, [pc, #32]	@ (8005188 <arm_rfft_32_fast_init_f32+0x28>)
 8005166:	4a09      	ldr	r2, [pc, #36]	@ (800518c <arm_rfft_32_fast_init_f32+0x2c>)
 8005168:	2310      	movs	r3, #16
 800516a:	e9c0 2101 	strd	r2, r1, [r0, #4]
 800516e:	8003      	strh	r3, [r0, #0]
 8005170:	2520      	movs	r5, #32
 8005172:	2414      	movs	r4, #20
 8005174:	4b06      	ldr	r3, [pc, #24]	@ (8005190 <arm_rfft_32_fast_init_f32+0x30>)
 8005176:	8205      	strh	r5, [r0, #16]
 8005178:	8184      	strh	r4, [r0, #12]
 800517a:	6143      	str	r3, [r0, #20]
 800517c:	bc30      	pop	{r4, r5}
 800517e:	2000      	movs	r0, #0
 8005180:	4770      	bx	lr
 8005182:	f04f 30ff 	mov.w	r0, #4294967295
 8005186:	4770      	bx	lr
 8005188:	08007a08 	.word	0x08007a08
 800518c:	0800c340 	.word	0x0800c340
 8005190:	080150c0 	.word	0x080150c0

08005194 <arm_rfft_64_fast_init_f32>:
 8005194:	b178      	cbz	r0, 80051b6 <arm_rfft_64_fast_init_f32+0x22>
 8005196:	b430      	push	{r4, r5}
 8005198:	4908      	ldr	r1, [pc, #32]	@ (80051bc <arm_rfft_64_fast_init_f32+0x28>)
 800519a:	4a09      	ldr	r2, [pc, #36]	@ (80051c0 <arm_rfft_64_fast_init_f32+0x2c>)
 800519c:	2320      	movs	r3, #32
 800519e:	e9c0 2101 	strd	r2, r1, [r0, #4]
 80051a2:	8003      	strh	r3, [r0, #0]
 80051a4:	2540      	movs	r5, #64	@ 0x40
 80051a6:	2430      	movs	r4, #48	@ 0x30
 80051a8:	4b06      	ldr	r3, [pc, #24]	@ (80051c4 <arm_rfft_64_fast_init_f32+0x30>)
 80051aa:	8205      	strh	r5, [r0, #16]
 80051ac:	8184      	strh	r4, [r0, #12]
 80051ae:	6143      	str	r3, [r0, #20]
 80051b0:	bc30      	pop	{r4, r5}
 80051b2:	2000      	movs	r0, #0
 80051b4:	4770      	bx	lr
 80051b6:	f04f 30ff 	mov.w	r0, #4294967295
 80051ba:	4770      	bx	lr
 80051bc:	08009b60 	.word	0x08009b60
 80051c0:	08010bc0 	.word	0x08010bc0
 80051c4:	08019940 	.word	0x08019940

080051c8 <arm_rfft_256_fast_init_f32>:
 80051c8:	b180      	cbz	r0, 80051ec <arm_rfft_256_fast_init_f32+0x24>
 80051ca:	b430      	push	{r4, r5}
 80051cc:	4909      	ldr	r1, [pc, #36]	@ (80051f4 <arm_rfft_256_fast_init_f32+0x2c>)
 80051ce:	4a0a      	ldr	r2, [pc, #40]	@ (80051f8 <arm_rfft_256_fast_init_f32+0x30>)
 80051d0:	2380      	movs	r3, #128	@ 0x80
 80051d2:	e9c0 2101 	strd	r2, r1, [r0, #4]
 80051d6:	8003      	strh	r3, [r0, #0]
 80051d8:	f44f 7580 	mov.w	r5, #256	@ 0x100
 80051dc:	24d0      	movs	r4, #208	@ 0xd0
 80051de:	4b07      	ldr	r3, [pc, #28]	@ (80051fc <arm_rfft_256_fast_init_f32+0x34>)
 80051e0:	8205      	strh	r5, [r0, #16]
 80051e2:	8184      	strh	r4, [r0, #12]
 80051e4:	6143      	str	r3, [r0, #20]
 80051e6:	bc30      	pop	{r4, r5}
 80051e8:	2000      	movs	r0, #0
 80051ea:	4770      	bx	lr
 80051ec:	f04f 30ff 	mov.w	r0, #4294967295
 80051f0:	4770      	bx	lr
 80051f2:	bf00      	nop
 80051f4:	08007868 	.word	0x08007868
 80051f8:	0800bf40 	.word	0x0800bf40
 80051fc:	08014cc0 	.word	0x08014cc0

08005200 <arm_rfft_512_fast_init_f32>:
 8005200:	b190      	cbz	r0, 8005228 <arm_rfft_512_fast_init_f32+0x28>
 8005202:	b430      	push	{r4, r5}
 8005204:	490a      	ldr	r1, [pc, #40]	@ (8005230 <arm_rfft_512_fast_init_f32+0x30>)
 8005206:	4a0b      	ldr	r2, [pc, #44]	@ (8005234 <arm_rfft_512_fast_init_f32+0x34>)
 8005208:	f44f 7380 	mov.w	r3, #256	@ 0x100
 800520c:	e9c0 2101 	strd	r2, r1, [r0, #4]
 8005210:	8003      	strh	r3, [r0, #0]
 8005212:	f44f 7500 	mov.w	r5, #512	@ 0x200
 8005216:	f44f 74dc 	mov.w	r4, #440	@ 0x1b8
 800521a:	4b07      	ldr	r3, [pc, #28]	@ (8005238 <arm_rfft_512_fast_init_f32+0x38>)
 800521c:	8205      	strh	r5, [r0, #16]
 800521e:	8184      	strh	r4, [r0, #12]
 8005220:	6143      	str	r3, [r0, #20]
 8005222:	bc30      	pop	{r4, r5}
 8005224:	2000      	movs	r0, #0
 8005226:	4770      	bx	lr
 8005228:	f04f 30ff 	mov.w	r0, #4294967295
 800522c:	4770      	bx	lr
 800522e:	bf00      	nop
 8005230:	080097f0 	.word	0x080097f0
 8005234:	080103c0 	.word	0x080103c0
 8005238:	08019140 	.word	0x08019140

0800523c <arm_rfft_1024_fast_init_f32>:
 800523c:	b190      	cbz	r0, 8005264 <arm_rfft_1024_fast_init_f32+0x28>
 800523e:	b430      	push	{r4, r5}
 8005240:	490a      	ldr	r1, [pc, #40]	@ (800526c <arm_rfft_1024_fast_init_f32+0x30>)
 8005242:	4a0b      	ldr	r2, [pc, #44]	@ (8005270 <arm_rfft_1024_fast_init_f32+0x34>)
 8005244:	f44f 7300 	mov.w	r3, #512	@ 0x200
 8005248:	e9c0 2101 	strd	r2, r1, [r0, #4]
 800524c:	8003      	strh	r3, [r0, #0]
 800524e:	f44f 6580 	mov.w	r5, #1024	@ 0x400
 8005252:	f44f 74e0 	mov.w	r4, #448	@ 0x1c0
 8005256:	4b07      	ldr	r3, [pc, #28]	@ (8005274 <arm_rfft_1024_fast_init_f32+0x38>)
 8005258:	8205      	strh	r5, [r0, #16]
 800525a:	8184      	strh	r4, [r0, #12]
 800525c:	6143      	str	r3, [r0, #20]
 800525e:	bc30      	pop	{r4, r5}
 8005260:	2000      	movs	r0, #0
 8005262:	4770      	bx	lr
 8005264:	f04f 30ff 	mov.w	r0, #4294967295
 8005268:	4770      	bx	lr
 800526a:	bf00      	nop
 800526c:	08009bc0 	.word	0x08009bc0
 8005270:	08010cc0 	.word	0x08010cc0
 8005274:	08011cc0 	.word	0x08011cc0

08005278 <arm_rfft_2048_fast_init_f32>:
 8005278:	b190      	cbz	r0, 80052a0 <arm_rfft_2048_fast_init_f32+0x28>
 800527a:	b430      	push	{r4, r5}
 800527c:	490a      	ldr	r1, [pc, #40]	@ (80052a8 <arm_rfft_2048_fast_init_f32+0x30>)
 800527e:	4a0b      	ldr	r2, [pc, #44]	@ (80052ac <arm_rfft_2048_fast_init_f32+0x34>)
 8005280:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8005284:	e9c0 2101 	strd	r2, r1, [r0, #4]
 8005288:	8003      	strh	r3, [r0, #0]
 800528a:	f44f 6500 	mov.w	r5, #2048	@ 0x800
 800528e:	f44f 64e1 	mov.w	r4, #1800	@ 0x708
 8005292:	4b07      	ldr	r3, [pc, #28]	@ (80052b0 <arm_rfft_2048_fast_init_f32+0x38>)
 8005294:	8205      	strh	r5, [r0, #16]
 8005296:	8184      	strh	r4, [r0, #12]
 8005298:	6143      	str	r3, [r0, #20]
 800529a:	bc30      	pop	{r4, r5}
 800529c:	2000      	movs	r0, #0
 800529e:	4770      	bx	lr
 80052a0:	f04f 30ff 	mov.w	r0, #4294967295
 80052a4:	4770      	bx	lr
 80052a6:	bf00      	nop
 80052a8:	08006a58 	.word	0x08006a58
 80052ac:	08009f40 	.word	0x08009f40
 80052b0:	08012cc0 	.word	0x08012cc0

080052b4 <arm_rfft_4096_fast_init_f32>:
 80052b4:	b190      	cbz	r0, 80052dc <arm_rfft_4096_fast_init_f32+0x28>
 80052b6:	b430      	push	{r4, r5}
 80052b8:	490a      	ldr	r1, [pc, #40]	@ (80052e4 <arm_rfft_4096_fast_init_f32+0x30>)
 80052ba:	4a0b      	ldr	r2, [pc, #44]	@ (80052e8 <arm_rfft_4096_fast_init_f32+0x34>)
 80052bc:	f44f 6300 	mov.w	r3, #2048	@ 0x800
 80052c0:	e9c0 2101 	strd	r2, r1, [r0, #4]
 80052c4:	8003      	strh	r3, [r0, #0]
 80052c6:	f44f 5580 	mov.w	r5, #4096	@ 0x1000
 80052ca:	f44f 646e 	mov.w	r4, #3808	@ 0xee0
 80052ce:	4b07      	ldr	r3, [pc, #28]	@ (80052ec <arm_rfft_4096_fast_init_f32+0x38>)
 80052d0:	8205      	strh	r5, [r0, #16]
 80052d2:	8184      	strh	r4, [r0, #12]
 80052d4:	6143      	str	r3, [r0, #20]
 80052d6:	bc30      	pop	{r4, r5}
 80052d8:	2000      	movs	r0, #0
 80052da:	4770      	bx	lr
 80052dc:	f04f 30ff 	mov.w	r0, #4294967295
 80052e0:	4770      	bx	lr
 80052e2:	bf00      	nop
 80052e4:	08007a30 	.word	0x08007a30
 80052e8:	0800c3c0 	.word	0x0800c3c0
 80052ec:	08015140 	.word	0x08015140

080052f0 <arm_rfft_fast_init_f32>:
 80052f0:	f5b1 7f00 	cmp.w	r1, #512	@ 0x200
 80052f4:	d01f      	beq.n	8005336 <arm_rfft_fast_init_f32+0x46>
 80052f6:	d90b      	bls.n	8005310 <arm_rfft_fast_init_f32+0x20>
 80052f8:	f5b1 6f00 	cmp.w	r1, #2048	@ 0x800
 80052fc:	d019      	beq.n	8005332 <arm_rfft_fast_init_f32+0x42>
 80052fe:	f5b1 5f80 	cmp.w	r1, #4096	@ 0x1000
 8005302:	d012      	beq.n	800532a <arm_rfft_fast_init_f32+0x3a>
 8005304:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
 8005308:	d00d      	beq.n	8005326 <arm_rfft_fast_init_f32+0x36>
 800530a:	f04f 30ff 	mov.w	r0, #4294967295
 800530e:	4770      	bx	lr
 8005310:	2940      	cmp	r1, #64	@ 0x40
 8005312:	d00c      	beq.n	800532e <arm_rfft_fast_init_f32+0x3e>
 8005314:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
 8005318:	d003      	beq.n	8005322 <arm_rfft_fast_init_f32+0x32>
 800531a:	2920      	cmp	r1, #32
 800531c:	d1f5      	bne.n	800530a <arm_rfft_fast_init_f32+0x1a>
 800531e:	4b07      	ldr	r3, [pc, #28]	@ (800533c <arm_rfft_fast_init_f32+0x4c>)
 8005320:	4718      	bx	r3
 8005322:	4b07      	ldr	r3, [pc, #28]	@ (8005340 <arm_rfft_fast_init_f32+0x50>)
 8005324:	4718      	bx	r3
 8005326:	4b07      	ldr	r3, [pc, #28]	@ (8005344 <arm_rfft_fast_init_f32+0x54>)
 8005328:	4718      	bx	r3
 800532a:	4b07      	ldr	r3, [pc, #28]	@ (8005348 <arm_rfft_fast_init_f32+0x58>)
 800532c:	4718      	bx	r3
 800532e:	4b07      	ldr	r3, [pc, #28]	@ (800534c <arm_rfft_fast_init_f32+0x5c>)
 8005330:	e7f6      	b.n	8005320 <arm_rfft_fast_init_f32+0x30>
 8005332:	4b07      	ldr	r3, [pc, #28]	@ (8005350 <arm_rfft_fast_init_f32+0x60>)
 8005334:	e7f4      	b.n	8005320 <arm_rfft_fast_init_f32+0x30>
 8005336:	4b07      	ldr	r3, [pc, #28]	@ (8005354 <arm_rfft_fast_init_f32+0x64>)
 8005338:	e7f2      	b.n	8005320 <arm_rfft_fast_init_f32+0x30>
 800533a:	bf00      	nop
 800533c:	08005161 	.word	0x08005161
 8005340:	080051c9 	.word	0x080051c9
 8005344:	0800523d 	.word	0x0800523d
 8005348:	080052b5 	.word	0x080052b5
 800534c:	08005195 	.word	0x08005195
 8005350:	08005279 	.word	0x08005279
 8005354:	08005201 	.word	0x08005201

08005358 <stage_rfft_f32>:
 8005358:	b410      	push	{r4}
 800535a:	edd1 7a00 	vldr	s15, [r1]
 800535e:	ed91 7a01 	vldr	s14, [r1, #4]
 8005362:	8804      	ldrh	r4, [r0, #0]
 8005364:	6940      	ldr	r0, [r0, #20]
 8005366:	ee37 7a07 	vadd.f32	s14, s14, s14
 800536a:	ee77 7aa7 	vadd.f32	s15, s15, s15
 800536e:	eeb6 4a00 	vmov.f32	s8, #96	@ 0x3f000000  0.5
 8005372:	ee77 6a87 	vadd.f32	s13, s15, s14
 8005376:	ee77 7ac7 	vsub.f32	s15, s15, s14
 800537a:	3c01      	subs	r4, #1
 800537c:	ee26 7a84 	vmul.f32	s14, s13, s8
 8005380:	ee67 7a84 	vmul.f32	s15, s15, s8
 8005384:	eb01 03c4 	add.w	r3, r1, r4, lsl #3
 8005388:	ed82 7a00 	vstr	s14, [r2]
 800538c:	edc2 7a01 	vstr	s15, [r2, #4]
 8005390:	3010      	adds	r0, #16
 8005392:	3210      	adds	r2, #16
 8005394:	3b08      	subs	r3, #8
 8005396:	3110      	adds	r1, #16
 8005398:	ed11 5a02 	vldr	s10, [r1, #-8]
 800539c:	ed93 7a02 	vldr	s14, [r3, #8]
 80053a0:	ed50 6a02 	vldr	s13, [r0, #-8]
 80053a4:	edd3 4a03 	vldr	s9, [r3, #12]
 80053a8:	ed51 7a01 	vldr	s15, [r1, #-4]
 80053ac:	ed10 6a01 	vldr	s12, [r0, #-4]
 80053b0:	ee77 5a45 	vsub.f32	s11, s14, s10
 80053b4:	ee37 7a05 	vadd.f32	s14, s14, s10
 80053b8:	ee66 3aa5 	vmul.f32	s7, s13, s11
 80053bc:	ee34 5aa7 	vadd.f32	s10, s9, s15
 80053c0:	ee66 5a25 	vmul.f32	s11, s12, s11
 80053c4:	ee77 7ae4 	vsub.f32	s15, s15, s9
 80053c8:	ee37 7a23 	vadd.f32	s14, s14, s7
 80053cc:	ee66 6a85 	vmul.f32	s13, s13, s10
 80053d0:	ee26 6a05 	vmul.f32	s12, s12, s10
 80053d4:	ee77 7aa5 	vadd.f32	s15, s15, s11
 80053d8:	ee37 7a06 	vadd.f32	s14, s14, s12
 80053dc:	ee77 7ae6 	vsub.f32	s15, s15, s13
 80053e0:	ee27 7a04 	vmul.f32	s14, s14, s8
 80053e4:	ee67 7a84 	vmul.f32	s15, s15, s8
 80053e8:	3c01      	subs	r4, #1
 80053ea:	ed02 7a02 	vstr	s14, [r2, #-8]
 80053ee:	ed42 7a01 	vstr	s15, [r2, #-4]
 80053f2:	f1a3 0308 	sub.w	r3, r3, #8
 80053f6:	f101 0108 	add.w	r1, r1, #8
 80053fa:	f100 0008 	add.w	r0, r0, #8
 80053fe:	f102 0208 	add.w	r2, r2, #8
 8005402:	d1c9      	bne.n	8005398 <stage_rfft_f32+0x40>
 8005404:	f85d 4b04 	ldr.w	r4, [sp], #4
 8005408:	4770      	bx	lr
 800540a:	bf00      	nop

0800540c <merge_rfft_f32>:
 800540c:	b410      	push	{r4}
 800540e:	edd1 7a00 	vldr	s15, [r1]
 8005412:	edd1 6a01 	vldr	s13, [r1, #4]
 8005416:	8804      	ldrh	r4, [r0, #0]
 8005418:	6940      	ldr	r0, [r0, #20]
 800541a:	ee37 7aa6 	vadd.f32	s14, s15, s13
 800541e:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8005422:	eeb6 4a00 	vmov.f32	s8, #96	@ 0x3f000000  0.5
 8005426:	ee27 7a04 	vmul.f32	s14, s14, s8
 800542a:	ee67 7a84 	vmul.f32	s15, s15, s8
 800542e:	3c01      	subs	r4, #1
 8005430:	ed82 7a00 	vstr	s14, [r2]
 8005434:	edc2 7a01 	vstr	s15, [r2, #4]
 8005438:	b3dc      	cbz	r4, 80054b2 <merge_rfft_f32+0xa6>
 800543a:	00e3      	lsls	r3, r4, #3
 800543c:	3b08      	subs	r3, #8
 800543e:	440b      	add	r3, r1
 8005440:	3010      	adds	r0, #16
 8005442:	3210      	adds	r2, #16
 8005444:	3110      	adds	r1, #16
 8005446:	ed11 5a02 	vldr	s10, [r1, #-8]
 800544a:	ed93 7a02 	vldr	s14, [r3, #8]
 800544e:	ed50 6a02 	vldr	s13, [r0, #-8]
 8005452:	edd3 4a03 	vldr	s9, [r3, #12]
 8005456:	ed51 7a01 	vldr	s15, [r1, #-4]
 800545a:	ed10 6a01 	vldr	s12, [r0, #-4]
 800545e:	ee75 5a47 	vsub.f32	s11, s10, s14
 8005462:	ee37 7a05 	vadd.f32	s14, s14, s10
 8005466:	ee66 3aa5 	vmul.f32	s7, s13, s11
 800546a:	ee34 5aa7 	vadd.f32	s10, s9, s15
 800546e:	ee66 5a25 	vmul.f32	s11, s12, s11
 8005472:	ee77 7ae4 	vsub.f32	s15, s15, s9
 8005476:	ee37 7a63 	vsub.f32	s14, s14, s7
 800547a:	ee66 6a85 	vmul.f32	s13, s13, s10
 800547e:	ee26 6a05 	vmul.f32	s12, s12, s10
 8005482:	ee77 7aa5 	vadd.f32	s15, s15, s11
 8005486:	ee37 7a46 	vsub.f32	s14, s14, s12
 800548a:	ee77 7ae6 	vsub.f32	s15, s15, s13
 800548e:	ee27 7a04 	vmul.f32	s14, s14, s8
 8005492:	ee67 7a84 	vmul.f32	s15, s15, s8
 8005496:	3c01      	subs	r4, #1
 8005498:	ed02 7a02 	vstr	s14, [r2, #-8]
 800549c:	ed42 7a01 	vstr	s15, [r2, #-4]
 80054a0:	f1a3 0308 	sub.w	r3, r3, #8
 80054a4:	f101 0108 	add.w	r1, r1, #8
 80054a8:	f100 0008 	add.w	r0, r0, #8
 80054ac:	f102 0208 	add.w	r2, r2, #8
 80054b0:	d1c9      	bne.n	8005446 <merge_rfft_f32+0x3a>
 80054b2:	f85d 4b04 	ldr.w	r4, [sp], #4
 80054b6:	4770      	bx	lr

080054b8 <arm_rfft_fast_f32>:
 80054b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80054bc:	8a05      	ldrh	r5, [r0, #16]
 80054be:	086d      	lsrs	r5, r5, #1
 80054c0:	8005      	strh	r5, [r0, #0]
 80054c2:	4604      	mov	r4, r0
 80054c4:	4616      	mov	r6, r2
 80054c6:	461d      	mov	r5, r3
 80054c8:	b14b      	cbz	r3, 80054de <arm_rfft_fast_f32+0x26>
 80054ca:	f7ff ff9f 	bl	800540c <merge_rfft_f32>
 80054ce:	462a      	mov	r2, r5
 80054d0:	4631      	mov	r1, r6
 80054d2:	4620      	mov	r0, r4
 80054d4:	2301      	movs	r3, #1
 80054d6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80054da:	f000 bb33 	b.w	8005b44 <arm_cfft_f32>
 80054de:	460f      	mov	r7, r1
 80054e0:	461a      	mov	r2, r3
 80054e2:	2301      	movs	r3, #1
 80054e4:	f000 fb2e 	bl	8005b44 <arm_cfft_f32>
 80054e8:	4632      	mov	r2, r6
 80054ea:	4639      	mov	r1, r7
 80054ec:	4620      	mov	r0, r4
 80054ee:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80054f2:	f7ff bf31 	b.w	8005358 <stage_rfft_f32>
 80054f6:	bf00      	nop

080054f8 <arm_cfft_radix8by2_f32>:
 80054f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80054fc:	ed2d 8b08 	vpush	{d8-d11}
 8005500:	4607      	mov	r7, r0
 8005502:	4608      	mov	r0, r1
 8005504:	f8b7 c000 	ldrh.w	ip, [r7]
 8005508:	687a      	ldr	r2, [r7, #4]
 800550a:	ea4f 015c 	mov.w	r1, ip, lsr #1
 800550e:	eb00 088c 	add.w	r8, r0, ip, lsl #2
 8005512:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8005516:	f000 80b0 	beq.w	800567a <arm_cfft_radix8by2_f32+0x182>
 800551a:	008c      	lsls	r4, r1, #2
 800551c:	3410      	adds	r4, #16
 800551e:	f100 0310 	add.w	r3, r0, #16
 8005522:	1906      	adds	r6, r0, r4
 8005524:	3210      	adds	r2, #16
 8005526:	4444      	add	r4, r8
 8005528:	eb03 1c0c 	add.w	ip, r3, ip, lsl #4
 800552c:	f108 0510 	add.w	r5, r8, #16
 8005530:	ed15 2a04 	vldr	s4, [r5, #-16]
 8005534:	ed55 2a03 	vldr	s5, [r5, #-12]
 8005538:	ed54 4a04 	vldr	s9, [r4, #-16]
 800553c:	ed14 4a03 	vldr	s8, [r4, #-12]
 8005540:	ed14 6a02 	vldr	s12, [r4, #-8]
 8005544:	ed54 5a01 	vldr	s11, [r4, #-4]
 8005548:	ed53 3a04 	vldr	s7, [r3, #-16]
 800554c:	ed15 0a02 	vldr	s0, [r5, #-8]
 8005550:	ed55 0a01 	vldr	s1, [r5, #-4]
 8005554:	ed56 6a04 	vldr	s13, [r6, #-16]
 8005558:	ed16 3a03 	vldr	s6, [r6, #-12]
 800555c:	ed13 7a03 	vldr	s14, [r3, #-12]
 8005560:	ed13 5a02 	vldr	s10, [r3, #-8]
 8005564:	ed53 7a01 	vldr	s15, [r3, #-4]
 8005568:	ed16 1a02 	vldr	s2, [r6, #-8]
 800556c:	ed56 1a01 	vldr	s3, [r6, #-4]
 8005570:	ee73 ba82 	vadd.f32	s23, s7, s4
 8005574:	ee37 ba22 	vadd.f32	s22, s14, s5
 8005578:	ee76 9aa4 	vadd.f32	s19, s13, s9
 800557c:	ee33 9a04 	vadd.f32	s18, s6, s8
 8005580:	ee31 8aa5 	vadd.f32	s16, s3, s11
 8005584:	ee75 aa00 	vadd.f32	s21, s10, s0
 8005588:	ee37 aaa0 	vadd.f32	s20, s15, s1
 800558c:	ee71 8a06 	vadd.f32	s17, s2, s12
 8005590:	ed43 ba04 	vstr	s23, [r3, #-16]
 8005594:	ed03 ba03 	vstr	s22, [r3, #-12]
 8005598:	ed43 aa02 	vstr	s21, [r3, #-8]
 800559c:	ed03 aa01 	vstr	s20, [r3, #-4]
 80055a0:	ed06 8a01 	vstr	s16, [r6, #-4]
 80055a4:	ed46 9a04 	vstr	s19, [r6, #-16]
 80055a8:	ed06 9a03 	vstr	s18, [r6, #-12]
 80055ac:	ed46 8a02 	vstr	s17, [r6, #-8]
 80055b0:	ee37 7a62 	vsub.f32	s14, s14, s5
 80055b4:	ee74 4ae6 	vsub.f32	s9, s9, s13
 80055b8:	ee34 4a43 	vsub.f32	s8, s8, s6
 80055bc:	ed52 6a03 	vldr	s13, [r2, #-12]
 80055c0:	ed12 3a04 	vldr	s6, [r2, #-16]
 80055c4:	ee73 3ac2 	vsub.f32	s7, s7, s4
 80055c8:	ee27 8a26 	vmul.f32	s16, s14, s13
 80055cc:	ee64 2aa6 	vmul.f32	s5, s9, s13
 80055d0:	ee23 2a83 	vmul.f32	s4, s7, s6
 80055d4:	ee64 4a83 	vmul.f32	s9, s9, s6
 80055d8:	ee63 3aa6 	vmul.f32	s7, s7, s13
 80055dc:	ee27 7a03 	vmul.f32	s14, s14, s6
 80055e0:	ee64 6a26 	vmul.f32	s13, s8, s13
 80055e4:	ee24 4a03 	vmul.f32	s8, s8, s6
 80055e8:	ee37 7a63 	vsub.f32	s14, s14, s7
 80055ec:	ee76 6aa4 	vadd.f32	s13, s13, s9
 80055f0:	ee32 4ac4 	vsub.f32	s8, s5, s8
 80055f4:	ee32 3a08 	vadd.f32	s6, s4, s16
 80055f8:	ed05 7a03 	vstr	s14, [r5, #-12]
 80055fc:	ed05 3a04 	vstr	s6, [r5, #-16]
 8005600:	ed04 4a04 	vstr	s8, [r4, #-16]
 8005604:	ed44 6a03 	vstr	s13, [r4, #-12]
 8005608:	ed12 7a01 	vldr	s14, [r2, #-4]
 800560c:	ee76 6a41 	vsub.f32	s13, s12, s2
 8005610:	ee35 5a40 	vsub.f32	s10, s10, s0
 8005614:	ee35 6ae1 	vsub.f32	s12, s11, s3
 8005618:	ee77 7ae0 	vsub.f32	s15, s15, s1
 800561c:	ed52 5a02 	vldr	s11, [r2, #-8]
 8005620:	ee67 3a87 	vmul.f32	s7, s15, s14
 8005624:	ee66 4a87 	vmul.f32	s9, s13, s14
 8005628:	ee25 4a25 	vmul.f32	s8, s10, s11
 800562c:	ee67 7aa5 	vmul.f32	s15, s15, s11
 8005630:	ee25 5a07 	vmul.f32	s10, s10, s14
 8005634:	ee66 6aa5 	vmul.f32	s13, s13, s11
 8005638:	ee26 7a07 	vmul.f32	s14, s12, s14
 800563c:	ee26 6a25 	vmul.f32	s12, s12, s11
 8005640:	ee77 7ac5 	vsub.f32	s15, s15, s10
 8005644:	ee74 5a23 	vadd.f32	s11, s8, s7
 8005648:	ee34 6ac6 	vsub.f32	s12, s9, s12
 800564c:	ee37 7a26 	vadd.f32	s14, s14, s13
 8005650:	3310      	adds	r3, #16
 8005652:	4563      	cmp	r3, ip
 8005654:	ed45 5a02 	vstr	s11, [r5, #-8]
 8005658:	f106 0610 	add.w	r6, r6, #16
 800565c:	ed45 7a01 	vstr	s15, [r5, #-4]
 8005660:	f102 0210 	add.w	r2, r2, #16
 8005664:	ed04 6a02 	vstr	s12, [r4, #-8]
 8005668:	ed04 7a01 	vstr	s14, [r4, #-4]
 800566c:	f105 0510 	add.w	r5, r5, #16
 8005670:	f104 0410 	add.w	r4, r4, #16
 8005674:	f47f af5c 	bne.w	8005530 <arm_cfft_radix8by2_f32+0x38>
 8005678:	687a      	ldr	r2, [r7, #4]
 800567a:	b28c      	uxth	r4, r1
 800567c:	4621      	mov	r1, r4
 800567e:	2302      	movs	r3, #2
 8005680:	f000 fc1c 	bl	8005ebc <arm_radix8_butterfly_f32>
 8005684:	ecbd 8b08 	vpop	{d8-d11}
 8005688:	4621      	mov	r1, r4
 800568a:	687a      	ldr	r2, [r7, #4]
 800568c:	4640      	mov	r0, r8
 800568e:	2302      	movs	r3, #2
 8005690:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005694:	f000 bc12 	b.w	8005ebc <arm_radix8_butterfly_f32>

08005698 <arm_cfft_radix8by4_f32>:
 8005698:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800569c:	ed2d 8b0a 	vpush	{d8-d12}
 80056a0:	b08d      	sub	sp, #52	@ 0x34
 80056a2:	460d      	mov	r5, r1
 80056a4:	910b      	str	r1, [sp, #44]	@ 0x2c
 80056a6:	8801      	ldrh	r1, [r0, #0]
 80056a8:	6842      	ldr	r2, [r0, #4]
 80056aa:	900a      	str	r0, [sp, #40]	@ 0x28
 80056ac:	0849      	lsrs	r1, r1, #1
 80056ae:	008b      	lsls	r3, r1, #2
 80056b0:	18ee      	adds	r6, r5, r3
 80056b2:	18f0      	adds	r0, r6, r3
 80056b4:	edd0 5a00 	vldr	s11, [r0]
 80056b8:	edd5 7a00 	vldr	s15, [r5]
 80056bc:	ed96 7a00 	vldr	s14, [r6]
 80056c0:	edd0 3a01 	vldr	s7, [r0, #4]
 80056c4:	ed96 4a01 	vldr	s8, [r6, #4]
 80056c8:	ed95 5a01 	vldr	s10, [r5, #4]
 80056cc:	9008      	str	r0, [sp, #32]
 80056ce:	ee37 6aa5 	vadd.f32	s12, s15, s11
 80056d2:	18c7      	adds	r7, r0, r3
 80056d4:	edd7 4a00 	vldr	s9, [r7]
 80056d8:	ed97 3a01 	vldr	s6, [r7, #4]
 80056dc:	9701      	str	r7, [sp, #4]
 80056de:	ee77 6a06 	vadd.f32	s13, s14, s12
 80056e2:	462c      	mov	r4, r5
 80056e4:	ee76 6aa4 	vadd.f32	s13, s13, s9
 80056e8:	ee77 7ae5 	vsub.f32	s15, s15, s11
 80056ec:	ee16 ca90 	vmov	ip, s13
 80056f0:	f844 cb08 	str.w	ip, [r4], #8
 80056f4:	ee75 6a23 	vadd.f32	s13, s10, s7
 80056f8:	edd6 5a01 	vldr	s11, [r6, #4]
 80056fc:	edd7 2a01 	vldr	s5, [r7, #4]
 8005700:	9404      	str	r4, [sp, #16]
 8005702:	ee35 5a63 	vsub.f32	s10, s10, s7
 8005706:	ee74 3a27 	vadd.f32	s7, s8, s15
 800570a:	ee36 6a47 	vsub.f32	s12, s12, s14
 800570e:	ee76 5aa5 	vadd.f32	s11, s13, s11
 8005712:	ee73 3ac3 	vsub.f32	s7, s7, s6
 8005716:	0849      	lsrs	r1, r1, #1
 8005718:	f102 0e08 	add.w	lr, r2, #8
 800571c:	ee76 6ac4 	vsub.f32	s13, s13, s8
 8005720:	ee77 7ac4 	vsub.f32	s15, s15, s8
 8005724:	9109      	str	r1, [sp, #36]	@ 0x24
 8005726:	ee35 4a47 	vsub.f32	s8, s10, s14
 800572a:	f1a1 0902 	sub.w	r9, r1, #2
 800572e:	f8cd e00c 	str.w	lr, [sp, #12]
 8005732:	4631      	mov	r1, r6
 8005734:	ee13 ea90 	vmov	lr, s7
 8005738:	ee36 6a64 	vsub.f32	s12, s12, s9
 800573c:	ee75 5aa2 	vadd.f32	s11, s11, s5
 8005740:	4604      	mov	r4, r0
 8005742:	edc5 5a01 	vstr	s11, [r5, #4]
 8005746:	ee37 7a05 	vadd.f32	s14, s14, s10
 800574a:	f841 eb08 	str.w	lr, [r1], #8
 800574e:	ee34 5a24 	vadd.f32	s10, s8, s9
 8005752:	ee16 ea10 	vmov	lr, s12
 8005756:	ed86 5a01 	vstr	s10, [r6, #4]
 800575a:	ee76 6ac3 	vsub.f32	s13, s13, s6
 800575e:	f844 eb08 	str.w	lr, [r4], #8
 8005762:	ee77 7a83 	vadd.f32	s15, s15, s6
 8005766:	edc0 6a01 	vstr	s13, [r0, #4]
 800576a:	9405      	str	r4, [sp, #20]
 800576c:	4604      	mov	r4, r0
 800576e:	ee17 0a90 	vmov	r0, s15
 8005772:	9106      	str	r1, [sp, #24]
 8005774:	ee37 7a64 	vsub.f32	s14, s14, s9
 8005778:	f102 0110 	add.w	r1, r2, #16
 800577c:	46bc      	mov	ip, r7
 800577e:	9100      	str	r1, [sp, #0]
 8005780:	f847 0b08 	str.w	r0, [r7], #8
 8005784:	f102 0118 	add.w	r1, r2, #24
 8005788:	ea5f 0059 	movs.w	r0, r9, lsr #1
 800578c:	9102      	str	r1, [sp, #8]
 800578e:	ed8c 7a01 	vstr	s14, [ip, #4]
 8005792:	9007      	str	r0, [sp, #28]
 8005794:	f000 8134 	beq.w	8005a00 <arm_cfft_radix8by4_f32+0x368>
 8005798:	f102 0920 	add.w	r9, r2, #32
 800579c:	f102 0830 	add.w	r8, r2, #48	@ 0x30
 80057a0:	9a01      	ldr	r2, [sp, #4]
 80057a2:	f8dd a000 	ldr.w	sl, [sp]
 80057a6:	3b0c      	subs	r3, #12
 80057a8:	4683      	mov	fp, r0
 80057aa:	4463      	add	r3, ip
 80057ac:	f105 0e10 	add.w	lr, r5, #16
 80057b0:	f1a4 010c 	sub.w	r1, r4, #12
 80057b4:	f104 0510 	add.w	r5, r4, #16
 80057b8:	f1a6 0c0c 	sub.w	ip, r6, #12
 80057bc:	f1a2 040c 	sub.w	r4, r2, #12
 80057c0:	f106 0010 	add.w	r0, r6, #16
 80057c4:	3210      	adds	r2, #16
 80057c6:	ed1e 5a02 	vldr	s10, [lr, #-8]
 80057ca:	ed55 5a02 	vldr	s11, [r5, #-8]
 80057ce:	ed50 7a02 	vldr	s15, [r0, #-8]
 80057d2:	ed52 1a02 	vldr	s3, [r2, #-8]
 80057d6:	ed55 6a01 	vldr	s13, [r5, #-4]
 80057da:	ed1e 0a01 	vldr	s0, [lr, #-4]
 80057de:	ed12 1a01 	vldr	s2, [r2, #-4]
 80057e2:	ed10 8a01 	vldr	s16, [r0, #-4]
 80057e6:	ee35 4a25 	vadd.f32	s8, s10, s11
 80057ea:	ee30 6a26 	vadd.f32	s12, s0, s13
 80057ee:	ee37 7a84 	vadd.f32	s14, s15, s8
 80057f2:	ee30 0a66 	vsub.f32	s0, s0, s13
 80057f6:	ee37 7a21 	vadd.f32	s14, s14, s3
 80057fa:	ee75 5a65 	vsub.f32	s11, s10, s11
 80057fe:	ed0e 7a02 	vstr	s14, [lr, #-8]
 8005802:	ed10 7a01 	vldr	s14, [r0, #-4]
 8005806:	ed52 6a01 	vldr	s13, [r2, #-4]
 800580a:	ee36 7a07 	vadd.f32	s14, s12, s14
 800580e:	ee78 aa25 	vadd.f32	s21, s16, s11
 8005812:	ee37 7a26 	vadd.f32	s14, s14, s13
 8005816:	ee70 3a67 	vsub.f32	s7, s0, s15
 800581a:	ed0e 7a01 	vstr	s14, [lr, #-4]
 800581e:	ed94 7a02 	vldr	s14, [r4, #8]
 8005822:	ed9c 2a02 	vldr	s4, [ip, #8]
 8005826:	ed91 ba02 	vldr	s22, [r1, #8]
 800582a:	edd3 9a02 	vldr	s19, [r3, #8]
 800582e:	edd4 2a01 	vldr	s5, [r4, #4]
 8005832:	ed9c 9a01 	vldr	s18, [ip, #4]
 8005836:	ed93 5a01 	vldr	s10, [r3, #4]
 800583a:	edd1 0a01 	vldr	s1, [r1, #4]
 800583e:	ee72 6a07 	vadd.f32	s13, s4, s14
 8005842:	ee32 2a47 	vsub.f32	s4, s4, s14
 8005846:	ee7b 8a26 	vadd.f32	s17, s22, s13
 800584a:	ee79 4a22 	vadd.f32	s9, s18, s5
 800584e:	ee38 7aa9 	vadd.f32	s14, s17, s19
 8005852:	ee79 2a62 	vsub.f32	s5, s18, s5
 8005856:	ed8c 7a02 	vstr	s14, [ip, #8]
 800585a:	ed91 7a01 	vldr	s14, [r1, #4]
 800585e:	edd3 8a01 	vldr	s17, [r3, #4]
 8005862:	ee34 7a87 	vadd.f32	s14, s9, s14
 8005866:	ee3b 3a69 	vsub.f32	s6, s22, s19
 800586a:	ee37 7a28 	vadd.f32	s14, s14, s17
 800586e:	ee32 9a60 	vsub.f32	s18, s4, s1
 8005872:	ed8c 7a01 	vstr	s14, [ip, #4]
 8005876:	ed1a 7a01 	vldr	s14, [sl, #-4]
 800587a:	ed1a aa02 	vldr	s20, [sl, #-8]
 800587e:	ee73 8a22 	vadd.f32	s17, s6, s5
 8005882:	ee39 9a05 	vadd.f32	s18, s18, s10
 8005886:	ee7a aac1 	vsub.f32	s21, s21, s2
 800588a:	ee73 3aa1 	vadd.f32	s7, s7, s3
 800588e:	ee2a ca8a 	vmul.f32	s24, s21, s20
 8005892:	ee69 ba07 	vmul.f32	s23, s18, s14
 8005896:	ee6a aa87 	vmul.f32	s21, s21, s14
 800589a:	ee29 9a0a 	vmul.f32	s18, s18, s20
 800589e:	ee63 ca87 	vmul.f32	s25, s7, s14
 80058a2:	ee63 3a8a 	vmul.f32	s7, s7, s20
 80058a6:	ee28 aa8a 	vmul.f32	s20, s17, s20
 80058aa:	ee68 8a87 	vmul.f32	s17, s17, s14
 80058ae:	ee73 3aea 	vsub.f32	s7, s7, s21
 80058b2:	ee78 8a89 	vadd.f32	s17, s17, s18
 80058b6:	ee3c 7a2c 	vadd.f32	s14, s24, s25
 80058ba:	ee3b aaca 	vsub.f32	s20, s23, s20
 80058be:	ee34 4a67 	vsub.f32	s8, s8, s15
 80058c2:	ee76 6acb 	vsub.f32	s13, s13, s22
 80058c6:	ee36 6a48 	vsub.f32	s12, s12, s16
 80058ca:	ee74 4ae0 	vsub.f32	s9, s9, s1
 80058ce:	ed00 7a02 	vstr	s14, [r0, #-8]
 80058d2:	ed40 3a01 	vstr	s7, [r0, #-4]
 80058d6:	edc1 8a01 	vstr	s17, [r1, #4]
 80058da:	ed81 aa02 	vstr	s20, [r1, #8]
 80058de:	ed59 3a04 	vldr	s7, [r9, #-16]
 80058e2:	ee36 7ae9 	vsub.f32	s14, s13, s19
 80058e6:	ee74 4ac5 	vsub.f32	s9, s9, s10
 80058ea:	ed59 6a03 	vldr	s13, [r9, #-12]
 80058ee:	ee34 4a61 	vsub.f32	s8, s8, s3
 80058f2:	ee36 6a41 	vsub.f32	s12, s12, s2
 80058f6:	ee67 8a63 	vnmul.f32	s17, s14, s7
 80058fa:	ee66 9a26 	vmul.f32	s19, s12, s13
 80058fe:	ee24 9a23 	vmul.f32	s18, s8, s7
 8005902:	ee26 6a23 	vmul.f32	s12, s12, s7
 8005906:	ee24 4a26 	vmul.f32	s8, s8, s13
 800590a:	ee27 7a26 	vmul.f32	s14, s14, s13
 800590e:	ee64 6aa6 	vmul.f32	s13, s9, s13
 8005912:	ee64 4aa3 	vmul.f32	s9, s9, s7
 8005916:	ee36 6a44 	vsub.f32	s12, s12, s8
 800591a:	ee37 7a64 	vsub.f32	s14, s14, s9
 800591e:	ee38 4ae6 	vsub.f32	s8, s17, s13
 8005922:	ee79 3a29 	vadd.f32	s7, s18, s19
 8005926:	ee75 6a60 	vsub.f32	s13, s10, s1
 800592a:	ee75 5ac8 	vsub.f32	s11, s11, s16
 800592e:	ee77 7a80 	vadd.f32	s15, s15, s0
 8005932:	ed45 3a02 	vstr	s7, [r5, #-8]
 8005936:	ed05 6a01 	vstr	s12, [r5, #-4]
 800593a:	ed84 7a01 	vstr	s14, [r4, #4]
 800593e:	ed84 4a02 	vstr	s8, [r4, #8]
 8005942:	ee35 6a81 	vadd.f32	s12, s11, s2
 8005946:	ee36 7ac2 	vsub.f32	s14, s13, s4
 800594a:	ed58 5a06 	vldr	s11, [r8, #-24]	@ 0xffffffe8
 800594e:	ed58 6a05 	vldr	s13, [r8, #-20]	@ 0xffffffec
 8005952:	ee33 3a62 	vsub.f32	s6, s6, s5
 8005956:	ee77 7ae1 	vsub.f32	s15, s15, s3
 800595a:	ee67 2a26 	vmul.f32	s5, s14, s13
 800595e:	ee67 4aa6 	vmul.f32	s9, s15, s13
 8005962:	ee26 5a25 	vmul.f32	s10, s12, s11
 8005966:	ee67 7aa5 	vmul.f32	s15, s15, s11
 800596a:	ee26 6a26 	vmul.f32	s12, s12, s13
 800596e:	ee27 7a25 	vmul.f32	s14, s14, s11
 8005972:	ee63 6a26 	vmul.f32	s13, s6, s13
 8005976:	ee23 3a25 	vmul.f32	s6, s6, s11
 800597a:	ee77 7ac6 	vsub.f32	s15, s15, s12
 800597e:	ee75 5a24 	vadd.f32	s11, s10, s9
 8005982:	ee32 3ac3 	vsub.f32	s6, s5, s6
 8005986:	ee36 7a87 	vadd.f32	s14, s13, s14
 800598a:	f1bb 0b01 	subs.w	fp, fp, #1
 800598e:	ed42 5a02 	vstr	s11, [r2, #-8]
 8005992:	ed42 7a01 	vstr	s15, [r2, #-4]
 8005996:	f10e 0e08 	add.w	lr, lr, #8
 800599a:	ed83 3a02 	vstr	s6, [r3, #8]
 800599e:	ed83 7a01 	vstr	s14, [r3, #4]
 80059a2:	f1ac 0c08 	sub.w	ip, ip, #8
 80059a6:	f10a 0a08 	add.w	sl, sl, #8
 80059aa:	f100 0008 	add.w	r0, r0, #8
 80059ae:	f1a1 0108 	sub.w	r1, r1, #8
 80059b2:	f109 0910 	add.w	r9, r9, #16
 80059b6:	f105 0508 	add.w	r5, r5, #8
 80059ba:	f1a4 0408 	sub.w	r4, r4, #8
 80059be:	f108 0818 	add.w	r8, r8, #24
 80059c2:	f102 0208 	add.w	r2, r2, #8
 80059c6:	f1a3 0308 	sub.w	r3, r3, #8
 80059ca:	f47f aefc 	bne.w	80057c6 <arm_cfft_radix8by4_f32+0x12e>
 80059ce:	9907      	ldr	r1, [sp, #28]
 80059d0:	9800      	ldr	r0, [sp, #0]
 80059d2:	00cb      	lsls	r3, r1, #3
 80059d4:	eb01 0241 	add.w	r2, r1, r1, lsl #1
 80059d8:	eb00 1101 	add.w	r1, r0, r1, lsl #4
 80059dc:	9100      	str	r1, [sp, #0]
 80059de:	9904      	ldr	r1, [sp, #16]
 80059e0:	4419      	add	r1, r3
 80059e2:	9104      	str	r1, [sp, #16]
 80059e4:	9903      	ldr	r1, [sp, #12]
 80059e6:	4419      	add	r1, r3
 80059e8:	9103      	str	r1, [sp, #12]
 80059ea:	9906      	ldr	r1, [sp, #24]
 80059ec:	4419      	add	r1, r3
 80059ee:	9106      	str	r1, [sp, #24]
 80059f0:	9905      	ldr	r1, [sp, #20]
 80059f2:	441f      	add	r7, r3
 80059f4:	4419      	add	r1, r3
 80059f6:	9b02      	ldr	r3, [sp, #8]
 80059f8:	9105      	str	r1, [sp, #20]
 80059fa:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80059fe:	9302      	str	r3, [sp, #8]
 8005a00:	9904      	ldr	r1, [sp, #16]
 8005a02:	9805      	ldr	r0, [sp, #20]
 8005a04:	ed91 4a00 	vldr	s8, [r1]
 8005a08:	edd0 6a00 	vldr	s13, [r0]
 8005a0c:	9b06      	ldr	r3, [sp, #24]
 8005a0e:	ed97 3a00 	vldr	s6, [r7]
 8005a12:	edd3 7a00 	vldr	s15, [r3]
 8005a16:	edd0 4a01 	vldr	s9, [r0, #4]
 8005a1a:	edd1 3a01 	vldr	s7, [r1, #4]
 8005a1e:	ed97 2a01 	vldr	s4, [r7, #4]
 8005a22:	ed93 7a01 	vldr	s14, [r3, #4]
 8005a26:	9a03      	ldr	r2, [sp, #12]
 8005a28:	f8bd 4024 	ldrh.w	r4, [sp, #36]	@ 0x24
 8005a2c:	ee34 6a26 	vadd.f32	s12, s8, s13
 8005a30:	ee73 5aa4 	vadd.f32	s11, s7, s9
 8005a34:	ee37 5a86 	vadd.f32	s10, s15, s12
 8005a38:	ee73 3ae4 	vsub.f32	s7, s7, s9
 8005a3c:	ee35 5a03 	vadd.f32	s10, s10, s6
 8005a40:	ee74 6a66 	vsub.f32	s13, s8, s13
 8005a44:	ed81 5a00 	vstr	s10, [r1]
 8005a48:	ed93 5a01 	vldr	s10, [r3, #4]
 8005a4c:	edd7 4a01 	vldr	s9, [r7, #4]
 8005a50:	ee35 5a85 	vadd.f32	s10, s11, s10
 8005a54:	ee37 4a26 	vadd.f32	s8, s14, s13
 8005a58:	ee35 5a24 	vadd.f32	s10, s10, s9
 8005a5c:	ee73 4ae7 	vsub.f32	s9, s7, s15
 8005a60:	ed81 5a01 	vstr	s10, [r1, #4]
 8005a64:	edd2 1a00 	vldr	s3, [r2]
 8005a68:	edd2 2a01 	vldr	s5, [r2, #4]
 8005a6c:	ee34 5a83 	vadd.f32	s10, s9, s6
 8005a70:	ee34 4a42 	vsub.f32	s8, s8, s4
 8005a74:	ee36 6a67 	vsub.f32	s12, s12, s15
 8005a78:	ee64 4a21 	vmul.f32	s9, s8, s3
 8005a7c:	ee24 4a22 	vmul.f32	s8, s8, s5
 8005a80:	ee65 2a22 	vmul.f32	s5, s10, s5
 8005a84:	ee25 5a21 	vmul.f32	s10, s10, s3
 8005a88:	ee74 2aa2 	vadd.f32	s5, s9, s5
 8005a8c:	ee35 5a44 	vsub.f32	s10, s10, s8
 8005a90:	edc3 2a00 	vstr	s5, [r3]
 8005a94:	ed83 5a01 	vstr	s10, [r3, #4]
 8005a98:	ee75 5ac7 	vsub.f32	s11, s11, s14
 8005a9c:	9b00      	ldr	r3, [sp, #0]
 8005a9e:	ee36 6a43 	vsub.f32	s12, s12, s6
 8005aa2:	ed93 4a01 	vldr	s8, [r3, #4]
 8005aa6:	ed93 5a00 	vldr	s10, [r3]
 8005aaa:	9b02      	ldr	r3, [sp, #8]
 8005aac:	ee75 5ac2 	vsub.f32	s11, s11, s4
 8005ab0:	ee66 4a05 	vmul.f32	s9, s12, s10
 8005ab4:	ee25 5a85 	vmul.f32	s10, s11, s10
 8005ab8:	ee26 6a04 	vmul.f32	s12, s12, s8
 8005abc:	ee65 5a84 	vmul.f32	s11, s11, s8
 8005ac0:	ee35 6a46 	vsub.f32	s12, s10, s12
 8005ac4:	ee74 5aa5 	vadd.f32	s11, s9, s11
 8005ac8:	ee77 7aa3 	vadd.f32	s15, s15, s7
 8005acc:	ee36 7ac7 	vsub.f32	s14, s13, s14
 8005ad0:	ed80 6a01 	vstr	s12, [r0, #4]
 8005ad4:	edc0 5a00 	vstr	s11, [r0]
 8005ad8:	edd3 5a01 	vldr	s11, [r3, #4]
 8005adc:	edd3 6a00 	vldr	s13, [r3]
 8005ae0:	ee37 7a02 	vadd.f32	s14, s14, s4
 8005ae4:	ee77 7ac3 	vsub.f32	s15, s15, s6
 8005ae8:	ee27 6a26 	vmul.f32	s12, s14, s13
 8005aec:	ee67 6aa6 	vmul.f32	s13, s15, s13
 8005af0:	ee27 7a25 	vmul.f32	s14, s14, s11
 8005af4:	ee67 7aa5 	vmul.f32	s15, s15, s11
 8005af8:	ee36 7ac7 	vsub.f32	s14, s13, s14
 8005afc:	ee76 7a27 	vadd.f32	s15, s12, s15
 8005b00:	ed87 7a01 	vstr	s14, [r7, #4]
 8005b04:	edc7 7a00 	vstr	s15, [r7]
 8005b08:	e9dd 500a 	ldrd	r5, r0, [sp, #40]	@ 0x28
 8005b0c:	4621      	mov	r1, r4
 8005b0e:	686a      	ldr	r2, [r5, #4]
 8005b10:	2304      	movs	r3, #4
 8005b12:	f000 f9d3 	bl	8005ebc <arm_radix8_butterfly_f32>
 8005b16:	4630      	mov	r0, r6
 8005b18:	4621      	mov	r1, r4
 8005b1a:	686a      	ldr	r2, [r5, #4]
 8005b1c:	2304      	movs	r3, #4
 8005b1e:	f000 f9cd 	bl	8005ebc <arm_radix8_butterfly_f32>
 8005b22:	9808      	ldr	r0, [sp, #32]
 8005b24:	686a      	ldr	r2, [r5, #4]
 8005b26:	4621      	mov	r1, r4
 8005b28:	2304      	movs	r3, #4
 8005b2a:	f000 f9c7 	bl	8005ebc <arm_radix8_butterfly_f32>
 8005b2e:	686a      	ldr	r2, [r5, #4]
 8005b30:	9801      	ldr	r0, [sp, #4]
 8005b32:	4621      	mov	r1, r4
 8005b34:	2304      	movs	r3, #4
 8005b36:	b00d      	add	sp, #52	@ 0x34
 8005b38:	ecbd 8b0a 	vpop	{d8-d12}
 8005b3c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005b40:	f000 b9bc 	b.w	8005ebc <arm_radix8_butterfly_f32>

08005b44 <arm_cfft_f32>:
 8005b44:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005b48:	2a01      	cmp	r2, #1
 8005b4a:	4606      	mov	r6, r0
 8005b4c:	4617      	mov	r7, r2
 8005b4e:	460c      	mov	r4, r1
 8005b50:	4698      	mov	r8, r3
 8005b52:	8805      	ldrh	r5, [r0, #0]
 8005b54:	d056      	beq.n	8005c04 <arm_cfft_f32+0xc0>
 8005b56:	f5b5 7f80 	cmp.w	r5, #256	@ 0x100
 8005b5a:	d063      	beq.n	8005c24 <arm_cfft_f32+0xe0>
 8005b5c:	d916      	bls.n	8005b8c <arm_cfft_f32+0x48>
 8005b5e:	f5b5 6f80 	cmp.w	r5, #1024	@ 0x400
 8005b62:	d01a      	beq.n	8005b9a <arm_cfft_f32+0x56>
 8005b64:	d947      	bls.n	8005bf6 <arm_cfft_f32+0xb2>
 8005b66:	f5b5 6f00 	cmp.w	r5, #2048	@ 0x800
 8005b6a:	d05b      	beq.n	8005c24 <arm_cfft_f32+0xe0>
 8005b6c:	f5b5 5f80 	cmp.w	r5, #4096	@ 0x1000
 8005b70:	d105      	bne.n	8005b7e <arm_cfft_f32+0x3a>
 8005b72:	2301      	movs	r3, #1
 8005b74:	6872      	ldr	r2, [r6, #4]
 8005b76:	4629      	mov	r1, r5
 8005b78:	4620      	mov	r0, r4
 8005b7a:	f000 f99f 	bl	8005ebc <arm_radix8_butterfly_f32>
 8005b7e:	f1b8 0f00 	cmp.w	r8, #0
 8005b82:	d111      	bne.n	8005ba8 <arm_cfft_f32+0x64>
 8005b84:	2f01      	cmp	r7, #1
 8005b86:	d016      	beq.n	8005bb6 <arm_cfft_f32+0x72>
 8005b88:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005b8c:	2d20      	cmp	r5, #32
 8005b8e:	d049      	beq.n	8005c24 <arm_cfft_f32+0xe0>
 8005b90:	d935      	bls.n	8005bfe <arm_cfft_f32+0xba>
 8005b92:	2d40      	cmp	r5, #64	@ 0x40
 8005b94:	d0ed      	beq.n	8005b72 <arm_cfft_f32+0x2e>
 8005b96:	2d80      	cmp	r5, #128	@ 0x80
 8005b98:	d1f1      	bne.n	8005b7e <arm_cfft_f32+0x3a>
 8005b9a:	4621      	mov	r1, r4
 8005b9c:	4630      	mov	r0, r6
 8005b9e:	f7ff fcab 	bl	80054f8 <arm_cfft_radix8by2_f32>
 8005ba2:	f1b8 0f00 	cmp.w	r8, #0
 8005ba6:	d0ed      	beq.n	8005b84 <arm_cfft_f32+0x40>
 8005ba8:	68b2      	ldr	r2, [r6, #8]
 8005baa:	89b1      	ldrh	r1, [r6, #12]
 8005bac:	4620      	mov	r0, r4
 8005bae:	f000 f841 	bl	8005c34 <arm_bitreversal_32>
 8005bb2:	2f01      	cmp	r7, #1
 8005bb4:	d1e8      	bne.n	8005b88 <arm_cfft_f32+0x44>
 8005bb6:	ee07 5a90 	vmov	s15, r5
 8005bba:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8005bbe:	eeb7 7a00 	vmov.f32	s14, #112	@ 0x3f800000  1.0
 8005bc2:	eec7 6a27 	vdiv.f32	s13, s14, s15
 8005bc6:	2d00      	cmp	r5, #0
 8005bc8:	d0de      	beq.n	8005b88 <arm_cfft_f32+0x44>
 8005bca:	f104 0108 	add.w	r1, r4, #8
 8005bce:	2300      	movs	r3, #0
 8005bd0:	3301      	adds	r3, #1
 8005bd2:	429d      	cmp	r5, r3
 8005bd4:	f101 0108 	add.w	r1, r1, #8
 8005bd8:	ed11 7a04 	vldr	s14, [r1, #-16]
 8005bdc:	ed51 7a03 	vldr	s15, [r1, #-12]
 8005be0:	ee27 7a26 	vmul.f32	s14, s14, s13
 8005be4:	ee67 7ae6 	vnmul.f32	s15, s15, s13
 8005be8:	ed01 7a04 	vstr	s14, [r1, #-16]
 8005bec:	ed41 7a03 	vstr	s15, [r1, #-12]
 8005bf0:	d1ee      	bne.n	8005bd0 <arm_cfft_f32+0x8c>
 8005bf2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005bf6:	f5b5 7f00 	cmp.w	r5, #512	@ 0x200
 8005bfa:	d0ba      	beq.n	8005b72 <arm_cfft_f32+0x2e>
 8005bfc:	e7bf      	b.n	8005b7e <arm_cfft_f32+0x3a>
 8005bfe:	2d10      	cmp	r5, #16
 8005c00:	d0cb      	beq.n	8005b9a <arm_cfft_f32+0x56>
 8005c02:	e7bc      	b.n	8005b7e <arm_cfft_f32+0x3a>
 8005c04:	b19d      	cbz	r5, 8005c2e <arm_cfft_f32+0xea>
 8005c06:	f101 030c 	add.w	r3, r1, #12
 8005c0a:	2200      	movs	r2, #0
 8005c0c:	ed53 7a02 	vldr	s15, [r3, #-8]
 8005c10:	3201      	adds	r2, #1
 8005c12:	eef1 7a67 	vneg.f32	s15, s15
 8005c16:	4295      	cmp	r5, r2
 8005c18:	ed43 7a02 	vstr	s15, [r3, #-8]
 8005c1c:	f103 0308 	add.w	r3, r3, #8
 8005c20:	d1f4      	bne.n	8005c0c <arm_cfft_f32+0xc8>
 8005c22:	e798      	b.n	8005b56 <arm_cfft_f32+0x12>
 8005c24:	4621      	mov	r1, r4
 8005c26:	4630      	mov	r0, r6
 8005c28:	f7ff fd36 	bl	8005698 <arm_cfft_radix8by4_f32>
 8005c2c:	e7a7      	b.n	8005b7e <arm_cfft_f32+0x3a>
 8005c2e:	2b00      	cmp	r3, #0
 8005c30:	d0aa      	beq.n	8005b88 <arm_cfft_f32+0x44>
 8005c32:	e7b9      	b.n	8005ba8 <arm_cfft_f32+0x64>

08005c34 <arm_bitreversal_32>:
 8005c34:	b1e9      	cbz	r1, 8005c72 <arm_bitreversal_32+0x3e>
 8005c36:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005c38:	2500      	movs	r5, #0
 8005c3a:	f102 0e02 	add.w	lr, r2, #2
 8005c3e:	f83e 4015 	ldrh.w	r4, [lr, r5, lsl #1]
 8005c42:	f832 3015 	ldrh.w	r3, [r2, r5, lsl #1]
 8005c46:	08a4      	lsrs	r4, r4, #2
 8005c48:	089b      	lsrs	r3, r3, #2
 8005c4a:	f850 6024 	ldr.w	r6, [r0, r4, lsl #2]
 8005c4e:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
 8005c52:	f840 6023 	str.w	r6, [r0, r3, lsl #2]
 8005c56:	00a6      	lsls	r6, r4, #2
 8005c58:	009b      	lsls	r3, r3, #2
 8005c5a:	f840 c024 	str.w	ip, [r0, r4, lsl #2]
 8005c5e:	3304      	adds	r3, #4
 8005c60:	1d34      	adds	r4, r6, #4
 8005c62:	3502      	adds	r5, #2
 8005c64:	58c6      	ldr	r6, [r0, r3]
 8005c66:	5907      	ldr	r7, [r0, r4]
 8005c68:	50c7      	str	r7, [r0, r3]
 8005c6a:	428d      	cmp	r5, r1
 8005c6c:	5106      	str	r6, [r0, r4]
 8005c6e:	d3e6      	bcc.n	8005c3e <arm_bitreversal_32+0xa>
 8005c70:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005c72:	4770      	bx	lr

08005c74 <arm_cmplx_mag_f32>:
 8005c74:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005c78:	ed2d 8b02 	vpush	{d8}
 8005c7c:	0897      	lsrs	r7, r2, #2
 8005c7e:	b084      	sub	sp, #16
 8005c80:	d077      	beq.n	8005d72 <arm_cmplx_mag_f32+0xfe>
 8005c82:	f04f 0800 	mov.w	r8, #0
 8005c86:	f100 0420 	add.w	r4, r0, #32
 8005c8a:	f101 0510 	add.w	r5, r1, #16
 8005c8e:	463e      	mov	r6, r7
 8005c90:	ed14 0a08 	vldr	s0, [r4, #-32]	@ 0xffffffe0
 8005c94:	ed54 7a07 	vldr	s15, [r4, #-28]	@ 0xffffffe4
 8005c98:	ee20 0a00 	vmul.f32	s0, s0, s0
 8005c9c:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8005ca0:	ee30 0a27 	vadd.f32	s0, s0, s15
 8005ca4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8005ca8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005cac:	f2c0 80c5 	blt.w	8005e3a <arm_cmplx_mag_f32+0x1c6>
 8005cb0:	eeb5 0a40 	vcmp.f32	s0, #0.0
 8005cb4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005cb8:	eeb1 8ac0 	vsqrt.f32	s16, s0
 8005cbc:	f100 80cb 	bmi.w	8005e56 <arm_cmplx_mag_f32+0x1e2>
 8005cc0:	ed05 8a04 	vstr	s16, [r5, #-16]
 8005cc4:	ed14 0a06 	vldr	s0, [r4, #-24]	@ 0xffffffe8
 8005cc8:	ed54 7a05 	vldr	s15, [r4, #-20]	@ 0xffffffec
 8005ccc:	ee20 0a00 	vmul.f32	s0, s0, s0
 8005cd0:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8005cd4:	ee30 0a27 	vadd.f32	s0, s0, s15
 8005cd8:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8005cdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005ce0:	f2c0 80a8 	blt.w	8005e34 <arm_cmplx_mag_f32+0x1c0>
 8005ce4:	eeb5 0a40 	vcmp.f32	s0, #0.0
 8005ce8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005cec:	eeb1 8ac0 	vsqrt.f32	s16, s0
 8005cf0:	f100 80a8 	bmi.w	8005e44 <arm_cmplx_mag_f32+0x1d0>
 8005cf4:	ed05 8a03 	vstr	s16, [r5, #-12]
 8005cf8:	ed14 0a04 	vldr	s0, [r4, #-16]
 8005cfc:	ed54 7a03 	vldr	s15, [r4, #-12]
 8005d00:	ee20 0a00 	vmul.f32	s0, s0, s0
 8005d04:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8005d08:	ee30 0a27 	vadd.f32	s0, s0, s15
 8005d0c:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8005d10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005d14:	f2c0 808b 	blt.w	8005e2e <arm_cmplx_mag_f32+0x1ba>
 8005d18:	eeb5 0a40 	vcmp.f32	s0, #0.0
 8005d1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005d20:	eeb1 8ac0 	vsqrt.f32	s16, s0
 8005d24:	f100 80a9 	bmi.w	8005e7a <arm_cmplx_mag_f32+0x206>
 8005d28:	ed05 8a02 	vstr	s16, [r5, #-8]
 8005d2c:	ed14 0a02 	vldr	s0, [r4, #-8]
 8005d30:	ed54 7a01 	vldr	s15, [r4, #-4]
 8005d34:	ee20 0a00 	vmul.f32	s0, s0, s0
 8005d38:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8005d3c:	ee30 0a27 	vadd.f32	s0, s0, s15
 8005d40:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8005d44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005d48:	db6e      	blt.n	8005e28 <arm_cmplx_mag_f32+0x1b4>
 8005d4a:	eeb5 0a40 	vcmp.f32	s0, #0.0
 8005d4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005d52:	eeb1 8ac0 	vsqrt.f32	s16, s0
 8005d56:	f100 8087 	bmi.w	8005e68 <arm_cmplx_mag_f32+0x1f4>
 8005d5a:	ed05 8a01 	vstr	s16, [r5, #-4]
 8005d5e:	3e01      	subs	r6, #1
 8005d60:	f104 0420 	add.w	r4, r4, #32
 8005d64:	f105 0510 	add.w	r5, r5, #16
 8005d68:	d192      	bne.n	8005c90 <arm_cmplx_mag_f32+0x1c>
 8005d6a:	eb00 1047 	add.w	r0, r0, r7, lsl #5
 8005d6e:	eb01 1107 	add.w	r1, r1, r7, lsl #4
 8005d72:	f012 0203 	ands.w	r2, r2, #3
 8005d76:	d052      	beq.n	8005e1e <arm_cmplx_mag_f32+0x1aa>
 8005d78:	ed90 0a00 	vldr	s0, [r0]
 8005d7c:	edd0 7a01 	vldr	s15, [r0, #4]
 8005d80:	ee20 0a00 	vmul.f32	s0, s0, s0
 8005d84:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8005d88:	2300      	movs	r3, #0
 8005d8a:	ee37 0a80 	vadd.f32	s0, s15, s0
 8005d8e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8005d92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005d96:	bfb8      	it	lt
 8005d98:	600b      	strlt	r3, [r1, #0]
 8005d9a:	db08      	blt.n	8005dae <arm_cmplx_mag_f32+0x13a>
 8005d9c:	eeb5 0a40 	vcmp.f32	s0, #0.0
 8005da0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005da4:	eeb1 8ac0 	vsqrt.f32	s16, s0
 8005da8:	d479      	bmi.n	8005e9e <arm_cmplx_mag_f32+0x22a>
 8005daa:	ed81 8a00 	vstr	s16, [r1]
 8005dae:	3a01      	subs	r2, #1
 8005db0:	d035      	beq.n	8005e1e <arm_cmplx_mag_f32+0x1aa>
 8005db2:	ed90 0a02 	vldr	s0, [r0, #8]
 8005db6:	edd0 7a03 	vldr	s15, [r0, #12]
 8005dba:	ee20 0a00 	vmul.f32	s0, s0, s0
 8005dbe:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8005dc2:	2300      	movs	r3, #0
 8005dc4:	ee37 0a80 	vadd.f32	s0, s15, s0
 8005dc8:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8005dcc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005dd0:	bfb8      	it	lt
 8005dd2:	604b      	strlt	r3, [r1, #4]
 8005dd4:	db08      	blt.n	8005de8 <arm_cmplx_mag_f32+0x174>
 8005dd6:	eeb5 0a40 	vcmp.f32	s0, #0.0
 8005dda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005dde:	eeb1 8ac0 	vsqrt.f32	s16, s0
 8005de2:	d453      	bmi.n	8005e8c <arm_cmplx_mag_f32+0x218>
 8005de4:	ed81 8a01 	vstr	s16, [r1, #4]
 8005de8:	2a01      	cmp	r2, #1
 8005dea:	d018      	beq.n	8005e1e <arm_cmplx_mag_f32+0x1aa>
 8005dec:	ed90 0a04 	vldr	s0, [r0, #16]
 8005df0:	edd0 7a05 	vldr	s15, [r0, #20]
 8005df4:	ee20 0a00 	vmul.f32	s0, s0, s0
 8005df8:	ee67 7aa7 	vmul.f32	s15, s15, s15
 8005dfc:	2300      	movs	r3, #0
 8005dfe:	ee30 0a27 	vadd.f32	s0, s0, s15
 8005e02:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8005e06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005e0a:	db19      	blt.n	8005e40 <arm_cmplx_mag_f32+0x1cc>
 8005e0c:	eeb5 0a40 	vcmp.f32	s0, #0.0
 8005e10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005e14:	eeb1 8ac0 	vsqrt.f32	s16, s0
 8005e18:	d44a      	bmi.n	8005eb0 <arm_cmplx_mag_f32+0x23c>
 8005e1a:	ed81 8a02 	vstr	s16, [r1, #8]
 8005e1e:	b004      	add	sp, #16
 8005e20:	ecbd 8b02 	vpop	{d8}
 8005e24:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005e28:	f845 8c04 	str.w	r8, [r5, #-4]
 8005e2c:	e797      	b.n	8005d5e <arm_cmplx_mag_f32+0xea>
 8005e2e:	f845 8c08 	str.w	r8, [r5, #-8]
 8005e32:	e77b      	b.n	8005d2c <arm_cmplx_mag_f32+0xb8>
 8005e34:	f845 8c0c 	str.w	r8, [r5, #-12]
 8005e38:	e75e      	b.n	8005cf8 <arm_cmplx_mag_f32+0x84>
 8005e3a:	f845 8c10 	str.w	r8, [r5, #-16]
 8005e3e:	e741      	b.n	8005cc4 <arm_cmplx_mag_f32+0x50>
 8005e40:	608b      	str	r3, [r1, #8]
 8005e42:	e7ec      	b.n	8005e1e <arm_cmplx_mag_f32+0x1aa>
 8005e44:	e9cd 1202 	strd	r1, r2, [sp, #8]
 8005e48:	9001      	str	r0, [sp, #4]
 8005e4a:	f000 fb5d 	bl	8006508 <sqrtf>
 8005e4e:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
 8005e52:	9801      	ldr	r0, [sp, #4]
 8005e54:	e74e      	b.n	8005cf4 <arm_cmplx_mag_f32+0x80>
 8005e56:	e9cd 1202 	strd	r1, r2, [sp, #8]
 8005e5a:	9001      	str	r0, [sp, #4]
 8005e5c:	f000 fb54 	bl	8006508 <sqrtf>
 8005e60:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
 8005e64:	9801      	ldr	r0, [sp, #4]
 8005e66:	e72b      	b.n	8005cc0 <arm_cmplx_mag_f32+0x4c>
 8005e68:	e9cd 1202 	strd	r1, r2, [sp, #8]
 8005e6c:	9001      	str	r0, [sp, #4]
 8005e6e:	f000 fb4b 	bl	8006508 <sqrtf>
 8005e72:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
 8005e76:	9801      	ldr	r0, [sp, #4]
 8005e78:	e76f      	b.n	8005d5a <arm_cmplx_mag_f32+0xe6>
 8005e7a:	e9cd 1202 	strd	r1, r2, [sp, #8]
 8005e7e:	9001      	str	r0, [sp, #4]
 8005e80:	f000 fb42 	bl	8006508 <sqrtf>
 8005e84:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
 8005e88:	9801      	ldr	r0, [sp, #4]
 8005e8a:	e74d      	b.n	8005d28 <arm_cmplx_mag_f32+0xb4>
 8005e8c:	e9cd 0102 	strd	r0, r1, [sp, #8]
 8005e90:	9201      	str	r2, [sp, #4]
 8005e92:	f000 fb39 	bl	8006508 <sqrtf>
 8005e96:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
 8005e9a:	9903      	ldr	r1, [sp, #12]
 8005e9c:	e7a2      	b.n	8005de4 <arm_cmplx_mag_f32+0x170>
 8005e9e:	e9cd 0102 	strd	r0, r1, [sp, #8]
 8005ea2:	9201      	str	r2, [sp, #4]
 8005ea4:	f000 fb30 	bl	8006508 <sqrtf>
 8005ea8:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
 8005eac:	9903      	ldr	r1, [sp, #12]
 8005eae:	e77c      	b.n	8005daa <arm_cmplx_mag_f32+0x136>
 8005eb0:	9101      	str	r1, [sp, #4]
 8005eb2:	f000 fb29 	bl	8006508 <sqrtf>
 8005eb6:	9901      	ldr	r1, [sp, #4]
 8005eb8:	e7af      	b.n	8005e1a <arm_cmplx_mag_f32+0x1a6>
 8005eba:	bf00      	nop

08005ebc <arm_radix8_butterfly_f32>:
 8005ebc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005ec0:	ed2d 8b10 	vpush	{d8-d15}
 8005ec4:	b095      	sub	sp, #84	@ 0x54
 8005ec6:	e9cd 3210 	strd	r3, r2, [sp, #64]	@ 0x40
 8005eca:	4603      	mov	r3, r0
 8005ecc:	3304      	adds	r3, #4
 8005ece:	ed9f bab9 	vldr	s22, [pc, #740]	@ 80061b4 <arm_radix8_butterfly_f32+0x2f8>
 8005ed2:	9012      	str	r0, [sp, #72]	@ 0x48
 8005ed4:	468b      	mov	fp, r1
 8005ed6:	9313      	str	r3, [sp, #76]	@ 0x4c
 8005ed8:	4689      	mov	r9, r1
 8005eda:	ea4f 06db 	mov.w	r6, fp, lsr #3
 8005ede:	9b12      	ldr	r3, [sp, #72]	@ 0x48
 8005ee0:	960f      	str	r6, [sp, #60]	@ 0x3c
 8005ee2:	ea4f 1846 	mov.w	r8, r6, lsl #5
 8005ee6:	ea4f 0ec6 	mov.w	lr, r6, lsl #3
 8005eea:	eb03 0508 	add.w	r5, r3, r8
 8005eee:	ea4f 0a86 	mov.w	sl, r6, lsl #2
 8005ef2:	eb05 040e 	add.w	r4, r5, lr
 8005ef6:	0137      	lsls	r7, r6, #4
 8005ef8:	eba6 030a 	sub.w	r3, r6, sl
 8005efc:	eb04 000e 	add.w	r0, r4, lr
 8005f00:	44b2      	add	sl, r6
 8005f02:	1d3a      	adds	r2, r7, #4
 8005f04:	9702      	str	r7, [sp, #8]
 8005f06:	eb00 03c3 	add.w	r3, r0, r3, lsl #3
 8005f0a:	ea4f 07ca 	mov.w	r7, sl, lsl #3
 8005f0e:	ebae 0c06 	sub.w	ip, lr, r6
 8005f12:	9703      	str	r7, [sp, #12]
 8005f14:	eb03 0708 	add.w	r7, r3, r8
 8005f18:	9701      	str	r7, [sp, #4]
 8005f1a:	ea4f 07cc 	mov.w	r7, ip, lsl #3
 8005f1e:	9706      	str	r7, [sp, #24]
 8005f20:	9f12      	ldr	r7, [sp, #72]	@ 0x48
 8005f22:	eb06 0646 	add.w	r6, r6, r6, lsl #1
 8005f26:	f10e 0104 	add.w	r1, lr, #4
 8005f2a:	4439      	add	r1, r7
 8005f2c:	443a      	add	r2, r7
 8005f2e:	0137      	lsls	r7, r6, #4
 8005f30:	00f6      	lsls	r6, r6, #3
 8005f32:	9704      	str	r7, [sp, #16]
 8005f34:	9605      	str	r6, [sp, #20]
 8005f36:	9f01      	ldr	r7, [sp, #4]
 8005f38:	9e13      	ldr	r6, [sp, #76]	@ 0x4c
 8005f3a:	ea4f 0acb 	mov.w	sl, fp, lsl #3
 8005f3e:	f04f 0c00 	mov.w	ip, #0
 8005f42:	edd4 6a00 	vldr	s13, [r4]
 8005f46:	edd7 1a00 	vldr	s3, [r7]
 8005f4a:	ed16 aa01 	vldr	s20, [r6, #-4]
 8005f4e:	edd5 5a00 	vldr	s11, [r5]
 8005f52:	ed52 9a01 	vldr	s19, [r2, #-4]
 8005f56:	ed90 6a00 	vldr	s12, [r0]
 8005f5a:	ed51 7a01 	vldr	s15, [r1, #-4]
 8005f5e:	ed93 3a00 	vldr	s6, [r3]
 8005f62:	ee39 0a86 	vadd.f32	s0, s19, s12
 8005f66:	ee33 2a21 	vadd.f32	s4, s6, s3
 8005f6a:	ee37 5aa6 	vadd.f32	s10, s15, s13
 8005f6e:	ee7a 4a25 	vadd.f32	s9, s20, s11
 8005f72:	ee35 7a02 	vadd.f32	s14, s10, s4
 8005f76:	ee34 4a80 	vadd.f32	s8, s9, s0
 8005f7a:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8005f7e:	ee74 6a07 	vadd.f32	s13, s8, s14
 8005f82:	ee34 4a47 	vsub.f32	s8, s8, s14
 8005f86:	ed46 6a01 	vstr	s13, [r6, #-4]
 8005f8a:	ed85 4a00 	vstr	s8, [r5]
 8005f8e:	edd1 6a00 	vldr	s13, [r1]
 8005f92:	ed94 9a01 	vldr	s18, [r4, #4]
 8005f96:	edd3 2a01 	vldr	s5, [r3, #4]
 8005f9a:	edd7 8a01 	vldr	s17, [r7, #4]
 8005f9e:	edd6 0a00 	vldr	s1, [r6]
 8005fa2:	edd5 3a01 	vldr	s7, [r5, #4]
 8005fa6:	ed90 8a01 	vldr	s16, [r0, #4]
 8005faa:	ed92 7a00 	vldr	s14, [r2]
 8005fae:	ee33 3a61 	vsub.f32	s6, s6, s3
 8005fb2:	ee36 4ac9 	vsub.f32	s8, s13, s18
 8005fb6:	ee72 aae8 	vsub.f32	s21, s5, s17
 8005fba:	ee77 1ac3 	vsub.f32	s3, s15, s6
 8005fbe:	ee34 1a2a 	vadd.f32	s2, s8, s21
 8005fc2:	ee77 7a83 	vadd.f32	s15, s15, s6
 8005fc6:	ee34 4a6a 	vsub.f32	s8, s8, s21
 8005fca:	ee30 3aa3 	vadd.f32	s6, s1, s7
 8005fce:	ee39 6ac6 	vsub.f32	s12, s19, s12
 8005fd2:	ee70 3ae3 	vsub.f32	s7, s1, s7
 8005fd6:	ee72 2aa8 	vadd.f32	s5, s5, s17
 8005fda:	ee77 0a08 	vadd.f32	s1, s14, s16
 8005fde:	ee21 1a0b 	vmul.f32	s2, s2, s22
 8005fe2:	ee37 7a48 	vsub.f32	s14, s14, s16
 8005fe6:	ee61 1a8b 	vmul.f32	s3, s3, s22
 8005fea:	ee7a 5a65 	vsub.f32	s11, s20, s11
 8005fee:	ee76 6a89 	vadd.f32	s13, s13, s18
 8005ff2:	ee24 4a0b 	vmul.f32	s8, s8, s22
 8005ff6:	ee67 7a8b 	vmul.f32	s15, s15, s22
 8005ffa:	ee74 4ac0 	vsub.f32	s9, s9, s0
 8005ffe:	ee35 5a42 	vsub.f32	s10, s10, s4
 8006002:	ee36 0aa2 	vadd.f32	s0, s13, s5
 8006006:	ee33 2a20 	vadd.f32	s4, s6, s1
 800600a:	ee76 6ae2 	vsub.f32	s13, s13, s5
 800600e:	ee33 3a60 	vsub.f32	s6, s6, s1
 8006012:	ee75 2aa1 	vadd.f32	s5, s11, s3
 8006016:	ee77 0a01 	vadd.f32	s1, s14, s2
 800601a:	ee75 5ae1 	vsub.f32	s11, s11, s3
 800601e:	ee37 7a41 	vsub.f32	s14, s14, s2
 8006022:	ee73 1a84 	vadd.f32	s3, s7, s8
 8006026:	ee33 4ac4 	vsub.f32	s8, s7, s8
 800602a:	ee76 3a27 	vadd.f32	s7, s12, s15
 800602e:	ee76 7a67 	vsub.f32	s15, s12, s15
 8006032:	ee32 8a00 	vadd.f32	s16, s4, s0
 8006036:	ee33 1a45 	vsub.f32	s2, s6, s10
 800603a:	ee32 2a40 	vsub.f32	s4, s4, s0
 800603e:	ee35 5a03 	vadd.f32	s10, s10, s6
 8006042:	ee34 0aa6 	vadd.f32	s0, s9, s13
 8006046:	ee32 3aa0 	vadd.f32	s6, s5, s1
 800604a:	ee74 6ae6 	vsub.f32	s13, s9, s13
 800604e:	ee34 6a67 	vsub.f32	s12, s8, s15
 8006052:	ee75 4a87 	vadd.f32	s9, s11, s14
 8006056:	ee72 2ae0 	vsub.f32	s5, s5, s1
 800605a:	ee35 7ac7 	vsub.f32	s14, s11, s14
 800605e:	ee77 7a84 	vadd.f32	s15, s15, s8
 8006062:	ee71 5ae3 	vsub.f32	s11, s3, s7
 8006066:	44dc      	add	ip, fp
 8006068:	ee73 3aa1 	vadd.f32	s7, s7, s3
 800606c:	45e1      	cmp	r9, ip
 800606e:	ed86 8a00 	vstr	s16, [r6]
 8006072:	ed85 2a01 	vstr	s4, [r5, #4]
 8006076:	4456      	add	r6, sl
 8006078:	ed02 0a01 	vstr	s0, [r2, #-4]
 800607c:	4455      	add	r5, sl
 800607e:	edc0 6a00 	vstr	s13, [r0]
 8006082:	ed82 1a00 	vstr	s2, [r2]
 8006086:	ed80 5a01 	vstr	s10, [r0, #4]
 800608a:	4452      	add	r2, sl
 800608c:	ed01 3a01 	vstr	s6, [r1, #-4]
 8006090:	4450      	add	r0, sl
 8006092:	edc7 2a00 	vstr	s5, [r7]
 8006096:	edc4 4a00 	vstr	s9, [r4]
 800609a:	ed83 7a00 	vstr	s14, [r3]
 800609e:	edc1 5a00 	vstr	s11, [r1]
 80060a2:	edc7 3a01 	vstr	s7, [r7, #4]
 80060a6:	4451      	add	r1, sl
 80060a8:	ed84 6a01 	vstr	s12, [r4, #4]
 80060ac:	4457      	add	r7, sl
 80060ae:	edc3 7a01 	vstr	s15, [r3, #4]
 80060b2:	4454      	add	r4, sl
 80060b4:	4453      	add	r3, sl
 80060b6:	f63f af44 	bhi.w	8005f42 <arm_radix8_butterfly_f32+0x86>
 80060ba:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 80060bc:	2b07      	cmp	r3, #7
 80060be:	f240 81b7 	bls.w	8006430 <arm_radix8_butterfly_f32+0x574>
 80060c2:	9b06      	ldr	r3, [sp, #24]
 80060c4:	9903      	ldr	r1, [sp, #12]
 80060c6:	9812      	ldr	r0, [sp, #72]	@ 0x48
 80060c8:	9e05      	ldr	r6, [sp, #20]
 80060ca:	9a04      	ldr	r2, [sp, #16]
 80060cc:	f103 0c08 	add.w	ip, r3, #8
 80060d0:	9b02      	ldr	r3, [sp, #8]
 80060d2:	3108      	adds	r1, #8
 80060d4:	f108 0808 	add.w	r8, r8, #8
 80060d8:	1841      	adds	r1, r0, r1
 80060da:	3608      	adds	r6, #8
 80060dc:	330c      	adds	r3, #12
 80060de:	4604      	mov	r4, r0
 80060e0:	4444      	add	r4, r8
 80060e2:	18c3      	adds	r3, r0, r3
 80060e4:	9109      	str	r1, [sp, #36]	@ 0x24
 80060e6:	1981      	adds	r1, r0, r6
 80060e8:	f10e 0e08 	add.w	lr, lr, #8
 80060ec:	3208      	adds	r2, #8
 80060ee:	940b      	str	r4, [sp, #44]	@ 0x2c
 80060f0:	9107      	str	r1, [sp, #28]
 80060f2:	4604      	mov	r4, r0
 80060f4:	4601      	mov	r1, r0
 80060f6:	9304      	str	r3, [sp, #16]
 80060f8:	f100 030c 	add.w	r3, r0, #12
 80060fc:	4474      	add	r4, lr
 80060fe:	f04f 0801 	mov.w	r8, #1
 8006102:	1882      	adds	r2, r0, r2
 8006104:	4461      	add	r1, ip
 8006106:	9305      	str	r3, [sp, #20]
 8006108:	464b      	mov	r3, r9
 800610a:	940a      	str	r4, [sp, #40]	@ 0x28
 800610c:	46c1      	mov	r9, r8
 800610e:	9208      	str	r2, [sp, #32]
 8006110:	46d8      	mov	r8, fp
 8006112:	9106      	str	r1, [sp, #24]
 8006114:	f04f 0e00 	mov.w	lr, #0
 8006118:	469b      	mov	fp, r3
 800611a:	9b10      	ldr	r3, [sp, #64]	@ 0x40
 800611c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
 800611e:	449e      	add	lr, r3
 8006120:	ea4f 03ce 	mov.w	r3, lr, lsl #3
 8006124:	441a      	add	r2, r3
 8006126:	920e      	str	r2, [sp, #56]	@ 0x38
 8006128:	441a      	add	r2, r3
 800612a:	18d4      	adds	r4, r2, r3
 800612c:	18e5      	adds	r5, r4, r3
 800612e:	18ee      	adds	r6, r5, r3
 8006130:	18f7      	adds	r7, r6, r3
 8006132:	eb07 0c03 	add.w	ip, r7, r3
 8006136:	920d      	str	r2, [sp, #52]	@ 0x34
 8006138:	ebae 028e 	sub.w	r2, lr, lr, lsl #2
 800613c:	eb0c 1102 	add.w	r1, ip, r2, lsl #4
 8006140:	910c      	str	r1, [sp, #48]	@ 0x30
 8006142:	4419      	add	r1, r3
 8006144:	9103      	str	r1, [sp, #12]
 8006146:	4419      	add	r1, r3
 8006148:	18ca      	adds	r2, r1, r3
 800614a:	9202      	str	r2, [sp, #8]
 800614c:	441a      	add	r2, r3
 800614e:	18d0      	adds	r0, r2, r3
 8006150:	ed92 ea01 	vldr	s28, [r2, #4]
 8006154:	9a02      	ldr	r2, [sp, #8]
 8006156:	edd4 7a00 	vldr	s15, [r4]
 800615a:	edd2 da01 	vldr	s27, [r2, #4]
 800615e:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
 8006160:	ed91 da01 	vldr	s26, [r1, #4]
 8006164:	ed92 ca01 	vldr	s24, [r2, #4]
 8006168:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
 800616a:	9903      	ldr	r1, [sp, #12]
 800616c:	edcd 7a03 	vstr	s15, [sp, #12]
 8006170:	edd2 7a00 	vldr	s15, [r2]
 8006174:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
 8006176:	edcd 7a02 	vstr	s15, [sp, #8]
 800617a:	edd2 7a00 	vldr	s15, [r2]
 800617e:	edd0 ea01 	vldr	s29, [r0, #4]
 8006182:	edd1 ca01 	vldr	s25, [r1, #4]
 8006186:	eddc ba00 	vldr	s23, [ip]
 800618a:	edd7 aa00 	vldr	s21, [r7]
 800618e:	ed96 aa00 	vldr	s20, [r6]
 8006192:	edd5 9a00 	vldr	s19, [r5]
 8006196:	edcd 7a01 	vstr	s15, [sp, #4]
 800619a:	4403      	add	r3, r0
 800619c:	ed93 fa01 	vldr	s30, [r3, #4]
 80061a0:	e9dd 7604 	ldrd	r7, r6, [sp, #16]
 80061a4:	e9dd 5406 	ldrd	r5, r4, [sp, #24]
 80061a8:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 80061ac:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	@ 0x28
 80061b0:	46cc      	mov	ip, r9
 80061b2:	e001      	b.n	80061b8 <arm_radix8_butterfly_f32+0x2fc>
 80061b4:	3f3504f3 	.word	0x3f3504f3
 80061b8:	ed91 6a00 	vldr	s12, [r1]
 80061bc:	ed93 5a00 	vldr	s10, [r3]
 80061c0:	edd0 fa00 	vldr	s31, [r0]
 80061c4:	edd4 7a00 	vldr	s15, [r4]
 80061c8:	ed95 7a00 	vldr	s14, [r5]
 80061cc:	ed56 3a01 	vldr	s7, [r6, #-4]
 80061d0:	ed17 3a01 	vldr	s6, [r7, #-4]
 80061d4:	ed92 2a00 	vldr	s4, [r2]
 80061d8:	ed96 0a00 	vldr	s0, [r6]
 80061dc:	ee33 8a85 	vadd.f32	s16, s7, s10
 80061e0:	ee32 1a06 	vadd.f32	s2, s4, s12
 80061e4:	ee33 4a2f 	vadd.f32	s8, s6, s31
 80061e8:	ee77 4a87 	vadd.f32	s9, s15, s14
 80061ec:	ee78 1a04 	vadd.f32	s3, s16, s8
 80061f0:	ee71 6a24 	vadd.f32	s13, s2, s9
 80061f4:	ee32 2a46 	vsub.f32	s4, s4, s12
 80061f8:	ee31 6aa6 	vadd.f32	s12, s3, s13
 80061fc:	ee77 7ac7 	vsub.f32	s15, s15, s14
 8006200:	ed06 6a01 	vstr	s12, [r6, #-4]
 8006204:	edd4 8a01 	vldr	s17, [r4, #4]
 8006208:	ed92 9a01 	vldr	s18, [r2, #4]
 800620c:	edd7 0a00 	vldr	s1, [r7]
 8006210:	edd1 2a01 	vldr	s5, [r1, #4]
 8006214:	ed95 7a01 	vldr	s14, [r5, #4]
 8006218:	ed93 6a01 	vldr	s12, [r3, #4]
 800621c:	edd0 5a01 	vldr	s11, [r0, #4]
 8006220:	ee73 3ac5 	vsub.f32	s7, s7, s10
 8006224:	ee33 3a6f 	vsub.f32	s6, s6, s31
 8006228:	ee39 5a62 	vsub.f32	s10, s18, s5
 800622c:	ee78 fac7 	vsub.f32	s31, s17, s14
 8006230:	ee38 4a44 	vsub.f32	s8, s16, s8
 8006234:	ee38 7a87 	vadd.f32	s14, s17, s14
 8006238:	ee30 8aa5 	vadd.f32	s16, s1, s11
 800623c:	ee79 2a22 	vadd.f32	s5, s18, s5
 8006240:	ee32 9a27 	vadd.f32	s18, s4, s15
 8006244:	ee72 7a67 	vsub.f32	s15, s4, s15
 8006248:	ee30 2a06 	vadd.f32	s4, s0, s12
 800624c:	ee75 8a6f 	vsub.f32	s17, s10, s31
 8006250:	ee71 4a64 	vsub.f32	s9, s2, s9
 8006254:	ee35 5a2f 	vadd.f32	s10, s10, s31
 8006258:	ee32 1a08 	vadd.f32	s2, s4, s16
 800625c:	ee72 fa87 	vadd.f32	s31, s5, s14
 8006260:	ee32 2a48 	vsub.f32	s4, s4, s16
 8006264:	ee68 8a8b 	vmul.f32	s17, s17, s22
 8006268:	ee25 5a0b 	vmul.f32	s10, s10, s22
 800626c:	ee70 5ae5 	vsub.f32	s11, s1, s11
 8006270:	ee72 2ac7 	vsub.f32	s5, s5, s14
 8006274:	ee71 6ae6 	vsub.f32	s13, s3, s13
 8006278:	ee29 9a0b 	vmul.f32	s18, s18, s22
 800627c:	ee71 1a6f 	vsub.f32	s3, s2, s31
 8006280:	ee67 7a8b 	vmul.f32	s15, s15, s22
 8006284:	ee30 6a46 	vsub.f32	s12, s0, s12
 8006288:	ee74 0a22 	vadd.f32	s1, s8, s5
 800628c:	ee36 0a28 	vadd.f32	s0, s12, s17
 8006290:	ee74 2a62 	vsub.f32	s5, s8, s5
 8006294:	ee36 6a68 	vsub.f32	s12, s12, s17
 8006298:	ee32 4a64 	vsub.f32	s8, s4, s9
 800629c:	ee73 8a09 	vadd.f32	s17, s6, s18
 80062a0:	ee74 4a82 	vadd.f32	s9, s9, s4
 80062a4:	ee33 9a49 	vsub.f32	s18, s6, s18
 80062a8:	ee2d 2aa1 	vmul.f32	s4, s27, s3
 80062ac:	ee35 3a85 	vadd.f32	s6, s11, s10
 80062b0:	ee75 5ac5 	vsub.f32	s11, s11, s10
 80062b4:	ee33 5aa7 	vadd.f32	s10, s7, s15
 80062b8:	ee73 7ae7 	vsub.f32	s15, s7, s15
 80062bc:	ee69 3aa6 	vmul.f32	s7, s19, s13
 80062c0:	ee30 7a68 	vsub.f32	s14, s0, s17
 80062c4:	ee35 8a03 	vadd.f32	s16, s10, s6
 80062c8:	ee38 0a80 	vadd.f32	s0, s17, s0
 80062cc:	ee73 3a82 	vadd.f32	s7, s7, s4
 80062d0:	ee69 8aa1 	vmul.f32	s17, s19, s3
 80062d4:	ed9d 2a01 	vldr	s4, [sp, #4]
 80062d8:	eddd 1a02 	vldr	s3, [sp, #8]
 80062dc:	ee35 5a43 	vsub.f32	s10, s10, s6
 80062e0:	ee71 fa2f 	vadd.f32	s31, s2, s31
 80062e4:	ee37 3aa5 	vadd.f32	s6, s15, s11
 80062e8:	ee21 1aa0 	vmul.f32	s2, s3, s1
 80062ec:	ee77 7ae5 	vsub.f32	s15, s15, s11
 80062f0:	ee6d 6aa6 	vmul.f32	s13, s27, s13
 80062f4:	ee76 5a49 	vsub.f32	s11, s12, s18
 80062f8:	ee6c 0aa0 	vmul.f32	s1, s25, s1
 80062fc:	ee39 6a06 	vadd.f32	s12, s18, s12
 8006300:	ee2c 9a84 	vmul.f32	s18, s25, s8
 8006304:	ee21 4a84 	vmul.f32	s8, s3, s8
 8006308:	ee6c 1a07 	vmul.f32	s3, s24, s14
 800630c:	ee22 7a07 	vmul.f32	s14, s4, s14
 8006310:	ee22 2a08 	vmul.f32	s4, s4, s16
 8006314:	ee2c 8a08 	vmul.f32	s16, s24, s16
 8006318:	ee78 6ae6 	vsub.f32	s13, s17, s13
 800631c:	ee31 1a09 	vadd.f32	s2, s2, s18
 8006320:	ee6a 8aa2 	vmul.f32	s17, s21, s5
 8006324:	ee2e 9aa4 	vmul.f32	s18, s29, s9
 8006328:	ee74 0a60 	vsub.f32	s1, s8, s1
 800632c:	ee37 7a48 	vsub.f32	s14, s14, s16
 8006330:	ee2f 4a00 	vmul.f32	s8, s30, s0
 8006334:	ee2b 8a85 	vmul.f32	s16, s23, s10
 8006338:	ee72 1a21 	vadd.f32	s3, s4, s3
 800633c:	ee6a 4aa4 	vmul.f32	s9, s21, s9
 8006340:	ee38 2a89 	vadd.f32	s4, s17, s18
 8006344:	ee2f 5a05 	vmul.f32	s10, s30, s10
 8006348:	ee38 8a04 	vadd.f32	s16, s16, s8
 800634c:	ee2e 9a25 	vmul.f32	s18, s28, s11
 8006350:	ee2a 4a25 	vmul.f32	s8, s20, s11
 8006354:	ee6e 2aa2 	vmul.f32	s5, s29, s5
 8006358:	eddd 5a03 	vldr	s11, [sp, #12]
 800635c:	edc6 fa00 	vstr	s31, [r6]
 8006360:	ee2b 0a80 	vmul.f32	s0, s23, s0
 8006364:	ee74 2ae2 	vsub.f32	s5, s9, s5
 8006368:	ee30 0a45 	vsub.f32	s0, s0, s10
 800636c:	ee6a 4a03 	vmul.f32	s9, s20, s6
 8006370:	ee65 8aa7 	vmul.f32	s17, s11, s15
 8006374:	ee2d 5a06 	vmul.f32	s10, s26, s12
 8006378:	ee2e 3a03 	vmul.f32	s6, s28, s6
 800637c:	ee6d 7a27 	vmul.f32	s15, s26, s15
 8006380:	ee25 6a86 	vmul.f32	s12, s11, s12
 8006384:	ee74 4a89 	vadd.f32	s9, s9, s18
 8006388:	ee34 3a43 	vsub.f32	s6, s8, s6
 800638c:	ee78 8a85 	vadd.f32	s17, s17, s10
 8006390:	ee36 6a67 	vsub.f32	s12, s12, s15
 8006394:	44c4      	add	ip, r8
 8006396:	45e3      	cmp	fp, ip
 8006398:	edc3 3a00 	vstr	s7, [r3]
 800639c:	edc3 6a01 	vstr	s13, [r3, #4]
 80063a0:	4456      	add	r6, sl
 80063a2:	ed07 1a01 	vstr	s2, [r7, #-4]
 80063a6:	edc7 0a00 	vstr	s1, [r7]
 80063aa:	4453      	add	r3, sl
 80063ac:	ed80 2a00 	vstr	s4, [r0]
 80063b0:	edc0 2a01 	vstr	s5, [r0, #4]
 80063b4:	4457      	add	r7, sl
 80063b6:	edc2 1a00 	vstr	s3, [r2]
 80063ba:	ed82 7a01 	vstr	s14, [r2, #4]
 80063be:	4450      	add	r0, sl
 80063c0:	ed85 8a00 	vstr	s16, [r5]
 80063c4:	ed85 0a01 	vstr	s0, [r5, #4]
 80063c8:	4452      	add	r2, sl
 80063ca:	edc1 4a00 	vstr	s9, [r1]
 80063ce:	4455      	add	r5, sl
 80063d0:	ed81 3a01 	vstr	s6, [r1, #4]
 80063d4:	edc4 8a00 	vstr	s17, [r4]
 80063d8:	ed84 6a01 	vstr	s12, [r4, #4]
 80063dc:	4451      	add	r1, sl
 80063de:	4454      	add	r4, sl
 80063e0:	f63f aeea 	bhi.w	80061b8 <arm_radix8_butterfly_f32+0x2fc>
 80063e4:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 80063e6:	3308      	adds	r3, #8
 80063e8:	930b      	str	r3, [sp, #44]	@ 0x2c
 80063ea:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 80063ec:	3308      	adds	r3, #8
 80063ee:	930a      	str	r3, [sp, #40]	@ 0x28
 80063f0:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 80063f2:	3308      	adds	r3, #8
 80063f4:	9309      	str	r3, [sp, #36]	@ 0x24
 80063f6:	9b08      	ldr	r3, [sp, #32]
 80063f8:	3308      	adds	r3, #8
 80063fa:	9308      	str	r3, [sp, #32]
 80063fc:	9b07      	ldr	r3, [sp, #28]
 80063fe:	3308      	adds	r3, #8
 8006400:	9307      	str	r3, [sp, #28]
 8006402:	9b06      	ldr	r3, [sp, #24]
 8006404:	3308      	adds	r3, #8
 8006406:	9306      	str	r3, [sp, #24]
 8006408:	9b05      	ldr	r3, [sp, #20]
 800640a:	3308      	adds	r3, #8
 800640c:	9305      	str	r3, [sp, #20]
 800640e:	9b04      	ldr	r3, [sp, #16]
 8006410:	3308      	adds	r3, #8
 8006412:	9304      	str	r3, [sp, #16]
 8006414:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 8006416:	f109 0901 	add.w	r9, r9, #1
 800641a:	454b      	cmp	r3, r9
 800641c:	f47f ae7d 	bne.w	800611a <arm_radix8_butterfly_f32+0x25e>
 8006420:	9b10      	ldr	r3, [sp, #64]	@ 0x40
 8006422:	00db      	lsls	r3, r3, #3
 8006424:	b29b      	uxth	r3, r3
 8006426:	46d9      	mov	r9, fp
 8006428:	9310      	str	r3, [sp, #64]	@ 0x40
 800642a:	f8dd b03c 	ldr.w	fp, [sp, #60]	@ 0x3c
 800642e:	e554      	b.n	8005eda <arm_radix8_butterfly_f32+0x1e>
 8006430:	b015      	add	sp, #84	@ 0x54
 8006432:	ecbd 8b10 	vpop	{d8-d15}
 8006436:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800643a:	bf00      	nop

0800643c <memset>:
 800643c:	4402      	add	r2, r0
 800643e:	4603      	mov	r3, r0
 8006440:	4293      	cmp	r3, r2
 8006442:	d100      	bne.n	8006446 <memset+0xa>
 8006444:	4770      	bx	lr
 8006446:	f803 1b01 	strb.w	r1, [r3], #1
 800644a:	e7f9      	b.n	8006440 <memset+0x4>

0800644c <__errno>:
 800644c:	4b01      	ldr	r3, [pc, #4]	@ (8006454 <__errno+0x8>)
 800644e:	6818      	ldr	r0, [r3, #0]
 8006450:	4770      	bx	lr
 8006452:	bf00      	nop
 8006454:	2000000c 	.word	0x2000000c

08006458 <__libc_init_array>:
 8006458:	b570      	push	{r4, r5, r6, lr}
 800645a:	4d0d      	ldr	r5, [pc, #52]	@ (8006490 <__libc_init_array+0x38>)
 800645c:	4c0d      	ldr	r4, [pc, #52]	@ (8006494 <__libc_init_array+0x3c>)
 800645e:	1b64      	subs	r4, r4, r5
 8006460:	10a4      	asrs	r4, r4, #2
 8006462:	2600      	movs	r6, #0
 8006464:	42a6      	cmp	r6, r4
 8006466:	d109      	bne.n	800647c <__libc_init_array+0x24>
 8006468:	4d0b      	ldr	r5, [pc, #44]	@ (8006498 <__libc_init_array+0x40>)
 800646a:	4c0c      	ldr	r4, [pc, #48]	@ (800649c <__libc_init_array+0x44>)
 800646c:	f000 fac6 	bl	80069fc <_init>
 8006470:	1b64      	subs	r4, r4, r5
 8006472:	10a4      	asrs	r4, r4, #2
 8006474:	2600      	movs	r6, #0
 8006476:	42a6      	cmp	r6, r4
 8006478:	d105      	bne.n	8006486 <__libc_init_array+0x2e>
 800647a:	bd70      	pop	{r4, r5, r6, pc}
 800647c:	f855 3b04 	ldr.w	r3, [r5], #4
 8006480:	4798      	blx	r3
 8006482:	3601      	adds	r6, #1
 8006484:	e7ee      	b.n	8006464 <__libc_init_array+0xc>
 8006486:	f855 3b04 	ldr.w	r3, [r5], #4
 800648a:	4798      	blx	r3
 800648c:	3601      	adds	r6, #1
 800648e:	e7f2      	b.n	8006476 <__libc_init_array+0x1e>
 8006490:	08019a58 	.word	0x08019a58
 8006494:	08019a58 	.word	0x08019a58
 8006498:	08019a58 	.word	0x08019a58
 800649c:	08019a5c 	.word	0x08019a5c

080064a0 <sqrt>:
 80064a0:	b538      	push	{r3, r4, r5, lr}
 80064a2:	ed2d 8b02 	vpush	{d8}
 80064a6:	ec55 4b10 	vmov	r4, r5, d0
 80064aa:	f000 f84f 	bl	800654c <__ieee754_sqrt>
 80064ae:	4622      	mov	r2, r4
 80064b0:	462b      	mov	r3, r5
 80064b2:	4620      	mov	r0, r4
 80064b4:	4629      	mov	r1, r5
 80064b6:	eeb0 8a40 	vmov.f32	s16, s0
 80064ba:	eef0 8a60 	vmov.f32	s17, s1
 80064be:	f7fa fae1 	bl	8000a84 <__aeabi_dcmpun>
 80064c2:	b930      	cbnz	r0, 80064d2 <sqrt+0x32>
 80064c4:	2200      	movs	r2, #0
 80064c6:	2300      	movs	r3, #0
 80064c8:	4620      	mov	r0, r4
 80064ca:	4629      	mov	r1, r5
 80064cc:	f7fa fab2 	bl	8000a34 <__aeabi_dcmplt>
 80064d0:	b930      	cbnz	r0, 80064e0 <sqrt+0x40>
 80064d2:	eeb0 0a48 	vmov.f32	s0, s16
 80064d6:	eef0 0a68 	vmov.f32	s1, s17
 80064da:	ecbd 8b02 	vpop	{d8}
 80064de:	bd38      	pop	{r3, r4, r5, pc}
 80064e0:	f7ff ffb4 	bl	800644c <__errno>
 80064e4:	2200      	movs	r2, #0
 80064e6:	2300      	movs	r3, #0
 80064e8:	2121      	movs	r1, #33	@ 0x21
 80064ea:	6001      	str	r1, [r0, #0]
 80064ec:	4610      	mov	r0, r2
 80064ee:	4619      	mov	r1, r3
 80064f0:	f7fa f958 	bl	80007a4 <__aeabi_ddiv>
 80064f4:	ec41 0b18 	vmov	d8, r0, r1
 80064f8:	eeb0 0a48 	vmov.f32	s0, s16
 80064fc:	eef0 0a68 	vmov.f32	s1, s17
 8006500:	ecbd 8b02 	vpop	{d8}
 8006504:	bd38      	pop	{r3, r4, r5, pc}
 8006506:	bf00      	nop

08006508 <sqrtf>:
 8006508:	b508      	push	{r3, lr}
 800650a:	ed2d 8b02 	vpush	{d8}
 800650e:	eeb0 8a40 	vmov.f32	s16, s0
 8006512:	f000 f911 	bl	8006738 <__ieee754_sqrtf>
 8006516:	eeb4 8a48 	vcmp.f32	s16, s16
 800651a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800651e:	d606      	bvs.n	800652e <sqrtf+0x26>
 8006520:	eddf 8a09 	vldr	s17, [pc, #36]	@ 8006548 <sqrtf+0x40>
 8006524:	eeb4 8ae8 	vcmpe.f32	s16, s17
 8006528:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800652c:	d402      	bmi.n	8006534 <sqrtf+0x2c>
 800652e:	ecbd 8b02 	vpop	{d8}
 8006532:	bd08      	pop	{r3, pc}
 8006534:	f7ff ff8a 	bl	800644c <__errno>
 8006538:	ee88 0aa8 	vdiv.f32	s0, s17, s17
 800653c:	ecbd 8b02 	vpop	{d8}
 8006540:	2321      	movs	r3, #33	@ 0x21
 8006542:	6003      	str	r3, [r0, #0]
 8006544:	bd08      	pop	{r3, pc}
 8006546:	bf00      	nop
 8006548:	00000000 	.word	0x00000000

0800654c <__ieee754_sqrt>:
 800654c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006550:	4976      	ldr	r1, [pc, #472]	@ (800672c <__ieee754_sqrt+0x1e0>)
 8006552:	ec55 4b10 	vmov	r4, r5, d0
 8006556:	43a9      	bics	r1, r5
 8006558:	f000 80ab 	beq.w	80066b2 <__ieee754_sqrt+0x166>
 800655c:	2d00      	cmp	r5, #0
 800655e:	462a      	mov	r2, r5
 8006560:	4623      	mov	r3, r4
 8006562:	dd55      	ble.n	8006610 <__ieee754_sqrt+0xc4>
 8006564:	152c      	asrs	r4, r5, #20
 8006566:	d062      	beq.n	800662e <__ieee754_sqrt+0xe2>
 8006568:	f3c2 0213 	ubfx	r2, r2, #0, #20
 800656c:	07e1      	lsls	r1, r4, #31
 800656e:	f2a4 37ff 	subw	r7, r4, #1023	@ 0x3ff
 8006572:	f442 1280 	orr.w	r2, r2, #1048576	@ 0x100000
 8006576:	d403      	bmi.n	8006580 <__ieee754_sqrt+0x34>
 8006578:	0fd9      	lsrs	r1, r3, #31
 800657a:	eb01 0242 	add.w	r2, r1, r2, lsl #1
 800657e:	005b      	lsls	r3, r3, #1
 8006580:	0052      	lsls	r2, r2, #1
 8006582:	2600      	movs	r6, #0
 8006584:	eb02 72d3 	add.w	r2, r2, r3, lsr #31
 8006588:	107f      	asrs	r7, r7, #1
 800658a:	005b      	lsls	r3, r3, #1
 800658c:	2416      	movs	r4, #22
 800658e:	46b4      	mov	ip, r6
 8006590:	f44f 1100 	mov.w	r1, #2097152	@ 0x200000
 8006594:	eb0c 0001 	add.w	r0, ip, r1
 8006598:	4290      	cmp	r0, r2
 800659a:	ea4f 75d3 	mov.w	r5, r3, lsr #31
 800659e:	ea4f 0343 	mov.w	r3, r3, lsl #1
 80065a2:	dc03      	bgt.n	80065ac <__ieee754_sqrt+0x60>
 80065a4:	eb00 0c01 	add.w	ip, r0, r1
 80065a8:	1a12      	subs	r2, r2, r0
 80065aa:	440e      	add	r6, r1
 80065ac:	3c01      	subs	r4, #1
 80065ae:	eb05 0242 	add.w	r2, r5, r2, lsl #1
 80065b2:	ea4f 0151 	mov.w	r1, r1, lsr #1
 80065b6:	d1ed      	bne.n	8006594 <__ieee754_sqrt+0x48>
 80065b8:	46a0      	mov	r8, r4
 80065ba:	2520      	movs	r5, #32
 80065bc:	f04f 4000 	mov.w	r0, #2147483648	@ 0x80000000
 80065c0:	e00a      	b.n	80065d8 <__ieee754_sqrt+0x8c>
 80065c2:	d043      	beq.n	800664c <__ieee754_sqrt+0x100>
 80065c4:	0051      	lsls	r1, r2, #1
 80065c6:	eb01 71d3 	add.w	r1, r1, r3, lsr #31
 80065ca:	3d01      	subs	r5, #1
 80065cc:	460a      	mov	r2, r1
 80065ce:	ea4f 0343 	mov.w	r3, r3, lsl #1
 80065d2:	ea4f 0050 	mov.w	r0, r0, lsr #1
 80065d6:	d045      	beq.n	8006664 <__ieee754_sqrt+0x118>
 80065d8:	4594      	cmp	ip, r2
 80065da:	eb08 0e00 	add.w	lr, r8, r0
 80065de:	daf0      	bge.n	80065c2 <__ieee754_sqrt+0x76>
 80065e0:	f1be 0f00 	cmp.w	lr, #0
 80065e4:	eb0e 0800 	add.w	r8, lr, r0
 80065e8:	db0c      	blt.n	8006604 <__ieee754_sqrt+0xb8>
 80065ea:	46e1      	mov	r9, ip
 80065ec:	eba2 010c 	sub.w	r1, r2, ip
 80065f0:	459e      	cmp	lr, r3
 80065f2:	bf88      	it	hi
 80065f4:	f101 31ff 	addhi.w	r1, r1, #4294967295
 80065f8:	0049      	lsls	r1, r1, #1
 80065fa:	46cc      	mov	ip, r9
 80065fc:	eba3 030e 	sub.w	r3, r3, lr
 8006600:	4404      	add	r4, r0
 8006602:	e7e0      	b.n	80065c6 <__ieee754_sqrt+0x7a>
 8006604:	f1b8 0f00 	cmp.w	r8, #0
 8006608:	dbef      	blt.n	80065ea <__ieee754_sqrt+0x9e>
 800660a:	f10c 0901 	add.w	r9, ip, #1
 800660e:	e7ed      	b.n	80065ec <__ieee754_sqrt+0xa0>
 8006610:	f025 4100 	bic.w	r1, r5, #2147483648	@ 0x80000000
 8006614:	4321      	orrs	r1, r4
 8006616:	d046      	beq.n	80066a6 <__ieee754_sqrt+0x15a>
 8006618:	2d00      	cmp	r5, #0
 800661a:	d171      	bne.n	8006700 <__ieee754_sqrt+0x1b4>
 800661c:	0ad9      	lsrs	r1, r3, #11
 800661e:	3a15      	subs	r2, #21
 8006620:	055b      	lsls	r3, r3, #21
 8006622:	2900      	cmp	r1, #0
 8006624:	d0fa      	beq.n	800661c <__ieee754_sqrt+0xd0>
 8006626:	02ce      	lsls	r6, r1, #11
 8006628:	4614      	mov	r4, r2
 800662a:	d476      	bmi.n	800671a <__ieee754_sqrt+0x1ce>
 800662c:	460a      	mov	r2, r1
 800662e:	2100      	movs	r1, #0
 8006630:	0052      	lsls	r2, r2, #1
 8006632:	02d5      	lsls	r5, r2, #11
 8006634:	4608      	mov	r0, r1
 8006636:	f101 0101 	add.w	r1, r1, #1
 800663a:	d5f9      	bpl.n	8006630 <__ieee754_sqrt+0xe4>
 800663c:	f1c1 0520 	rsb	r5, r1, #32
 8006640:	fa23 f505 	lsr.w	r5, r3, r5
 8006644:	432a      	orrs	r2, r5
 8006646:	408b      	lsls	r3, r1
 8006648:	1a24      	subs	r4, r4, r0
 800664a:	e78d      	b.n	8006568 <__ieee754_sqrt+0x1c>
 800664c:	459e      	cmp	lr, r3
 800664e:	d902      	bls.n	8006656 <__ieee754_sqrt+0x10a>
 8006650:	ea4f 014c 	mov.w	r1, ip, lsl #1
 8006654:	e7b7      	b.n	80065c6 <__ieee754_sqrt+0x7a>
 8006656:	f1be 0f00 	cmp.w	lr, #0
 800665a:	eb0e 0800 	add.w	r8, lr, r0
 800665e:	db24      	blt.n	80066aa <__ieee754_sqrt+0x15e>
 8006660:	2100      	movs	r1, #0
 8006662:	e7cb      	b.n	80065fc <__ieee754_sqrt+0xb0>
 8006664:	4319      	orrs	r1, r3
 8006666:	d012      	beq.n	800668e <__ieee754_sqrt+0x142>
 8006668:	f8df a0c4 	ldr.w	sl, [pc, #196]	@ 8006730 <__ieee754_sqrt+0x1e4>
 800666c:	f8df b0c4 	ldr.w	fp, [pc, #196]	@ 8006734 <__ieee754_sqrt+0x1e8>
 8006670:	e9da 0100 	ldrd	r0, r1, [sl]
 8006674:	e9db 2300 	ldrd	r2, r3, [fp]
 8006678:	f7f9 fdb2 	bl	80001e0 <__aeabi_dsub>
 800667c:	e9da 8900 	ldrd	r8, r9, [sl]
 8006680:	4602      	mov	r2, r0
 8006682:	460b      	mov	r3, r1
 8006684:	4640      	mov	r0, r8
 8006686:	4649      	mov	r1, r9
 8006688:	f7fa f9de 	bl	8000a48 <__aeabi_dcmple>
 800668c:	b9f8      	cbnz	r0, 80066ce <__ieee754_sqrt+0x182>
 800668e:	0865      	lsrs	r5, r4, #1
 8006690:	1071      	asrs	r1, r6, #1
 8006692:	f101 517f 	add.w	r1, r1, #1069547520	@ 0x3fc00000
 8006696:	f501 1100 	add.w	r1, r1, #2097152	@ 0x200000
 800669a:	eb01 5307 	add.w	r3, r1, r7, lsl #20
 800669e:	ea45 72c6 	orr.w	r2, r5, r6, lsl #31
 80066a2:	ec43 2b10 	vmov	d0, r2, r3
 80066a6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066aa:	f1b8 0f00 	cmp.w	r8, #0
 80066ae:	daac      	bge.n	800660a <__ieee754_sqrt+0xbe>
 80066b0:	e7d6      	b.n	8006660 <__ieee754_sqrt+0x114>
 80066b2:	4622      	mov	r2, r4
 80066b4:	462b      	mov	r3, r5
 80066b6:	4620      	mov	r0, r4
 80066b8:	4629      	mov	r1, r5
 80066ba:	f7f9 ff49 	bl	8000550 <__aeabi_dmul>
 80066be:	4622      	mov	r2, r4
 80066c0:	462b      	mov	r3, r5
 80066c2:	f7f9 fd8f 	bl	80001e4 <__adddf3>
 80066c6:	ec41 0b10 	vmov	d0, r0, r1
 80066ca:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066ce:	f1b4 3fff 	cmp.w	r4, #4294967295
 80066d2:	e9da 0100 	ldrd	r0, r1, [sl]
 80066d6:	e9db 2300 	ldrd	r2, r3, [fp]
 80066da:	d022      	beq.n	8006722 <__ieee754_sqrt+0x1d6>
 80066dc:	f7f9 fd82 	bl	80001e4 <__adddf3>
 80066e0:	e9da 8900 	ldrd	r8, r9, [sl]
 80066e4:	4602      	mov	r2, r0
 80066e6:	460b      	mov	r3, r1
 80066e8:	4640      	mov	r0, r8
 80066ea:	4649      	mov	r1, r9
 80066ec:	f7fa f9a2 	bl	8000a34 <__aeabi_dcmplt>
 80066f0:	b1c8      	cbz	r0, 8006726 <__ieee754_sqrt+0x1da>
 80066f2:	1ca3      	adds	r3, r4, #2
 80066f4:	f104 0502 	add.w	r5, r4, #2
 80066f8:	bf08      	it	eq
 80066fa:	3601      	addeq	r6, #1
 80066fc:	086d      	lsrs	r5, r5, #1
 80066fe:	e7c7      	b.n	8006690 <__ieee754_sqrt+0x144>
 8006700:	4622      	mov	r2, r4
 8006702:	462b      	mov	r3, r5
 8006704:	4620      	mov	r0, r4
 8006706:	4629      	mov	r1, r5
 8006708:	f7f9 fd6a 	bl	80001e0 <__aeabi_dsub>
 800670c:	4602      	mov	r2, r0
 800670e:	460b      	mov	r3, r1
 8006710:	f7fa f848 	bl	80007a4 <__aeabi_ddiv>
 8006714:	ec41 0b10 	vmov	d0, r0, r1
 8006718:	e7c5      	b.n	80066a6 <__ieee754_sqrt+0x15a>
 800671a:	f04f 30ff 	mov.w	r0, #4294967295
 800671e:	460a      	mov	r2, r1
 8006720:	e792      	b.n	8006648 <__ieee754_sqrt+0xfc>
 8006722:	3601      	adds	r6, #1
 8006724:	e7b4      	b.n	8006690 <__ieee754_sqrt+0x144>
 8006726:	3401      	adds	r4, #1
 8006728:	e7b1      	b.n	800668e <__ieee754_sqrt+0x142>
 800672a:	bf00      	nop
 800672c:	7ff00000 	.word	0x7ff00000
 8006730:	08019a48 	.word	0x08019a48
 8006734:	08019a40 	.word	0x08019a40

08006738 <__ieee754_sqrtf>:
 8006738:	eeb1 0ac0 	vsqrt.f32	s0, s0
 800673c:	4770      	bx	lr
 800673e:	bf00      	nop

08006740 <__udivmoddi4>:
 8006740:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006744:	9d08      	ldr	r5, [sp, #32]
 8006746:	460e      	mov	r6, r1
 8006748:	4604      	mov	r4, r0
 800674a:	460f      	mov	r7, r1
 800674c:	2b00      	cmp	r3, #0
 800674e:	d14a      	bne.n	80067e6 <__udivmoddi4+0xa6>
 8006750:	4694      	mov	ip, r2
 8006752:	458c      	cmp	ip, r1
 8006754:	fab2 f282 	clz	r2, r2
 8006758:	d960      	bls.n	800681c <__udivmoddi4+0xdc>
 800675a:	b142      	cbz	r2, 800676e <__udivmoddi4+0x2e>
 800675c:	f1c2 0320 	rsb	r3, r2, #32
 8006760:	4097      	lsls	r7, r2
 8006762:	fa20 f303 	lsr.w	r3, r0, r3
 8006766:	fa0c fc02 	lsl.w	ip, ip, r2
 800676a:	431f      	orrs	r7, r3
 800676c:	4094      	lsls	r4, r2
 800676e:	ea4f 4e1c 	mov.w	lr, ip, lsr #16
 8006772:	fa1f f68c 	uxth.w	r6, ip
 8006776:	fbb7 f1fe 	udiv	r1, r7, lr
 800677a:	0c23      	lsrs	r3, r4, #16
 800677c:	fb0e 7711 	mls	r7, lr, r1, r7
 8006780:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
 8006784:	fb01 f006 	mul.w	r0, r1, r6
 8006788:	4298      	cmp	r0, r3
 800678a:	d90a      	bls.n	80067a2 <__udivmoddi4+0x62>
 800678c:	eb1c 0303 	adds.w	r3, ip, r3
 8006790:	f101 37ff 	add.w	r7, r1, #4294967295
 8006794:	f080 8115 	bcs.w	80069c2 <__udivmoddi4+0x282>
 8006798:	4298      	cmp	r0, r3
 800679a:	f240 8112 	bls.w	80069c2 <__udivmoddi4+0x282>
 800679e:	3902      	subs	r1, #2
 80067a0:	4463      	add	r3, ip
 80067a2:	1a1b      	subs	r3, r3, r0
 80067a4:	b2a4      	uxth	r4, r4
 80067a6:	fbb3 f0fe 	udiv	r0, r3, lr
 80067aa:	fb0e 3310 	mls	r3, lr, r0, r3
 80067ae:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 80067b2:	fb00 f606 	mul.w	r6, r0, r6
 80067b6:	42a6      	cmp	r6, r4
 80067b8:	d90a      	bls.n	80067d0 <__udivmoddi4+0x90>
 80067ba:	eb1c 0404 	adds.w	r4, ip, r4
 80067be:	f100 33ff 	add.w	r3, r0, #4294967295
 80067c2:	f080 8100 	bcs.w	80069c6 <__udivmoddi4+0x286>
 80067c6:	42a6      	cmp	r6, r4
 80067c8:	f240 80fd 	bls.w	80069c6 <__udivmoddi4+0x286>
 80067cc:	4464      	add	r4, ip
 80067ce:	3802      	subs	r0, #2
 80067d0:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
 80067d4:	1ba4      	subs	r4, r4, r6
 80067d6:	2100      	movs	r1, #0
 80067d8:	b11d      	cbz	r5, 80067e2 <__udivmoddi4+0xa2>
 80067da:	40d4      	lsrs	r4, r2
 80067dc:	2300      	movs	r3, #0
 80067de:	e9c5 4300 	strd	r4, r3, [r5]
 80067e2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80067e6:	428b      	cmp	r3, r1
 80067e8:	d905      	bls.n	80067f6 <__udivmoddi4+0xb6>
 80067ea:	b10d      	cbz	r5, 80067f0 <__udivmoddi4+0xb0>
 80067ec:	e9c5 0100 	strd	r0, r1, [r5]
 80067f0:	2100      	movs	r1, #0
 80067f2:	4608      	mov	r0, r1
 80067f4:	e7f5      	b.n	80067e2 <__udivmoddi4+0xa2>
 80067f6:	fab3 f183 	clz	r1, r3
 80067fa:	2900      	cmp	r1, #0
 80067fc:	d146      	bne.n	800688c <__udivmoddi4+0x14c>
 80067fe:	42b3      	cmp	r3, r6
 8006800:	d302      	bcc.n	8006808 <__udivmoddi4+0xc8>
 8006802:	4282      	cmp	r2, r0
 8006804:	f200 80f5 	bhi.w	80069f2 <__udivmoddi4+0x2b2>
 8006808:	1a84      	subs	r4, r0, r2
 800680a:	eb66 0203 	sbc.w	r2, r6, r3
 800680e:	2001      	movs	r0, #1
 8006810:	4617      	mov	r7, r2
 8006812:	2d00      	cmp	r5, #0
 8006814:	d0e5      	beq.n	80067e2 <__udivmoddi4+0xa2>
 8006816:	e9c5 4700 	strd	r4, r7, [r5]
 800681a:	e7e2      	b.n	80067e2 <__udivmoddi4+0xa2>
 800681c:	2a00      	cmp	r2, #0
 800681e:	f040 8093 	bne.w	8006948 <__udivmoddi4+0x208>
 8006822:	eba1 030c 	sub.w	r3, r1, ip
 8006826:	ea4f 471c 	mov.w	r7, ip, lsr #16
 800682a:	fa1f fe8c 	uxth.w	lr, ip
 800682e:	2101      	movs	r1, #1
 8006830:	fbb3 f6f7 	udiv	r6, r3, r7
 8006834:	fb07 3016 	mls	r0, r7, r6, r3
 8006838:	0c23      	lsrs	r3, r4, #16
 800683a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800683e:	fb0e f006 	mul.w	r0, lr, r6
 8006842:	4298      	cmp	r0, r3
 8006844:	d908      	bls.n	8006858 <__udivmoddi4+0x118>
 8006846:	eb1c 0303 	adds.w	r3, ip, r3
 800684a:	f106 38ff 	add.w	r8, r6, #4294967295
 800684e:	d202      	bcs.n	8006856 <__udivmoddi4+0x116>
 8006850:	4298      	cmp	r0, r3
 8006852:	f200 80d0 	bhi.w	80069f6 <__udivmoddi4+0x2b6>
 8006856:	4646      	mov	r6, r8
 8006858:	1a1b      	subs	r3, r3, r0
 800685a:	b2a4      	uxth	r4, r4
 800685c:	fbb3 f0f7 	udiv	r0, r3, r7
 8006860:	fb07 3310 	mls	r3, r7, r0, r3
 8006864:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8006868:	fb0e fe00 	mul.w	lr, lr, r0
 800686c:	45a6      	cmp	lr, r4
 800686e:	d908      	bls.n	8006882 <__udivmoddi4+0x142>
 8006870:	eb1c 0404 	adds.w	r4, ip, r4
 8006874:	f100 33ff 	add.w	r3, r0, #4294967295
 8006878:	d202      	bcs.n	8006880 <__udivmoddi4+0x140>
 800687a:	45a6      	cmp	lr, r4
 800687c:	f200 80b6 	bhi.w	80069ec <__udivmoddi4+0x2ac>
 8006880:	4618      	mov	r0, r3
 8006882:	eba4 040e 	sub.w	r4, r4, lr
 8006886:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
 800688a:	e7a5      	b.n	80067d8 <__udivmoddi4+0x98>
 800688c:	f1c1 0720 	rsb	r7, r1, #32
 8006890:	408b      	lsls	r3, r1
 8006892:	fa22 fc07 	lsr.w	ip, r2, r7
 8006896:	ea4c 0c03 	orr.w	ip, ip, r3
 800689a:	fa06 fe01 	lsl.w	lr, r6, r1
 800689e:	fa20 f407 	lsr.w	r4, r0, r7
 80068a2:	fa26 f307 	lsr.w	r3, r6, r7
 80068a6:	ea44 040e 	orr.w	r4, r4, lr
 80068aa:	fa00 f801 	lsl.w	r8, r0, r1
 80068ae:	ea4f 401c 	mov.w	r0, ip, lsr #16
 80068b2:	ea4f 4914 	mov.w	r9, r4, lsr #16
 80068b6:	fbb3 fef0 	udiv	lr, r3, r0
 80068ba:	fa1f f68c 	uxth.w	r6, ip
 80068be:	fb00 331e 	mls	r3, r0, lr, r3
 80068c2:	ea49 4303 	orr.w	r3, r9, r3, lsl #16
 80068c6:	fb0e f906 	mul.w	r9, lr, r6
 80068ca:	4599      	cmp	r9, r3
 80068cc:	fa02 f201 	lsl.w	r2, r2, r1
 80068d0:	d90b      	bls.n	80068ea <__udivmoddi4+0x1aa>
 80068d2:	eb1c 0303 	adds.w	r3, ip, r3
 80068d6:	f10e 3aff 	add.w	sl, lr, #4294967295
 80068da:	f080 8085 	bcs.w	80069e8 <__udivmoddi4+0x2a8>
 80068de:	4599      	cmp	r9, r3
 80068e0:	f240 8082 	bls.w	80069e8 <__udivmoddi4+0x2a8>
 80068e4:	f1ae 0e02 	sub.w	lr, lr, #2
 80068e8:	4463      	add	r3, ip
 80068ea:	eba3 0909 	sub.w	r9, r3, r9
 80068ee:	b2a4      	uxth	r4, r4
 80068f0:	fbb9 f3f0 	udiv	r3, r9, r0
 80068f4:	fb00 9913 	mls	r9, r0, r3, r9
 80068f8:	ea44 4409 	orr.w	r4, r4, r9, lsl #16
 80068fc:	fb03 f606 	mul.w	r6, r3, r6
 8006900:	42a6      	cmp	r6, r4
 8006902:	d908      	bls.n	8006916 <__udivmoddi4+0x1d6>
 8006904:	eb1c 0404 	adds.w	r4, ip, r4
 8006908:	f103 30ff 	add.w	r0, r3, #4294967295
 800690c:	d268      	bcs.n	80069e0 <__udivmoddi4+0x2a0>
 800690e:	42a6      	cmp	r6, r4
 8006910:	d966      	bls.n	80069e0 <__udivmoddi4+0x2a0>
 8006912:	3b02      	subs	r3, #2
 8006914:	4464      	add	r4, ip
 8006916:	ea43 400e 	orr.w	r0, r3, lr, lsl #16
 800691a:	1ba4      	subs	r4, r4, r6
 800691c:	fba0 e602 	umull	lr, r6, r0, r2
 8006920:	42b4      	cmp	r4, r6
 8006922:	4673      	mov	r3, lr
 8006924:	46b1      	mov	r9, r6
 8006926:	d352      	bcc.n	80069ce <__udivmoddi4+0x28e>
 8006928:	d04f      	beq.n	80069ca <__udivmoddi4+0x28a>
 800692a:	b15d      	cbz	r5, 8006944 <__udivmoddi4+0x204>
 800692c:	ebb8 0203 	subs.w	r2, r8, r3
 8006930:	eb64 0409 	sbc.w	r4, r4, r9
 8006934:	fa04 f707 	lsl.w	r7, r4, r7
 8006938:	fa22 f301 	lsr.w	r3, r2, r1
 800693c:	431f      	orrs	r7, r3
 800693e:	40cc      	lsrs	r4, r1
 8006940:	e9c5 7400 	strd	r7, r4, [r5]
 8006944:	2100      	movs	r1, #0
 8006946:	e74c      	b.n	80067e2 <__udivmoddi4+0xa2>
 8006948:	f1c2 0120 	rsb	r1, r2, #32
 800694c:	fa20 f301 	lsr.w	r3, r0, r1
 8006950:	fa0c fc02 	lsl.w	ip, ip, r2
 8006954:	fa26 f101 	lsr.w	r1, r6, r1
 8006958:	4096      	lsls	r6, r2
 800695a:	4333      	orrs	r3, r6
 800695c:	ea4f 471c 	mov.w	r7, ip, lsr #16
 8006960:	fa1f fe8c 	uxth.w	lr, ip
 8006964:	fbb1 f0f7 	udiv	r0, r1, r7
 8006968:	fb07 1610 	mls	r6, r7, r0, r1
 800696c:	0c19      	lsrs	r1, r3, #16
 800696e:	ea41 4106 	orr.w	r1, r1, r6, lsl #16
 8006972:	fb00 f60e 	mul.w	r6, r0, lr
 8006976:	428e      	cmp	r6, r1
 8006978:	fa04 f402 	lsl.w	r4, r4, r2
 800697c:	d908      	bls.n	8006990 <__udivmoddi4+0x250>
 800697e:	eb1c 0101 	adds.w	r1, ip, r1
 8006982:	f100 38ff 	add.w	r8, r0, #4294967295
 8006986:	d22d      	bcs.n	80069e4 <__udivmoddi4+0x2a4>
 8006988:	428e      	cmp	r6, r1
 800698a:	d92b      	bls.n	80069e4 <__udivmoddi4+0x2a4>
 800698c:	3802      	subs	r0, #2
 800698e:	4461      	add	r1, ip
 8006990:	1b89      	subs	r1, r1, r6
 8006992:	b29b      	uxth	r3, r3
 8006994:	fbb1 f6f7 	udiv	r6, r1, r7
 8006998:	fb07 1116 	mls	r1, r7, r6, r1
 800699c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80069a0:	fb06 f10e 	mul.w	r1, r6, lr
 80069a4:	4299      	cmp	r1, r3
 80069a6:	d908      	bls.n	80069ba <__udivmoddi4+0x27a>
 80069a8:	eb1c 0303 	adds.w	r3, ip, r3
 80069ac:	f106 38ff 	add.w	r8, r6, #4294967295
 80069b0:	d214      	bcs.n	80069dc <__udivmoddi4+0x29c>
 80069b2:	4299      	cmp	r1, r3
 80069b4:	d912      	bls.n	80069dc <__udivmoddi4+0x29c>
 80069b6:	3e02      	subs	r6, #2
 80069b8:	4463      	add	r3, ip
 80069ba:	1a5b      	subs	r3, r3, r1
 80069bc:	ea46 4100 	orr.w	r1, r6, r0, lsl #16
 80069c0:	e736      	b.n	8006830 <__udivmoddi4+0xf0>
 80069c2:	4639      	mov	r1, r7
 80069c4:	e6ed      	b.n	80067a2 <__udivmoddi4+0x62>
 80069c6:	4618      	mov	r0, r3
 80069c8:	e702      	b.n	80067d0 <__udivmoddi4+0x90>
 80069ca:	45f0      	cmp	r8, lr
 80069cc:	d2ad      	bcs.n	800692a <__udivmoddi4+0x1ea>
 80069ce:	ebbe 0302 	subs.w	r3, lr, r2
 80069d2:	eb66 060c 	sbc.w	r6, r6, ip
 80069d6:	3801      	subs	r0, #1
 80069d8:	46b1      	mov	r9, r6
 80069da:	e7a6      	b.n	800692a <__udivmoddi4+0x1ea>
 80069dc:	4646      	mov	r6, r8
 80069de:	e7ec      	b.n	80069ba <__udivmoddi4+0x27a>
 80069e0:	4603      	mov	r3, r0
 80069e2:	e798      	b.n	8006916 <__udivmoddi4+0x1d6>
 80069e4:	4640      	mov	r0, r8
 80069e6:	e7d3      	b.n	8006990 <__udivmoddi4+0x250>
 80069e8:	46d6      	mov	lr, sl
 80069ea:	e77e      	b.n	80068ea <__udivmoddi4+0x1aa>
 80069ec:	4464      	add	r4, ip
 80069ee:	3802      	subs	r0, #2
 80069f0:	e747      	b.n	8006882 <__udivmoddi4+0x142>
 80069f2:	4608      	mov	r0, r1
 80069f4:	e70d      	b.n	8006812 <__udivmoddi4+0xd2>
 80069f6:	3e02      	subs	r6, #2
 80069f8:	4463      	add	r3, ip
 80069fa:	e72d      	b.n	8006858 <__udivmoddi4+0x118>

080069fc <_init>:
 80069fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80069fe:	bf00      	nop
 8006a00:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006a02:	bc08      	pop	{r3}
 8006a04:	469e      	mov	lr, r3
 8006a06:	4770      	bx	lr

08006a08 <_fini>:
 8006a08:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006a0a:	bf00      	nop
 8006a0c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006a0e:	bc08      	pop	{r3}
 8006a10:	469e      	mov	lr, r3
 8006a12:	4770      	bx	lr
