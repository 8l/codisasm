	.file	"statemate.c"
	.intel_syntax noprefix
.lcomm _Bitlist,64,64
	.comm	_tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, 4, 2
	.comm	_tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, 4, 2
	.comm	_tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, 4, 2
	.comm	_sc_FH_TUERMODUL_CTRL_2375_2, 4, 2
	.comm	_sc_FH_TUERMODUL_CTRL_2352_1, 4, 2
	.comm	_sc_FH_TUERMODUL_CTRL_2329_1, 4, 2
	.comm	_FH_TUERMODUL_CTRL__N, 4, 2
	.comm	_FH_TUERMODUL_CTRL__N_copy, 4, 2
	.comm	_FH_TUERMODUL_CTRL__N_old, 4, 2
	.comm	_sc_FH_TUERMODUL_CTRL_1781_10, 4, 2
	.comm	_sc_FH_TUERMODUL_CTRL_1739_10, 4, 2
	.comm	_FH_TUERMODUL__POSITION, 4, 2
	.comm	_FH_TUERMODUL__I_EIN, 4, 2
	.comm	_FH_TUERMODUL__I_EIN_old, 4, 2
	.comm	_FH_DU__MFH, 4, 2
	.comm	_FH_DU__MFH_copy, 4, 2
	.comm	_FH_DU__POSITION, 4, 2
	.comm	_FH_DU__I_EIN, 4, 2
	.comm	_FH_DU__I_EIN_old, 4, 2
	.comm	_BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, 4, 2
	.comm	_BLOCK_ERKENNUNG_CTRL__I_EIN_MAX_copy, 4, 2
	.comm	_BLOCK_ERKENNUNG_CTRL__N, 4, 2
	.comm	_BLOCK_ERKENNUNG_CTRL__N_copy, 4, 2
	.comm	_BLOCK_ERKENNUNG_CTRL__N_old, 4, 2
	.comm	_FH_TUERMODUL_CTRL__INREVERS2, 1, 0
	.comm	_FH_TUERMODUL_CTRL__INREVERS2_copy, 1, 0
	.comm	_FH_TUERMODUL_CTRL__INREVERS1, 1, 0
	.comm	_FH_TUERMODUL_CTRL__INREVERS1_copy, 1, 0
	.comm	_FH_TUERMODUL_CTRL__FT, 1, 0
	.comm	_FH_TUERMODUL__SFHZ_ZENTRAL, 1, 0
	.comm	_FH_TUERMODUL__SFHZ_ZENTRAL_old, 1, 0
	.comm	_FH_TUERMODUL__SFHZ_MEC, 1, 0
	.comm	_FH_TUERMODUL__SFHZ_MEC_old, 1, 0
	.comm	_FH_TUERMODUL__SFHA_ZENTRAL, 1, 0
	.comm	_FH_TUERMODUL__SFHA_ZENTRAL_old, 1, 0
	.comm	_FH_TUERMODUL__SFHA_MEC, 1, 0
	.comm	_FH_TUERMODUL__SFHA_MEC_old, 1, 0
	.comm	_FH_TUERMODUL__KL_50, 1, 0
	.comm	_FH_TUERMODUL__BLOCK, 1, 0
	.comm	_FH_TUERMODUL__BLOCK_copy, 1, 0
	.comm	_FH_TUERMODUL__BLOCK_old, 1, 0
	.comm	_FH_TUERMODUL__FT, 1, 0
	.comm	_FH_TUERMODUL__SFHZ, 1, 0
	.comm	_FH_TUERMODUL__SFHZ_copy, 1, 0
	.comm	_FH_TUERMODUL__SFHZ_old, 1, 0
	.comm	_FH_TUERMODUL__SFHA, 1, 0
	.comm	_FH_TUERMODUL__SFHA_copy, 1, 0
	.comm	_FH_TUERMODUL__SFHA_old, 1, 0
	.comm	_FH_TUERMODUL__MFHZ, 1, 0
	.comm	_FH_TUERMODUL__MFHZ_copy, 1, 0
	.comm	_FH_TUERMODUL__MFHZ_old, 1, 0
	.comm	_FH_TUERMODUL__MFHA, 1, 0
	.comm	_FH_TUERMODUL__MFHA_copy, 1, 0
	.comm	_FH_TUERMODUL__MFHA_old, 1, 0
	.comm	_FH_TUERMODUL__EKS_LEISTE_AKTIV, 1, 0
	.comm	_FH_TUERMODUL__EKS_LEISTE_AKTIV_old, 1, 0
	.comm	_FH_TUERMODUL__COM_OPEN, 1, 0
	.comm	_FH_TUERMODUL__COM_CLOSE, 1, 0
	.comm	_FH_DU__KL_50, 1, 0
	.comm	_FH_DU__S_FH_FTZU, 1, 0
	.comm	_FH_DU__S_FH_FTAUF, 1, 0
	.comm	_FH_DU__FT, 1, 0
	.comm	_FH_DU__EKS_LEISTE_AKTIV, 1, 0
	.comm	_FH_DU__EKS_LEISTE_AKTIV_old, 1, 0
	.comm	_FH_DU__S_FH_TMBFAUFCAN, 1, 0
	.comm	_FH_DU__S_FH_TMBFAUFCAN_copy, 1, 0
	.comm	_FH_DU__S_FH_TMBFAUFCAN_old, 1, 0
	.comm	_FH_DU__S_FH_TMBFZUCAN, 1, 0
	.comm	_FH_DU__S_FH_TMBFZUCAN_copy, 1, 0
	.comm	_FH_DU__S_FH_TMBFZUCAN_old, 1, 0
	.comm	_FH_DU__S_FH_TMBFZUDISC, 1, 0
	.comm	_FH_DU__S_FH_TMBFZUDISC_old, 1, 0
	.comm	_FH_DU__S_FH_TMBFAUFDISC, 1, 0
	.comm	_FH_DU__S_FH_TMBFAUFDISC_old, 1, 0
	.comm	_FH_DU__S_FH_ZUDISC, 1, 0
	.comm	_FH_DU__S_FH_AUFDISC, 1, 0
	.comm	_FH_DU__DOOR_ID, 1, 0
	.comm	_FH_DU__BLOCK, 1, 0
	.comm	_FH_DU__BLOCK_copy, 1, 0
	.comm	_FH_DU__BLOCK_old, 1, 0
	.comm	_FH_DU__MFHZ, 1, 0
	.comm	_FH_DU__MFHZ_copy, 1, 0
	.comm	_FH_DU__MFHZ_old, 1, 0
	.comm	_FH_DU__MFHA, 1, 0
	.comm	_FH_DU__MFHA_copy, 1, 0
	.comm	_FH_DU__MFHA_old, 1, 0
	.comm	_time, 4, 2
	.comm	_stable, 1, 0
	.comm	_step, 1, 0
	.comm	_NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, 1, 0
	.comm	_ZENTRAL_KINDERSICHERUNG_CTRL_next_state, 1, 0
	.comm	_MEC_KINDERSICHERUNG_CTRL_next_state, 1, 0
	.comm	_KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 1, 0
	.comm	_B_FH_TUERMODUL_CTRL_next_state, 1, 0
	.comm	_A_FH_TUERMODUL_CTRL_next_state, 1, 0
	.comm	_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, 1, 0
	.comm	_INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 1, 0
	.comm	_TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 1, 0
	.comm	_MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 1, 0
	.comm	_OEFFNEN_FH_TUERMODUL_CTRL_next_state, 1, 0
	.comm	_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 1, 0
	.comm	_FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, 1, 0
	.comm	_EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, 1, 0
	.comm	_BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, 1, 0
	.comm	_BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, 1, 0
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
	.globl	_interface
	.def	_interface;	.scl	2;	.type	32;	.endef
_interface:
LFB1:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	movzx	eax, BYTE PTR _Bitlist+4
	test	al, al
	je	L4
	mov	eax, DWORD PTR _time
	mov	DWORD PTR _tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, eax
L4:
	movzx	eax, BYTE PTR _Bitlist+4
	test	al, al
	jne	L5
	movzx	eax, BYTE PTR _Bitlist+6
	test	al, al
	je	L6
L5:
	mov	eax, DWORD PTR _time
	mov	DWORD PTR _tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, eax
L6:
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_2375_2
	test	eax, eax
	je	L7
	mov	edx, DWORD PTR _time
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_2375_2
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], 0
	fild	QWORD PTR [ebp-16]
	fstp	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR LC0
	fxch	st(1)
	fucomip	st, st(1)
	fstp	st(0)
	jb	L7
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 0
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_2375_2, 0
L7:
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_2352_1
	test	eax, eax
	je	L9
	mov	edx, DWORD PTR _time
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_2352_1
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], 0
	fild	QWORD PTR [ebp-16]
	fstp	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR LC0
	fxch	st(1)
	fucomip	st, st(1)
	fstp	st(0)
	jb	L9
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_2352_1, 0
L9:
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_2329_1
	test	eax, eax
	je	L11
	mov	edx, DWORD PTR _time
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_2329_1
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], 0
	fild	QWORD PTR [ebp-16]
	fstp	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR LC0
	fxch	st(1)
	fucomip	st, st(1)
	fstp	st(0)
	jb	L11
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_2329_1, 0
L11:
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_1781_10
	test	eax, eax
	je	L13
	mov	edx, DWORD PTR _time
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_1781_10
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], 0
	fild	QWORD PTR [ebp-16]
	fstp	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR LC0
	fxch	st(1)
	fucomip	st, st(1)
	fstp	st(0)
	jb	L13
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_1781_10, 0
L13:
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_1739_10
	test	eax, eax
	je	L15
	mov	edx, DWORD PTR _time
	mov	eax, DWORD PTR _sc_FH_TUERMODUL_CTRL_1739_10
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], 0
	fild	QWORD PTR [ebp-16]
	fstp	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR LC0
	fxch	st(1)
	fucomip	st, st(1)
	fstp	st(0)
	jb	L15
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_1739_10, 0
L15:
	movzx	eax, BYTE PTR _Bitlist
	test	al, al
	jne	L17
	mov	edx, DWORD PTR _BLOCK_ERKENNUNG_CTRL__N
	mov	eax, DWORD PTR _BLOCK_ERKENNUNG_CTRL__N_old
	cmp	edx, eax
	je	L3
L17:
	mov	eax, DWORD PTR _time
	mov	DWORD PTR _tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, eax
L3:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_init
	.def	_init;	.scl	2;	.type	32;	.endef
_init:
LFB2:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	DWORD PTR _tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, 0
	mov	DWORD PTR _tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, 0
	mov	DWORD PTR _tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, 0
	mov	BYTE PTR _NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, 0
	mov	BYTE PTR _ZENTRAL_KINDERSICHERUNG_CTRL_next_state, 0
	mov	BYTE PTR _MEC_KINDERSICHERUNG_CTRL_next_state, 0
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 0
	mov	BYTE PTR _B_FH_TUERMODUL_CTRL_next_state, 0
	mov	BYTE PTR _A_FH_TUERMODUL_CTRL_next_state, 0
	mov	BYTE PTR _WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, 0
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 0
	mov	BYTE PTR _TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 0
	mov	BYTE PTR _MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 0
	mov	BYTE PTR _OEFFNEN_FH_TUERMODUL_CTRL_next_state, 0
	mov	BYTE PTR _SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 0
	mov	BYTE PTR _FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, 0
	mov	BYTE PTR _EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, 0
	mov	BYTE PTR _BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, 0
	mov	BYTE PTR _BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, 0
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_generic_KINDERSICHERUNG_CTRL
	.def	_generic_KINDERSICHERUNG_CTRL;	.scl	2;	.type	32;	.endef
_generic_KINDERSICHERUNG_CTRL:
LFB3:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, BYTE PTR _Bitlist+10
	test	al, al
	je	L25
	movzx	eax, BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state
	movsx	eax, al
	cmp	eax, 2
	je	L28
	cmp	eax, 3
	je	L29
	cmp	eax, 1
	jne	L53
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	test	al, al
	jne	L31
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	test	al, al
	jne	L31
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 0
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 3
	mov	BYTE PTR _ZENTRAL_KINDERSICHERUNG_CTRL_next_state, 0
	jmp	L25
L31:
	movzx	eax, BYTE PTR _ZENTRAL_KINDERSICHERUNG_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	jne	L54
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	test	al, al
	je	L34
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL_old
	test	al, al
	jne	L34
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 1
	mov	BYTE PTR _ZENTRAL_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L35
L34:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	test	al, al
	je	L36
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL_old
	test	al, al
	jne	L36
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 1
	mov	BYTE PTR _ZENTRAL_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L35
L36:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	test	al, al
	jne	L37
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL_old
	test	al, al
	je	L37
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 0
	mov	BYTE PTR _ZENTRAL_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L35
L37:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	test	al, al
	jne	L38
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL_old
	test	al, al
	je	L38
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 0
	mov	BYTE PTR _ZENTRAL_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L35
L38:
	jmp	L35
L54:
	mov	BYTE PTR _stable, 0
	nop
L35:
	jmp	L25
L28:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	test	al, al
	jne	L39
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	test	al, al
	jne	L39
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 0
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 3
	mov	BYTE PTR _MEC_KINDERSICHERUNG_CTRL_next_state, 0
	jmp	L25
L39:
	movzx	eax, BYTE PTR _MEC_KINDERSICHERUNG_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	jne	L55
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	test	al, al
	je	L42
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC_old
	test	al, al
	jne	L42
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 1
	mov	BYTE PTR _MEC_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L43
L42:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	test	al, al
	je	L44
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC_old
	test	al, al
	jne	L44
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 1
	mov	BYTE PTR _MEC_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L43
L44:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	test	al, al
	jne	L45
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC_old
	test	al, al
	je	L45
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 0
	mov	BYTE PTR _MEC_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L43
L45:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	test	al, al
	jne	L46
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC_old
	test	al, al
	je	L46
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 0
	mov	BYTE PTR _MEC_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L43
L46:
	jmp	L43
L55:
	mov	BYTE PTR _stable, 0
	nop
L43:
	jmp	L25
L29:
	movzx	eax, BYTE PTR _FH_TUERMODUL__KL_50
	test	al, al
	jne	L47
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	test	al, al
	je	L47
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	test	al, al
	je	L47
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 1
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 1
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 2
	jmp	L25
L47:
	movzx	eax, BYTE PTR _FH_TUERMODUL__KL_50
	test	al, al
	jne	L48
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	test	al, al
	je	L48
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	test	al, al
	jne	L48
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 1
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 2
	jmp	L25
L48:
	movzx	eax, BYTE PTR _FH_TUERMODUL__KL_50
	test	al, al
	jne	L49
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	test	al, al
	jne	L49
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	test	al, al
	je	L49
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 1
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 2
	jmp	L25
L49:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	test	al, al
	jne	L50
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	test	al, al
	je	L50
	movzx	eax, BYTE PTR _FH_TUERMODUL__KL_50
	test	al, al
	jne	L50
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 1
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L25
L50:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	test	al, al
	je	L51
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	test	al, al
	je	L51
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHA_copy, 1
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 1
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L25
L51:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	test	al, al
	je	L52
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	test	al, al
	jne	L52
	movzx	eax, BYTE PTR _FH_TUERMODUL__KL_50
	test	al, al
	jne	L52
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_copy, 1
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 1
	jmp	L25
L52:
	jmp	L25
L53:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 3
	nop
L25:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_generic_FH_TUERMODUL_CTRL
	.def	_generic_FH_TUERMODUL_CTRL;	.scl	2;	.type	32;	.endef
_generic_FH_TUERMODUL_CTRL:
LFB4:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, BYTE PTR _Bitlist+13
	test	al, al
	jne	L57
	movzx	eax, BYTE PTR _Bitlist+15
	test	al, al
	je	L57
	movzx	eax, BYTE PTR _Bitlist+14
	test	al, al
	jne	L57
	mov	BYTE PTR _Bitlist+4, 0
	mov	BYTE PTR _Bitlist+6, 0
L57:
	movzx	eax, BYTE PTR _Bitlist+13
	test	al, al
	je	L56
	movzx	eax, BYTE PTR _Bitlist+10
	test	al, al
	jne	L59
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 3
L59:
	mov	BYTE PTR _Bitlist+11, 0
	movzx	eax, BYTE PTR _Bitlist+19
	test	al, al
	jne	L60
	mov	BYTE PTR _Bitlist, 0
	mov	BYTE PTR _BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, 1
L60:
	mov	BYTE PTR _Bitlist+20, 0
	mov	BYTE PTR _Bitlist+11, 1
	mov	BYTE PTR _Bitlist+20, 1
	movzx	eax, BYTE PTR _B_FH_TUERMODUL_CTRL_next_state
	movsx	eax, al
	cmp	eax, 2
	je	L62
	cmp	eax, 3
	je	L63
	cmp	eax, 1
	jne	L128
	mov	eax, DWORD PTR _FH_TUERMODUL_CTRL__N
	cmp	eax, 59
	jne	L65
	mov	eax, DWORD PTR _FH_TUERMODUL_CTRL__N_old
	cmp	eax, 59
	je	L65
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _B_FH_TUERMODUL_CTRL_next_state, 3
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 3
	jmp	L66
L65:
	jmp	L66
L62:
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK
	test	al, al
	je	L67
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK_old
	test	al, al
	jne	L67
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	test	al, al
	je	L67
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	eax, DWORD PTR _time
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_2329_1, eax
	mov	BYTE PTR _B_FH_TUERMODUL_CTRL_next_state, 3
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 3
	jmp	L66
L67:
	movzx	eax, BYTE PTR _NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state
	movsx	eax, al
	cmp	eax, 2
	je	L69
	cmp	eax, 3
	je	L70
	cmp	eax, 1
	jne	L129
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ
	test	al, al
	jne	L72
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	BYTE PTR _NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, 3
	jmp	L73
L72:
	jmp	L73
L69:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA
	test	al, al
	jne	L74
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 0
	mov	BYTE PTR _NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, 3
	jmp	L73
L74:
	jmp	L73
L70:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA
	test	al, al
	je	L75
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 1
	mov	BYTE PTR _NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, 2
	jmp	L73
L75:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ
	test	al, al
	je	L76
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 1
	mov	BYTE PTR _NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, 1
	jmp	L73
L76:
	jmp	L73
L129:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, 3
	nop
L73:
	jmp	L66
L63:
	mov	eax, DWORD PTR _FH_TUERMODUL_CTRL__N
	cmp	eax, 60
	jle	L77
	mov	eax, DWORD PTR _FH_TUERMODUL_CTRL__N_old
	cmp	eax, 60
	jg	L77
	movzx	eax, BYTE PTR _FH_TUERMODUL_CTRL__INREVERS1
	test	al, al
	jne	L77
	movzx	eax, BYTE PTR _FH_TUERMODUL_CTRL__INREVERS2
	test	al, al
	jne	L77
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 0
	mov	BYTE PTR _B_FH_TUERMODUL_CTRL_next_state, 1
	jmp	L66
L77:
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK
	test	al, al
	je	L78
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK_old
	test	al, al
	jne	L78
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA
	test	al, al
	je	L78
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 0
	mov	eax, DWORD PTR _time
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_2375_2, eax
	mov	BYTE PTR _B_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, 3
	jmp	L66
L78:
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK
	test	al, al
	je	L79
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK_old
	test	al, al
	jne	L79
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	test	al, al
	je	L79
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	eax, DWORD PTR _time
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_2352_1, eax
	mov	BYTE PTR _B_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, 3
	jmp	L66
L79:
	movzx	eax, BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state
	movsx	eax, al
	cmp	eax, 2
	je	L81
	cmp	eax, 3
	je	L82
	cmp	eax, 1
	jne	L130
	mov	eax, DWORD PTR _FH_TUERMODUL__POSITION
	cmp	eax, 404
	jle	L84
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 0
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 3
	jmp	L85
L84:
	movzx	eax, BYTE PTR _OEFFNEN_FH_TUERMODUL_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	je	L87
	cmp	eax, 2
	je	L88
	jmp	L131
L87:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ
	test	al, al
	je	L89
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_old
	test	al, al
	je	L90
L89:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA
	test	al, al
	je	L91
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_old
	test	al, al
	jne	L91
L90:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 0
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 3
	mov	BYTE PTR _OEFFNEN_FH_TUERMODUL_CTRL_next_state, 0
	jmp	L92
L91:
	jmp	L92
L88:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ
	test	al, al
	je	L93
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_old
	test	al, al
	jne	L93
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _OEFFNEN_FH_TUERMODUL_CTRL_next_state, 1
	jmp	L92
L93:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA
	test	al, al
	jne	L94
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_old
	test	al, al
	je	L94
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 0
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 3
	mov	BYTE PTR _OEFFNEN_FH_TUERMODUL_CTRL_next_state, 0
	jmp	L92
L94:
	jmp	L92
L131:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _OEFFNEN_FH_TUERMODUL_CTRL_next_state, 2
	nop
L92:
	jmp	L85
L81:
	mov	eax, DWORD PTR _FH_TUERMODUL__POSITION
	test	eax, eax
	jg	L95
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 3
	jmp	L85
L95:
	movzx	eax, BYTE PTR _SCHLIESSEN_FH_TUERMODUL_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	je	L97
	cmp	eax, 2
	je	L98
	jmp	L132
L97:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA
	test	al, al
	je	L99
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_old
	test	al, al
	je	L100
L99:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ
	test	al, al
	je	L101
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_old
	test	al, al
	jne	L101
L100:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 3
	jmp	L102
L101:
	movzx	eax, BYTE PTR _TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	je	L104
	cmp	eax, 2
	je	L105
	jmp	L133
L104:
	mov	BYTE PTR _Bitlist+23, 0
	movzx	eax, BYTE PTR _Bitlist+22
	test	al, al
	je	L106
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 1
	mov	BYTE PTR _FH_TUERMODUL_CTRL__INREVERS2_copy, 0
	mov	BYTE PTR _TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 0
	mov	BYTE PTR _Bitlist+17, 1
	jmp	L107
L106:
	jmp	L107
L105:
	movzx	eax, BYTE PTR _Bitlist+24
	test	al, al
	je	L108
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL_CTRL__INREVERS2_copy, 1
	mov	BYTE PTR _Bitlist+23, 1
	mov	BYTE PTR _TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 1
	mov	BYTE PTR _Bitlist+17, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	eax, DWORD PTR _time
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_1781_10, eax
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 1
	jmp	L107
L108:
	jmp	L107
L133:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _Bitlist+17, 1
	nop
L107:
	jmp	L102
L98:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ
	test	al, al
	jne	L109
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_old
	test	al, al
	je	L109
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 3
	jmp	L102
L109:
	movzx	eax, BYTE PTR _MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	je	L111
	cmp	eax, 2
	je	L112
	jmp	L134
L111:
	mov	BYTE PTR _Bitlist+23, 0
	movzx	eax, BYTE PTR _Bitlist+22
	test	al, al
	je	L113
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL_CTRL__INREVERS1_copy, 0
	mov	BYTE PTR _MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 0
	mov	BYTE PTR _Bitlist+17, 1
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 1
	jmp	L114
L113:
	jmp	L114
L112:
	movzx	eax, BYTE PTR _Bitlist+24
	test	al, al
	je	L115
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 0
	mov	BYTE PTR _FH_TUERMODUL_CTRL__INREVERS1_copy, 1
	mov	BYTE PTR _Bitlist+23, 1
	mov	BYTE PTR _MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 1
	mov	BYTE PTR _Bitlist+17, 0
	mov	eax, DWORD PTR _time
	mov	DWORD PTR _sc_FH_TUERMODUL_CTRL_1739_10, eax
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 1
	jmp	L114
L115:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA
	test	al, al
	je	L116
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_old
	test	al, al
	jne	L116
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 1
	mov	BYTE PTR _MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 0
	jmp	L114
L116:
	jmp	L114
L134:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _Bitlist+17, 1
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 1
	nop
L114:
	jmp	L102
L132:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _Bitlist+17, 1
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 1
	nop
L102:
	jmp	L85
L82:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ
	test	al, al
	je	L117
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_old
	test	al, al
	jne	L117
	mov	eax, DWORD PTR _FH_TUERMODUL__POSITION
	test	eax, eax
	jle	L117
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, 2
	mov	BYTE PTR _Bitlist+17, 1
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_copy, 1
	jmp	L85
L117:
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA
	test	al, al
	je	L118
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_old
	test	al, al
	jne	L118
	mov	eax, DWORD PTR _FH_TUERMODUL__POSITION
	cmp	eax, 404
	jg	L118
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__MFHA_copy, 1
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 1
	mov	BYTE PTR _OEFFNEN_FH_TUERMODUL_CTRL_next_state, 2
	jmp	L85
L118:
	jmp	L85
L130:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _INITIALISIERT_FH_TUERMODUL_CTRL_next_state, 3
	nop
L85:
	jmp	L66
L128:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _B_FH_TUERMODUL_CTRL_next_state, 2
	nop
L66:
	movzx	eax, BYTE PTR _A_FH_TUERMODUL_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	jne	L135
	mov	BYTE PTR _Bitlist+5, 0
	movzx	eax, BYTE PTR _step
	cmp	al, 1
	jne	L121
	mov	eax, DWORD PTR _tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL
	test	eax, eax
	je	L121
	mov	edx, DWORD PTR _time
	mov	eax, DWORD PTR _tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL
	sub	edx, eax
	mov	eax, edx
	cmp	eax, 1
	jne	L121
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	test	al, al
	jne	L122
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA
	test	al, al
	je	L121
L122:
	mov	BYTE PTR _stable, 0
	mov	eax, DWORD PTR _FH_TUERMODUL_CTRL__N
	add	eax, 1
	mov	DWORD PTR _FH_TUERMODUL_CTRL__N, eax
	mov	BYTE PTR _A_FH_TUERMODUL_CTRL_next_state, 1
	mov	BYTE PTR _Bitlist+5, 1
	mov	BYTE PTR _WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, 1
	jmp	L123
L121:
	movzx	eax, BYTE PTR _WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	jne	L136
	movzx	eax, BYTE PTR _step
	cmp	al, 1
	jne	L126
	mov	eax, DWORD PTR _tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL
	test	eax, eax
	je	L126
	mov	edx, DWORD PTR _time
	mov	eax, DWORD PTR _tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL
	sub	edx, eax
	mov	eax, edx
	cmp	eax, 3
	jne	L126
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	test	al, al
	jne	L126
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA
	test	al, al
	jne	L126
	mov	eax, DWORD PTR _FH_TUERMODUL_CTRL__N
	test	eax, eax
	jle	L126
	mov	BYTE PTR _stable, 0
	mov	eax, DWORD PTR _FH_TUERMODUL_CTRL__N
	sub	eax, 1
	mov	DWORD PTR _FH_TUERMODUL_CTRL__N, eax
	mov	BYTE PTR _WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, 1
	jmp	L127
L126:
	jmp	L127
L136:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _Bitlist+5, 1
	mov	BYTE PTR _WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, 1
	nop
L127:
	jmp	L123
L135:
	mov	BYTE PTR _stable, 0
	mov	DWORD PTR _FH_TUERMODUL_CTRL__N, 0
	mov	BYTE PTR _A_FH_TUERMODUL_CTRL_next_state, 1
	mov	BYTE PTR _Bitlist+5, 1
	mov	BYTE PTR _WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, 1
	nop
L123:
	movzx	eax, BYTE PTR _Bitlist+4
	mov	BYTE PTR _Bitlist+5, al
	movzx	eax, BYTE PTR _Bitlist+6
	mov	BYTE PTR _Bitlist+7, al
L56:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_generic_EINKLEMMSCHUTZ_CTRL
	.def	_generic_EINKLEMMSCHUTZ_CTRL;	.scl	2;	.type	32;	.endef
_generic_EINKLEMMSCHUTZ_CTRL:
LFB5:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, BYTE PTR _Bitlist+16
	test	al, al
	je	L137
	movzx	eax, BYTE PTR _EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	je	L140
	cmp	eax, 2
	je	L141
	jmp	L145
L140:
	movzx	eax, BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV
	test	al, al
	je	L142
	movzx	eax, BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV_old
	test	al, al
	jne	L142
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ
	test	al, al
	je	L143
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA
	test	al, al
	jne	L142
L143:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _Bitlist+24, 1
	mov	BYTE PTR _EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, 2
	jmp	L137
L142:
	jmp	L137
L141:
	mov	BYTE PTR _Bitlist+24, 0
	movzx	eax, BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV
	test	al, al
	jne	L144
	movzx	eax, BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV_old
	test	al, al
	je	L144
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, 1
	jmp	L137
L144:
	jmp	L137
L145:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, 1
	nop
L137:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_generic_BLOCK_ERKENNUNG_CTRL
	.def	_generic_BLOCK_ERKENNUNG_CTRL;	.scl	2;	.type	32;	.endef
_generic_BLOCK_ERKENNUNG_CTRL:
LFB6:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	movzx	eax, BYTE PTR _Bitlist+19
	test	al, al
	jne	L147
	movzx	eax, BYTE PTR _Bitlist+21
	test	al, al
	je	L147
	movzx	eax, BYTE PTR _Bitlist+20
	test	al, al
	jne	L147
	mov	BYTE PTR _Bitlist, 0
L147:
	movzx	eax, BYTE PTR _Bitlist+19
	test	al, al
	je	L146
	movzx	eax, BYTE PTR _BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state
	movsx	eax, al
	cmp	eax, 1
	je	L150
	cmp	eax, 2
	je	L151
	jmp	L166
L150:
	mov	edx, DWORD PTR _FH_TUERMODUL__I_EIN
	mov	eax, DWORD PTR _FH_TUERMODUL__I_EIN_old
	cmp	edx, eax
	je	L152
	mov	eax, DWORD PTR _FH_TUERMODUL__I_EIN
	test	eax, eax
	jle	L152
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__BLOCK_copy, 0
	mov	BYTE PTR _BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, 2
	mov	DWORD PTR _BLOCK_ERKENNUNG_CTRL__N, 0
	mov	DWORD PTR _BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, 2
	mov	BYTE PTR _BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, 3
	mov	BYTE PTR _Bitlist, 1
	jmp	L146
L152:
	jmp	L146
L151:
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA
	test	al, al
	jne	L153
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA_old
	test	al, al
	jne	L154
L153:
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	test	al, al
	jne	L155
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ_old
	test	al, al
	je	L155
L154:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, 1
	mov	BYTE PTR _BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, 0
	jmp	L146
L155:
	movzx	eax, BYTE PTR _BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state
	movsx	eax, al
	cmp	eax, 2
	je	L157
	cmp	eax, 3
	je	L158
	cmp	eax, 1
	je	L168
	jmp	L167
L157:
	mov	eax, DWORD PTR _BLOCK_ERKENNUNG_CTRL__I_EIN_MAX
	lea	edx, [eax-2]
	mov	eax, DWORD PTR _FH_TUERMODUL__I_EIN
	cmp	edx, eax
	jge	L161
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _FH_TUERMODUL__BLOCK_copy, 1
	mov	BYTE PTR _BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, 1
	jmp	L160
L161:
	jmp	L160
L158:
	mov	BYTE PTR _Bitlist, 0
	mov	eax, DWORD PTR _BLOCK_ERKENNUNG_CTRL__N
	cmp	eax, 11
	jne	L162
	mov	eax, DWORD PTR _BLOCK_ERKENNUNG_CTRL__N_old
	cmp	eax, 11
	je	L162
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, 2
	jmp	L160
L162:
	movzx	eax, BYTE PTR _BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state
	cmp	al, 3
	jne	L163
	movzx	eax, BYTE PTR _step
	cmp	al, 1
	jne	L163
	mov	eax, DWORD PTR _tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy
	test	eax, eax
	je	L163
	mov	edx, DWORD PTR _time
	mov	eax, DWORD PTR _tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], 0
	fild	QWORD PTR [ebp-16]
	fstp	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR LC2
	fucomip	st, st(1)
	jp	L170
	fld	QWORD PTR LC2
	fucomip	st, st(1)
	fstp	st(0)
	je	L165
	jmp	L169
L165:
	mov	eax, DWORD PTR _BLOCK_ERKENNUNG_CTRL__N
	add	eax, 1
	mov	DWORD PTR _BLOCK_ERKENNUNG_CTRL__N, eax
	mov	edx, DWORD PTR _FH_TUERMODUL__I_EIN
	mov	eax, DWORD PTR _BLOCK_ERKENNUNG_CTRL__I_EIN_MAX
	cmp	edx, eax
	jle	L163
	mov	eax, DWORD PTR _FH_TUERMODUL__I_EIN
	mov	DWORD PTR _BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, eax
	jmp	L169
L163:
	jmp	L169
L167:
	mov	BYTE PTR _stable, 0
	mov	DWORD PTR _BLOCK_ERKENNUNG_CTRL__N, 0
	mov	DWORD PTR _BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, 2
	mov	BYTE PTR _BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, 3
	mov	BYTE PTR _Bitlist, 1
	jmp	L160
L168:
	nop
	jmp	L146
L170:
	fstp	st(0)
L169:
	nop
L160:
	jmp	L146
L166:
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, 1
	nop
L146:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_FH_DU
	.def	_FH_DU;	.scl	2;	.type	32;	.endef
_FH_DU:
LFB7:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	DWORD PTR _time, 1
	mov	BYTE PTR _stable, 0
	mov	BYTE PTR _step, 0
	jmp	L172
L190:
	mov	BYTE PTR _stable, 1
	movzx	eax, BYTE PTR _step
	add	eax, 1
	mov	BYTE PTR _step, al
	movzx	eax, BYTE PTR _FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state
	movsx	eax, al
	cmp	eax, 2
	je	L174
	cmp	eax, 3
	je	L175
	cmp	eax, 1
	jne	L191
	movzx	eax, BYTE PTR _FH_DU__MFHZ
	test	al, al
	jne	L177
	movzx	eax, BYTE PTR _FH_DU__MFHZ_old
	test	al, al
	je	L177
	mov	BYTE PTR _stable, 0
	mov	DWORD PTR _FH_DU__MFH, 0
	mov	BYTE PTR _FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, 2
	jmp	L178
L177:
	jmp	L178
L174:
	movzx	eax, BYTE PTR _FH_DU__MFHZ
	test	al, al
	je	L179
	movzx	eax, BYTE PTR _FH_DU__MFHZ_old
	test	al, al
	jne	L179
	mov	BYTE PTR _stable, 0
	mov	DWORD PTR _FH_DU__MFH, -100
	mov	BYTE PTR _FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, 1
	jmp	L178
L179:
	movzx	eax, BYTE PTR _FH_DU__MFHA
	test	al, al
	je	L180
	movzx	eax, BYTE PTR _FH_DU__MFHA_old
	test	al, al
	jne	L180
	mov	BYTE PTR _stable, 0
	mov	DWORD PTR _FH_DU__MFH, 100
	mov	BYTE PTR _FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, 3
	jmp	L178
L180:
	jmp	L178
L175:
	movzx	eax, BYTE PTR _FH_DU__MFHA
	test	al, al
	jne	L181
	movzx	eax, BYTE PTR _FH_DU__MFHA_old
	test	al, al
	je	L181
	mov	BYTE PTR _stable, 0
	mov	DWORD PTR _FH_DU__MFH, 0
	mov	BYTE PTR _FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, 2
	jmp	L178
L181:
	jmp	L178
L191:
	mov	BYTE PTR _stable, 0
	mov	DWORD PTR _FH_DU__MFH, 0
	mov	BYTE PTR _FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, 2
	nop
L178:
	movzx	eax, BYTE PTR _Bitlist+10
	test	al, al
	jne	L182
	mov	BYTE PTR _KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, 3
L182:
	mov	BYTE PTR _Bitlist+11, 0
	movzx	eax, BYTE PTR _Bitlist+16
	test	al, al
	jne	L183
	mov	BYTE PTR _EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, 1
L183:
	mov	BYTE PTR _Bitlist+17, 0
	movzx	eax, BYTE PTR _Bitlist+19
	test	al, al
	jne	L184
	mov	BYTE PTR _Bitlist, 0
	mov	BYTE PTR _BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, 1
L184:
	mov	BYTE PTR _Bitlist+20, 0
	movzx	eax, BYTE PTR _Bitlist+13
	test	al, al
	jne	L185
	mov	BYTE PTR _Bitlist+4, 0
	mov	BYTE PTR _Bitlist+6, 0
	mov	BYTE PTR _B_FH_TUERMODUL_CTRL_next_state, 2
	mov	DWORD PTR _FH_TUERMODUL_CTRL__N, 0
	mov	BYTE PTR _A_FH_TUERMODUL_CTRL_next_state, 1
	mov	BYTE PTR _Bitlist+5, 1
	mov	BYTE PTR _WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, 1
L185:
	mov	BYTE PTR _Bitlist+14, 0
	mov	BYTE PTR _Bitlist+11, 1
	mov	BYTE PTR _Bitlist+17, 1
	mov	BYTE PTR _Bitlist+20, 1
	mov	BYTE PTR _Bitlist+14, 1
	movzx	edx, BYTE PTR _FH_DU__S_FH_TMBFZUCAN
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFZUCAN_old
	cmp	dl, al
	je	L186
	movzx	eax, BYTE PTR _FH_DU__DOOR_ID
	test	al, al
	jne	L186
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFZUCAN
	mov	BYTE PTR _FH_DU__S_FH_FTZU, al
L186:
	movzx	edx, BYTE PTR _FH_DU__S_FH_TMBFZUDISC
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFZUDISC_old
	cmp	dl, al
	je	L187
	movzx	eax, BYTE PTR _FH_DU__DOOR_ID
	test	al, al
	je	L187
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFZUDISC
	mov	BYTE PTR _FH_DU__S_FH_TMBFZUCAN, al
L187:
	movzx	edx, BYTE PTR _FH_DU__S_FH_TMBFAUFCAN
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFAUFCAN_old
	cmp	dl, al
	je	L188
	movzx	eax, BYTE PTR _FH_DU__DOOR_ID
	test	al, al
	jne	L188
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFAUFCAN
	mov	BYTE PTR _FH_DU__S_FH_FTAUF, al
L188:
	movzx	edx, BYTE PTR _FH_DU__S_FH_TMBFAUFDISC
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFAUFDISC_old
	cmp	dl, al
	je	L189
	movzx	eax, BYTE PTR _FH_DU__DOOR_ID
	test	al, al
	je	L189
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFAUFDISC
	mov	BYTE PTR _FH_DU__S_FH_TMBFAUFCAN, al
L189:
	movzx	eax, BYTE PTR _Bitlist+12
	mov	BYTE PTR _Bitlist+10, al
	movzx	eax, BYTE PTR _Bitlist+15
	mov	BYTE PTR _Bitlist+13, al
	movzx	eax, BYTE PTR _Bitlist+18
	mov	BYTE PTR _Bitlist+16, al
	movzx	eax, BYTE PTR _Bitlist+21
	mov	BYTE PTR _Bitlist+19, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_AUFDISC
	mov	BYTE PTR _FH_TUERMODUL__SFHA_MEC, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_FTAUF
	mov	BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_ZUDISC
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_MEC, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_FTZU
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL, al
	call	_generic_KINDERSICHERUNG_CTRL
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA
	mov	BYTE PTR _FH_DU__MFHA, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	mov	BYTE PTR _FH_DU__MFHZ, al
	mov	eax, DWORD PTR _FH_TUERMODUL__I_EIN
	mov	DWORD PTR _FH_DU__I_EIN, eax
	movzx	eax, BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV
	mov	BYTE PTR _FH_DU__EKS_LEISTE_AKTIV, al
	mov	eax, DWORD PTR _FH_TUERMODUL__POSITION
	mov	DWORD PTR _FH_DU__POSITION, eax
	movzx	eax, BYTE PTR _FH_TUERMODUL__FT
	mov	BYTE PTR _FH_DU__FT, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	mov	BYTE PTR _FH_DU__S_FH_AUFDISC, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	mov	BYTE PTR _FH_DU__S_FH_FTAUF, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	mov	BYTE PTR _FH_DU__S_FH_ZUDISC, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	mov	BYTE PTR _FH_DU__S_FH_FTZU, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__KL_50
	mov	BYTE PTR _FH_DU__KL_50, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK
	mov	BYTE PTR _FH_DU__BLOCK, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_AUFDISC
	mov	BYTE PTR _FH_TUERMODUL__SFHA_MEC, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_FTAUF
	mov	BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_ZUDISC
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_MEC, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_FTZU
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL, al
	call	_generic_FH_TUERMODUL_CTRL
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA
	mov	BYTE PTR _FH_DU__MFHA, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	mov	BYTE PTR _FH_DU__MFHZ, al
	mov	eax, DWORD PTR _FH_TUERMODUL__I_EIN
	mov	DWORD PTR _FH_DU__I_EIN, eax
	movzx	eax, BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV
	mov	BYTE PTR _FH_DU__EKS_LEISTE_AKTIV, al
	mov	eax, DWORD PTR _FH_TUERMODUL__POSITION
	mov	DWORD PTR _FH_DU__POSITION, eax
	movzx	eax, BYTE PTR _FH_TUERMODUL__FT
	mov	BYTE PTR _FH_DU__FT, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	mov	BYTE PTR _FH_DU__S_FH_AUFDISC, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	mov	BYTE PTR _FH_DU__S_FH_FTAUF, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	mov	BYTE PTR _FH_DU__S_FH_ZUDISC, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	mov	BYTE PTR _FH_DU__S_FH_FTZU, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__KL_50
	mov	BYTE PTR _FH_DU__KL_50, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK
	mov	BYTE PTR _FH_DU__BLOCK, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_AUFDISC
	mov	BYTE PTR _FH_TUERMODUL__SFHA_MEC, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_FTAUF
	mov	BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_ZUDISC
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_MEC, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_FTZU
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL, al
	call	_generic_EINKLEMMSCHUTZ_CTRL
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA
	mov	BYTE PTR _FH_DU__MFHA, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	mov	BYTE PTR _FH_DU__MFHZ, al
	mov	eax, DWORD PTR _FH_TUERMODUL__I_EIN
	mov	DWORD PTR _FH_DU__I_EIN, eax
	movzx	eax, BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV
	mov	BYTE PTR _FH_DU__EKS_LEISTE_AKTIV, al
	mov	eax, DWORD PTR _FH_TUERMODUL__POSITION
	mov	DWORD PTR _FH_DU__POSITION, eax
	movzx	eax, BYTE PTR _FH_TUERMODUL__FT
	mov	BYTE PTR _FH_DU__FT, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	mov	BYTE PTR _FH_DU__S_FH_AUFDISC, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	mov	BYTE PTR _FH_DU__S_FH_FTAUF, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	mov	BYTE PTR _FH_DU__S_FH_ZUDISC, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	mov	BYTE PTR _FH_DU__S_FH_FTZU, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__KL_50
	mov	BYTE PTR _FH_DU__KL_50, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK
	mov	BYTE PTR _FH_DU__BLOCK, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_AUFDISC
	mov	BYTE PTR _FH_TUERMODUL__SFHA_MEC, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_FTAUF
	mov	BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_ZUDISC
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_MEC, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_FTZU
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL, al
	call	_generic_BLOCK_ERKENNUNG_CTRL
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA
	mov	BYTE PTR _FH_DU__MFHA, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	mov	BYTE PTR _FH_DU__MFHZ, al
	mov	eax, DWORD PTR _FH_TUERMODUL__I_EIN
	mov	DWORD PTR _FH_DU__I_EIN, eax
	movzx	eax, BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV
	mov	BYTE PTR _FH_DU__EKS_LEISTE_AKTIV, al
	mov	eax, DWORD PTR _FH_TUERMODUL__POSITION
	mov	DWORD PTR _FH_DU__POSITION, eax
	movzx	eax, BYTE PTR _FH_TUERMODUL__FT
	mov	BYTE PTR _FH_DU__FT, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	mov	BYTE PTR _FH_DU__S_FH_AUFDISC, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	mov	BYTE PTR _FH_DU__S_FH_FTAUF, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	mov	BYTE PTR _FH_DU__S_FH_ZUDISC, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	mov	BYTE PTR _FH_DU__S_FH_FTZU, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__KL_50
	mov	BYTE PTR _FH_DU__KL_50, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK
	mov	BYTE PTR _FH_DU__BLOCK, al
	movzx	eax, BYTE PTR _Bitlist+10
	mov	BYTE PTR _Bitlist+11, al
	movzx	eax, BYTE PTR _Bitlist+13
	mov	BYTE PTR _Bitlist+14, al
	movzx	eax, BYTE PTR _Bitlist+16
	mov	BYTE PTR _Bitlist+17, al
	movzx	eax, BYTE PTR _Bitlist+19
	mov	BYTE PTR _Bitlist+20, al
	mov	eax, DWORD PTR _FH_TUERMODUL_CTRL__N
	mov	DWORD PTR _FH_TUERMODUL_CTRL__N_old, eax
	mov	eax, DWORD PTR _FH_TUERMODUL__I_EIN
	mov	DWORD PTR _FH_TUERMODUL__I_EIN_old, eax
	mov	eax, DWORD PTR _FH_DU__MFH_copy
	mov	DWORD PTR _FH_DU__MFH, eax
	mov	eax, DWORD PTR _FH_DU__I_EIN
	mov	DWORD PTR _FH_DU__I_EIN_old, eax
	mov	eax, DWORD PTR _BLOCK_ERKENNUNG_CTRL__N
	mov	DWORD PTR _BLOCK_ERKENNUNG_CTRL__N_old, eax
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_ZENTRAL_old, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_MEC
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_MEC_old, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL
	mov	BYTE PTR _FH_TUERMODUL__SFHA_ZENTRAL_old, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_MEC
	mov	BYTE PTR _FH_TUERMODUL__SFHA_MEC_old, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK_copy
	mov	BYTE PTR _FH_TUERMODUL__BLOCK, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__BLOCK
	mov	BYTE PTR _FH_TUERMODUL__BLOCK_old, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ_copy
	mov	BYTE PTR _FH_TUERMODUL__SFHZ, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHZ
	mov	BYTE PTR _FH_TUERMODUL__SFHZ_old, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA_copy
	mov	BYTE PTR _FH_TUERMODUL__SFHA, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__SFHA
	mov	BYTE PTR _FH_TUERMODUL__SFHA_old, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ_copy
	mov	BYTE PTR _FH_TUERMODUL__MFHZ, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHZ
	mov	BYTE PTR _FH_TUERMODUL__MFHZ_old, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA_copy
	mov	BYTE PTR _FH_TUERMODUL__MFHA, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__MFHA
	mov	BYTE PTR _FH_TUERMODUL__MFHA_old, al
	movzx	eax, BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV
	mov	BYTE PTR _FH_TUERMODUL__EKS_LEISTE_AKTIV_old, al
	movzx	eax, BYTE PTR _FH_DU__EKS_LEISTE_AKTIV
	mov	BYTE PTR _FH_DU__EKS_LEISTE_AKTIV_old, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFAUFCAN
	mov	BYTE PTR _FH_DU__S_FH_TMBFAUFCAN_old, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFZUCAN
	mov	BYTE PTR _FH_DU__S_FH_TMBFZUCAN_old, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFZUDISC
	mov	BYTE PTR _FH_DU__S_FH_TMBFZUDISC_old, al
	movzx	eax, BYTE PTR _FH_DU__S_FH_TMBFAUFDISC
	mov	BYTE PTR _FH_DU__S_FH_TMBFAUFDISC_old, al
	movzx	eax, BYTE PTR _FH_DU__BLOCK_copy
	mov	BYTE PTR _FH_DU__BLOCK, al
	movzx	eax, BYTE PTR _FH_DU__BLOCK
	mov	BYTE PTR _FH_DU__BLOCK_old, al
	movzx	eax, BYTE PTR _FH_DU__MFHZ_copy
	mov	BYTE PTR _FH_DU__MFHZ, al
	movzx	eax, BYTE PTR _FH_DU__MFHZ
	mov	BYTE PTR _FH_DU__MFHZ_old, al
	movzx	eax, BYTE PTR _FH_DU__MFHA_copy
	mov	BYTE PTR _FH_DU__MFHA, al
	movzx	eax, BYTE PTR _FH_DU__MFHA
	mov	BYTE PTR _FH_DU__MFHA_old, al
L172:
	movzx	eax, BYTE PTR _stable
	test	al, al
	je	L190
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_start
	.def	_start;	.scl	2;	.type	32;	.endef
_start:
LFB8:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	call	_init
	call	_interface
	call	_FH_DU
	mov	eax, 0
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
	.align 8
LC0:
	.long	0
	.long	1071644672
	.align 8
LC2:
	.long	-755914244
	.long	1063281229
	.ident	"GCC: (GNU) 4.9.2"
