	.file	"adpcm.c"
	.intel_syntax noprefix
	.comm	_tqmf, 96, 6
	.globl	_h
	.data
	.align 64
_h:
	.long	12
	.long	-44
	.long	-44
	.long	212
	.long	48
	.long	-624
	.long	128
	.long	1448
	.long	-840
	.long	-3220
	.long	3804
	.long	15504
	.long	15504
	.long	3804
	.long	-3220
	.long	-840
	.long	1448
	.long	128
	.long	-624
	.long	48
	.long	212
	.long	-44
	.long	-44
	.long	12
	.comm	_xl, 4, 2
	.comm	_xh, 4, 2
	.comm	_accumc, 44, 5
	.comm	_accumd, 44, 5
	.comm	_xout1, 4, 2
	.comm	_xout2, 4, 2
	.comm	_xs, 4, 2
	.comm	_xd, 4, 2
	.comm	_il, 4, 2
	.comm	_szl, 4, 2
	.comm	_spl, 4, 2
	.comm	_sl, 4, 2
	.comm	_el, 4, 2
	.globl	_qq4_code4_table
	.align 64
_qq4_code4_table:
	.long	0
	.long	-20456
	.long	-12896
	.long	-8968
	.long	-6288
	.long	-4240
	.long	-2584
	.long	-1200
	.long	20456
	.long	12896
	.long	8968
	.long	6288
	.long	4240
	.long	2584
	.long	1200
	.long	0
	.globl	_qq5_code5_table
	.align 64
_qq5_code5_table:
	.long	-280
	.long	-280
	.long	-23352
	.long	-17560
	.long	-14120
	.long	-11664
	.long	-9752
	.long	-8184
	.long	-6864
	.long	-5712
	.long	-4696
	.long	-3784
	.long	-2960
	.long	-2208
	.long	-1520
	.long	-880
	.long	23352
	.long	17560
	.long	14120
	.long	11664
	.long	9752
	.long	8184
	.long	6864
	.long	5712
	.long	4696
	.long	3784
	.long	2960
	.long	2208
	.long	1520
	.long	880
	.long	280
	.long	-280
	.globl	_qq6_code6_table
	.align 64
_qq6_code6_table:
	.long	-136
	.long	-136
	.long	-136
	.long	-136
	.long	-24808
	.long	-21904
	.long	-19008
	.long	-16704
	.long	-14984
	.long	-13512
	.long	-12280
	.long	-11192
	.long	-10232
	.long	-9360
	.long	-8576
	.long	-7856
	.long	-7192
	.long	-6576
	.long	-6000
	.long	-5456
	.long	-4944
	.long	-4464
	.long	-4008
	.long	-3576
	.long	-3168
	.long	-2776
	.long	-2400
	.long	-2032
	.long	-1688
	.long	-1360
	.long	-1040
	.long	-728
	.long	24808
	.long	21904
	.long	19008
	.long	16704
	.long	14984
	.long	13512
	.long	12280
	.long	11192
	.long	10232
	.long	9360
	.long	8576
	.long	7856
	.long	7192
	.long	6576
	.long	6000
	.long	5456
	.long	4944
	.long	4464
	.long	4008
	.long	3576
	.long	3168
	.long	2776
	.long	2400
	.long	2032
	.long	1688
	.long	1360
	.long	1040
	.long	728
	.long	432
	.long	136
	.long	-432
	.long	-136
	.comm	_delay_bpl, 24, 2
	.comm	_delay_dltx, 24, 2
	.globl	_wl_code_table
	.align 64
_wl_code_table:
	.long	-60
	.long	3042
	.long	1198
	.long	538
	.long	334
	.long	172
	.long	58
	.long	-30
	.long	3042
	.long	1198
	.long	538
	.long	334
	.long	172
	.long	58
	.long	-30
	.long	-60
	.globl	_wl_table
	.align 32
_wl_table:
	.long	-60
	.long	-30
	.long	58
	.long	172
	.long	334
	.long	538
	.long	1198
	.long	3042
	.globl	_ilb_table
	.align 64
_ilb_table:
	.long	2048
	.long	2093
	.long	2139
	.long	2186
	.long	2233
	.long	2282
	.long	2332
	.long	2383
	.long	2435
	.long	2489
	.long	2543
	.long	2599
	.long	2656
	.long	2714
	.long	2774
	.long	2834
	.long	2896
	.long	2960
	.long	3025
	.long	3091
	.long	3158
	.long	3228
	.long	3298
	.long	3371
	.long	3444
	.long	3520
	.long	3597
	.long	3676
	.long	3756
	.long	3838
	.long	3922
	.long	4008
	.comm	_nbl, 4, 2
	.comm	_al1, 4, 2
	.comm	_al2, 4, 2
	.comm	_plt, 4, 2
	.comm	_plt1, 4, 2
	.comm	_plt2, 4, 2
	.comm	_rs, 4, 2
	.comm	_dlt, 4, 2
	.comm	_rlt, 4, 2
	.comm	_rlt1, 4, 2
	.comm	_rlt2, 4, 2
	.globl	_decis_levl
	.align 64
_decis_levl:
	.long	280
	.long	576
	.long	880
	.long	1200
	.long	1520
	.long	1864
	.long	2208
	.long	2584
	.long	2960
	.long	3376
	.long	3784
	.long	4240
	.long	4696
	.long	5200
	.long	5712
	.long	6288
	.long	6864
	.long	7520
	.long	8184
	.long	8968
	.long	9752
	.long	10712
	.long	11664
	.long	12896
	.long	14120
	.long	15840
	.long	17560
	.long	20456
	.long	23352
	.long	32767
	.comm	_detl, 4, 2
	.globl	_quant26bt_pos
	.align 64
_quant26bt_pos:
	.long	61
	.long	60
	.long	59
	.long	58
	.long	57
	.long	56
	.long	55
	.long	54
	.long	53
	.long	52
	.long	51
	.long	50
	.long	49
	.long	48
	.long	47
	.long	46
	.long	45
	.long	44
	.long	43
	.long	42
	.long	41
	.long	40
	.long	39
	.long	38
	.long	37
	.long	36
	.long	35
	.long	34
	.long	33
	.long	32
	.long	32
	.globl	_quant26bt_neg
	.align 64
_quant26bt_neg:
	.long	63
	.long	62
	.long	31
	.long	30
	.long	29
	.long	28
	.long	27
	.long	26
	.long	25
	.long	24
	.long	23
	.long	22
	.long	21
	.long	20
	.long	19
	.long	18
	.long	17
	.long	16
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	4
	.comm	_deth, 4, 2
	.comm	_sh, 4, 2
	.comm	_eh, 4, 2
	.globl	_qq2_code2_table
	.align 4
_qq2_code2_table:
	.long	-7408
	.long	-1616
	.long	7408
	.long	1616
	.globl	_wh_code_table
	.align 4
_wh_code_table:
	.long	798
	.long	-214
	.long	798
	.long	-214
	.comm	_dh, 4, 2
	.comm	_ih, 4, 2
	.comm	_nbh, 4, 2
	.comm	_szh, 4, 2
	.comm	_sph, 4, 2
	.comm	_ph, 4, 2
	.comm	_yh, 4, 2
	.comm	_rh, 4, 2
	.comm	_delay_dhx, 24, 2
	.comm	_delay_bph, 24, 2
	.comm	_ah1, 4, 2
	.comm	_ah2, 4, 2
	.comm	_ph1, 4, 2
	.comm	_ph2, 4, 2
	.comm	_rh1, 4, 2
	.comm	_rh2, 4, 2
	.comm	_ilr, 4, 2
	.comm	_yl, 4, 2
	.comm	_rl, 4, 2
	.comm	_dec_deth, 4, 2
	.comm	_dec_detl, 4, 2
	.comm	_dec_dlt, 4, 2
	.comm	_dec_del_bpl, 24, 2
	.comm	_dec_del_dltx, 24, 2
	.comm	_dec_plt, 4, 2
	.comm	_dec_plt1, 4, 2
	.comm	_dec_plt2, 4, 2
	.comm	_dec_szl, 4, 2
	.comm	_dec_spl, 4, 2
	.comm	_dec_sl, 4, 2
	.comm	_dec_rlt1, 4, 2
	.comm	_dec_rlt2, 4, 2
	.comm	_dec_rlt, 4, 2
	.comm	_dec_al1, 4, 2
	.comm	_dec_al2, 4, 2
	.comm	_dl, 4, 2
	.comm	_dec_nbl, 4, 2
	.comm	_dec_yh, 4, 2
	.comm	_dec_dh, 4, 2
	.comm	_dec_nbh, 4, 2
	.comm	_dec_del_bph, 24, 2
	.comm	_dec_del_dhx, 24, 2
	.comm	_dec_szh, 4, 2
	.comm	_dec_rh1, 4, 2
	.comm	_dec_rh2, 4, 2
	.comm	_dec_ah1, 4, 2
	.comm	_dec_ah2, 4, 2
	.comm	_dec_ph, 4, 2
	.comm	_dec_sph, 4, 2
	.comm	_dec_sh, 4, 2
	.comm	_dec_rh, 4, 2
	.comm	_dec_ph1, 4, 2
	.comm	_dec_ph2, 4, 2
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
	.globl	_my_abs
	.def	_my_abs;	.scl	2;	.type	32;	.endef
_my_abs:
LFB1:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	cmp	DWORD PTR [ebp+8], 0
	js	L4
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	L5
L4:
	mov	eax, DWORD PTR [ebp+8]
	neg	eax
	mov	DWORD PTR [ebp-4], eax
L5:
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_my_fabs
	.def	_my_fabs;	.scl	2;	.type	32;	.endef
_my_fabs:
LFB2:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	cmp	DWORD PTR [ebp+8], 0
	js	L8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	L9
L8:
	mov	eax, DWORD PTR [ebp+8]
	neg	eax
	mov	DWORD PTR [ebp-4], eax
L9:
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_my_sin
	.def	_my_sin;	.scl	2;	.type	32;	.endef
_my_sin:
LFB3:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 20
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-12], 1
	jmp	L12
L13:
	sub	DWORD PTR [ebp+8], 6282
L12:
	cmp	DWORD PTR [ebp+8], 6282
	jg	L13
	jmp	L14
L15:
	add	DWORD PTR [ebp+8], 6282
L14:
	cmp	DWORD PTR [ebp+8], -6282
	jl	L15
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+8]
	imul	eax, DWORD PTR [ebp+8]
	neg	eax
	imul	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [ebp-12]
	lea	ecx, [edx+edx]
	mov	edx, DWORD PTR [ebp-12]
	add	edx, edx
	add	edx, 1
	imul	ecx, edx
	cdq
	idiv	ecx
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	add	DWORD PTR [ebp-8], eax
	add	DWORD PTR [ebp-12], 1
	jmp	L16
L17:
	mov	eax, DWORD PTR [ebp+8]
	imul	eax, DWORD PTR [ebp+8]
	neg	eax
	imul	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [ebp-12]
	lea	ecx, [edx+edx]
	mov	edx, DWORD PTR [ebp-12]
	add	edx, edx
	add	edx, 1
	imul	ecx, edx
	cdq
	idiv	ecx
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	add	DWORD PTR [ebp-8], eax
	add	DWORD PTR [ebp-12], 1
L16:
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [esp], eax
	call	_my_fabs
	test	eax, eax
	jg	L17
	mov	eax, DWORD PTR [ebp-8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_my_cos
	.def	_my_cos;	.scl	2;	.type	32;	.endef
_my_cos:
LFB4:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 4
	mov	eax, 1570
	sub	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_my_sin
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_encode
	.def	_encode;	.scl	2;	.type	32;	.endef
_encode:
LFB5:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	sub	esp, 64
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	DWORD PTR [ebp-16], OFFSET FLAT:_h
	mov	DWORD PTR [ebp-20], OFFSET FLAT:_tqmf
	mov	eax, DWORD PTR [ebp-20]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-20], edx
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-16]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-16], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-20]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-20], edx
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-16]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-16], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-12], 0
	jmp	L22
L23:
	mov	eax, DWORD PTR [ebp-20]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-20], edx
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-16]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-16], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-20]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-20], edx
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-16]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-16], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-32], eax
	add	DWORD PTR [ebp-12], 1
L22:
	cmp	DWORD PTR [ebp-12], 9
	jle	L23
	mov	eax, DWORD PTR [ebp-20]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-20], edx
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-16]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-16], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-20]
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-16]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-16], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp-20]
	sub	eax, 8
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-12], 0
	jmp	L24
L25:
	mov	eax, DWORD PTR [ebp-20]
	lea	edx, [eax-4]
	mov	DWORD PTR [ebp-20], edx
	mov	edx, DWORD PTR [ebp-24]
	lea	ecx, [edx-4]
	mov	DWORD PTR [ebp-24], ecx
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
	add	DWORD PTR [ebp-12], 1
L24:
	cmp	DWORD PTR [ebp-12], 21
	jle	L25
	mov	eax, DWORD PTR [ebp-20]
	lea	edx, [eax-4]
	mov	DWORD PTR [ebp-20], edx
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [ebp-20]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [eax], edx
	mov	edx, DWORD PTR [ebp-28]
	mov	eax, DWORD PTR [ebp-32]
	add	eax, edx
	sar	eax, 15
	mov	DWORD PTR _xl, eax
	mov	eax, DWORD PTR [ebp-28]
	sub	eax, DWORD PTR [ebp-32]
	sar	eax, 15
	mov	DWORD PTR _xh, eax
	mov	DWORD PTR [esp+4], OFFSET FLAT:_delay_dltx
	mov	DWORD PTR [esp], OFFSET FLAT:_delay_bpl
	call	_filtez
	mov	DWORD PTR _szl, eax
	mov	ebx, DWORD PTR _al2
	mov	ecx, DWORD PTR _rlt2
	mov	edx, DWORD PTR _al1
	mov	eax, DWORD PTR _rlt1
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_filtep
	mov	DWORD PTR _spl, eax
	mov	edx, DWORD PTR _szl
	mov	eax, DWORD PTR _spl
	add	eax, edx
	mov	DWORD PTR _sl, eax
	mov	edx, DWORD PTR _xl
	mov	eax, DWORD PTR _sl
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR _el, eax
	mov	edx, DWORD PTR _detl
	mov	eax, DWORD PTR _el
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_quantl
	mov	DWORD PTR _il, eax
	mov	eax, DWORD PTR _il
	sar	eax, 2
	mov	edx, DWORD PTR _qq4_code4_table[0+eax*4]
	mov	eax, DWORD PTR _detl
	imul	eax, edx
	sar	eax, 15
	mov	DWORD PTR _dlt, eax
	mov	edx, DWORD PTR _nbl
	mov	eax, DWORD PTR _il
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_logscl
	mov	DWORD PTR _nbl, eax
	mov	eax, DWORD PTR _nbl
	mov	DWORD PTR [esp+4], 8
	mov	DWORD PTR [esp], eax
	call	_scalel
	mov	DWORD PTR _detl, eax
	mov	edx, DWORD PTR _dlt
	mov	eax, DWORD PTR _szl
	add	eax, edx
	mov	DWORD PTR _plt, eax
	mov	eax, DWORD PTR _dlt
	mov	DWORD PTR [esp+8], OFFSET FLAT:_delay_bpl
	mov	DWORD PTR [esp+4], OFFSET FLAT:_delay_dltx
	mov	DWORD PTR [esp], eax
	call	_upzero
	mov	esi, DWORD PTR _plt2
	mov	ebx, DWORD PTR _plt1
	mov	ecx, DWORD PTR _plt
	mov	edx, DWORD PTR _al2
	mov	eax, DWORD PTR _al1
	mov	DWORD PTR [esp+16], esi
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_uppol2
	mov	DWORD PTR _al2, eax
	mov	ebx, DWORD PTR _plt1
	mov	ecx, DWORD PTR _plt
	mov	edx, DWORD PTR _al2
	mov	eax, DWORD PTR _al1
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_uppol1
	mov	DWORD PTR _al1, eax
	mov	edx, DWORD PTR _sl
	mov	eax, DWORD PTR _dlt
	add	eax, edx
	mov	DWORD PTR _rlt, eax
	mov	eax, DWORD PTR _rlt1
	mov	DWORD PTR _rlt2, eax
	mov	eax, DWORD PTR _rlt
	mov	DWORD PTR _rlt1, eax
	mov	eax, DWORD PTR _plt1
	mov	DWORD PTR _plt2, eax
	mov	eax, DWORD PTR _plt
	mov	DWORD PTR _plt1, eax
	mov	DWORD PTR [esp+4], OFFSET FLAT:_delay_dhx
	mov	DWORD PTR [esp], OFFSET FLAT:_delay_bph
	call	_filtez
	mov	DWORD PTR _szh, eax
	mov	ebx, DWORD PTR _ah2
	mov	ecx, DWORD PTR _rh2
	mov	edx, DWORD PTR _ah1
	mov	eax, DWORD PTR _rh1
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_filtep
	mov	DWORD PTR _sph, eax
	mov	edx, DWORD PTR _sph
	mov	eax, DWORD PTR _szh
	add	eax, edx
	mov	DWORD PTR _sh, eax
	mov	edx, DWORD PTR _xh
	mov	eax, DWORD PTR _sh
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR _eh, eax
	mov	eax, DWORD PTR _eh
	test	eax, eax
	js	L26
	mov	DWORD PTR _ih, 3
	jmp	L27
L26:
	mov	DWORD PTR _ih, 1
L27:
	mov	eax, DWORD PTR _deth
	imul	eax, eax, 564
	sar	eax, 12
	mov	DWORD PTR [ebp-36], eax
	mov	eax, DWORD PTR _eh
	mov	DWORD PTR [esp], eax
	call	_my_abs
	cmp	eax, DWORD PTR [ebp-36]
	jle	L28
	mov	eax, DWORD PTR _ih
	sub	eax, 1
	mov	DWORD PTR _ih, eax
L28:
	mov	eax, DWORD PTR _ih
	mov	edx, DWORD PTR _qq2_code2_table[0+eax*4]
	mov	eax, DWORD PTR _deth
	imul	eax, edx
	sar	eax, 15
	mov	DWORD PTR _dh, eax
	mov	edx, DWORD PTR _nbh
	mov	eax, DWORD PTR _ih
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_logsch
	mov	DWORD PTR _nbh, eax
	mov	eax, DWORD PTR _nbh
	mov	DWORD PTR [esp+4], 10
	mov	DWORD PTR [esp], eax
	call	_scalel
	mov	DWORD PTR _deth, eax
	mov	edx, DWORD PTR _dh
	mov	eax, DWORD PTR _szh
	add	eax, edx
	mov	DWORD PTR _ph, eax
	mov	eax, DWORD PTR _dh
	mov	DWORD PTR [esp+8], OFFSET FLAT:_delay_bph
	mov	DWORD PTR [esp+4], OFFSET FLAT:_delay_dhx
	mov	DWORD PTR [esp], eax
	call	_upzero
	mov	esi, DWORD PTR _ph2
	mov	ebx, DWORD PTR _ph1
	mov	ecx, DWORD PTR _ph
	mov	edx, DWORD PTR _ah2
	mov	eax, DWORD PTR _ah1
	mov	DWORD PTR [esp+16], esi
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_uppol2
	mov	DWORD PTR _ah2, eax
	mov	ebx, DWORD PTR _ph1
	mov	ecx, DWORD PTR _ph
	mov	edx, DWORD PTR _ah2
	mov	eax, DWORD PTR _ah1
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_uppol1
	mov	DWORD PTR _ah1, eax
	mov	edx, DWORD PTR _sh
	mov	eax, DWORD PTR _dh
	add	eax, edx
	mov	DWORD PTR _yh, eax
	mov	eax, DWORD PTR _rh1
	mov	DWORD PTR _rh2, eax
	mov	eax, DWORD PTR _yh
	mov	DWORD PTR _rh1, eax
	mov	eax, DWORD PTR _ph1
	mov	DWORD PTR _ph2, eax
	mov	eax, DWORD PTR _ph
	mov	DWORD PTR _ph1, eax
	mov	eax, DWORD PTR _ih
	sal	eax, 6
	mov	edx, eax
	mov	eax, DWORD PTR _il
	or	eax, edx
	add	esp, 64
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_decode
	.def	_decode;	.scl	2;	.type	32;	.endef
_decode:
LFB6:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	sub	esp, 64
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 63
	mov	DWORD PTR _ilr, eax
	mov	eax, DWORD PTR [ebp+8]
	sar	eax, 6
	mov	DWORD PTR _ih, eax
	mov	DWORD PTR [esp+4], OFFSET FLAT:_dec_del_dltx
	mov	DWORD PTR [esp], OFFSET FLAT:_dec_del_bpl
	call	_filtez
	mov	DWORD PTR _dec_szl, eax
	mov	ebx, DWORD PTR _dec_al2
	mov	ecx, DWORD PTR _dec_rlt2
	mov	edx, DWORD PTR _dec_al1
	mov	eax, DWORD PTR _dec_rlt1
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_filtep
	mov	DWORD PTR _dec_spl, eax
	mov	edx, DWORD PTR _dec_spl
	mov	eax, DWORD PTR _dec_szl
	add	eax, edx
	mov	DWORD PTR _dec_sl, eax
	mov	eax, DWORD PTR _ilr
	sar	eax, 2
	mov	edx, DWORD PTR _qq4_code4_table[0+eax*4]
	mov	eax, DWORD PTR _dec_detl
	imul	eax, edx
	sar	eax, 15
	mov	DWORD PTR _dec_dlt, eax
	mov	eax, DWORD PTR _il
	mov	edx, DWORD PTR _qq6_code6_table[0+eax*4]
	mov	eax, DWORD PTR _dec_detl
	imul	eax, edx
	sar	eax, 15
	mov	DWORD PTR _dl, eax
	mov	edx, DWORD PTR _dl
	mov	eax, DWORD PTR _dec_sl
	add	eax, edx
	mov	DWORD PTR _rl, eax
	mov	edx, DWORD PTR _dec_nbl
	mov	eax, DWORD PTR _ilr
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_logscl
	mov	DWORD PTR _dec_nbl, eax
	mov	eax, DWORD PTR _dec_nbl
	mov	DWORD PTR [esp+4], 8
	mov	DWORD PTR [esp], eax
	call	_scalel
	mov	DWORD PTR _dec_detl, eax
	mov	edx, DWORD PTR _dec_dlt
	mov	eax, DWORD PTR _dec_szl
	add	eax, edx
	mov	DWORD PTR _dec_plt, eax
	mov	eax, DWORD PTR _dec_dlt
	mov	DWORD PTR [esp+8], OFFSET FLAT:_dec_del_bpl
	mov	DWORD PTR [esp+4], OFFSET FLAT:_dec_del_dltx
	mov	DWORD PTR [esp], eax
	call	_upzero
	mov	esi, DWORD PTR _dec_plt2
	mov	ebx, DWORD PTR _dec_plt1
	mov	ecx, DWORD PTR _dec_plt
	mov	edx, DWORD PTR _dec_al2
	mov	eax, DWORD PTR _dec_al1
	mov	DWORD PTR [esp+16], esi
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_uppol2
	mov	DWORD PTR _dec_al2, eax
	mov	ebx, DWORD PTR _dec_plt1
	mov	ecx, DWORD PTR _dec_plt
	mov	edx, DWORD PTR _dec_al2
	mov	eax, DWORD PTR _dec_al1
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_uppol1
	mov	DWORD PTR _dec_al1, eax
	mov	edx, DWORD PTR _dec_sl
	mov	eax, DWORD PTR _dec_dlt
	add	eax, edx
	mov	DWORD PTR _dec_rlt, eax
	mov	eax, DWORD PTR _dec_rlt1
	mov	DWORD PTR _dec_rlt2, eax
	mov	eax, DWORD PTR _dec_rlt
	mov	DWORD PTR _dec_rlt1, eax
	mov	eax, DWORD PTR _dec_plt1
	mov	DWORD PTR _dec_plt2, eax
	mov	eax, DWORD PTR _dec_plt
	mov	DWORD PTR _dec_plt1, eax
	mov	DWORD PTR [esp+4], OFFSET FLAT:_dec_del_dhx
	mov	DWORD PTR [esp], OFFSET FLAT:_dec_del_bph
	call	_filtez
	mov	DWORD PTR _dec_szh, eax
	mov	ebx, DWORD PTR _dec_ah2
	mov	ecx, DWORD PTR _dec_rh2
	mov	edx, DWORD PTR _dec_ah1
	mov	eax, DWORD PTR _dec_rh1
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_filtep
	mov	DWORD PTR _dec_sph, eax
	mov	edx, DWORD PTR _dec_sph
	mov	eax, DWORD PTR _dec_szh
	add	eax, edx
	mov	DWORD PTR _dec_sh, eax
	mov	eax, DWORD PTR _ih
	mov	edx, DWORD PTR _qq2_code2_table[0+eax*4]
	mov	eax, DWORD PTR _dec_deth
	imul	eax, edx
	sar	eax, 15
	mov	DWORD PTR _dec_dh, eax
	mov	edx, DWORD PTR _dec_nbh
	mov	eax, DWORD PTR _ih
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_logsch
	mov	DWORD PTR _dec_nbh, eax
	mov	eax, DWORD PTR _dec_nbh
	mov	DWORD PTR [esp+4], 10
	mov	DWORD PTR [esp], eax
	call	_scalel
	mov	DWORD PTR _dec_deth, eax
	mov	edx, DWORD PTR _dec_dh
	mov	eax, DWORD PTR _dec_szh
	add	eax, edx
	mov	DWORD PTR _dec_ph, eax
	mov	eax, DWORD PTR _dec_dh
	mov	DWORD PTR [esp+8], OFFSET FLAT:_dec_del_bph
	mov	DWORD PTR [esp+4], OFFSET FLAT:_dec_del_dhx
	mov	DWORD PTR [esp], eax
	call	_upzero
	mov	esi, DWORD PTR _dec_ph2
	mov	ebx, DWORD PTR _dec_ph1
	mov	ecx, DWORD PTR _dec_ph
	mov	edx, DWORD PTR _dec_ah2
	mov	eax, DWORD PTR _dec_ah1
	mov	DWORD PTR [esp+16], esi
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_uppol2
	mov	DWORD PTR _dec_ah2, eax
	mov	ebx, DWORD PTR _dec_ph1
	mov	ecx, DWORD PTR _dec_ph
	mov	edx, DWORD PTR _dec_ah2
	mov	eax, DWORD PTR _dec_ah1
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_uppol1
	mov	DWORD PTR _dec_ah1, eax
	mov	edx, DWORD PTR _dec_sh
	mov	eax, DWORD PTR _dec_dh
	add	eax, edx
	mov	DWORD PTR _rh, eax
	mov	eax, DWORD PTR _dec_rh1
	mov	DWORD PTR _dec_rh2, eax
	mov	eax, DWORD PTR _rh
	mov	DWORD PTR _dec_rh1, eax
	mov	eax, DWORD PTR _dec_ph1
	mov	DWORD PTR _dec_ph2, eax
	mov	eax, DWORD PTR _dec_ph
	mov	DWORD PTR _dec_ph1, eax
	mov	edx, DWORD PTR _rl
	mov	eax, DWORD PTR _rh
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR _xd, eax
	mov	edx, DWORD PTR _rl
	mov	eax, DWORD PTR _rh
	add	eax, edx
	mov	DWORD PTR _xs, eax
	mov	DWORD PTR [ebp-24], OFFSET FLAT:_h
	mov	DWORD PTR [ebp-28], OFFSET FLAT:_accumc
	mov	DWORD PTR [ebp-36], OFFSET FLAT:_accumd
	mov	eax, DWORD PTR [ebp-24]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-24], edx
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR _xd
	imul	eax, edx
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp-24]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-24], edx
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR _xs
	imul	eax, edx
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-12], 0
	jmp	L31
L32:
	mov	eax, DWORD PTR [ebp-28]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-28], edx
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-24]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-24], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp-36]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-36], edx
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-24]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-24], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-20], eax
	add	DWORD PTR [ebp-12], 1
L31:
	cmp	DWORD PTR [ebp-12], 9
	jle	L32
	mov	eax, DWORD PTR [ebp-28]
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-24]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-24], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp-36]
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-24]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp-24], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-16]
	sar	eax, 14
	mov	DWORD PTR _xout1, eax
	mov	eax, DWORD PTR [ebp-20]
	sar	eax, 14
	mov	DWORD PTR _xout2, eax
	mov	eax, DWORD PTR [ebp-28]
	sub	eax, 4
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp-36]
	sub	eax, 4
	mov	DWORD PTR [ebp-40], eax
	mov	DWORD PTR [ebp-12], 0
	jmp	L33
L34:
	mov	eax, DWORD PTR [ebp-28]
	lea	edx, [eax-4]
	mov	DWORD PTR [ebp-28], edx
	mov	edx, DWORD PTR [ebp-32]
	lea	ecx, [edx-4]
	mov	DWORD PTR [ebp-32], ecx
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [ebp-36]
	lea	edx, [eax-4]
	mov	DWORD PTR [ebp-36], edx
	mov	edx, DWORD PTR [ebp-40]
	lea	ecx, [edx-4]
	mov	DWORD PTR [ebp-40], ecx
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
	add	DWORD PTR [ebp-12], 1
L33:
	cmp	DWORD PTR [ebp-12], 9
	jle	L34
	mov	edx, DWORD PTR _xd
	mov	eax, DWORD PTR [ebp-28]
	mov	DWORD PTR [eax], edx
	mov	edx, DWORD PTR _xs
	mov	eax, DWORD PTR [ebp-36]
	mov	DWORD PTR [eax], edx
	nop
	add	esp, 64
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_reset
	.def	_reset;	.scl	2;	.type	32;	.endef
_reset:
LFB7:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR _dec_detl, 32
	mov	eax, DWORD PTR _dec_detl
	mov	DWORD PTR _detl, eax
	mov	DWORD PTR _dec_deth, 8
	mov	eax, DWORD PTR _dec_deth
	mov	DWORD PTR _deth, eax
	mov	DWORD PTR _rlt2, 0
	mov	eax, DWORD PTR _rlt2
	mov	DWORD PTR _rlt1, eax
	mov	eax, DWORD PTR _rlt1
	mov	DWORD PTR _plt2, eax
	mov	eax, DWORD PTR _plt2
	mov	DWORD PTR _plt1, eax
	mov	eax, DWORD PTR _plt1
	mov	DWORD PTR _al2, eax
	mov	eax, DWORD PTR _al2
	mov	DWORD PTR _al1, eax
	mov	eax, DWORD PTR _al1
	mov	DWORD PTR _nbl, eax
	mov	DWORD PTR _rh2, 0
	mov	eax, DWORD PTR _rh2
	mov	DWORD PTR _rh1, eax
	mov	eax, DWORD PTR _rh1
	mov	DWORD PTR _ph2, eax
	mov	eax, DWORD PTR _ph2
	mov	DWORD PTR _ph1, eax
	mov	eax, DWORD PTR _ph1
	mov	DWORD PTR _ah2, eax
	mov	eax, DWORD PTR _ah2
	mov	DWORD PTR _ah1, eax
	mov	eax, DWORD PTR _ah1
	mov	DWORD PTR _nbh, eax
	mov	DWORD PTR _dec_rlt2, 0
	mov	eax, DWORD PTR _dec_rlt2
	mov	DWORD PTR _dec_rlt1, eax
	mov	eax, DWORD PTR _dec_rlt1
	mov	DWORD PTR _dec_plt2, eax
	mov	eax, DWORD PTR _dec_plt2
	mov	DWORD PTR _dec_plt1, eax
	mov	eax, DWORD PTR _dec_plt1
	mov	DWORD PTR _dec_al2, eax
	mov	eax, DWORD PTR _dec_al2
	mov	DWORD PTR _dec_al1, eax
	mov	eax, DWORD PTR _dec_al1
	mov	DWORD PTR _dec_nbl, eax
	mov	DWORD PTR _dec_rh2, 0
	mov	eax, DWORD PTR _dec_rh2
	mov	DWORD PTR _dec_rh1, eax
	mov	eax, DWORD PTR _dec_rh1
	mov	DWORD PTR _dec_ph2, eax
	mov	eax, DWORD PTR _dec_ph2
	mov	DWORD PTR _dec_ph1, eax
	mov	eax, DWORD PTR _dec_ph1
	mov	DWORD PTR _dec_ah2, eax
	mov	eax, DWORD PTR _dec_ah2
	mov	DWORD PTR _dec_ah1, eax
	mov	eax, DWORD PTR _dec_ah1
	mov	DWORD PTR _dec_nbh, eax
	mov	DWORD PTR [ebp-4], 0
	jmp	L37
L38:
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _delay_dltx[0+eax*4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _delay_dhx[0+eax*4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _dec_del_dltx[0+eax*4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _dec_del_dhx[0+eax*4], 0
	add	DWORD PTR [ebp-4], 1
L37:
	cmp	DWORD PTR [ebp-4], 5
	jle	L38
	mov	DWORD PTR [ebp-4], 0
	jmp	L39
L40:
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _delay_bpl[0+eax*4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _delay_bph[0+eax*4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _dec_del_bpl[0+eax*4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _dec_del_bph[0+eax*4], 0
	add	DWORD PTR [ebp-4], 1
L39:
	cmp	DWORD PTR [ebp-4], 5
	jle	L40
	mov	DWORD PTR [ebp-4], 0
	jmp	L41
L42:
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _tqmf[0+eax*4], 0
	add	DWORD PTR [ebp-4], 1
L41:
	cmp	DWORD PTR [ebp-4], 22
	jle	L42
	mov	DWORD PTR [ebp-4], 0
	jmp	L43
L44:
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _accumc[0+eax*4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR _accumd[0+eax*4], 0
	add	DWORD PTR [ebp-4], 1
L43:
	cmp	DWORD PTR [ebp-4], 10
	jle	L44
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_filtez
	.def	_filtez;	.scl	2;	.type	32;	.endef
_filtez:
LFB8:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp+8], edx
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp+12], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], 1
	jmp	L47
L48:
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp+8], edx
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp+12], edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-8], eax
	add	DWORD PTR [ebp-4], 1
L47:
	cmp	DWORD PTR [ebp-4], 5
	jle	L48
	mov	eax, DWORD PTR [ebp-8]
	sar	eax, 14
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_filtep
	.def	_filtep;	.scl	2;	.type	32;	.endef
_filtep:
LFB9:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	add	eax, eax
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	imul	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	add	eax, eax
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+20]
	imul	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	sar	eax, 15
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_quantl
	.def	_quantl;	.scl	2;	.type	32;	.endef
_quantl:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_my_abs
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], 0
	jmp	L53
L56:
	mov	eax, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR _decis_levl[0+eax*4]
	imul	eax, DWORD PTR [ebp+12]
	sar	eax, 15
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp-12]
	cmp	eax, DWORD PTR [ebp-16]
	jg	L54
	jmp	L55
L54:
	add	DWORD PTR [ebp-8], 1
L53:
	cmp	DWORD PTR [ebp-8], 29
	jle	L56
L55:
	cmp	DWORD PTR [ebp+8], 0
	js	L57
	mov	eax, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR _quant26bt_pos[0+eax*4]
	mov	DWORD PTR [ebp-4], eax
	jmp	L58
L57:
	mov	eax, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR _quant26bt_neg[0+eax*4]
	mov	DWORD PTR [ebp-4], eax
L58:
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_logscl
	.def	_logscl;	.scl	2;	.type	32;	.endef
_logscl:
LFB11:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, edx
	sal	eax, 7
	sub	eax, edx
	sar	eax, 7
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+8]
	sar	eax, 2
	mov	edx, DWORD PTR _wl_code_table[0+eax*4]
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	mov	DWORD PTR [ebp+12], eax
	cmp	DWORD PTR [ebp+12], 0
	jns	L61
	mov	DWORD PTR [ebp+12], 0
L61:
	cmp	DWORD PTR [ebp+12], 18432
	jle	L62
	mov	DWORD PTR [ebp+12], 18432
L62:
	mov	eax, DWORD PTR [ebp+12]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.globl	_scalel
	.def	_scalel;	.scl	2;	.type	32;	.endef
_scalel:
LFB12:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	sar	eax, 6
	and	eax, 31
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+8]
	sar	eax, 11
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR _ilb_table[0+eax*4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, 1
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-12]
	sal	eax, 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.globl	_upzero
	.def	_upzero;	.scl	2;	.type	32;	.endef
_upzero:
LFB13:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	cmp	DWORD PTR [ebp+8], 0
	jne	L67
	mov	DWORD PTR [ebp-4], 0
	jmp	L68
L69:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+16]
	lea	ecx, [edx+eax]
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	edx, DWORD PTR [eax]
	mov	eax, edx
	sal	eax, 8
	sub	eax, edx
	sar	eax, 8
	mov	DWORD PTR [ecx], eax
	add	DWORD PTR [ebp-4], 1
L68:
	cmp	DWORD PTR [ebp-4], 5
	jle	L69
	jmp	L70
L67:
	mov	DWORD PTR [ebp-4], 0
	jmp	L71
L74:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	eax, DWORD PTR [eax]
	imul	eax, DWORD PTR [ebp+8]
	test	eax, eax
	js	L72
	mov	DWORD PTR [ebp-8], 128
	jmp	L73
L72:
	mov	DWORD PTR [ebp-8], -128
L73:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	edx, DWORD PTR [eax]
	mov	eax, edx
	sal	eax, 8
	sub	eax, edx
	sar	eax, 8
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-12]
	add	edx, ecx
	mov	DWORD PTR [eax], edx
	add	DWORD PTR [ebp-4], 1
L71:
	cmp	DWORD PTR [ebp-4], 5
	jle	L74
L70:
	mov	eax, DWORD PTR [ebp+12]
	lea	edx, [eax+20]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax+16]
	mov	DWORD PTR [edx], eax
	mov	eax, DWORD PTR [ebp+12]
	lea	edx, [eax+16]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [edx], eax
	mov	eax, DWORD PTR [ebp+12]
	lea	edx, [eax+12]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR [edx], eax
	mov	eax, DWORD PTR [ebp+12]
	lea	edx, [eax+4]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], edx
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.globl	_uppol2
	.def	_uppol2;	.scl	2;	.type	32;	.endef
_uppol2:
LFB14:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	sal	eax, 2
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	imul	eax, DWORD PTR [ebp+20]
	test	eax, eax
	js	L77
	neg	DWORD PTR [ebp-4]
L77:
	sar	DWORD PTR [ebp-4], 7
	mov	eax, DWORD PTR [ebp+16]
	imul	eax, DWORD PTR [ebp+24]
	test	eax, eax
	js	L78
	mov	eax, DWORD PTR [ebp-4]
	sub	eax, -128
	mov	DWORD PTR [ebp-8], eax
	jmp	L79
L78:
	mov	eax, DWORD PTR [ebp-4]
	add	eax, -128
	mov	DWORD PTR [ebp-8], eax
L79:
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, edx
	sal	eax, 7
	sub	eax, edx
	sar	eax, 7
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-8]
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	cmp	DWORD PTR [ebp-12], 12288
	jle	L80
	mov	DWORD PTR [ebp-12], 12288
L80:
	cmp	DWORD PTR [ebp-12], -12288
	jge	L81
	mov	DWORD PTR [ebp-12], -12288
L81:
	mov	eax, DWORD PTR [ebp-12]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_uppol1
	.def	_uppol1;	.scl	2;	.type	32;	.endef
_uppol1:
LFB15:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	sal	eax, 8
	sub	eax, edx
	sar	eax, 8
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+16]
	imul	eax, DWORD PTR [ebp+20]
	test	eax, eax
	js	L84
	mov	eax, DWORD PTR [ebp-8]
	add	eax, 192
	mov	DWORD PTR [ebp-4], eax
	jmp	L85
L84:
	mov	eax, DWORD PTR [ebp-8]
	sub	eax, 192
	mov	DWORD PTR [ebp-4], eax
L85:
	mov	eax, 15360
	sub	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-12]
	jle	L86
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [ebp-4], eax
L86:
	mov	eax, DWORD PTR [ebp-12]
	neg	eax
	cmp	eax, DWORD PTR [ebp-4]
	jle	L87
	mov	eax, DWORD PTR [ebp-12]
	neg	eax
	mov	DWORD PTR [ebp-4], eax
L87:
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_logsch
	.def	_logsch;	.scl	2;	.type	32;	.endef
_logsch:
LFB16:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, edx
	sal	eax, 7
	sub	eax, edx
	sar	eax, 7
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR _wh_code_table[0+eax*4]
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	mov	DWORD PTR [ebp+12], eax
	cmp	DWORD PTR [ebp+12], 0
	jns	L90
	mov	DWORD PTR [ebp+12], 0
L90:
	cmp	DWORD PTR [ebp+12], 22528
	jle	L91
	mov	DWORD PTR [ebp+12], 22528
L91:
	mov	eax, DWORD PTR [ebp+12]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_start
	.def	_start;	.scl	2;	.type	32;	.endef
_start:
LFB17:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 36
	.cfi_offset 3, -12
	call	_reset
	mov	DWORD PTR [ebp-16], 10
	mov	DWORD PTR [ebp-20], 2000
	mov	DWORD PTR [ebp-12], 0
	jmp	L94
L95:
	mov	eax, DWORD PTR [ebp-20]
	imul	eax, eax, 3141
	imul	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp], eax
	call	_my_cos
	imul	eax, DWORD PTR [ebp-16]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR _test_data.1728[0+eax*4], edx
	add	DWORD PTR [ebp-12], 1
L94:
	cmp	DWORD PTR [ebp-12], 2
	jle	L95
	mov	DWORD PTR [ebp-12], 0
	jmp	L96
L97:
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, 1
	mov	edx, DWORD PTR _test_data.1728[0+eax*4]
	mov	eax, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR _test_data.1728[0+eax*4]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_encode
	mov	DWORD PTR _compressed.1729[0+ebx*4], eax
	add	DWORD PTR [ebp-12], 2
L96:
	cmp	DWORD PTR [ebp-12], 3
	jle	L97
	mov	DWORD PTR [ebp-12], 0
	jmp	L98
L99:
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	eax, DWORD PTR _compressed.1729[0+eax*4]
	mov	DWORD PTR [esp], eax
	call	_decode
	mov	edx, DWORD PTR _xout1
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR _result.1730[0+eax*4], edx
	mov	eax, DWORD PTR [ebp-12]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR _xout2
	mov	DWORD PTR _result.1730[0+edx*4], eax
	add	DWORD PTR [ebp-12], 2
L98:
	cmp	DWORD PTR [ebp-12], 3
	jle	L99
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR _result.1730[0+eax*4]
	mov	eax, DWORD PTR [ebp-12]
	add	eax, 1
	mov	eax, DWORD PTR _result.1730[0+eax*4]
	add	eax, edx
	add	eax, 1
	add	esp, 36
	pop	ebx
	.cfi_restore 3
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
.lcomm _test_data.1728,24,4
.lcomm _compressed.1729,12,4
.lcomm _result.1730,24,4
	.ident	"GCC: (GNU) 4.9.2"
