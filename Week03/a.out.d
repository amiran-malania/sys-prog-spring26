
a.out:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100000460 <_main>:
100000460: d10083ff    	sub	sp, sp, #0x20
100000464: a9017bfd    	stp	x29, x30, [sp, #0x10]
100000468: 910043fd    	add	x29, sp, #0x10
10000046c: 52800008    	mov	w8, #0x0                ; =0
100000470: b9000be8    	str	w8, [sp, #0x8]
100000474: b81fc3bf    	stur	wzr, [x29, #-0x4]
100000478: 90000000    	adrp	x0, 0x100000000 <_puts+0x100000000>
10000047c: 91128000    	add	x0, x0, #0x4a0
100000480: 94000005    	bl	0x100000494 <_puts+0x100000494>
100000484: b9400be0    	ldr	w0, [sp, #0x8]
100000488: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000048c: 910083ff    	add	sp, sp, #0x20
100000490: d65f03c0    	ret

Disassembly of section __TEXT,__stubs:

0000000100000494 <__stubs>:
100000494: 90000030    	adrp	x16, 0x100004000 <_puts+0x100004000>
100000498: f9400210    	ldr	x16, [x16]
10000049c: d61f0200    	br	x16

Disassembly of section __TEXT,__cstring:

00000001000004a0 <__cstring>:
1000004a0: 6c6c6568    	ldnp	d8, d25, [x11, #-0x140]
1000004a4: 6f77206f    	umlal2.4s	v15, v3, v7[3]
1000004a8: 00646c72    	<unknown>

Disassembly of section __TEXT,__unwind_info:

00000001000004ac <__unwind_info>:
1000004ac: 00000001    	udf	#0x1
1000004b0: 0000001c    	udf	#0x1c
1000004b4: 00000000    	udf	#0x0
1000004b8: 0000001c    	udf	#0x1c
1000004bc: 00000000    	udf	#0x0
1000004c0: 0000001c    	udf	#0x1c
1000004c4: 00000002    	udf	#0x2
1000004c8: 00000460    	udf	#0x460
1000004cc: 00000040    	udf	#0x40
1000004d0: 00000040    	udf	#0x40
1000004d4: 00000494    	udf	#0x494
1000004d8: 00000000    	udf	#0x0
1000004dc: 00000040    	udf	#0x40
		...
1000004ec: 00000003    	udf	#0x3
1000004f0: 0001000c    	<unknown>
1000004f4: 00010010    	<unknown>
1000004f8: 00000000    	udf	#0x0
1000004fc: 04000000    	add	z0.b, p0/m, z0.b, z0.b
100000500: 00000000    	udf	#0x0

Disassembly of section __DATA_CONST,__got:

0000000100004000 <__got>:
100004000: 00000000    	udf	#0x0
100004004: 80000000    	<unknown>
