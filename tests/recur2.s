	.file	"recur2.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	a
	.type	a, @function
a:
.LFB0:
	.cfi_startproc
	.p2align 4,,10
	.p2align 3
.L2:
	jmp	.L2
	.cfi_endproc
.LFE0:
	.size	a, .-a
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	b
	.type	b, @function
b:
.LFB1:
	.cfi_startproc
	.p2align 4,,10
	.p2align 3
.L4:
	jmp	.L4
	.cfi_endproc
.LFE1:
	.size	b, .-b
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	c
	.type	c, @function
c:
.LFB2:
	.cfi_startproc
	.p2align 4,,10
	.p2align 3
.L6:
	jmp	.L6
	.cfi_endproc
.LFE2:
	.size	c, .-c
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	d
	.type	d, @function
d:
.LFB3:
	.cfi_startproc
	.p2align 4,,10
	.p2align 3
.L8:
	jmp	.L8
	.cfi_endproc
.LFE3:
	.size	d, .-d
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.section	.text.startup,"ax",@progbits
.LHOTB4:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	.p2align 4,,10
	.p2align 3
.L10:
	jmp	.L10
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
	.ident	"GCC: (Debian 4.9.1-19) 4.9.1"
	.section	.note.GNU-stack,"",@progbits
