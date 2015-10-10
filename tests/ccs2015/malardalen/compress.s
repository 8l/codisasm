	.file	"compress.c"
	.intel_syntax noprefix
	.comm	_n_bits, 4, 2
	.globl	_maxbits
	.data
	.align 4
_maxbits:
	.long	16
	.comm	_maxcode, 4, 2
	.globl	_maxmaxcode
	.align 4
_maxmaxcode:
	.long	65536
	.globl	_hsize
	.align 4
_hsize:
	.long	257
	.comm	_fsize, 4, 2
	.globl	_free_ent
	.bss
	.align 4
_free_ent:
	.space 4
	.globl	_exit_stat
	.align 4
_exit_stat:
	.space 4
	.globl	_nomagic
	.data
	.align 4
_nomagic:
	.long	1
	.globl	_zcat_flg
	.bss
	.align 4
_zcat_flg:
	.space 4
	.globl	_quiet
	.data
	.align 4
_quiet:
	.long	1
	.globl	_block_compress
	.align 4
_block_compress:
	.long	128
	.globl	_clear_flg
	.bss
	.align 4
_clear_flg:
	.space 4
	.globl	_ratio
	.align 4
_ratio:
	.space 4
	.globl	_checkpoint
	.data
	.align 4
_checkpoint:
	.long	10000
	.globl	_force
	.bss
	.align 4
_force:
	.space 4
	.comm	_ofname, 100, 6
	.comm	_InCnt, 4, 2
	.comm	_apsim_InCnt, 4, 2
	.comm	_InBuff, 4, 2
	.comm	_OutBuff, 4, 2
	.comm	_orig_text_buffer, 50, 5
	.comm	_comp_text_buffer, 55, 5
	.comm	_htab, 1028, 6
	.comm	_codetab, 514, 6
	.comm	_buf, 16, 0
	.text
	.globl	_start
	.def	_start;	.scl	2;	.type	32;	.endef
_start:
LFB0:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	DWORD PTR [ebp-12], 50
	call	_initbuffer
	mov	DWORD PTR _maxbits, 16
	mov	eax, DWORD PTR _maxbits
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR _maxmaxcode, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR _InCnt, eax
	mov	DWORD PTR _apsim_InCnt, 53
	mov	DWORD PTR _InBuff, OFFSET FLAT:_orig_text_buffer
	mov	DWORD PTR _OutBuff, OFFSET FLAT:_comp_text_buffer
	call	_compress
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_initbuffer
	.def	_initbuffer;	.scl	2;	.type	32;	.endef
_initbuffer:
LFB1:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 1
	mov	DWORD PTR [ebp-8], 0
	jmp	L4
L5:
	mov	eax, DWORD PTR [ebp-8]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	imul	eax, eax, 133
	lea	ecx, [eax+81]
	mov	edx, 271652039
	mov	eax, ecx
	imul	edx
	sar	edx, 9
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	imul	eax, eax, 8095
	sub	ecx, eax
	mov	eax, ecx
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	cdq
	shr	edx, 24
	add	eax, edx
	movzx	eax, al
	sub	eax, edx
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-8]
	add	eax, OFFSET FLAT:_orig_text_buffer
	mov	BYTE PTR [eax], dl
	add	DWORD PTR [ebp-8], 1
L4:
	cmp	DWORD PTR [ebp-8], 49
	jle	L5
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
.lcomm _offset,4,4
	.globl	_in_count
	.data
	.align 4
_in_count:
	.long	1
	.comm	_bytes_out, 4, 2
	.globl	_out_count
	.bss
	.align 4
_out_count:
	.space 4
	.text
	.globl	_compress
	.def	_compress;	.scl	2;	.type	32;	.endef
_compress:
LFB2:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 60
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, 0
	mov	DWORD PTR _offset, 0
	mov	DWORD PTR _bytes_out, 3
	mov	DWORD PTR _out_count, 0
	mov	DWORD PTR _clear_flg, 0
	mov	DWORD PTR _ratio, 0
	mov	DWORD PTR _in_count, 1
	mov	DWORD PTR _checkpoint, 10000
	mov	DWORD PTR _n_bits, 9
	mov	eax, DWORD PTR _n_bits
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	sub	eax, 1
	mov	DWORD PTR _maxcode, eax
	mov	eax, DWORD PTR _block_compress
	test	eax, eax
	je	L7
	mov	eax, 257
	jmp	L8
L7:
	mov	eax, 256
L8:
	mov	DWORD PTR _free_ent, eax
	call	_getbyte
	mov	esi, eax
	mov	DWORD PTR [ebp-44], 0
	mov	edi, DWORD PTR _hsize
	jmp	L9
L10:
	add	DWORD PTR [ebp-44], 1
	add	edi, edi
L9:
	cmp	edi, 65535
	jle	L10
	mov	eax, 8
	sub	eax, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-44], eax
	mov	eax, DWORD PTR _hsize
	mov	DWORD PTR [ebp-48], eax
	mov	DWORD PTR [esp], eax
	call	_cl_hash
	jmp	L11
L19:
	mov	DWORD PTR [ebp-28], 0
	call	_getbyte
	mov	edx, eax
	mov	eax, DWORD PTR _in_count
	add	eax, 1
	mov	DWORD PTR _in_count, eax
	mov	eax, DWORD PTR _maxbits
	mov	edi, edx
	mov	ecx, eax
	sal	edi, cl
	mov	eax, edi
	lea	edi, [eax+esi]
	mov	eax, edx
	movzx	ecx, BYTE PTR [ebp-44]
	sal	eax, cl
	xor	eax, esi
	mov	ebx, eax
	mov	eax, DWORD PTR _htab[0+ebx*4]
	cmp	eax, edi
	jne	L12
	movzx	eax, WORD PTR _codetab[ebx+ebx]
	movzx	esi, ax
	jmp	L11
L12:
	mov	eax, DWORD PTR _htab[0+ebx*4]
	test	eax, eax
	jns	L13
	jmp	L14
L13:
	mov	esi, DWORD PTR [ebp-48]
	sub	esi, ebx
	test	ebx, ebx
	jne	L15
	mov	esi, 1
L15:
	sub	ebx, esi
	test	ebx, ebx
	jns	L16
	add	ebx, DWORD PTR [ebp-48]
L16:
	mov	eax, DWORD PTR _htab[0+ebx*4]
	cmp	eax, edi
	jne	L17
	movzx	eax, WORD PTR _codetab[ebx+ebx]
	movzx	esi, ax
	jmp	L11
L17:
	mov	eax, DWORD PTR _htab[0+ebx*4]
	test	eax, eax
	jle	L14
	add	DWORD PTR [ebp-28], 1
	mov	eax, DWORD PTR _in_count
	cmp	DWORD PTR [ebp-28], eax
	jge	L14
	jmp	L15
L14:
	mov	eax, DWORD PTR _out_count
	add	eax, 1
	mov	DWORD PTR _out_count, eax
	mov	esi, edx
	mov	edx, DWORD PTR _free_ent
	mov	eax, DWORD PTR _maxmaxcode
	cmp	edx, eax
	jge	L18
	mov	eax, DWORD PTR _free_ent
	lea	edx, [eax+1]
	mov	DWORD PTR _free_ent, edx
	mov	WORD PTR _codetab[ebx+ebx], ax
	mov	DWORD PTR _htab[0+ebx*4], edi
	jmp	L11
L18:
	mov	edx, DWORD PTR _in_count
	mov	eax, DWORD PTR _checkpoint
	cmp	edx, eax
	jl	L11
	mov	eax, DWORD PTR _block_compress
	test	eax, eax
	je	L11
	call	_cl_block
L11:
	mov	eax, DWORD PTR _InCnt
	test	eax, eax
	jg	L19
	mov	edx, DWORD PTR _bytes_out
	mov	eax, DWORD PTR _in_count
	cmp	edx, eax
	jle	L20
	mov	DWORD PTR _exit_stat, 2
L20:
	nop
	add	esp, 60
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_cl_block
	.def	_cl_block;	.scl	2;	.type	32;	.endef
_cl_block:
LFB3:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	eax, DWORD PTR _in_count
	add	eax, 10000
	mov	DWORD PTR _checkpoint, eax
	mov	eax, DWORD PTR _in_count
	cmp	eax, 8388607
	jle	L23
	mov	eax, DWORD PTR _bytes_out
	sar	eax, 8
	mov	ebx, eax
	test	ebx, ebx
	jne	L24
	mov	ebx, 2147483647
	jmp	L26
L24:
	mov	eax, DWORD PTR _in_count
	cdq
	idiv	ebx
	mov	ebx, eax
	jmp	L26
L23:
	mov	eax, DWORD PTR _in_count
	sal	eax, 8
	mov	ecx, DWORD PTR _bytes_out
	cdq
	idiv	ecx
	mov	ebx, eax
L26:
	mov	eax, DWORD PTR _ratio
	cmp	ebx, eax
	jle	L27
	mov	DWORD PTR _ratio, ebx
	jmp	L22
L27:
	mov	DWORD PTR _ratio, 0
	mov	eax, DWORD PTR _hsize
	mov	DWORD PTR [esp], eax
	call	_cl_hash
	mov	DWORD PTR _free_ent, 257
	mov	DWORD PTR _clear_flg, 1
	mov	DWORD PTR [esp], 256
	call	_output
L22:
	add	esp, 20
	pop	ebx
	.cfi_restore 3
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_cl_hash
	.def	_cl_hash;	.scl	2;	.type	32;	.endef
_cl_hash:
LFB4:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	sal	eax, 2
	lea	ebx, _htab[eax]
	mov	esi, -1
	mov	eax, DWORD PTR [ebp+8]
	lea	edi, [eax-16]
L30:
	lea	eax, [ebx-64]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-60]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-56]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-52]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-48]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-44]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-40]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-36]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-32]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-28]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-24]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-20]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-16]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-12]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-8]
	mov	DWORD PTR [eax], esi
	lea	eax, [ebx-4]
	mov	DWORD PTR [eax], esi
	sub	ebx, 64
	sub	edi, 16
	test	edi, edi
	jns	L30
	add	edi, 16
	jmp	L31
L32:
	sub	ebx, 4
	mov	DWORD PTR [ebx], esi
	sub	edi, 1
L31:
	test	edi, edi
	jg	L32
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_getbyte
	.def	_getbyte;	.scl	2;	.type	32;	.endef
_getbyte:
LFB5:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR _InCnt
	test	eax, eax
	jle	L34
	mov	eax, DWORD PTR _apsim_InCnt
	lea	edx, [eax-1]
	mov	DWORD PTR _apsim_InCnt, edx
	test	eax, eax
	jle	L34
	mov	eax, DWORD PTR _InCnt
	sub	eax, 1
	mov	DWORD PTR _InCnt, eax
	mov	eax, DWORD PTR _InBuff
	lea	edx, [eax+1]
	mov	DWORD PTR _InBuff, edx
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	jmp	L35
L34:
	mov	eax, -1
L35:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_putbyte
	.def	_putbyte;	.scl	2;	.type	32;	.endef
_putbyte:
LFB6:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [ebp-4], al
	mov	eax, DWORD PTR _OutBuff
	lea	edx, [eax+1]
	mov	DWORD PTR _OutBuff, edx
	movzx	edx, BYTE PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_writebytes
	.def	_writebytes;	.scl	2;	.type	32;	.endef
_writebytes:
LFB7:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	L38
L40:
	mov	eax, DWORD PTR _OutBuff
	lea	edx, [eax+1]
	mov	DWORD PTR _OutBuff, edx
	mov	ecx, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	add	DWORD PTR [ebp-4], 1
L38:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp+12]
	jge	L37
	cmp	DWORD PTR [ebp-4], 15
	jle	L40
L37:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_lmask
	.data
_lmask:
	.byte	-1
	.byte	-2
	.byte	-4
	.byte	-8
	.byte	-16
	.byte	-32
	.byte	-64
	.byte	-128
	.byte	0
	.globl	_rmask
_rmask:
	.byte	0
	.byte	1
	.byte	3
	.byte	7
	.byte	15
	.byte	31
	.byte	63
	.byte	127
	.byte	-1
	.text
	.globl	_output
	.def	_output;	.scl	2;	.type	32;	.endef
_output:
LFB8:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR _offset
	mov	esi, DWORD PTR _n_bits
	mov	ebx, OFFSET FLAT:_buf
	cmp	DWORD PTR [ebp+8], 0
	js	L42
	mov	eax, edi
	sar	eax, 3
	add	ebx, eax
	and	edi, 7
	movzx	eax, BYTE PTR [ebx]
	movzx	edx, BYTE PTR _rmask[edi]
	and	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, edi
	sal	eax, cl
	or	edx, eax
	movzx	eax, BYTE PTR _lmask[edi]
	and	eax, edx
	mov	BYTE PTR [ebx], al
	add	ebx, 1
	lea	eax, [edi-8]
	add	esi, eax
	mov	eax, 8
	sub	eax, edi
	mov	ecx, eax
	sar	DWORD PTR [ebp+8], cl
	cmp	esi, 7
	jle	L43
	mov	eax, ebx
	lea	ebx, [eax+1]
	mov	edx, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax], dl
	sar	DWORD PTR [ebp+8], 8
	sub	esi, 8
L43:
	test	esi, esi
	je	L44
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [ebx], al
L44:
	mov	edx, DWORD PTR _offset
	mov	eax, DWORD PTR _n_bits
	add	eax, edx
	mov	DWORD PTR _offset, eax
	mov	eax, DWORD PTR _n_bits
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR _offset
	cmp	edx, eax
	jne	L45
	mov	ebx, OFFSET FLAT:_buf
	mov	esi, DWORD PTR _n_bits
	mov	eax, DWORD PTR _bytes_out
	add	eax, esi
	mov	DWORD PTR _bytes_out, eax
L47:
	mov	eax, ebx
	lea	ebx, [eax+1]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_putbyte
	sub	esi, 1
	test	esi, esi
	je	L46
	mov	edx, ebx
	mov	eax, OFFSET FLAT:_buf
	sub	edx, eax
	mov	eax, edx
	cmp	eax, 15
	jle	L47
L46:
	mov	DWORD PTR _offset, 0
L45:
	mov	edx, DWORD PTR _free_ent
	mov	eax, DWORD PTR _maxcode
	cmp	edx, eax
	jg	L48
	mov	eax, DWORD PTR _clear_flg
	test	eax, eax
	jle	L41
L48:
	mov	eax, DWORD PTR _offset
	test	eax, eax
	jle	L50
	mov	eax, DWORD PTR _n_bits
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:_buf
	call	_writebytes
	mov	edx, DWORD PTR _bytes_out
	mov	eax, DWORD PTR _n_bits
	add	eax, edx
	mov	DWORD PTR _bytes_out, eax
L50:
	mov	DWORD PTR _offset, 0
	mov	eax, DWORD PTR _clear_flg
	test	eax, eax
	je	L51
	mov	DWORD PTR _n_bits, 9
	mov	eax, DWORD PTR _n_bits
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	sub	eax, 1
	mov	DWORD PTR _maxcode, eax
	mov	DWORD PTR _clear_flg, 0
	jmp	L41
L51:
	mov	eax, DWORD PTR _n_bits
	add	eax, 1
	mov	DWORD PTR _n_bits, eax
	mov	edx, DWORD PTR _n_bits
	mov	eax, DWORD PTR _maxbits
	cmp	edx, eax
	jne	L52
	mov	eax, DWORD PTR _maxmaxcode
	mov	DWORD PTR _maxcode, eax
	jmp	L41
L52:
	mov	eax, DWORD PTR _n_bits
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	sub	eax, 1
	mov	DWORD PTR _maxcode, eax
	jmp	L41
L42:
	mov	eax, DWORD PTR _offset
	test	eax, eax
	jle	L54
	mov	eax, DWORD PTR _offset
	add	eax, 7
	lea	edx, [eax+7]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:_buf
	call	_writebytes
L54:
	mov	eax, DWORD PTR _offset
	add	eax, 7
	lea	edx, [eax+7]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 3
	mov	edx, eax
	mov	eax, DWORD PTR _bytes_out
	add	eax, edx
	mov	DWORD PTR _bytes_out, eax
	mov	DWORD PTR _offset, 0
L41:
	add	esp, 8
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.ident	"GCC: (GNU) 4.9.2"
