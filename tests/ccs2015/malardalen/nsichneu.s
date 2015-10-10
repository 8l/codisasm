	.file	"nsichneu.c"
	.intel_syntax noprefix
	.text
	.globl	_m_ain
	.def	_m_ain;	.scl	2;	.type	32;	.endef
_m_ain:
LFB0:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	call	_start
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_P1_is_marked
	.data
	.align 4
_P1_is_marked:
	.long	3
	.comm	_P1_marking_member_0, 12, 2
	.globl	_P2_is_marked
	.align 4
_P2_is_marked:
	.long	5
	.comm	_P2_marking_member_0, 20, 2
	.globl	_P3_is_marked
	.bss
	.align 4
_P3_is_marked:
	.space 4
	.comm	_P3_marking_member_0, 24, 2
	.text
	.globl	_start
	.def	_start;	.scl	2;	.type	32;	.endef
_start:
LFB1:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 1520
	mov	DWORD PTR [ebp-4], 2
	jmp	L4
L130:
	sub	DWORD PTR [ebp-4], 1
	mov	eax, DWORD PTR _P1_is_marked
	cmp	eax, 2
	jle	L5
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L5
	mov	edx, DWORD PTR _P1_marking_member_0+4
	mov	eax, DWORD PTR _P1_marking_member_0+8
	cmp	edx, eax
	jne	L5
	mov	eax, DWORD PTR _P1_marking_member_0
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR _P1_marking_member_0+4
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-8]
	cmp	eax, DWORD PTR [ebp-12]
	jge	L5
	mov	eax, DWORD PTR _P1_is_marked
	sub	eax, 3
	mov	DWORD PTR _P1_is_marked, eax
	mov	eax, DWORD PTR [ebp-8]
	sub	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-8]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L5:
	mov	eax, DWORD PTR _P1_is_marked
	cmp	eax, 2
	jle	L6
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L6
	mov	edx, DWORD PTR _P1_marking_member_0+8
	mov	eax, DWORD PTR _P1_marking_member_0+4
	cmp	edx, eax
	jne	L6
	mov	eax, DWORD PTR _P1_marking_member_0
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR _P1_marking_member_0+8
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp-20]
	cmp	eax, DWORD PTR [ebp-24]
	jge	L6
	mov	eax, DWORD PTR _P1_is_marked
	sub	eax, 3
	mov	DWORD PTR _P1_is_marked, eax
	mov	eax, DWORD PTR [ebp-20]
	sub	eax, DWORD PTR [ebp-24]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-20]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-24]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-28]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L6:
	mov	eax, DWORD PTR _P1_is_marked
	cmp	eax, 2
	jle	L7
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L7
	mov	edx, DWORD PTR _P1_marking_member_0
	mov	eax, DWORD PTR _P1_marking_member_0+8
	cmp	edx, eax
	jne	L7
	mov	eax, DWORD PTR _P1_marking_member_0+4
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR _P1_marking_member_0
	mov	DWORD PTR [ebp-36], eax
	mov	eax, DWORD PTR [ebp-32]
	cmp	eax, DWORD PTR [ebp-36]
	jge	L7
	mov	eax, DWORD PTR _P1_is_marked
	sub	eax, 3
	mov	DWORD PTR _P1_is_marked, eax
	mov	eax, DWORD PTR [ebp-32]
	sub	eax, DWORD PTR [ebp-36]
	mov	DWORD PTR [ebp-40], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-32]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-36]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-40]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L7:
	mov	eax, DWORD PTR _P1_is_marked
	cmp	eax, 2
	jle	L8
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L8
	mov	edx, DWORD PTR _P1_marking_member_0+8
	mov	eax, DWORD PTR _P1_marking_member_0
	cmp	edx, eax
	jne	L8
	mov	eax, DWORD PTR _P1_marking_member_0+4
	mov	DWORD PTR [ebp-44], eax
	mov	eax, DWORD PTR _P1_marking_member_0+8
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp-44]
	cmp	eax, DWORD PTR [ebp-48]
	jge	L8
	mov	eax, DWORD PTR _P1_is_marked
	sub	eax, 3
	mov	DWORD PTR _P1_is_marked, eax
	mov	eax, DWORD PTR [ebp-44]
	sub	eax, DWORD PTR [ebp-48]
	mov	DWORD PTR [ebp-52], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-48]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-52]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L8:
	mov	eax, DWORD PTR _P1_is_marked
	cmp	eax, 2
	jle	L9
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L9
	mov	edx, DWORD PTR _P1_marking_member_0
	mov	eax, DWORD PTR _P1_marking_member_0+4
	cmp	edx, eax
	jne	L9
	mov	eax, DWORD PTR _P1_marking_member_0+8
	mov	DWORD PTR [ebp-56], eax
	mov	eax, DWORD PTR _P1_marking_member_0
	mov	DWORD PTR [ebp-60], eax
	mov	eax, DWORD PTR [ebp-56]
	cmp	eax, DWORD PTR [ebp-60]
	jge	L9
	mov	eax, DWORD PTR _P1_is_marked
	sub	eax, 3
	mov	DWORD PTR _P1_is_marked, eax
	mov	eax, DWORD PTR [ebp-56]
	sub	eax, DWORD PTR [ebp-60]
	mov	DWORD PTR [ebp-64], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-56]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-60]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-64]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L9:
	mov	eax, DWORD PTR _P1_is_marked
	cmp	eax, 2
	jle	L10
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L10
	mov	edx, DWORD PTR _P1_marking_member_0+4
	mov	eax, DWORD PTR _P1_marking_member_0
	cmp	edx, eax
	jne	L10
	mov	eax, DWORD PTR _P1_marking_member_0+8
	mov	DWORD PTR [ebp-68], eax
	mov	eax, DWORD PTR _P1_marking_member_0+4
	mov	DWORD PTR [ebp-72], eax
	mov	eax, DWORD PTR [ebp-68]
	cmp	eax, DWORD PTR [ebp-72]
	jge	L10
	mov	eax, DWORD PTR _P1_is_marked
	sub	eax, 3
	mov	DWORD PTR _P1_is_marked, eax
	mov	eax, DWORD PTR [ebp-68]
	sub	eax, DWORD PTR [ebp-72]
	mov	DWORD PTR [ebp-76], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-68]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-72]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-76]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L10:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L11
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L11
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L11
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L11
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-80], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-84], eax
	mov	eax, DWORD PTR [ebp-84]
	cmp	eax, DWORD PTR [ebp-80]
	jle	L11
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-80]
	mov	eax, DWORD PTR [ebp-84]
	add	eax, edx
	mov	DWORD PTR [ebp-88], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-80]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-84]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-88]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L11:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L12
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L12
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L12
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L12
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-92], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-96], eax
	mov	eax, DWORD PTR [ebp-96]
	cmp	eax, DWORD PTR [ebp-92]
	jle	L12
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-92]
	mov	eax, DWORD PTR [ebp-96]
	add	eax, edx
	mov	DWORD PTR [ebp-100], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-92]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-96]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-100]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L12:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L13
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L13
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L13
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L13
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-104], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-108], eax
	mov	eax, DWORD PTR [ebp-108]
	cmp	eax, DWORD PTR [ebp-104]
	jle	L13
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-104]
	mov	eax, DWORD PTR [ebp-108]
	add	eax, edx
	mov	DWORD PTR [ebp-112], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-104]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-108]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-112]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L13:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L14
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L14
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L14
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L14
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-116], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-120], eax
	mov	eax, DWORD PTR [ebp-120]
	cmp	eax, DWORD PTR [ebp-116]
	jle	L14
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-116]
	mov	eax, DWORD PTR [ebp-120]
	add	eax, edx
	mov	DWORD PTR [ebp-124], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-116]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-120]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-124]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L14:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L15
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L15
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L15
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L15
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-128], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-132], eax
	mov	eax, DWORD PTR [ebp-132]
	cmp	eax, DWORD PTR [ebp-128]
	jle	L15
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-128]
	mov	eax, DWORD PTR [ebp-132]
	add	eax, edx
	mov	DWORD PTR [ebp-136], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-128]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-132]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-136]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L15:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L16
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L16
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L16
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L16
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-140], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-144], eax
	mov	eax, DWORD PTR [ebp-144]
	cmp	eax, DWORD PTR [ebp-140]
	jle	L16
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-140]
	mov	eax, DWORD PTR [ebp-144]
	add	eax, edx
	mov	DWORD PTR [ebp-148], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-140]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-144]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-148]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L16:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L17
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L17
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L17
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L17
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-152], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-156], eax
	mov	eax, DWORD PTR [ebp-156]
	cmp	eax, DWORD PTR [ebp-152]
	jle	L17
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-152]
	mov	eax, DWORD PTR [ebp-156]
	add	eax, edx
	mov	DWORD PTR [ebp-160], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-152]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-156]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-160]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L17:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L18
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L18
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L18
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L18
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-164], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-168], eax
	mov	eax, DWORD PTR [ebp-168]
	cmp	eax, DWORD PTR [ebp-164]
	jle	L18
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-164]
	mov	eax, DWORD PTR [ebp-168]
	add	eax, edx
	mov	DWORD PTR [ebp-172], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-164]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-168]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-172]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L18:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L19
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L19
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L19
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L19
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-176], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-180], eax
	mov	eax, DWORD PTR [ebp-180]
	cmp	eax, DWORD PTR [ebp-176]
	jle	L19
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-176]
	mov	eax, DWORD PTR [ebp-180]
	add	eax, edx
	mov	DWORD PTR [ebp-184], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-176]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-180]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-184]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L19:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L20
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L20
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L20
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L20
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-188], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-192], eax
	mov	eax, DWORD PTR [ebp-192]
	cmp	eax, DWORD PTR [ebp-188]
	jle	L20
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-188]
	mov	eax, DWORD PTR [ebp-192]
	add	eax, edx
	mov	DWORD PTR [ebp-196], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-188]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-192]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-196]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L20:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L21
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L21
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L21
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L21
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-200], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-204], eax
	mov	eax, DWORD PTR [ebp-204]
	cmp	eax, DWORD PTR [ebp-200]
	jle	L21
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-200]
	mov	eax, DWORD PTR [ebp-204]
	add	eax, edx
	mov	DWORD PTR [ebp-208], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-200]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-204]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-208]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L21:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L22
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L22
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L22
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L22
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-212], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-216], eax
	mov	eax, DWORD PTR [ebp-216]
	cmp	eax, DWORD PTR [ebp-212]
	jle	L22
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-212]
	mov	eax, DWORD PTR [ebp-216]
	add	eax, edx
	mov	DWORD PTR [ebp-220], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-212]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-216]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-220]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L22:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L23
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L23
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L23
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L23
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-224], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-228], eax
	mov	eax, DWORD PTR [ebp-228]
	cmp	eax, DWORD PTR [ebp-224]
	jle	L23
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-224]
	mov	eax, DWORD PTR [ebp-228]
	add	eax, edx
	mov	DWORD PTR [ebp-232], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-224]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-228]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-232]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L23:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L24
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L24
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L24
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L24
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-236], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-240], eax
	mov	eax, DWORD PTR [ebp-240]
	cmp	eax, DWORD PTR [ebp-236]
	jle	L24
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-236]
	mov	eax, DWORD PTR [ebp-240]
	add	eax, edx
	mov	DWORD PTR [ebp-244], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-236]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-240]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-244]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L24:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L25
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L25
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L25
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L25
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-248], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-252], eax
	mov	eax, DWORD PTR [ebp-252]
	cmp	eax, DWORD PTR [ebp-248]
	jle	L25
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-248]
	mov	eax, DWORD PTR [ebp-252]
	add	eax, edx
	mov	DWORD PTR [ebp-256], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-248]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-252]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-256]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L25:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L26
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L26
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L26
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L26
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-260], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-264], eax
	mov	eax, DWORD PTR [ebp-264]
	cmp	eax, DWORD PTR [ebp-260]
	jle	L26
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-260]
	mov	eax, DWORD PTR [ebp-264]
	add	eax, edx
	mov	DWORD PTR [ebp-268], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-260]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-264]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-268]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L26:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L27
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L27
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L27
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L27
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-272], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-276], eax
	mov	eax, DWORD PTR [ebp-276]
	cmp	eax, DWORD PTR [ebp-272]
	jle	L27
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-272]
	mov	eax, DWORD PTR [ebp-276]
	add	eax, edx
	mov	DWORD PTR [ebp-280], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-272]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-276]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-280]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L27:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L28
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L28
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L28
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L28
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-284], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-288], eax
	mov	eax, DWORD PTR [ebp-288]
	cmp	eax, DWORD PTR [ebp-284]
	jle	L28
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-284]
	mov	eax, DWORD PTR [ebp-288]
	add	eax, edx
	mov	DWORD PTR [ebp-292], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-284]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-288]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-292]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L28:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L29
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L29
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L29
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L29
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-296], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-300], eax
	mov	eax, DWORD PTR [ebp-300]
	cmp	eax, DWORD PTR [ebp-296]
	jle	L29
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-296]
	mov	eax, DWORD PTR [ebp-300]
	add	eax, edx
	mov	DWORD PTR [ebp-304], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-296]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-300]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-304]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L29:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L30
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L30
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L30
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L30
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-308], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-312], eax
	mov	eax, DWORD PTR [ebp-312]
	cmp	eax, DWORD PTR [ebp-308]
	jle	L30
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-308]
	mov	eax, DWORD PTR [ebp-312]
	add	eax, edx
	mov	DWORD PTR [ebp-316], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-308]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-312]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-316]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L30:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L31
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L31
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L31
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L31
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-320], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-324], eax
	mov	eax, DWORD PTR [ebp-324]
	cmp	eax, DWORD PTR [ebp-320]
	jle	L31
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-320]
	mov	eax, DWORD PTR [ebp-324]
	add	eax, edx
	mov	DWORD PTR [ebp-328], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-320]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-324]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-328]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L31:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L32
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L32
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L32
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L32
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-332], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-336], eax
	mov	eax, DWORD PTR [ebp-336]
	cmp	eax, DWORD PTR [ebp-332]
	jle	L32
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-332]
	mov	eax, DWORD PTR [ebp-336]
	add	eax, edx
	mov	DWORD PTR [ebp-340], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-332]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-336]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-340]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L32:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L33
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L33
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L33
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L33
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-344], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-348], eax
	mov	eax, DWORD PTR [ebp-348]
	cmp	eax, DWORD PTR [ebp-344]
	jle	L33
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-344]
	mov	eax, DWORD PTR [ebp-348]
	add	eax, edx
	mov	DWORD PTR [ebp-352], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-344]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-348]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-352]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L33:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 3
	jle	L34
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L34
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L34
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L34
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-356], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-360], eax
	mov	eax, DWORD PTR [ebp-360]
	cmp	eax, DWORD PTR [ebp-356]
	jle	L34
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-356]
	mov	eax, DWORD PTR [ebp-360]
	add	eax, edx
	mov	DWORD PTR [ebp-364], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-356]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-360]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-364]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L34:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L35
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L35
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L35
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L35
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-368], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-372], eax
	mov	eax, DWORD PTR [ebp-372]
	cmp	eax, DWORD PTR [ebp-368]
	jle	L35
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-368]
	mov	eax, DWORD PTR [ebp-372]
	add	eax, edx
	mov	DWORD PTR [ebp-376], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-368]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-372]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-376]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L35:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L36
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L36
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L36
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L36
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-380], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-384], eax
	mov	eax, DWORD PTR [ebp-384]
	cmp	eax, DWORD PTR [ebp-380]
	jle	L36
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-380]
	mov	eax, DWORD PTR [ebp-384]
	add	eax, edx
	mov	DWORD PTR [ebp-388], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-380]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-384]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-388]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L36:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L37
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L37
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L37
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L37
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-392], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-396], eax
	mov	eax, DWORD PTR [ebp-396]
	cmp	eax, DWORD PTR [ebp-392]
	jle	L37
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-392]
	mov	eax, DWORD PTR [ebp-396]
	add	eax, edx
	mov	DWORD PTR [ebp-400], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-392]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-396]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-400]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L37:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L38
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L38
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L38
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L38
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-404], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-408], eax
	mov	eax, DWORD PTR [ebp-408]
	cmp	eax, DWORD PTR [ebp-404]
	jle	L38
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-404]
	mov	eax, DWORD PTR [ebp-408]
	add	eax, edx
	mov	DWORD PTR [ebp-412], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-404]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-408]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-412]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L38:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L39
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L39
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L39
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L39
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-416], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-420], eax
	mov	eax, DWORD PTR [ebp-420]
	cmp	eax, DWORD PTR [ebp-416]
	jle	L39
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-416]
	mov	eax, DWORD PTR [ebp-420]
	add	eax, edx
	mov	DWORD PTR [ebp-424], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-416]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-420]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-424]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L39:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L40
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L40
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L40
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L40
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-428], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-432], eax
	mov	eax, DWORD PTR [ebp-432]
	cmp	eax, DWORD PTR [ebp-428]
	jle	L40
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-428]
	mov	eax, DWORD PTR [ebp-432]
	add	eax, edx
	mov	DWORD PTR [ebp-436], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-428]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-432]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-436]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L40:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L41
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L41
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L41
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L41
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-440], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-444], eax
	mov	eax, DWORD PTR [ebp-444]
	cmp	eax, DWORD PTR [ebp-440]
	jle	L41
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-440]
	mov	eax, DWORD PTR [ebp-444]
	add	eax, edx
	mov	DWORD PTR [ebp-448], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-440]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-444]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-448]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L41:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L42
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L42
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L42
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L42
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-452], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-456], eax
	mov	eax, DWORD PTR [ebp-456]
	cmp	eax, DWORD PTR [ebp-452]
	jle	L42
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-452]
	mov	eax, DWORD PTR [ebp-456]
	add	eax, edx
	mov	DWORD PTR [ebp-460], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-452]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-456]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-460]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L42:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L43
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L43
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L43
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L43
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-464], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-468], eax
	mov	eax, DWORD PTR [ebp-468]
	cmp	eax, DWORD PTR [ebp-464]
	jle	L43
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-464]
	mov	eax, DWORD PTR [ebp-468]
	add	eax, edx
	mov	DWORD PTR [ebp-472], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-464]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-468]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-472]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L43:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L44
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L44
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L44
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L44
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-476], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-480], eax
	mov	eax, DWORD PTR [ebp-480]
	cmp	eax, DWORD PTR [ebp-476]
	jle	L44
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-476]
	mov	eax, DWORD PTR [ebp-480]
	add	eax, edx
	mov	DWORD PTR [ebp-484], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-476]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-480]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-484]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L44:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L45
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L45
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L45
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L45
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-488], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-492], eax
	mov	eax, DWORD PTR [ebp-492]
	cmp	eax, DWORD PTR [ebp-488]
	jle	L45
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-488]
	mov	eax, DWORD PTR [ebp-492]
	add	eax, edx
	mov	DWORD PTR [ebp-496], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-488]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-492]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-496]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L45:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L46
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L46
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L46
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L46
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-500], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-504], eax
	mov	eax, DWORD PTR [ebp-504]
	cmp	eax, DWORD PTR [ebp-500]
	jle	L46
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-500]
	mov	eax, DWORD PTR [ebp-504]
	add	eax, edx
	mov	DWORD PTR [ebp-508], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-500]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-504]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-508]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L46:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L47
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L47
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L47
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L47
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-512], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-516], eax
	mov	eax, DWORD PTR [ebp-516]
	cmp	eax, DWORD PTR [ebp-512]
	jle	L47
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-512]
	mov	eax, DWORD PTR [ebp-516]
	add	eax, edx
	mov	DWORD PTR [ebp-520], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-512]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-516]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-520]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L47:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L48
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L48
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L48
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L48
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-524], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-528], eax
	mov	eax, DWORD PTR [ebp-528]
	cmp	eax, DWORD PTR [ebp-524]
	jle	L48
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-524]
	mov	eax, DWORD PTR [ebp-528]
	add	eax, edx
	mov	DWORD PTR [ebp-532], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-524]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-528]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-532]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L48:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L49
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L49
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L49
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L49
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-536], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-540], eax
	mov	eax, DWORD PTR [ebp-540]
	cmp	eax, DWORD PTR [ebp-536]
	jle	L49
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-536]
	mov	eax, DWORD PTR [ebp-540]
	add	eax, edx
	mov	DWORD PTR [ebp-544], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-536]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-540]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-544]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L49:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L50
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L50
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L50
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L50
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-548], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-552], eax
	mov	eax, DWORD PTR [ebp-552]
	cmp	eax, DWORD PTR [ebp-548]
	jle	L50
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-548]
	mov	eax, DWORD PTR [ebp-552]
	add	eax, edx
	mov	DWORD PTR [ebp-556], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-548]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-552]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-556]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L50:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L51
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L51
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L51
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L51
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-560], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-564], eax
	mov	eax, DWORD PTR [ebp-564]
	cmp	eax, DWORD PTR [ebp-560]
	jle	L51
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-560]
	mov	eax, DWORD PTR [ebp-564]
	add	eax, edx
	mov	DWORD PTR [ebp-568], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-560]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-564]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-568]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L51:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L52
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L52
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L52
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L52
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-572], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-576], eax
	mov	eax, DWORD PTR [ebp-576]
	cmp	eax, DWORD PTR [ebp-572]
	jle	L52
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-572]
	mov	eax, DWORD PTR [ebp-576]
	add	eax, edx
	mov	DWORD PTR [ebp-580], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-572]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-576]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-580]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L52:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L53
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L53
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L53
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L53
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-584], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-588], eax
	mov	eax, DWORD PTR [ebp-588]
	cmp	eax, DWORD PTR [ebp-584]
	jle	L53
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-584]
	mov	eax, DWORD PTR [ebp-588]
	add	eax, edx
	mov	DWORD PTR [ebp-592], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-584]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-588]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-592]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L53:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L54
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L54
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L54
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L54
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-596], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-600], eax
	mov	eax, DWORD PTR [ebp-600]
	cmp	eax, DWORD PTR [ebp-596]
	jle	L54
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-596]
	mov	eax, DWORD PTR [ebp-600]
	add	eax, edx
	mov	DWORD PTR [ebp-604], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-596]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-600]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-604]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L54:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L55
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L55
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L55
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L55
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-608], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-612], eax
	mov	eax, DWORD PTR [ebp-612]
	cmp	eax, DWORD PTR [ebp-608]
	jle	L55
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-608]
	mov	eax, DWORD PTR [ebp-612]
	add	eax, edx
	mov	DWORD PTR [ebp-616], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-608]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-612]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-616]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L55:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L56
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L56
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L56
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L56
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-620], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-624], eax
	mov	eax, DWORD PTR [ebp-624]
	cmp	eax, DWORD PTR [ebp-620]
	jle	L56
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-620]
	mov	eax, DWORD PTR [ebp-624]
	add	eax, edx
	mov	DWORD PTR [ebp-628], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-620]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-624]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-628]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L56:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L57
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L57
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L57
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L57
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-632], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-636], eax
	mov	eax, DWORD PTR [ebp-636]
	cmp	eax, DWORD PTR [ebp-632]
	jle	L57
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-632]
	mov	eax, DWORD PTR [ebp-636]
	add	eax, edx
	mov	DWORD PTR [ebp-640], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-632]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-636]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-640]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L57:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L58
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L58
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L58
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L58
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-644], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-648], eax
	mov	eax, DWORD PTR [ebp-648]
	cmp	eax, DWORD PTR [ebp-644]
	jle	L58
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-644]
	mov	eax, DWORD PTR [ebp-648]
	add	eax, edx
	mov	DWORD PTR [ebp-652], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-644]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-648]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-652]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L58:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L59
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L59
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L59
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L59
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-656], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-660], eax
	mov	eax, DWORD PTR [ebp-660]
	cmp	eax, DWORD PTR [ebp-656]
	jle	L59
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-656]
	mov	eax, DWORD PTR [ebp-660]
	add	eax, edx
	mov	DWORD PTR [ebp-664], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-656]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-660]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-664]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L59:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L60
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L60
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L60
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L60
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-668], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-672], eax
	mov	eax, DWORD PTR [ebp-672]
	cmp	eax, DWORD PTR [ebp-668]
	jle	L60
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-668]
	mov	eax, DWORD PTR [ebp-672]
	add	eax, edx
	mov	DWORD PTR [ebp-676], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-668]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-672]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-676]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L60:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L61
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L61
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L61
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L61
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-680], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-684], eax
	mov	eax, DWORD PTR [ebp-684]
	cmp	eax, DWORD PTR [ebp-680]
	jle	L61
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-680]
	mov	eax, DWORD PTR [ebp-684]
	add	eax, edx
	mov	DWORD PTR [ebp-688], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-680]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-684]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-688]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L61:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L62
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L62
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L62
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L62
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-692], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-696], eax
	mov	eax, DWORD PTR [ebp-696]
	cmp	eax, DWORD PTR [ebp-692]
	jle	L62
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-692]
	mov	eax, DWORD PTR [ebp-696]
	add	eax, edx
	mov	DWORD PTR [ebp-700], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-692]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-696]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-700]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L62:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L63
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L63
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L63
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L63
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-704], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-708], eax
	mov	eax, DWORD PTR [ebp-708]
	cmp	eax, DWORD PTR [ebp-704]
	jle	L63
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-704]
	mov	eax, DWORD PTR [ebp-708]
	add	eax, edx
	mov	DWORD PTR [ebp-712], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-704]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-708]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-712]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L63:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L64
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L64
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L64
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L64
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-716], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-720], eax
	mov	eax, DWORD PTR [ebp-720]
	cmp	eax, DWORD PTR [ebp-716]
	jle	L64
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-716]
	mov	eax, DWORD PTR [ebp-720]
	add	eax, edx
	mov	DWORD PTR [ebp-724], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-716]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-720]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-724]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L64:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L65
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L65
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L65
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L65
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-728], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-732], eax
	mov	eax, DWORD PTR [ebp-732]
	cmp	eax, DWORD PTR [ebp-728]
	jle	L65
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-728]
	mov	eax, DWORD PTR [ebp-732]
	add	eax, edx
	mov	DWORD PTR [ebp-736], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-728]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-732]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-736]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L65:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L66
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L66
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L66
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L66
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-740], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-744], eax
	mov	eax, DWORD PTR [ebp-744]
	cmp	eax, DWORD PTR [ebp-740]
	jle	L66
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-740]
	mov	eax, DWORD PTR [ebp-744]
	add	eax, edx
	mov	DWORD PTR [ebp-748], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-740]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-744]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-748]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L66:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L67
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L67
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L67
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L67
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-752], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-756], eax
	mov	eax, DWORD PTR [ebp-756]
	cmp	eax, DWORD PTR [ebp-752]
	jle	L67
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-752]
	mov	eax, DWORD PTR [ebp-756]
	add	eax, edx
	mov	DWORD PTR [ebp-760], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-752]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-756]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-760]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L67:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L68
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L68
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L68
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L68
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-764], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-768], eax
	mov	eax, DWORD PTR [ebp-768]
	cmp	eax, DWORD PTR [ebp-764]
	jle	L68
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-764]
	mov	eax, DWORD PTR [ebp-768]
	add	eax, edx
	mov	DWORD PTR [ebp-772], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-764]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-768]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-772]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L68:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L69
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L69
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L69
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L69
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-776], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-780], eax
	mov	eax, DWORD PTR [ebp-780]
	cmp	eax, DWORD PTR [ebp-776]
	jle	L69
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-776]
	mov	eax, DWORD PTR [ebp-780]
	add	eax, edx
	mov	DWORD PTR [ebp-784], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-776]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-780]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-784]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L69:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L70
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L70
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L70
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L70
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-788], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-792], eax
	mov	eax, DWORD PTR [ebp-792]
	cmp	eax, DWORD PTR [ebp-788]
	jle	L70
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-788]
	mov	eax, DWORD PTR [ebp-792]
	add	eax, edx
	mov	DWORD PTR [ebp-796], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-788]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-792]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-796]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L70:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L71
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L71
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L71
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L71
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-800], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-804], eax
	mov	eax, DWORD PTR [ebp-804]
	cmp	eax, DWORD PTR [ebp-800]
	jle	L71
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-800]
	mov	eax, DWORD PTR [ebp-804]
	add	eax, edx
	mov	DWORD PTR [ebp-808], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-800]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-804]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-808]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L71:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L72
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L72
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L72
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L72
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-812], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-816], eax
	mov	eax, DWORD PTR [ebp-816]
	cmp	eax, DWORD PTR [ebp-812]
	jle	L72
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-812]
	mov	eax, DWORD PTR [ebp-816]
	add	eax, edx
	mov	DWORD PTR [ebp-820], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-812]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-816]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-820]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L72:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L73
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L73
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L73
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L73
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-824], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-828], eax
	mov	eax, DWORD PTR [ebp-828]
	cmp	eax, DWORD PTR [ebp-824]
	jle	L73
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-824]
	mov	eax, DWORD PTR [ebp-828]
	add	eax, edx
	mov	DWORD PTR [ebp-832], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-824]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-828]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-832]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L73:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L74
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L74
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L74
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L74
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-836], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-840], eax
	mov	eax, DWORD PTR [ebp-840]
	cmp	eax, DWORD PTR [ebp-836]
	jle	L74
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-836]
	mov	eax, DWORD PTR [ebp-840]
	add	eax, edx
	mov	DWORD PTR [ebp-844], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-836]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-840]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-844]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L74:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L75
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L75
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L75
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L75
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-848], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-852], eax
	mov	eax, DWORD PTR [ebp-852]
	cmp	eax, DWORD PTR [ebp-848]
	jle	L75
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-848]
	mov	eax, DWORD PTR [ebp-852]
	add	eax, edx
	mov	DWORD PTR [ebp-856], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-848]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-852]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-856]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L75:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L76
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L76
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L76
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L76
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-860], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-864], eax
	mov	eax, DWORD PTR [ebp-864]
	cmp	eax, DWORD PTR [ebp-860]
	jle	L76
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-860]
	mov	eax, DWORD PTR [ebp-864]
	add	eax, edx
	mov	DWORD PTR [ebp-868], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-860]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-864]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-868]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L76:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L77
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L77
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L77
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L77
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-872], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-876], eax
	mov	eax, DWORD PTR [ebp-876]
	cmp	eax, DWORD PTR [ebp-872]
	jle	L77
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-872]
	mov	eax, DWORD PTR [ebp-876]
	add	eax, edx
	mov	DWORD PTR [ebp-880], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-872]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-876]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-880]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L77:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L78
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L78
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L78
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L78
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-884], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-888], eax
	mov	eax, DWORD PTR [ebp-888]
	cmp	eax, DWORD PTR [ebp-884]
	jle	L78
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-884]
	mov	eax, DWORD PTR [ebp-888]
	add	eax, edx
	mov	DWORD PTR [ebp-892], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-884]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-888]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-892]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L78:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L79
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L79
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L79
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L79
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-896], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-900], eax
	mov	eax, DWORD PTR [ebp-900]
	cmp	eax, DWORD PTR [ebp-896]
	jle	L79
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-896]
	mov	eax, DWORD PTR [ebp-900]
	add	eax, edx
	mov	DWORD PTR [ebp-904], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-896]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-900]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-904]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L79:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L80
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L80
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L80
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L80
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-908], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-912], eax
	mov	eax, DWORD PTR [ebp-912]
	cmp	eax, DWORD PTR [ebp-908]
	jle	L80
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-908]
	mov	eax, DWORD PTR [ebp-912]
	add	eax, edx
	mov	DWORD PTR [ebp-916], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-908]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-912]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-916]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L80:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L81
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L81
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L81
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L81
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-920], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-924], eax
	mov	eax, DWORD PTR [ebp-924]
	cmp	eax, DWORD PTR [ebp-920]
	jle	L81
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-920]
	mov	eax, DWORD PTR [ebp-924]
	add	eax, edx
	mov	DWORD PTR [ebp-928], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-920]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-924]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-928]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L81:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L82
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L82
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L82
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L82
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-932], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-936], eax
	mov	eax, DWORD PTR [ebp-936]
	cmp	eax, DWORD PTR [ebp-932]
	jle	L82
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-932]
	mov	eax, DWORD PTR [ebp-936]
	add	eax, edx
	mov	DWORD PTR [ebp-940], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-932]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-936]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-940]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L82:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L83
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L83
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L83
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L83
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-944], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-948], eax
	mov	eax, DWORD PTR [ebp-948]
	cmp	eax, DWORD PTR [ebp-944]
	jle	L83
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-944]
	mov	eax, DWORD PTR [ebp-948]
	add	eax, edx
	mov	DWORD PTR [ebp-952], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-944]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-948]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-952]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L83:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L84
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L84
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L84
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L84
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-956], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-960], eax
	mov	eax, DWORD PTR [ebp-960]
	cmp	eax, DWORD PTR [ebp-956]
	jle	L84
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-956]
	mov	eax, DWORD PTR [ebp-960]
	add	eax, edx
	mov	DWORD PTR [ebp-964], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-956]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-960]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-964]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L84:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L85
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L85
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L85
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L85
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-968], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-972], eax
	mov	eax, DWORD PTR [ebp-972]
	cmp	eax, DWORD PTR [ebp-968]
	jle	L85
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-968]
	mov	eax, DWORD PTR [ebp-972]
	add	eax, edx
	mov	DWORD PTR [ebp-976], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-968]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-972]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-976]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L85:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L86
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L86
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L86
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L86
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-980], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-984], eax
	mov	eax, DWORD PTR [ebp-984]
	cmp	eax, DWORD PTR [ebp-980]
	jle	L86
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-980]
	mov	eax, DWORD PTR [ebp-984]
	add	eax, edx
	mov	DWORD PTR [ebp-988], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-980]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-984]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-988]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L86:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L87
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L87
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L87
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L87
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-992], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-996], eax
	mov	eax, DWORD PTR [ebp-996]
	cmp	eax, DWORD PTR [ebp-992]
	jle	L87
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-992]
	mov	eax, DWORD PTR [ebp-996]
	add	eax, edx
	mov	DWORD PTR [ebp-1000], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-992]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-996]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1000]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L87:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L88
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L88
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L88
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L88
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1004], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1008], eax
	mov	eax, DWORD PTR [ebp-1008]
	cmp	eax, DWORD PTR [ebp-1004]
	jle	L88
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1004]
	mov	eax, DWORD PTR [ebp-1008]
	add	eax, edx
	mov	DWORD PTR [ebp-1012], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1004]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1008]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1012]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L88:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L89
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L89
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L89
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L89
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1016], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1020], eax
	mov	eax, DWORD PTR [ebp-1020]
	cmp	eax, DWORD PTR [ebp-1016]
	jle	L89
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1016]
	mov	eax, DWORD PTR [ebp-1020]
	add	eax, edx
	mov	DWORD PTR [ebp-1024], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1016]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1020]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1024]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L89:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L90
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L90
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L90
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L90
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1028], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1032], eax
	mov	eax, DWORD PTR [ebp-1032]
	cmp	eax, DWORD PTR [ebp-1028]
	jle	L90
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1028]
	mov	eax, DWORD PTR [ebp-1032]
	add	eax, edx
	mov	DWORD PTR [ebp-1036], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1028]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1032]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1036]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L90:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L91
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L91
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L91
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L91
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1040], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1044], eax
	mov	eax, DWORD PTR [ebp-1044]
	cmp	eax, DWORD PTR [ebp-1040]
	jle	L91
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1040]
	mov	eax, DWORD PTR [ebp-1044]
	add	eax, edx
	mov	DWORD PTR [ebp-1048], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1040]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1044]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1048]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L91:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L92
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L92
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L92
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L92
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1052], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1056], eax
	mov	eax, DWORD PTR [ebp-1056]
	cmp	eax, DWORD PTR [ebp-1052]
	jle	L92
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1052]
	mov	eax, DWORD PTR [ebp-1056]
	add	eax, edx
	mov	DWORD PTR [ebp-1060], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1052]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1056]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1060]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L92:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L93
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L93
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L93
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L93
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1064], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1068], eax
	mov	eax, DWORD PTR [ebp-1068]
	cmp	eax, DWORD PTR [ebp-1064]
	jle	L93
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1064]
	mov	eax, DWORD PTR [ebp-1068]
	add	eax, edx
	mov	DWORD PTR [ebp-1072], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1064]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1068]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1072]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L93:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L94
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L94
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L94
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L94
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1076], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1080], eax
	mov	eax, DWORD PTR [ebp-1080]
	cmp	eax, DWORD PTR [ebp-1076]
	jle	L94
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1076]
	mov	eax, DWORD PTR [ebp-1080]
	add	eax, edx
	mov	DWORD PTR [ebp-1084], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1076]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1080]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1084]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L94:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L95
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L95
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L95
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L95
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1088], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1092], eax
	mov	eax, DWORD PTR [ebp-1092]
	cmp	eax, DWORD PTR [ebp-1088]
	jle	L95
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1088]
	mov	eax, DWORD PTR [ebp-1092]
	add	eax, edx
	mov	DWORD PTR [ebp-1096], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1088]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1092]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1096]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L95:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L96
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L96
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L96
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L96
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1100], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1104], eax
	mov	eax, DWORD PTR [ebp-1104]
	cmp	eax, DWORD PTR [ebp-1100]
	jle	L96
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1100]
	mov	eax, DWORD PTR [ebp-1104]
	add	eax, edx
	mov	DWORD PTR [ebp-1108], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1100]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1104]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1108]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L96:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L97
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L97
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L97
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L97
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1112], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1116], eax
	mov	eax, DWORD PTR [ebp-1116]
	cmp	eax, DWORD PTR [ebp-1112]
	jle	L97
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1112]
	mov	eax, DWORD PTR [ebp-1116]
	add	eax, edx
	mov	DWORD PTR [ebp-1120], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1112]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1116]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1120]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L97:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L98
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L98
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L98
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L98
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1124], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1128], eax
	mov	eax, DWORD PTR [ebp-1128]
	cmp	eax, DWORD PTR [ebp-1124]
	jle	L98
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1124]
	mov	eax, DWORD PTR [ebp-1128]
	add	eax, edx
	mov	DWORD PTR [ebp-1132], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1124]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1128]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1132]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L98:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L99
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L99
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L99
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L99
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1136], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1140], eax
	mov	eax, DWORD PTR [ebp-1140]
	cmp	eax, DWORD PTR [ebp-1136]
	jle	L99
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1136]
	mov	eax, DWORD PTR [ebp-1140]
	add	eax, edx
	mov	DWORD PTR [ebp-1144], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1136]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1140]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1144]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L99:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L100
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L100
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+16
	cmp	edx, eax
	jne	L100
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L100
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1148], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1152], eax
	mov	eax, DWORD PTR [ebp-1152]
	cmp	eax, DWORD PTR [ebp-1148]
	jle	L100
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1148]
	mov	eax, DWORD PTR [ebp-1152]
	add	eax, edx
	mov	DWORD PTR [ebp-1156], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1148]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1152]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1156]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L100:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L101
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L101
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L101
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L101
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1160], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1164], eax
	mov	eax, DWORD PTR [ebp-1164]
	cmp	eax, DWORD PTR [ebp-1160]
	jle	L101
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1160]
	mov	eax, DWORD PTR [ebp-1164]
	add	eax, edx
	mov	DWORD PTR [ebp-1168], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1160]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1164]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1168]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L101:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L102
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L102
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L102
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L102
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1172], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1176], eax
	mov	eax, DWORD PTR [ebp-1176]
	cmp	eax, DWORD PTR [ebp-1172]
	jle	L102
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1172]
	mov	eax, DWORD PTR [ebp-1176]
	add	eax, edx
	mov	DWORD PTR [ebp-1180], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1172]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1176]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1180]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L102:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L103
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L103
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L103
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L103
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1184], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1188], eax
	mov	eax, DWORD PTR [ebp-1188]
	cmp	eax, DWORD PTR [ebp-1184]
	jle	L103
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1184]
	mov	eax, DWORD PTR [ebp-1188]
	add	eax, edx
	mov	DWORD PTR [ebp-1192], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1184]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1188]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1192]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L103:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L104
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L104
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L104
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L104
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1196], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1200], eax
	mov	eax, DWORD PTR [ebp-1200]
	cmp	eax, DWORD PTR [ebp-1196]
	jle	L104
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1196]
	mov	eax, DWORD PTR [ebp-1200]
	add	eax, edx
	mov	DWORD PTR [ebp-1204], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1196]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1200]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1204]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L104:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L105
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L105
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L105
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L105
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1208], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1212], eax
	mov	eax, DWORD PTR [ebp-1212]
	cmp	eax, DWORD PTR [ebp-1208]
	jle	L105
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1208]
	mov	eax, DWORD PTR [ebp-1212]
	add	eax, edx
	mov	DWORD PTR [ebp-1216], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1208]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1212]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1216]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L105:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L106
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L106
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L106
	mov	edx, DWORD PTR _P2_marking_member_0+16
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L106
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1220], eax
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1224], eax
	mov	eax, DWORD PTR [ebp-1224]
	cmp	eax, DWORD PTR [ebp-1220]
	jle	L106
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1220]
	mov	eax, DWORD PTR [ebp-1224]
	add	eax, edx
	mov	DWORD PTR [ebp-1228], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1220]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1224]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1228]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L106:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L107
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L107
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L107
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L107
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1232], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1236], eax
	mov	eax, DWORD PTR [ebp-1236]
	cmp	eax, DWORD PTR [ebp-1232]
	jle	L107
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1232]
	mov	eax, DWORD PTR [ebp-1236]
	add	eax, edx
	mov	DWORD PTR [ebp-1240], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1232]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1236]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1240]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L107:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L108
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L108
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L108
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L108
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1244], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1248], eax
	mov	eax, DWORD PTR [ebp-1248]
	cmp	eax, DWORD PTR [ebp-1244]
	jle	L108
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1244]
	mov	eax, DWORD PTR [ebp-1248]
	add	eax, edx
	mov	DWORD PTR [ebp-1252], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1244]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1248]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1252]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L108:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L109
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L109
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L109
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L109
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1256], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1260], eax
	mov	eax, DWORD PTR [ebp-1260]
	cmp	eax, DWORD PTR [ebp-1256]
	jle	L109
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1256]
	mov	eax, DWORD PTR [ebp-1260]
	add	eax, edx
	mov	DWORD PTR [ebp-1264], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1256]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1260]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1264]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L109:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L110
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L110
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L110
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L110
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1268], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1272], eax
	mov	eax, DWORD PTR [ebp-1272]
	cmp	eax, DWORD PTR [ebp-1268]
	jle	L110
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1268]
	mov	eax, DWORD PTR [ebp-1272]
	add	eax, edx
	mov	DWORD PTR [ebp-1276], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1268]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1272]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1276]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L110:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L111
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L111
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L111
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L111
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1280], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1284], eax
	mov	eax, DWORD PTR [ebp-1284]
	cmp	eax, DWORD PTR [ebp-1280]
	jle	L111
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1280]
	mov	eax, DWORD PTR [ebp-1284]
	add	eax, edx
	mov	DWORD PTR [ebp-1288], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1280]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1284]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1288]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L111:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L112
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L112
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L112
	mov	edx, DWORD PTR _P2_marking_member_0
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L112
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1292], eax
	mov	eax, DWORD PTR _P2_marking_member_0
	mov	DWORD PTR [ebp-1296], eax
	mov	eax, DWORD PTR [ebp-1296]
	cmp	eax, DWORD PTR [ebp-1292]
	jle	L112
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1292]
	mov	eax, DWORD PTR [ebp-1296]
	add	eax, edx
	mov	DWORD PTR [ebp-1300], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1292]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1296]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1300]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L112:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L113
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L113
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L113
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L113
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1304], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1308], eax
	mov	eax, DWORD PTR [ebp-1308]
	cmp	eax, DWORD PTR [ebp-1304]
	jle	L113
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1304]
	mov	eax, DWORD PTR [ebp-1308]
	add	eax, edx
	mov	DWORD PTR [ebp-1312], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1304]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1308]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1312]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L113:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L114
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L114
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L114
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L114
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1316], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1320], eax
	mov	eax, DWORD PTR [ebp-1320]
	cmp	eax, DWORD PTR [ebp-1316]
	jle	L114
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1316]
	mov	eax, DWORD PTR [ebp-1320]
	add	eax, edx
	mov	DWORD PTR [ebp-1324], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1316]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1320]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1324]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L114:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L115
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L115
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L115
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L115
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1328], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1332], eax
	mov	eax, DWORD PTR [ebp-1332]
	cmp	eax, DWORD PTR [ebp-1328]
	jle	L115
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1328]
	mov	eax, DWORD PTR [ebp-1332]
	add	eax, edx
	mov	DWORD PTR [ebp-1336], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1328]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1332]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1336]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L115:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L116
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L116
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L116
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L116
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1340], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1344], eax
	mov	eax, DWORD PTR [ebp-1344]
	cmp	eax, DWORD PTR [ebp-1340]
	jle	L116
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1340]
	mov	eax, DWORD PTR [ebp-1344]
	add	eax, edx
	mov	DWORD PTR [ebp-1348], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1340]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1344]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1348]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L116:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L117
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L117
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L117
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L117
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1352], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1356], eax
	mov	eax, DWORD PTR [ebp-1356]
	cmp	eax, DWORD PTR [ebp-1352]
	jle	L117
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1352]
	mov	eax, DWORD PTR [ebp-1356]
	add	eax, edx
	mov	DWORD PTR [ebp-1360], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1352]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1356]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1360]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L117:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L118
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L118
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L118
	mov	edx, DWORD PTR _P2_marking_member_0+4
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L118
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1364], eax
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR [ebp-1368], eax
	mov	eax, DWORD PTR [ebp-1368]
	cmp	eax, DWORD PTR [ebp-1364]
	jle	L118
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1364]
	mov	eax, DWORD PTR [ebp-1368]
	add	eax, edx
	mov	DWORD PTR [ebp-1372], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1364]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1368]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1372]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L118:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L119
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L119
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L119
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L119
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1376], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1380], eax
	mov	eax, DWORD PTR [ebp-1380]
	cmp	eax, DWORD PTR [ebp-1376]
	jle	L119
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1376]
	mov	eax, DWORD PTR [ebp-1380]
	add	eax, edx
	mov	DWORD PTR [ebp-1384], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1376]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1380]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1384]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L119:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L120
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L120
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L120
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L120
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1388], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1392], eax
	mov	eax, DWORD PTR [ebp-1392]
	cmp	eax, DWORD PTR [ebp-1388]
	jle	L120
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1388]
	mov	eax, DWORD PTR [ebp-1392]
	add	eax, edx
	mov	DWORD PTR [ebp-1396], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1388]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1392]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1396]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L120:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L121
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L121
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L121
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L121
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1400], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1404], eax
	mov	eax, DWORD PTR [ebp-1404]
	cmp	eax, DWORD PTR [ebp-1400]
	jle	L121
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1400]
	mov	eax, DWORD PTR [ebp-1404]
	add	eax, edx
	mov	DWORD PTR [ebp-1408], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1400]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1404]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1408]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L121:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L122
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L122
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L122
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L122
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1412], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1416], eax
	mov	eax, DWORD PTR [ebp-1416]
	cmp	eax, DWORD PTR [ebp-1412]
	jle	L122
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1412]
	mov	eax, DWORD PTR [ebp-1416]
	add	eax, edx
	mov	DWORD PTR [ebp-1420], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1412]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1416]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1420]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L122:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L123
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L123
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L123
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L123
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1424], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1428], eax
	mov	eax, DWORD PTR [ebp-1428]
	cmp	eax, DWORD PTR [ebp-1424]
	jle	L123
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1424]
	mov	eax, DWORD PTR [ebp-1428]
	add	eax, edx
	mov	DWORD PTR [ebp-1432], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1424]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1428]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1432]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L123:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L124
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L124
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+12
	cmp	edx, eax
	jne	L124
	mov	edx, DWORD PTR _P2_marking_member_0+8
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L124
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1436], eax
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR [ebp-1440], eax
	mov	eax, DWORD PTR [ebp-1440]
	cmp	eax, DWORD PTR [ebp-1436]
	jle	L124
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1436]
	mov	eax, DWORD PTR [ebp-1440]
	add	eax, edx
	mov	DWORD PTR [ebp-1444], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1436]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1440]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1444]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L124:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L125
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L125
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L125
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L125
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1448], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1452], eax
	mov	eax, DWORD PTR [ebp-1452]
	cmp	eax, DWORD PTR [ebp-1448]
	jle	L125
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1448]
	mov	eax, DWORD PTR [ebp-1452]
	add	eax, edx
	mov	DWORD PTR [ebp-1456], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1448]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1452]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1456]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L125:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L126
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L126
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L126
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L126
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1460], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1464], eax
	mov	eax, DWORD PTR [ebp-1464]
	cmp	eax, DWORD PTR [ebp-1460]
	jle	L126
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1460]
	mov	eax, DWORD PTR [ebp-1464]
	add	eax, edx
	mov	DWORD PTR [ebp-1468], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1460]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1464]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1468]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L126:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L127
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L127
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L127
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L127
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1472], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1476], eax
	mov	eax, DWORD PTR [ebp-1476]
	cmp	eax, DWORD PTR [ebp-1472]
	jle	L127
	mov	eax, DWORD PTR _P2_marking_member_0+8
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1472]
	mov	eax, DWORD PTR [ebp-1476]
	add	eax, edx
	mov	DWORD PTR [ebp-1480], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1472]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1476]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1480]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L127:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L128
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L128
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L128
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L128
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1484], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1488], eax
	mov	eax, DWORD PTR [ebp-1488]
	cmp	eax, DWORD PTR [ebp-1484]
	jle	L128
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1484]
	mov	eax, DWORD PTR [ebp-1488]
	add	eax, edx
	mov	DWORD PTR [ebp-1492], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1484]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1488]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1492]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L128:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L129
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L129
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L129
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0
	cmp	edx, eax
	jne	L129
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1496], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1500], eax
	mov	eax, DWORD PTR [ebp-1500]
	cmp	eax, DWORD PTR [ebp-1496]
	jle	L129
	mov	eax, DWORD PTR _P2_marking_member_0+4
	mov	DWORD PTR _P2_marking_member_0, eax
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1496]
	mov	eax, DWORD PTR [ebp-1500]
	add	eax, edx
	mov	DWORD PTR [ebp-1504], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1496]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1500]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1504]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L129:
	mov	eax, DWORD PTR _P2_is_marked
	cmp	eax, 4
	jle	L4
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	cmp	eax, 6
	jg	L4
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+8
	cmp	edx, eax
	jne	L4
	mov	edx, DWORD PTR _P2_marking_member_0+12
	mov	eax, DWORD PTR _P2_marking_member_0+4
	cmp	edx, eax
	jne	L4
	mov	eax, DWORD PTR _P2_marking_member_0+16
	mov	DWORD PTR [ebp-1508], eax
	mov	eax, DWORD PTR _P2_marking_member_0+12
	mov	DWORD PTR [ebp-1512], eax
	mov	eax, DWORD PTR [ebp-1512]
	cmp	eax, DWORD PTR [ebp-1508]
	jle	L4
	mov	eax, DWORD PTR _P2_is_marked
	sub	eax, 4
	mov	DWORD PTR _P2_is_marked, eax
	mov	edx, DWORD PTR [ebp-1508]
	mov	eax, DWORD PTR [ebp-1512]
	add	eax, edx
	mov	DWORD PTR [ebp-1516], eax
	mov	eax, DWORD PTR _P3_is_marked
	mov	edx, DWORD PTR [ebp-1508]
	mov	DWORD PTR _P3_marking_member_0[0+eax*4], edx
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-1512]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp-1516]
	mov	DWORD PTR _P3_marking_member_0[0+edx*4], eax
	mov	eax, DWORD PTR _P3_is_marked
	add	eax, 3
	mov	DWORD PTR _P3_is_marked, eax
L4:
	cmp	DWORD PTR [ebp-4], 0
	jg	L130
	mov	DWORD PTR [ebp-4], 77
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.ident	"GCC: (GNU) 4.9.2"
