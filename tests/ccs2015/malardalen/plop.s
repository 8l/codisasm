	.file	"statemate.c"
	.local	Bitlist
	.comm	Bitlist,64,64
	.comm	tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy,8,8
	.comm	tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL,8,8
	.comm	tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL,8,8
	.comm	sc_FH_TUERMODUL_CTRL_2375_2,8,8
	.comm	sc_FH_TUERMODUL_CTRL_2352_1,8,8
	.comm	sc_FH_TUERMODUL_CTRL_2329_1,8,8
	.comm	FH_TUERMODUL_CTRL__N,4,4
	.comm	FH_TUERMODUL_CTRL__N_copy,4,4
	.comm	FH_TUERMODUL_CTRL__N_old,4,4
	.comm	sc_FH_TUERMODUL_CTRL_1781_10,8,8
	.comm	sc_FH_TUERMODUL_CTRL_1739_10,8,8
	.comm	FH_TUERMODUL__POSITION,4,4
	.comm	FH_TUERMODUL__I_EIN,4,4
	.comm	FH_TUERMODUL__I_EIN_old,4,4
	.comm	FH_DU__MFH,4,4
	.comm	FH_DU__MFH_copy,4,4
	.comm	FH_DU__POSITION,4,4
	.comm	FH_DU__I_EIN,4,4
	.comm	FH_DU__I_EIN_old,4,4
	.comm	BLOCK_ERKENNUNG_CTRL__I_EIN_MAX,4,4
	.comm	BLOCK_ERKENNUNG_CTRL__I_EIN_MAX_copy,4,4
	.comm	BLOCK_ERKENNUNG_CTRL__N,4,4
	.comm	BLOCK_ERKENNUNG_CTRL__N_copy,4,4
	.comm	BLOCK_ERKENNUNG_CTRL__N_old,4,4
	.comm	FH_TUERMODUL_CTRL__INREVERS2,1,1
	.comm	FH_TUERMODUL_CTRL__INREVERS2_copy,1,1
	.comm	FH_TUERMODUL_CTRL__INREVERS1,1,1
	.comm	FH_TUERMODUL_CTRL__INREVERS1_copy,1,1
	.comm	FH_TUERMODUL_CTRL__FT,1,1
	.comm	FH_TUERMODUL__SFHZ_ZENTRAL,1,1
	.comm	FH_TUERMODUL__SFHZ_ZENTRAL_old,1,1
	.comm	FH_TUERMODUL__SFHZ_MEC,1,1
	.comm	FH_TUERMODUL__SFHZ_MEC_old,1,1
	.comm	FH_TUERMODUL__SFHA_ZENTRAL,1,1
	.comm	FH_TUERMODUL__SFHA_ZENTRAL_old,1,1
	.comm	FH_TUERMODUL__SFHA_MEC,1,1
	.comm	FH_TUERMODUL__SFHA_MEC_old,1,1
	.comm	FH_TUERMODUL__KL_50,1,1
	.comm	FH_TUERMODUL__BLOCK,1,1
	.comm	FH_TUERMODUL__BLOCK_copy,1,1
	.comm	FH_TUERMODUL__BLOCK_old,1,1
	.comm	FH_TUERMODUL__FT,1,1
	.comm	FH_TUERMODUL__SFHZ,1,1
	.comm	FH_TUERMODUL__SFHZ_copy,1,1
	.comm	FH_TUERMODUL__SFHZ_old,1,1
	.comm	FH_TUERMODUL__SFHA,1,1
	.comm	FH_TUERMODUL__SFHA_copy,1,1
	.comm	FH_TUERMODUL__SFHA_old,1,1
	.comm	FH_TUERMODUL__MFHZ,1,1
	.comm	FH_TUERMODUL__MFHZ_copy,1,1
	.comm	FH_TUERMODUL__MFHZ_old,1,1
	.comm	FH_TUERMODUL__MFHA,1,1
	.comm	FH_TUERMODUL__MFHA_copy,1,1
	.comm	FH_TUERMODUL__MFHA_old,1,1
	.comm	FH_TUERMODUL__EKS_LEISTE_AKTIV,1,1
	.comm	FH_TUERMODUL__EKS_LEISTE_AKTIV_old,1,1
	.comm	FH_TUERMODUL__COM_OPEN,1,1
	.comm	FH_TUERMODUL__COM_CLOSE,1,1
	.comm	FH_DU__KL_50,1,1
	.comm	FH_DU__S_FH_FTZU,1,1
	.comm	FH_DU__S_FH_FTAUF,1,1
	.comm	FH_DU__FT,1,1
	.comm	FH_DU__EKS_LEISTE_AKTIV,1,1
	.comm	FH_DU__EKS_LEISTE_AKTIV_old,1,1
	.comm	FH_DU__S_FH_TMBFAUFCAN,1,1
	.comm	FH_DU__S_FH_TMBFAUFCAN_copy,1,1
	.comm	FH_DU__S_FH_TMBFAUFCAN_old,1,1
	.comm	FH_DU__S_FH_TMBFZUCAN,1,1
	.comm	FH_DU__S_FH_TMBFZUCAN_copy,1,1
	.comm	FH_DU__S_FH_TMBFZUCAN_old,1,1
	.comm	FH_DU__S_FH_TMBFZUDISC,1,1
	.comm	FH_DU__S_FH_TMBFZUDISC_old,1,1
	.comm	FH_DU__S_FH_TMBFAUFDISC,1,1
	.comm	FH_DU__S_FH_TMBFAUFDISC_old,1,1
	.comm	FH_DU__S_FH_ZUDISC,1,1
	.comm	FH_DU__S_FH_AUFDISC,1,1
	.comm	FH_DU__DOOR_ID,1,1
	.comm	FH_DU__BLOCK,1,1
	.comm	FH_DU__BLOCK_copy,1,1
	.comm	FH_DU__BLOCK_old,1,1
	.comm	FH_DU__MFHZ,1,1
	.comm	FH_DU__MFHZ_copy,1,1
	.comm	FH_DU__MFHZ_old,1,1
	.comm	FH_DU__MFHA,1,1
	.comm	FH_DU__MFHA_copy,1,1
	.comm	FH_DU__MFHA_old,1,1
	.comm	time,8,8
	.comm	stable,1,1
	.comm	step,1,1
	.comm	NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state,1,1
	.comm	ZENTRAL_KINDERSICHERUNG_CTRL_next_state,1,1
	.comm	MEC_KINDERSICHERUNG_CTRL_next_state,1,1
	.comm	KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state,1,1
	.comm	B_FH_TUERMODUL_CTRL_next_state,1,1
	.comm	A_FH_TUERMODUL_CTRL_next_state,1,1
	.comm	WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state,1,1
	.comm	INITIALISIERT_FH_TUERMODUL_CTRL_next_state,1,1
	.comm	TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state,1,1
	.comm	MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state,1,1
	.comm	OEFFNEN_FH_TUERMODUL_CTRL_next_state,1,1
	.comm	SCHLIESSEN_FH_TUERMODUL_CTRL_next_state,1,1
	.comm	FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state,1,1
	.comm	EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state,1,1
	.comm	BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state,1,1
	.comm	BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state,1,1
	.text
	.globl	m_ain
	.type	m_ain, @function
m_ain:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	start
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	m_ain, .-m_ain
	.globl	interface
	.type	interface, @function
interface:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	Bitlist+4(%rip), %eax
	testb	%al, %al
	je	.L4
	movq	time(%rip), %rax
	movq	%rax, tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL(%rip)
.L4:
	movzbl	Bitlist+4(%rip), %eax
	testb	%al, %al
	jne	.L5
	movzbl	Bitlist+6(%rip), %eax
	testb	%al, %al
	je	.L6
.L5:
	movq	time(%rip), %rax
	movq	%rax, tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL(%rip)
.L6:
	movq	sc_FH_TUERMODUL_CTRL_2375_2(%rip), %rax
	testq	%rax, %rax
	je	.L7
	movq	time(%rip), %rdx
	movq	sc_FH_TUERMODUL_CTRL_2375_2(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	js	.L8
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L9
.L8:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L9:
	ucomisd	.LC0(%rip), %xmm0
	jb	.L7
	movb	$0, FH_TUERMODUL__MFHA_copy(%rip)
	movq	$0, sc_FH_TUERMODUL_CTRL_2375_2(%rip)
.L7:
	movq	sc_FH_TUERMODUL_CTRL_2352_1(%rip), %rax
	testq	%rax, %rax
	je	.L11
	movq	time(%rip), %rdx
	movq	sc_FH_TUERMODUL_CTRL_2352_1(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	js	.L12
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L13
.L12:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L13:
	ucomisd	.LC0(%rip), %xmm0
	jb	.L11
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movq	$0, sc_FH_TUERMODUL_CTRL_2352_1(%rip)
.L11:
	movq	sc_FH_TUERMODUL_CTRL_2329_1(%rip), %rax
	testq	%rax, %rax
	je	.L15
	movq	time(%rip), %rdx
	movq	sc_FH_TUERMODUL_CTRL_2329_1(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	js	.L16
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L17
.L16:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L17:
	ucomisd	.LC0(%rip), %xmm0
	jb	.L15
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movq	$0, sc_FH_TUERMODUL_CTRL_2329_1(%rip)
.L15:
	movq	sc_FH_TUERMODUL_CTRL_1781_10(%rip), %rax
	testq	%rax, %rax
	je	.L19
	movq	time(%rip), %rdx
	movq	sc_FH_TUERMODUL_CTRL_1781_10(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	js	.L20
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L21
.L20:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L21:
	ucomisd	.LC0(%rip), %xmm0
	jb	.L19
	movq	$0, sc_FH_TUERMODUL_CTRL_1781_10(%rip)
.L19:
	movq	sc_FH_TUERMODUL_CTRL_1739_10(%rip), %rax
	testq	%rax, %rax
	je	.L23
	movq	time(%rip), %rdx
	movq	sc_FH_TUERMODUL_CTRL_1739_10(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	js	.L24
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L25
.L24:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L25:
	ucomisd	.LC0(%rip), %xmm0
	jb	.L23
	movq	$0, sc_FH_TUERMODUL_CTRL_1739_10(%rip)
.L23:
	movzbl	Bitlist(%rip), %eax
	testb	%al, %al
	jne	.L27
	movl	BLOCK_ERKENNUNG_CTRL__N(%rip), %edx
	movl	BLOCK_ERKENNUNG_CTRL__N_old(%rip), %eax
	cmpl	%eax, %edx
	je	.L3
.L27:
	movq	time(%rip), %rax
	movq	%rax, tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy(%rip)
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	interface, .-interface
	.globl	init
	.type	init, @function
init:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy(%rip)
	movq	$0, tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL(%rip)
	movq	$0, tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL(%rip)
	movb	$0, NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state(%rip)
	movb	$0, ZENTRAL_KINDERSICHERUNG_CTRL_next_state(%rip)
	movb	$0, MEC_KINDERSICHERUNG_CTRL_next_state(%rip)
	movb	$0, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	movb	$0, B_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, A_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, OEFFNEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state(%rip)
	movb	$0, EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state(%rip)
	movb	$0, BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	movb	$0, BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init, .-init
	.globl	generic_KINDERSICHERUNG_CTRL
	.type	generic_KINDERSICHERUNG_CTRL, @function
generic_KINDERSICHERUNG_CTRL:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	Bitlist+10(%rip), %eax
	testb	%al, %al
	je	.L35
	movzbl	KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$2, %eax
	je	.L38
	cmpl	$3, %eax
	je	.L39
	cmpl	$1, %eax
	jne	.L63
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	testb	%al, %al
	jne	.L41
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	testb	%al, %al
	jne	.L41
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$0, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$3, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	movb	$0, ZENTRAL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L35
.L41:
	movzbl	ZENTRAL_KINDERSICHERUNG_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	jne	.L64
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	testb	%al, %al
	je	.L44
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL_old(%rip), %eax
	testb	%al, %al
	jne	.L44
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$1, ZENTRAL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L45
.L44:
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	testb	%al, %al
	je	.L46
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL_old(%rip), %eax
	testb	%al, %al
	jne	.L46
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$1, ZENTRAL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L45
.L46:
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	testb	%al, %al
	jne	.L47
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL_old(%rip), %eax
	testb	%al, %al
	je	.L47
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$1, ZENTRAL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L45
.L47:
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	testb	%al, %al
	jne	.L48
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL_old(%rip), %eax
	testb	%al, %al
	je	.L48
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$1, ZENTRAL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L45
.L48:
	jmp	.L45
.L64:
	movb	$0, stable(%rip)
	nop
.L45:
	jmp	.L35
.L38:
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	testb	%al, %al
	jne	.L49
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	testb	%al, %al
	jne	.L49
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$0, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$3, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	movb	$0, MEC_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L35
.L49:
	movzbl	MEC_KINDERSICHERUNG_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	jne	.L65
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	testb	%al, %al
	je	.L52
	movzbl	FH_TUERMODUL__SFHA_MEC_old(%rip), %eax
	testb	%al, %al
	jne	.L52
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$1, MEC_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L53
.L52:
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	testb	%al, %al
	je	.L54
	movzbl	FH_TUERMODUL__SFHZ_MEC_old(%rip), %eax
	testb	%al, %al
	jne	.L54
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$1, MEC_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L53
.L54:
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	testb	%al, %al
	jne	.L55
	movzbl	FH_TUERMODUL__SFHA_MEC_old(%rip), %eax
	testb	%al, %al
	je	.L55
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$1, MEC_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L53
.L55:
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	testb	%al, %al
	jne	.L56
	movzbl	FH_TUERMODUL__SFHZ_MEC_old(%rip), %eax
	testb	%al, %al
	je	.L56
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$1, MEC_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L53
.L56:
	jmp	.L53
.L65:
	movb	$0, stable(%rip)
	nop
.L53:
	jmp	.L35
.L39:
	movzbl	FH_TUERMODUL__KL_50(%rip), %eax
	testb	%al, %al
	jne	.L57
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	testb	%al, %al
	je	.L57
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	testb	%al, %al
	je	.L57
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$1, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$2, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L35
.L57:
	movzbl	FH_TUERMODUL__KL_50(%rip), %eax
	testb	%al, %al
	jne	.L58
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	testb	%al, %al
	je	.L58
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	testb	%al, %al
	jne	.L58
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$2, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L35
.L58:
	movzbl	FH_TUERMODUL__KL_50(%rip), %eax
	testb	%al, %al
	jne	.L59
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	testb	%al, %al
	jne	.L59
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	testb	%al, %al
	je	.L59
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$2, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L35
.L59:
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	testb	%al, %al
	jne	.L60
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	testb	%al, %al
	je	.L60
	movzbl	FH_TUERMODUL__KL_50(%rip), %eax
	testb	%al, %al
	jne	.L60
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$1, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L35
.L60:
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	testb	%al, %al
	je	.L61
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	testb	%al, %al
	je	.L61
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHA_copy(%rip)
	movb	$1, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$1, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L35
.L61:
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	testb	%al, %al
	je	.L62
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	testb	%al, %al
	jne	.L62
	movzbl	FH_TUERMODUL__KL_50(%rip), %eax
	testb	%al, %al
	jne	.L62
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__SFHZ_copy(%rip)
	movb	$1, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	jmp	.L35
.L62:
	jmp	.L35
.L63:
	movb	$0, stable(%rip)
	movb	$3, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
	nop
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	generic_KINDERSICHERUNG_CTRL, .-generic_KINDERSICHERUNG_CTRL
	.globl	generic_FH_TUERMODUL_CTRL
	.type	generic_FH_TUERMODUL_CTRL, @function
generic_FH_TUERMODUL_CTRL:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	Bitlist+13(%rip), %eax
	testb	%al, %al
	jne	.L67
	movzbl	Bitlist+15(%rip), %eax
	testb	%al, %al
	je	.L67
	movzbl	Bitlist+14(%rip), %eax
	testb	%al, %al
	jne	.L67
	movb	$0, Bitlist+4(%rip)
	movb	$0, Bitlist+6(%rip)
.L67:
	movzbl	Bitlist+13(%rip), %eax
	testb	%al, %al
	je	.L66
	movzbl	Bitlist+10(%rip), %eax
	testb	%al, %al
	jne	.L69
	movb	$3, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
.L69:
	movb	$0, Bitlist+11(%rip)
	movzbl	Bitlist+19(%rip), %eax
	testb	%al, %al
	jne	.L70
	movb	$0, Bitlist(%rip)
	movb	$1, BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
.L70:
	movb	$0, Bitlist+20(%rip)
	movb	$1, Bitlist+11(%rip)
	movb	$1, Bitlist+20(%rip)
	movzbl	B_FH_TUERMODUL_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$2, %eax
	je	.L72
	cmpl	$3, %eax
	je	.L73
	cmpl	$1, %eax
	jne	.L138
	movl	FH_TUERMODUL_CTRL__N(%rip), %eax
	cmpl	$59, %eax
	jne	.L75
	movl	FH_TUERMODUL_CTRL__N_old(%rip), %eax
	cmpl	$59, %eax
	je	.L75
	movb	$0, stable(%rip)
	movb	$3, B_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$3, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L76
.L75:
	jmp	.L76
.L72:
	movzbl	FH_TUERMODUL__BLOCK(%rip), %eax
	testb	%al, %al
	je	.L77
	movzbl	FH_TUERMODUL__BLOCK_old(%rip), %eax
	testb	%al, %al
	jne	.L77
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	testb	%al, %al
	je	.L77
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movq	time(%rip), %rax
	movq	%rax, sc_FH_TUERMODUL_CTRL_2329_1(%rip)
	movb	$3, B_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$3, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L76
.L77:
	movzbl	NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$2, %eax
	je	.L79
	cmpl	$3, %eax
	je	.L80
	cmpl	$1, %eax
	jne	.L139
	movzbl	FH_TUERMODUL__SFHZ(%rip), %eax
	testb	%al, %al
	jne	.L82
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movb	$3, NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state(%rip)
	jmp	.L83
.L82:
	jmp	.L83
.L79:
	movzbl	FH_TUERMODUL__SFHA(%rip), %eax
	testb	%al, %al
	jne	.L84
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHA_copy(%rip)
	movb	$3, NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state(%rip)
	jmp	.L83
.L84:
	jmp	.L83
.L80:
	movzbl	FH_TUERMODUL__SFHA(%rip), %eax
	testb	%al, %al
	je	.L85
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__MFHA_copy(%rip)
	movb	$2, NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state(%rip)
	jmp	.L83
.L85:
	movzbl	FH_TUERMODUL__SFHZ(%rip), %eax
	testb	%al, %al
	je	.L86
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__MFHZ_copy(%rip)
	movb	$1, NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state(%rip)
	jmp	.L83
.L86:
	jmp	.L83
.L139:
	movb	$0, stable(%rip)
	movb	$3, NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state(%rip)
	nop
.L83:
	jmp	.L76
.L73:
	movl	FH_TUERMODUL_CTRL__N(%rip), %eax
	cmpl	$60, %eax
	jle	.L87
	movl	FH_TUERMODUL_CTRL__N_old(%rip), %eax
	cmpl	$60, %eax
	jg	.L87
	movzbl	FH_TUERMODUL_CTRL__INREVERS1(%rip), %eax
	testb	%al, %al
	jne	.L87
	movzbl	FH_TUERMODUL_CTRL__INREVERS2(%rip), %eax
	testb	%al, %al
	jne	.L87
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movb	$0, FH_TUERMODUL__MFHA_copy(%rip)
	movb	$1, B_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L76
.L87:
	movzbl	FH_TUERMODUL__BLOCK(%rip), %eax
	testb	%al, %al
	je	.L88
	movzbl	FH_TUERMODUL__BLOCK_old(%rip), %eax
	testb	%al, %al
	jne	.L88
	movzbl	FH_TUERMODUL__MFHA(%rip), %eax
	testb	%al, %al
	je	.L88
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHA_copy(%rip)
	movq	time(%rip), %rax
	movq	%rax, sc_FH_TUERMODUL_CTRL_2375_2(%rip)
	movb	$2, B_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$3, NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state(%rip)
	jmp	.L76
.L88:
	movzbl	FH_TUERMODUL__BLOCK(%rip), %eax
	testb	%al, %al
	je	.L89
	movzbl	FH_TUERMODUL__BLOCK_old(%rip), %eax
	testb	%al, %al
	jne	.L89
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	testb	%al, %al
	je	.L89
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movq	time(%rip), %rax
	movq	%rax, sc_FH_TUERMODUL_CTRL_2352_1(%rip)
	movb	$2, B_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$3, NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state(%rip)
	jmp	.L76
.L89:
	movzbl	INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$2, %eax
	je	.L91
	cmpl	$3, %eax
	je	.L92
	cmpl	$1, %eax
	jne	.L140
	movl	FH_TUERMODUL__POSITION(%rip), %eax
	cmpl	$404, %eax
	jle	.L94
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHA_copy(%rip)
	movb	$3, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L95
.L94:
	movzbl	OEFFNEN_FH_TUERMODUL_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.L97
	cmpl	$2, %eax
	je	.L98
	jmp	.L141
.L97:
	movzbl	FH_TUERMODUL__SFHZ(%rip), %eax
	testb	%al, %al
	je	.L99
	movzbl	FH_TUERMODUL__SFHZ_old(%rip), %eax
	testb	%al, %al
	je	.L100
.L99:
	movzbl	FH_TUERMODUL__SFHA(%rip), %eax
	testb	%al, %al
	je	.L101
	movzbl	FH_TUERMODUL__SFHA_old(%rip), %eax
	testb	%al, %al
	jne	.L101
.L100:
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHA_copy(%rip)
	movb	$3, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, OEFFNEN_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L102
.L101:
	jmp	.L102
.L98:
	movzbl	FH_TUERMODUL__SFHZ(%rip), %eax
	testb	%al, %al
	je	.L103
	movzbl	FH_TUERMODUL__SFHZ_old(%rip), %eax
	testb	%al, %al
	jne	.L103
	movb	$0, stable(%rip)
	movb	$1, OEFFNEN_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L102
.L103:
	movzbl	FH_TUERMODUL__SFHA(%rip), %eax
	testb	%al, %al
	jne	.L104
	movzbl	FH_TUERMODUL__SFHA_old(%rip), %eax
	testb	%al, %al
	je	.L104
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHA_copy(%rip)
	movb	$3, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, OEFFNEN_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L102
.L104:
	jmp	.L102
.L141:
	movb	$0, stable(%rip)
	movb	$2, OEFFNEN_FH_TUERMODUL_CTRL_next_state(%rip)
	nop
.L102:
	jmp	.L95
.L91:
	movl	FH_TUERMODUL__POSITION(%rip), %eax
	testl	%eax, %eax
	jg	.L105
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movb	$3, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L95
.L105:
	movzbl	SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.L107
	cmpl	$2, %eax
	je	.L108
	jmp	.L142
.L107:
	movzbl	FH_TUERMODUL__SFHA(%rip), %eax
	testb	%al, %al
	je	.L109
	movzbl	FH_TUERMODUL__SFHA_old(%rip), %eax
	testb	%al, %al
	je	.L110
.L109:
	movzbl	FH_TUERMODUL__SFHZ(%rip), %eax
	testb	%al, %al
	je	.L111
	movzbl	FH_TUERMODUL__SFHZ_old(%rip), %eax
	testb	%al, %al
	jne	.L111
.L110:
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movb	$3, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L112
.L111:
	movzbl	TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.L114
	cmpl	$2, %eax
	je	.L115
	jmp	.L143
.L114:
	movb	$0, Bitlist+23(%rip)
	movzbl	Bitlist+22(%rip), %eax
	testb	%al, %al
	je	.L116
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__MFHZ_copy(%rip)
	movb	$0, FH_TUERMODUL_CTRL__INREVERS2_copy(%rip)
	movb	$2, TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, FH_TUERMODUL__MFHA_copy(%rip)
	movb	$1, Bitlist+17(%rip)
	jmp	.L117
.L116:
	jmp	.L117
.L115:
	movzbl	Bitlist+24(%rip), %eax
	testb	%al, %al
	je	.L118
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL_CTRL__INREVERS2_copy(%rip)
	movb	$1, Bitlist+23(%rip)
	movb	$1, TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, Bitlist+17(%rip)
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movq	time(%rip), %rax
	movq	%rax, sc_FH_TUERMODUL_CTRL_1781_10(%rip)
	movb	$1, FH_TUERMODUL__MFHA_copy(%rip)
	jmp	.L117
.L118:
	jmp	.L117
.L143:
	movb	$0, stable(%rip)
	movb	$2, TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$1, Bitlist+17(%rip)
	nop
.L117:
	jmp	.L112
.L108:
	movzbl	FH_TUERMODUL__SFHZ(%rip), %eax
	testb	%al, %al
	jne	.L119
	movzbl	FH_TUERMODUL__SFHZ_old(%rip), %eax
	testb	%al, %al
	je	.L119
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movb	$3, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L112
.L119:
	movzbl	MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.L121
	cmpl	$2, %eax
	je	.L122
	jmp	.L144
.L121:
	movb	$0, Bitlist+23(%rip)
	movzbl	Bitlist+22(%rip), %eax
	testb	%al, %al
	je	.L123
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL_CTRL__INREVERS1_copy(%rip)
	movb	$2, MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, FH_TUERMODUL__MFHA_copy(%rip)
	movb	$1, Bitlist+17(%rip)
	movb	$1, FH_TUERMODUL__MFHZ_copy(%rip)
	jmp	.L124
.L123:
	jmp	.L124
.L122:
	movzbl	Bitlist+24(%rip), %eax
	testb	%al, %al
	je	.L125
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__MFHZ_copy(%rip)
	movb	$1, FH_TUERMODUL_CTRL__INREVERS1_copy(%rip)
	movb	$1, Bitlist+23(%rip)
	movb	$1, MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, Bitlist+17(%rip)
	movq	time(%rip), %rax
	movq	%rax, sc_FH_TUERMODUL_CTRL_1739_10(%rip)
	movb	$1, FH_TUERMODUL__MFHA_copy(%rip)
	jmp	.L124
.L125:
	movzbl	FH_TUERMODUL__SFHA(%rip), %eax
	testb	%al, %al
	je	.L126
	movzbl	FH_TUERMODUL__SFHA_old(%rip), %eax
	testb	%al, %al
	jne	.L126
	movb	$0, stable(%rip)
	movb	$1, SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$0, MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L124
.L126:
	jmp	.L124
.L144:
	movb	$0, stable(%rip)
	movb	$2, MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$1, Bitlist+17(%rip)
	movb	$1, FH_TUERMODUL__MFHZ_copy(%rip)
	nop
.L124:
	jmp	.L112
.L142:
	movb	$0, stable(%rip)
	movb	$2, SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$2, MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$1, Bitlist+17(%rip)
	movb	$1, FH_TUERMODUL__MFHZ_copy(%rip)
	nop
.L112:
	jmp	.L95
.L92:
	movzbl	FH_TUERMODUL__SFHZ(%rip), %eax
	testb	%al, %al
	je	.L127
	movzbl	FH_TUERMODUL__SFHZ_old(%rip), %eax
	testb	%al, %al
	jne	.L127
	movl	FH_TUERMODUL__POSITION(%rip), %eax
	testl	%eax, %eax
	jle	.L127
	movb	$0, stable(%rip)
	movb	$2, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$2, SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$2, MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$1, Bitlist+17(%rip)
	movb	$1, FH_TUERMODUL__MFHZ_copy(%rip)
	jmp	.L95
.L127:
	movzbl	FH_TUERMODUL__SFHA(%rip), %eax
	testb	%al, %al
	je	.L128
	movzbl	FH_TUERMODUL__SFHA_old(%rip), %eax
	testb	%al, %al
	jne	.L128
	movl	FH_TUERMODUL__POSITION(%rip), %eax
	cmpl	$404, %eax
	jg	.L128
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__MFHA_copy(%rip)
	movb	$1, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$2, OEFFNEN_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L95
.L128:
	jmp	.L95
.L140:
	movb	$0, stable(%rip)
	movb	$3, INITIALISIERT_FH_TUERMODUL_CTRL_next_state(%rip)
	nop
.L95:
	jmp	.L76
.L138:
	movb	$0, stable(%rip)
	movb	$2, B_FH_TUERMODUL_CTRL_next_state(%rip)
	nop
.L76:
	movzbl	A_FH_TUERMODUL_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	jne	.L145
	movb	$0, Bitlist+5(%rip)
	movzbl	step(%rip), %eax
	cmpb	$1, %al
	jne	.L131
	movq	tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL(%rip), %rax
	testq	%rax, %rax
	je	.L131
	movq	time(%rip), %rdx
	movq	tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$1, %rax
	jne	.L131
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	testb	%al, %al
	jne	.L132
	movzbl	FH_TUERMODUL__MFHA(%rip), %eax
	testb	%al, %al
	je	.L131
.L132:
	movb	$0, stable(%rip)
	movl	FH_TUERMODUL_CTRL__N(%rip), %eax
	addl	$1, %eax
	movl	%eax, FH_TUERMODUL_CTRL__N(%rip)
	movb	$1, A_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$1, Bitlist+5(%rip)
	movb	$1, WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L133
.L131:
	movzbl	WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	jne	.L146
	movzbl	step(%rip), %eax
	cmpb	$1, %al
	jne	.L136
	movq	tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL(%rip), %rax
	testq	%rax, %rax
	je	.L136
	movq	time(%rip), %rdx
	movq	tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$3, %rax
	jne	.L136
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	testb	%al, %al
	jne	.L136
	movzbl	FH_TUERMODUL__MFHA(%rip), %eax
	testb	%al, %al
	jne	.L136
	movl	FH_TUERMODUL_CTRL__N(%rip), %eax
	testl	%eax, %eax
	jle	.L136
	movb	$0, stable(%rip)
	movl	FH_TUERMODUL_CTRL__N(%rip), %eax
	subl	$1, %eax
	movl	%eax, FH_TUERMODUL_CTRL__N(%rip)
	movb	$1, WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state(%rip)
	jmp	.L137
.L136:
	jmp	.L137
.L146:
	movb	$0, stable(%rip)
	movb	$1, Bitlist+5(%rip)
	movb	$1, WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state(%rip)
	nop
.L137:
	jmp	.L133
.L145:
	movb	$0, stable(%rip)
	movl	$0, FH_TUERMODUL_CTRL__N(%rip)
	movb	$1, A_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$1, Bitlist+5(%rip)
	movb	$1, WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state(%rip)
	nop
.L133:
	movzbl	Bitlist+4(%rip), %eax
	movb	%al, Bitlist+5(%rip)
	movzbl	Bitlist+6(%rip), %eax
	movb	%al, Bitlist+7(%rip)
.L66:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	generic_FH_TUERMODUL_CTRL, .-generic_FH_TUERMODUL_CTRL
	.globl	generic_EINKLEMMSCHUTZ_CTRL
	.type	generic_EINKLEMMSCHUTZ_CTRL, @function
generic_EINKLEMMSCHUTZ_CTRL:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	Bitlist+16(%rip), %eax
	testb	%al, %al
	je	.L147
	movzbl	EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.L150
	cmpl	$2, %eax
	je	.L151
	jmp	.L155
.L150:
	movzbl	FH_TUERMODUL__EKS_LEISTE_AKTIV(%rip), %eax
	testb	%al, %al
	je	.L152
	movzbl	FH_TUERMODUL__EKS_LEISTE_AKTIV_old(%rip), %eax
	testb	%al, %al
	jne	.L152
	movzbl	FH_TUERMODUL__SFHZ(%rip), %eax
	testb	%al, %al
	je	.L153
	movzbl	FH_TUERMODUL__SFHA(%rip), %eax
	testb	%al, %al
	jne	.L152
.L153:
	movb	$0, stable(%rip)
	movb	$1, Bitlist+24(%rip)
	movb	$2, EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state(%rip)
	jmp	.L147
.L152:
	jmp	.L147
.L151:
	movb	$0, Bitlist+24(%rip)
	movzbl	FH_TUERMODUL__EKS_LEISTE_AKTIV(%rip), %eax
	testb	%al, %al
	jne	.L154
	movzbl	FH_TUERMODUL__EKS_LEISTE_AKTIV_old(%rip), %eax
	testb	%al, %al
	je	.L154
	movb	$0, stable(%rip)
	movb	$1, EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state(%rip)
	jmp	.L147
.L154:
	jmp	.L147
.L155:
	movb	$0, stable(%rip)
	movb	$1, EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state(%rip)
	nop
.L147:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	generic_EINKLEMMSCHUTZ_CTRL, .-generic_EINKLEMMSCHUTZ_CTRL
	.globl	generic_BLOCK_ERKENNUNG_CTRL
	.type	generic_BLOCK_ERKENNUNG_CTRL, @function
generic_BLOCK_ERKENNUNG_CTRL:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	Bitlist+19(%rip), %eax
	testb	%al, %al
	jne	.L157
	movzbl	Bitlist+21(%rip), %eax
	testb	%al, %al
	je	.L157
	movzbl	Bitlist+20(%rip), %eax
	testb	%al, %al
	jne	.L157
	movb	$0, Bitlist(%rip)
.L157:
	movzbl	Bitlist+19(%rip), %eax
	testb	%al, %al
	je	.L156
	movzbl	BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.L160
	cmpl	$2, %eax
	je	.L161
	jmp	.L178
.L160:
	movl	FH_TUERMODUL__I_EIN(%rip), %edx
	movl	FH_TUERMODUL__I_EIN_old(%rip), %eax
	cmpl	%eax, %edx
	je	.L162
	movl	FH_TUERMODUL__I_EIN(%rip), %eax
	testl	%eax, %eax
	jle	.L162
	movb	$0, stable(%rip)
	movb	$0, FH_TUERMODUL__BLOCK_copy(%rip)
	movb	$2, BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	movl	$0, BLOCK_ERKENNUNG_CTRL__N(%rip)
	movl	$2, BLOCK_ERKENNUNG_CTRL__I_EIN_MAX(%rip)
	movb	$3, BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	movb	$1, Bitlist(%rip)
	jmp	.L156
.L162:
	jmp	.L156
.L161:
	movzbl	FH_TUERMODUL__MFHA(%rip), %eax
	testb	%al, %al
	jne	.L163
	movzbl	FH_TUERMODUL__MFHA_old(%rip), %eax
	testb	%al, %al
	jne	.L164
.L163:
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	testb	%al, %al
	jne	.L165
	movzbl	FH_TUERMODUL__MFHZ_old(%rip), %eax
	testb	%al, %al
	je	.L165
.L164:
	movb	$0, stable(%rip)
	movb	$1, BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	movb	$0, BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	jmp	.L156
.L165:
	movzbl	BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$2, %eax
	je	.L167
	cmpl	$3, %eax
	je	.L168
	cmpl	$1, %eax
	je	.L180
	jmp	.L179
.L167:
	movl	BLOCK_ERKENNUNG_CTRL__I_EIN_MAX(%rip), %eax
	leal	-2(%rax), %edx
	movl	FH_TUERMODUL__I_EIN(%rip), %eax
	cmpl	%eax, %edx
	jge	.L171
	movb	$0, stable(%rip)
	movb	$1, FH_TUERMODUL__BLOCK_copy(%rip)
	movb	$1, BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	jmp	.L170
.L171:
	jmp	.L170
.L168:
	movb	$0, Bitlist(%rip)
	movl	BLOCK_ERKENNUNG_CTRL__N(%rip), %eax
	cmpl	$11, %eax
	jne	.L172
	movl	BLOCK_ERKENNUNG_CTRL__N_old(%rip), %eax
	cmpl	$11, %eax
	je	.L172
	movb	$0, stable(%rip)
	movb	$2, BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	jmp	.L170
.L172:
	movzbl	BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state(%rip), %eax
	cmpb	$3, %al
	jne	.L173
	movzbl	step(%rip), %eax
	cmpb	$1, %al
	jne	.L173
	movq	tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy(%rip), %rax
	testq	%rax, %rax
	je	.L173
	movq	time(%rip), %rdx
	movq	tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	js	.L174
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L175
.L174:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L175:
	ucomisd	.LC1(%rip), %xmm0
	jp	.L181
	ucomisd	.LC1(%rip), %xmm0
	je	.L177
	jmp	.L181
.L177:
	movl	BLOCK_ERKENNUNG_CTRL__N(%rip), %eax
	addl	$1, %eax
	movl	%eax, BLOCK_ERKENNUNG_CTRL__N(%rip)
	movl	FH_TUERMODUL__I_EIN(%rip), %edx
	movl	BLOCK_ERKENNUNG_CTRL__I_EIN_MAX(%rip), %eax
	cmpl	%eax, %edx
	jle	.L173
	movl	FH_TUERMODUL__I_EIN(%rip), %eax
	movl	%eax, BLOCK_ERKENNUNG_CTRL__I_EIN_MAX(%rip)
	jmp	.L181
.L173:
	jmp	.L181
.L179:
	movb	$0, stable(%rip)
	movl	$0, BLOCK_ERKENNUNG_CTRL__N(%rip)
	movl	$2, BLOCK_ERKENNUNG_CTRL__I_EIN_MAX(%rip)
	movb	$3, BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	movb	$1, Bitlist(%rip)
	jmp	.L170
.L180:
	nop
	jmp	.L156
.L181:
	nop
.L170:
	jmp	.L156
.L178:
	movb	$0, stable(%rip)
	movb	$1, BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
	nop
.L156:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	generic_BLOCK_ERKENNUNG_CTRL, .-generic_BLOCK_ERKENNUNG_CTRL
	.globl	FH_DU
	.type	FH_DU, @function
FH_DU:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$1, time(%rip)
	movb	$0, stable(%rip)
	movb	$0, step(%rip)
	jmp	.L183
.L201:
	movb	$1, stable(%rip)
	movzbl	step(%rip), %eax
	addl	$1, %eax
	movb	%al, step(%rip)
	movzbl	FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state(%rip), %eax
	movsbl	%al, %eax
	cmpl	$2, %eax
	je	.L185
	cmpl	$3, %eax
	je	.L186
	cmpl	$1, %eax
	jne	.L202
	movzbl	FH_DU__MFHZ(%rip), %eax
	testb	%al, %al
	jne	.L188
	movzbl	FH_DU__MFHZ_old(%rip), %eax
	testb	%al, %al
	je	.L188
	movb	$0, stable(%rip)
	movl	$0, FH_DU__MFH(%rip)
	movb	$2, FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state(%rip)
	jmp	.L189
.L188:
	jmp	.L189
.L185:
	movzbl	FH_DU__MFHZ(%rip), %eax
	testb	%al, %al
	je	.L190
	movzbl	FH_DU__MFHZ_old(%rip), %eax
	testb	%al, %al
	jne	.L190
	movb	$0, stable(%rip)
	movl	$-100, FH_DU__MFH(%rip)
	movb	$1, FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state(%rip)
	jmp	.L189
.L190:
	movzbl	FH_DU__MFHA(%rip), %eax
	testb	%al, %al
	je	.L191
	movzbl	FH_DU__MFHA_old(%rip), %eax
	testb	%al, %al
	jne	.L191
	movb	$0, stable(%rip)
	movl	$100, FH_DU__MFH(%rip)
	movb	$3, FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state(%rip)
	jmp	.L189
.L191:
	jmp	.L189
.L186:
	movzbl	FH_DU__MFHA(%rip), %eax
	testb	%al, %al
	jne	.L192
	movzbl	FH_DU__MFHA_old(%rip), %eax
	testb	%al, %al
	je	.L192
	movb	$0, stable(%rip)
	movl	$0, FH_DU__MFH(%rip)
	movb	$2, FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state(%rip)
	jmp	.L189
.L192:
	jmp	.L189
.L202:
	movb	$0, stable(%rip)
	movl	$0, FH_DU__MFH(%rip)
	movb	$2, FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state(%rip)
	nop
.L189:
	movzbl	Bitlist+10(%rip), %eax
	testb	%al, %al
	jne	.L193
	movb	$3, KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state(%rip)
.L193:
	movb	$0, Bitlist+11(%rip)
	movzbl	Bitlist+16(%rip), %eax
	testb	%al, %al
	jne	.L194
	movb	$1, EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state(%rip)
.L194:
	movb	$0, Bitlist+17(%rip)
	movzbl	Bitlist+19(%rip), %eax
	testb	%al, %al
	jne	.L195
	movb	$0, Bitlist(%rip)
	movb	$1, BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state(%rip)
.L195:
	movb	$0, Bitlist+20(%rip)
	movzbl	Bitlist+13(%rip), %eax
	testb	%al, %al
	jne	.L196
	movb	$0, Bitlist+4(%rip)
	movb	$0, Bitlist+6(%rip)
	movb	$2, B_FH_TUERMODUL_CTRL_next_state(%rip)
	movl	$0, FH_TUERMODUL_CTRL__N(%rip)
	movb	$1, A_FH_TUERMODUL_CTRL_next_state(%rip)
	movb	$1, Bitlist+5(%rip)
	movb	$1, WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state(%rip)
.L196:
	movb	$0, Bitlist+14(%rip)
	movb	$1, Bitlist+11(%rip)
	movb	$1, Bitlist+17(%rip)
	movb	$1, Bitlist+20(%rip)
	movb	$1, Bitlist+14(%rip)
	movzbl	FH_DU__S_FH_TMBFZUCAN(%rip), %edx
	movzbl	FH_DU__S_FH_TMBFZUCAN_old(%rip), %eax
	cmpb	%al, %dl
	je	.L197
	movzbl	FH_DU__DOOR_ID(%rip), %eax
	testb	%al, %al
	jne	.L197
	movzbl	FH_DU__S_FH_TMBFZUCAN(%rip), %eax
	movb	%al, FH_DU__S_FH_FTZU(%rip)
.L197:
	movzbl	FH_DU__S_FH_TMBFZUDISC(%rip), %edx
	movzbl	FH_DU__S_FH_TMBFZUDISC_old(%rip), %eax
	cmpb	%al, %dl
	je	.L198
	movzbl	FH_DU__DOOR_ID(%rip), %eax
	testb	%al, %al
	je	.L198
	movzbl	FH_DU__S_FH_TMBFZUDISC(%rip), %eax
	movb	%al, FH_DU__S_FH_TMBFZUCAN(%rip)
.L198:
	movzbl	FH_DU__S_FH_TMBFAUFCAN(%rip), %edx
	movzbl	FH_DU__S_FH_TMBFAUFCAN_old(%rip), %eax
	cmpb	%al, %dl
	je	.L199
	movzbl	FH_DU__DOOR_ID(%rip), %eax
	testb	%al, %al
	jne	.L199
	movzbl	FH_DU__S_FH_TMBFAUFCAN(%rip), %eax
	movb	%al, FH_DU__S_FH_FTAUF(%rip)
.L199:
	movzbl	FH_DU__S_FH_TMBFAUFDISC(%rip), %edx
	movzbl	FH_DU__S_FH_TMBFAUFDISC_old(%rip), %eax
	cmpb	%al, %dl
	je	.L200
	movzbl	FH_DU__DOOR_ID(%rip), %eax
	testb	%al, %al
	je	.L200
	movzbl	FH_DU__S_FH_TMBFAUFDISC(%rip), %eax
	movb	%al, FH_DU__S_FH_TMBFAUFCAN(%rip)
.L200:
	movzbl	Bitlist+12(%rip), %eax
	movb	%al, Bitlist+10(%rip)
	movzbl	Bitlist+15(%rip), %eax
	movb	%al, Bitlist+13(%rip)
	movzbl	Bitlist+18(%rip), %eax
	movb	%al, Bitlist+16(%rip)
	movzbl	Bitlist+21(%rip), %eax
	movb	%al, Bitlist+19(%rip)
	movzbl	FH_DU__S_FH_AUFDISC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_MEC(%rip)
	movzbl	FH_DU__S_FH_FTAUF(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_ZENTRAL(%rip)
	movzbl	FH_DU__S_FH_ZUDISC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_MEC(%rip)
	movzbl	FH_DU__S_FH_FTZU(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_ZENTRAL(%rip)
	call	generic_KINDERSICHERUNG_CTRL
	movzbl	FH_TUERMODUL__MFHA(%rip), %eax
	movb	%al, FH_DU__MFHA(%rip)
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	movb	%al, FH_DU__MFHZ(%rip)
	movl	FH_TUERMODUL__I_EIN(%rip), %eax
	movl	%eax, FH_DU__I_EIN(%rip)
	movzbl	FH_TUERMODUL__EKS_LEISTE_AKTIV(%rip), %eax
	movb	%al, FH_DU__EKS_LEISTE_AKTIV(%rip)
	movl	FH_TUERMODUL__POSITION(%rip), %eax
	movl	%eax, FH_DU__POSITION(%rip)
	movzbl	FH_TUERMODUL__FT(%rip), %eax
	movb	%al, FH_DU__FT(%rip)
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	movb	%al, FH_DU__S_FH_AUFDISC(%rip)
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	movb	%al, FH_DU__S_FH_FTAUF(%rip)
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	movb	%al, FH_DU__S_FH_ZUDISC(%rip)
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	movb	%al, FH_DU__S_FH_FTZU(%rip)
	movzbl	FH_TUERMODUL__KL_50(%rip), %eax
	movb	%al, FH_DU__KL_50(%rip)
	movzbl	FH_TUERMODUL__BLOCK(%rip), %eax
	movb	%al, FH_DU__BLOCK(%rip)
	movzbl	FH_DU__S_FH_AUFDISC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_MEC(%rip)
	movzbl	FH_DU__S_FH_FTAUF(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_ZENTRAL(%rip)
	movzbl	FH_DU__S_FH_ZUDISC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_MEC(%rip)
	movzbl	FH_DU__S_FH_FTZU(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_ZENTRAL(%rip)
	call	generic_FH_TUERMODUL_CTRL
	movzbl	FH_TUERMODUL__MFHA(%rip), %eax
	movb	%al, FH_DU__MFHA(%rip)
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	movb	%al, FH_DU__MFHZ(%rip)
	movl	FH_TUERMODUL__I_EIN(%rip), %eax
	movl	%eax, FH_DU__I_EIN(%rip)
	movzbl	FH_TUERMODUL__EKS_LEISTE_AKTIV(%rip), %eax
	movb	%al, FH_DU__EKS_LEISTE_AKTIV(%rip)
	movl	FH_TUERMODUL__POSITION(%rip), %eax
	movl	%eax, FH_DU__POSITION(%rip)
	movzbl	FH_TUERMODUL__FT(%rip), %eax
	movb	%al, FH_DU__FT(%rip)
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	movb	%al, FH_DU__S_FH_AUFDISC(%rip)
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	movb	%al, FH_DU__S_FH_FTAUF(%rip)
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	movb	%al, FH_DU__S_FH_ZUDISC(%rip)
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	movb	%al, FH_DU__S_FH_FTZU(%rip)
	movzbl	FH_TUERMODUL__KL_50(%rip), %eax
	movb	%al, FH_DU__KL_50(%rip)
	movzbl	FH_TUERMODUL__BLOCK(%rip), %eax
	movb	%al, FH_DU__BLOCK(%rip)
	movzbl	FH_DU__S_FH_AUFDISC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_MEC(%rip)
	movzbl	FH_DU__S_FH_FTAUF(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_ZENTRAL(%rip)
	movzbl	FH_DU__S_FH_ZUDISC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_MEC(%rip)
	movzbl	FH_DU__S_FH_FTZU(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_ZENTRAL(%rip)
	call	generic_EINKLEMMSCHUTZ_CTRL
	movzbl	FH_TUERMODUL__MFHA(%rip), %eax
	movb	%al, FH_DU__MFHA(%rip)
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	movb	%al, FH_DU__MFHZ(%rip)
	movl	FH_TUERMODUL__I_EIN(%rip), %eax
	movl	%eax, FH_DU__I_EIN(%rip)
	movzbl	FH_TUERMODUL__EKS_LEISTE_AKTIV(%rip), %eax
	movb	%al, FH_DU__EKS_LEISTE_AKTIV(%rip)
	movl	FH_TUERMODUL__POSITION(%rip), %eax
	movl	%eax, FH_DU__POSITION(%rip)
	movzbl	FH_TUERMODUL__FT(%rip), %eax
	movb	%al, FH_DU__FT(%rip)
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	movb	%al, FH_DU__S_FH_AUFDISC(%rip)
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	movb	%al, FH_DU__S_FH_FTAUF(%rip)
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	movb	%al, FH_DU__S_FH_ZUDISC(%rip)
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	movb	%al, FH_DU__S_FH_FTZU(%rip)
	movzbl	FH_TUERMODUL__KL_50(%rip), %eax
	movb	%al, FH_DU__KL_50(%rip)
	movzbl	FH_TUERMODUL__BLOCK(%rip), %eax
	movb	%al, FH_DU__BLOCK(%rip)
	movzbl	FH_DU__S_FH_AUFDISC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_MEC(%rip)
	movzbl	FH_DU__S_FH_FTAUF(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_ZENTRAL(%rip)
	movzbl	FH_DU__S_FH_ZUDISC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_MEC(%rip)
	movzbl	FH_DU__S_FH_FTZU(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_ZENTRAL(%rip)
	call	generic_BLOCK_ERKENNUNG_CTRL
	movzbl	FH_TUERMODUL__MFHA(%rip), %eax
	movb	%al, FH_DU__MFHA(%rip)
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	movb	%al, FH_DU__MFHZ(%rip)
	movl	FH_TUERMODUL__I_EIN(%rip), %eax
	movl	%eax, FH_DU__I_EIN(%rip)
	movzbl	FH_TUERMODUL__EKS_LEISTE_AKTIV(%rip), %eax
	movb	%al, FH_DU__EKS_LEISTE_AKTIV(%rip)
	movl	FH_TUERMODUL__POSITION(%rip), %eax
	movl	%eax, FH_DU__POSITION(%rip)
	movzbl	FH_TUERMODUL__FT(%rip), %eax
	movb	%al, FH_DU__FT(%rip)
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	movb	%al, FH_DU__S_FH_AUFDISC(%rip)
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	movb	%al, FH_DU__S_FH_FTAUF(%rip)
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	movb	%al, FH_DU__S_FH_ZUDISC(%rip)
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	movb	%al, FH_DU__S_FH_FTZU(%rip)
	movzbl	FH_TUERMODUL__KL_50(%rip), %eax
	movb	%al, FH_DU__KL_50(%rip)
	movzbl	FH_TUERMODUL__BLOCK(%rip), %eax
	movb	%al, FH_DU__BLOCK(%rip)
	movzbl	Bitlist+10(%rip), %eax
	movb	%al, Bitlist+11(%rip)
	movzbl	Bitlist+13(%rip), %eax
	movb	%al, Bitlist+14(%rip)
	movzbl	Bitlist+16(%rip), %eax
	movb	%al, Bitlist+17(%rip)
	movzbl	Bitlist+19(%rip), %eax
	movb	%al, Bitlist+20(%rip)
	movl	FH_TUERMODUL_CTRL__N(%rip), %eax
	movl	%eax, FH_TUERMODUL_CTRL__N_old(%rip)
	movl	FH_TUERMODUL__I_EIN(%rip), %eax
	movl	%eax, FH_TUERMODUL__I_EIN_old(%rip)
	movl	FH_DU__MFH_copy(%rip), %eax
	movl	%eax, FH_DU__MFH(%rip)
	movl	FH_DU__I_EIN(%rip), %eax
	movl	%eax, FH_DU__I_EIN_old(%rip)
	movl	BLOCK_ERKENNUNG_CTRL__N(%rip), %eax
	movl	%eax, BLOCK_ERKENNUNG_CTRL__N_old(%rip)
	movzbl	FH_TUERMODUL__SFHZ_ZENTRAL(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_ZENTRAL_old(%rip)
	movzbl	FH_TUERMODUL__SFHZ_MEC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_MEC_old(%rip)
	movzbl	FH_TUERMODUL__SFHA_ZENTRAL(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_ZENTRAL_old(%rip)
	movzbl	FH_TUERMODUL__SFHA_MEC(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_MEC_old(%rip)
	movzbl	FH_TUERMODUL__BLOCK_copy(%rip), %eax
	movb	%al, FH_TUERMODUL__BLOCK(%rip)
	movzbl	FH_TUERMODUL__BLOCK(%rip), %eax
	movb	%al, FH_TUERMODUL__BLOCK_old(%rip)
	movzbl	FH_TUERMODUL__SFHZ_copy(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ(%rip)
	movzbl	FH_TUERMODUL__SFHZ(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHZ_old(%rip)
	movzbl	FH_TUERMODUL__SFHA_copy(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA(%rip)
	movzbl	FH_TUERMODUL__SFHA(%rip), %eax
	movb	%al, FH_TUERMODUL__SFHA_old(%rip)
	movzbl	FH_TUERMODUL__MFHZ_copy(%rip), %eax
	movb	%al, FH_TUERMODUL__MFHZ(%rip)
	movzbl	FH_TUERMODUL__MFHZ(%rip), %eax
	movb	%al, FH_TUERMODUL__MFHZ_old(%rip)
	movzbl	FH_TUERMODUL__MFHA_copy(%rip), %eax
	movb	%al, FH_TUERMODUL__MFHA(%rip)
	movzbl	FH_TUERMODUL__MFHA(%rip), %eax
	movb	%al, FH_TUERMODUL__MFHA_old(%rip)
	movzbl	FH_TUERMODUL__EKS_LEISTE_AKTIV(%rip), %eax
	movb	%al, FH_TUERMODUL__EKS_LEISTE_AKTIV_old(%rip)
	movzbl	FH_DU__EKS_LEISTE_AKTIV(%rip), %eax
	movb	%al, FH_DU__EKS_LEISTE_AKTIV_old(%rip)
	movzbl	FH_DU__S_FH_TMBFAUFCAN(%rip), %eax
	movb	%al, FH_DU__S_FH_TMBFAUFCAN_old(%rip)
	movzbl	FH_DU__S_FH_TMBFZUCAN(%rip), %eax
	movb	%al, FH_DU__S_FH_TMBFZUCAN_old(%rip)
	movzbl	FH_DU__S_FH_TMBFZUDISC(%rip), %eax
	movb	%al, FH_DU__S_FH_TMBFZUDISC_old(%rip)
	movzbl	FH_DU__S_FH_TMBFAUFDISC(%rip), %eax
	movb	%al, FH_DU__S_FH_TMBFAUFDISC_old(%rip)
	movzbl	FH_DU__BLOCK_copy(%rip), %eax
	movb	%al, FH_DU__BLOCK(%rip)
	movzbl	FH_DU__BLOCK(%rip), %eax
	movb	%al, FH_DU__BLOCK_old(%rip)
	movzbl	FH_DU__MFHZ_copy(%rip), %eax
	movb	%al, FH_DU__MFHZ(%rip)
	movzbl	FH_DU__MFHZ(%rip), %eax
	movb	%al, FH_DU__MFHZ_old(%rip)
	movzbl	FH_DU__MFHA_copy(%rip), %eax
	movb	%al, FH_DU__MFHA(%rip)
	movzbl	FH_DU__MFHA(%rip), %eax
	movb	%al, FH_DU__MFHA_old(%rip)
.L183:
	movzbl	stable(%rip), %eax
	testb	%al, %al
	je	.L201
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	FH_DU, .-FH_DU
	.globl	start
	.type	start, @function
start:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	init
	call	interface
	call	FH_DU
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	start, .-start
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.align 8
.LC1:
	.long	3539053052
	.long	1063281229
	.ident	"GCC: (Debian 4.9.2-16) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
