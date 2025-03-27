;******************************************************************************
;* TI ARM G3 C/C++ Codegen                                              PC v20.2.7.LTS *
;* Date/Time created: Wed Mar 26 12:36:10 2025                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../main_Anemometro.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM G3 C/C++ Codegen PC v20.2.7.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\dimit\workspace_v12\ANEMOMETRO_3\Debug")
	.global	velocidade
	.data
	.align	4
	.elfsym	velocidade,SYM_SIZE(4)
velocidade:
	.bits		0,32
			; velocidade @ 0

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("velocidade")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("velocidade")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr velocidade]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$1, DW_AT_decl_column(0x05)

	.global	angulo
	.data
	.align	4
	.elfsym	angulo,SYM_SIZE(4)
angulo:
	.bits		0,32
			; angulo @ 0

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("angulo")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("angulo")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr angulo]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$2, DW_AT_decl_column(0x05)

	.global	count1
	.data
	.align	4
	.elfsym	count1,SYM_SIZE(4)
count1:
	.bits		0,32
			; count1 @ 0

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("count1")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("count1")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr count1]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x10)
	.dwattr $C$DW$3, DW_AT_decl_column(0x05)

	.global	count2
	.data
	.align	4
	.elfsym	count2,SYM_SIZE(4)
count2:
	.bits		0,32
			; count2 @ 0

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("count2")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("count2")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr count2]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x11)
	.dwattr $C$DW$4, DW_AT_decl_column(0x05)

	.global	flag1
	.data
	.align	4
	.elfsym	flag1,SYM_SIZE(4)
flag1:
	.bits		0,32
			; flag1 @ 0

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("flag1")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("flag1")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr flag1]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x12)
	.dwattr $C$DW$5, DW_AT_decl_column(0x05)

	.global	flag2
	.data
	.align	4
	.elfsym	flag2,SYM_SIZE(4)
flag2:
	.bits		0,32
			; flag2 @ 0

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("flag2")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("flag2")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr flag2]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x13)
	.dwattr $C$DW$6, DW_AT_decl_column(0x05)

	.global	length
	.data
	.align	4
	.elfsym	length,SYM_SIZE(4)
length:
	.bits		0,32
			; length @ 0

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("length")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("length")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr length]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x14)
	.dwattr $C$DW$7, DW_AT_decl_column(0x05)

	.global	LAST_DIR
	.data
	.align	4
	.elfsym	LAST_DIR,SYM_SIZE(4)
LAST_DIR:
	.word	000000000h	; LAST_DIR @ 0 (0)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("LAST_DIR")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("LAST_DIR")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr LAST_DIR]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x15)
	.dwattr $C$DW$8, DW_AT_decl_column(0x07)

	.global	LAST_VEL
	.data
	.align	4
	.elfsym	LAST_VEL,SYM_SIZE(4)
LAST_VEL:
	.word	000000000h	; LAST_VEL @ 0 (0)

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("LAST_VEL")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("LAST_VEL")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr LAST_VEL]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x16)
	.dwattr $C$DW$9, DW_AT_decl_column(0x07)

	.global	V
	.data
	.align	4
	.elfsym	V,SYM_SIZE(4)
V:
	.bits		0,32
			; V @ 0

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("V")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("V")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr V]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x17)
	.dwattr $C$DW$10, DW_AT_decl_column(0x0a)

	.global	D
	.data
	.align	4
	.elfsym	D,SYM_SIZE(4)
D:
	.bits		0,32
			; D @ 0

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("D")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("D")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr D]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x18)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0a)

	.global	buffer
	.common	buffer,100,1
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("buffer")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("buffer")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr buffer]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x19)
	.dwattr $C$DW$12, DW_AT_decl_column(0x06)

	.global	salvar
	.data
	.align	4
	.elfsym	salvar,SYM_SIZE(4)
salvar:
	.bits		0,32
			; salvar @ 0

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("salvar")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("salvar")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr salvar]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$13, DW_AT_decl_column(0x05)

	.global	count
	.data
	.align	4
	.elfsym	count,SYM_SIZE(4)
count:
	.bits		0,32
			; count @ 0

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("count")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr count]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$14, DW_AT_decl_column(0x05)

	.global	flag_e
	.data
	.align	4
	.elfsym	flag_e,SYM_SIZE(4)
flag_e:
	.bits		0,32
			; flag_e @ 0

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("flag_e")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("flag_e")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr flag_e]
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$15, DW_AT_decl_column(0x05)

	.global	min
	.data
	.align	4
	.elfsym	min,SYM_SIZE(4)
min:
	.bits		0,32
			; min @ 0

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("min")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("min")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr min]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$16, DW_AT_decl_column(0x05)


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("StartCritical")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("StartCritical")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x25)
	.dwattr $C$DW$17, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$17


$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("EnableInterrupts")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("EnableInterrupts")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x27)
	.dwattr $C$DW$18, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$18


$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("EndCritical")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("EndCritical")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x26)
	.dwattr $C$DW$19, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$19


$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("UART_OutString")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("UART_OutString")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$20, DW_AT_decl_column(0x06)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$40)

	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("UART_OutUDec")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("UART_OutUDec")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("..\UART.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$22, DW_AT_decl_column(0x06)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$34)

	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("UART_OutChar")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("..\UART.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x36)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$6)

	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("UART_InChar")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("UART_InChar")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("..\UART.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x30)
	.dwattr $C$DW$26, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$26

;	C:\ti\ccs1230\ccs\tools\compiler\ti-cgt-arm_20.2.7.LTS\bin\armacpia.exe -@C:\\Users\\dimit\\AppData\\Local\\Temp\\{6D49FC6B-F442-4A44-901E-227451C5CA70} 
	.sect	".text:__isfinite"
	.clink
	.thumbfunc __isfinite
	.thumb
	.global	__isfinite

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("__isfinite")
	.dwattr $C$DW$27, DW_AT_low_pc(__isfinite)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("__isfinite")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$27, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x14e)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$27, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$27, DW_AT_decl_column(0x25)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 335,column 1,is_stmt,address __isfinite,isa 1

	.dwfde $C$DW$CIE, __isfinite
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("d")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 334 | _CODE_ACCESS _INLINE_DEFINITION int __isfinite(double d)               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isfinite                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V4,SP,SR                                *
;*   Regs Used         : A1,A2,A3,A4,V4,SP,LR,SR,D0,D0_hi                    *
;*   Local Frame Size  : 0 Args + 8 Auto + 8 Save = 16 byte                  *
;*****************************************************************************
__isfinite:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A3, A4, V4, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 3, -12
	.dwcfi	save_reg_to_mem, 2, -16
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("d")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 335 | { return __DOUBLE_BIASED_EXP_IS_MAX(d) == 0; }                         
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |335| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |335| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 335,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |335| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |335| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |335| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |335| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |335| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |335| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |335| 
        LSRS      A3, A2, #16           ; [DPU_V7M3_PIPE] |335| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |335| 
        ANDS      A2, A2, A3            ; [DPU_V7M3_PIPE] |335| 
        MOV       A3, #32752            ; [DPU_V7M3_PIPE] |335| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |335| 
        BNE       ||$C$L1||             ; [DPU_V7M3_PIPE] |335| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |335| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |335| 
;* --------------------------------------------------------------------------*
||$C$L1||:    
        CBNZ      V4, ||$C$L2||         ; [] 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |335| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |335| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 335,column 46,is_stmt,isa 1
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        POP       {A3, A4, V4, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:__isfinitef"
	.clink
	.thumbfunc __isfinitef
	.thumb
	.global	__isfinitef

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("__isfinitef")
	.dwattr $C$DW$31, DW_AT_low_pc(__isfinitef)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("__isfinitef")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$31, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x150)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$31, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x150)
	.dwattr $C$DW$31, DW_AT_decl_column(0x25)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 337,column 1,is_stmt,address __isfinitef,isa 1

	.dwfde $C$DW$CIE, __isfinitef
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("f")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 336 | _CODE_ACCESS _INLINE_DEFINITION int __isfinitef(float f)               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isfinitef                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR,D0                                *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
__isfinitef:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("f")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 337 | { return __FLOAT_BIASED_EXP_IS_MAX(f) == 0; }                          
;----------------------------------------------------------------------
        VSTR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |337| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 337,column 3,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |337| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |337| 
        LSRS      A1, A1, #16           ; [DPU_V7M3_PIPE] |337| 
        AND       A3, A1, #32640        ; [DPU_V7M3_PIPE] |337| 
        CMP       A3, #32640            ; [DPU_V7M3_PIPE] |337| 
        MOV       A1, #0                ; [DPU_V7M3_PIPE] |337| 
        BNE       ||$C$L3||             ; [DPU_V7M3_PIPE] |337| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |337| 
;* --------------------------------------------------------------------------*
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |337| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
        CBNZ      A2, ||$C$L4||         ; [] 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |337| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |337| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 337,column 45,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:__isfinitel"
	.clink
	.thumbfunc __isfinitel
	.thumb
	.global	__isfinitel

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("__isfinitel")
	.dwattr $C$DW$35, DW_AT_low_pc(__isfinitel)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("__isfinitel")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$35, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x152)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$35, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x152)
	.dwattr $C$DW$35, DW_AT_decl_column(0x25)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 339,column 1,is_stmt,address __isfinitel,isa 1

	.dwfde $C$DW$CIE, __isfinitel
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("e")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 338 | _CODE_ACCESS _INLINE_DEFINITION int __isfinitel(long double e)         
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isfinitel                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V4,SP,SR                                *
;*   Regs Used         : A1,A2,A3,A4,V4,SP,LR,SR,D0,D0_hi                    *
;*   Local Frame Size  : 0 Args + 8 Auto + 8 Save = 16 byte                  *
;*****************************************************************************
__isfinitel:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A3, A4, V4, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 3, -12
	.dwcfi	save_reg_to_mem, 2, -16
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("e")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 339 | { return __LDOUBLE_BIASED_EXP_IS_MAX(e) == 0; }                        
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |339| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |339| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 339,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |339| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |339| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |339| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |339| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |339| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |339| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |339| 
        LSRS      A3, A2, #16           ; [DPU_V7M3_PIPE] |339| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |339| 
        ANDS      A2, A2, A3            ; [DPU_V7M3_PIPE] |339| 
        MOV       A3, #32752            ; [DPU_V7M3_PIPE] |339| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |339| 
        BNE       ||$C$L5||             ; [DPU_V7M3_PIPE] |339| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |339| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |339| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
        CBNZ      V4, ||$C$L6||         ; [] 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |339| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |339| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 339,column 47,is_stmt,isa 1
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        POP       {A3, A4, V4, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:__isnan"
	.clink
	.thumbfunc __isnan
	.thumb
	.global	__isnan

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("__isnan")
	.dwattr $C$DW$39, DW_AT_low_pc(__isnan)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("__isnan")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x155)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$39, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x155)
	.dwattr $C$DW$39, DW_AT_decl_column(0x25)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 342,column 1,is_stmt,address __isnan,isa 1

	.dwfde $C$DW$CIE, __isnan
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("d")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 341 | _CODE_ACCESS _INLINE_DEFINITION int __isnan(double d)                  
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isnan                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,SP,SR                       *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,SP,LR,SR,D0,D0_hi           *
;*   Local Frame Size  : 0 Args + 8 Auto + 20 Save = 28 byte                 *
;*****************************************************************************
__isnan:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, V1, V2, V3, V4, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
	.dwcfi	save_reg_to_mem, 3, -24
	.dwcfi	save_reg_to_mem, 2, -28
	.dwcfi	save_reg_to_mem, 1, -32
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("d")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 342 | { return __DOUBLE_BIASED_EXP_IS_MAX(d) &&                              
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |342| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |342| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 342,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |342| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |342| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |342| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |342| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |342| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |342| 
        LSRS      A3, A2, #16           ; [DPU_V7M3_PIPE] |342| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |342| 
        ANDS      A2, A2, A3            ; [DPU_V7M3_PIPE] |342| 
        MOV       A3, #32752            ; [DPU_V7M3_PIPE] |342| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |342| 
        BNE       ||$C$L9||             ; [DPU_V7M3_PIPE] |342| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |342| 
;* --------------------------------------------------------------------------*
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |342| 
        LDR       V3, $C$CON1           ; [DPU_V7M3_PIPE] |342| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |342| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |342| 
        MOVS      V2, #0                ; [DPU_V7M3_PIPE] |342| 
        LSLS      V1, A2, #0            ; [DPU_V7M3_PIPE] |342| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |342| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |342| 
        MOV       A4, #-1               ; [DPU_V7M3_PIPE] |342| 
        ORRS      A3, A3, V2            ; [DPU_V7M3_PIPE] |342| 
        ORRS      A2, A2, V1            ; [DPU_V7M3_PIPE] |342| 
        ANDS      A4, A4, A3            ; [DPU_V7M3_PIPE] |342| 
        ANDS      V3, V3, A2            ; [DPU_V7M3_PIPE] |342| 
        BNE       ||$C$L7||             ; [DPU_V7M3_PIPE] |342| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |342| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |342| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
        BNE       ||$C$L8||             ; [DPU_V7M3_PIPE] |342| 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |342| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |342| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
        CBNZ      V4, ||$C$L9||         ; [] 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |342| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |342| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 343,column 47,is_stmt,isa 1
;----------------------------------------------------------------------
; 343 | (__DOUBLE_FRAC_PART_IS_ZERO(d) == 0); }                                
;----------------------------------------------------------------------
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        POP       {A2, A3, A4, V1, V2, V3, V4, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:__isnanf"
	.clink
	.thumbfunc __isnanf
	.thumb
	.global	__isnanf

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("__isnanf")
	.dwattr $C$DW$43, DW_AT_low_pc(__isnanf)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("__isnanf")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$43, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x158)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$43, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x158)
	.dwattr $C$DW$43, DW_AT_decl_column(0x25)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 345,column 1,is_stmt,address __isnanf,isa 1

	.dwfde $C$DW$CIE, __isnanf
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("f")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 344 | _CODE_ACCESS _INLINE_DEFINITION int __isnanf(float f)                  
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isnanf                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR,D0                                *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
__isnanf:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("f")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 345 | { return __FLOAT_BIASED_EXP_IS_MAX(f) &&                               
;----------------------------------------------------------------------
        VSTR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |345| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |345| 
        MOVS      A3, #0                ; [DPU_V7M3_PIPE] |345| 
        LSRS      A1, A1, #16           ; [DPU_V7M3_PIPE] |345| 
        AND       A1, A1, #32640        ; [DPU_V7M3_PIPE] |345| 
        CMP       A1, #32640            ; [DPU_V7M3_PIPE] |345| 
        BNE       ||$C$L11||            ; [DPU_V7M3_PIPE] |345| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |345| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |345| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |345| 
        BFC       A2, #23, #9           ; [DPU_V7M3_PIPE] |345| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |345| 
        CBNZ      A2, ||$C$L10||        ; [] 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |345| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |345| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
        CBNZ      A1, ||$C$L11||        ; [] 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |345| 
;* --------------------------------------------------------------------------*
        MOVS      A3, #1                ; [DPU_V7M3_PIPE] |345| 
;* --------------------------------------------------------------------------*
||$C$L11||:    
        MOV       A1, A3                ; [DPU_V7M3_PIPE] |345| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 346,column 46,is_stmt,isa 1
;----------------------------------------------------------------------
; 346 | (__FLOAT_FRAC_PART_IS_ZERO(f) == 0); }                                 
;----------------------------------------------------------------------
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text:__isnanl"
	.clink
	.thumbfunc __isnanl
	.thumb
	.global	__isnanl

$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("__isnanl")
	.dwattr $C$DW$47, DW_AT_low_pc(__isnanl)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("__isnanl")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$47, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0x15b)
	.dwattr $C$DW$47, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$47, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$47, DW_AT_decl_column(0x25)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 348,column 1,is_stmt,address __isnanl,isa 1

	.dwfde $C$DW$CIE, __isnanl
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("e")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 347 | _CODE_ACCESS _INLINE_DEFINITION int __isnanl(long double e)            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isnanl                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,SP,SR                       *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,SP,LR,SR,D0,D0_hi           *
;*   Local Frame Size  : 0 Args + 8 Auto + 20 Save = 28 byte                 *
;*****************************************************************************
__isnanl:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, V1, V2, V3, V4, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
	.dwcfi	save_reg_to_mem, 3, -24
	.dwcfi	save_reg_to_mem, 2, -28
	.dwcfi	save_reg_to_mem, 1, -32
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("e")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 348 | { return __LDOUBLE_BIASED_EXP_IS_MAX(e) &&                             
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |348| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |348| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 348,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |348| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |348| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |348| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |348| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |348| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |348| 
        LSRS      A3, A2, #16           ; [DPU_V7M3_PIPE] |348| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |348| 
        ANDS      A2, A2, A3            ; [DPU_V7M3_PIPE] |348| 
        MOV       A3, #32752            ; [DPU_V7M3_PIPE] |348| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |348| 
        BNE       ||$C$L14||            ; [DPU_V7M3_PIPE] |348| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |348| 
;* --------------------------------------------------------------------------*
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |348| 
        LDR       V3, $C$CON2           ; [DPU_V7M3_PIPE] |348| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |348| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |348| 
        MOVS      V2, #0                ; [DPU_V7M3_PIPE] |348| 
        LSLS      V1, A2, #0            ; [DPU_V7M3_PIPE] |348| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |348| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |348| 
        MOV       A4, #-1               ; [DPU_V7M3_PIPE] |348| 
        ORRS      A3, A3, V2            ; [DPU_V7M3_PIPE] |348| 
        ORRS      A2, A2, V1            ; [DPU_V7M3_PIPE] |348| 
        ANDS      A4, A4, A3            ; [DPU_V7M3_PIPE] |348| 
        ANDS      V3, V3, A2            ; [DPU_V7M3_PIPE] |348| 
        BNE       ||$C$L12||            ; [DPU_V7M3_PIPE] |348| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |348| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |348| 
;* --------------------------------------------------------------------------*
||$C$L12||:    
        BNE       ||$C$L13||            ; [DPU_V7M3_PIPE] |348| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |348| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |348| 
;* --------------------------------------------------------------------------*
||$C$L13||:    
        CBNZ      V4, ||$C$L14||        ; [] 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |348| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |348| 
;* --------------------------------------------------------------------------*
||$C$L14||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 349,column 48,is_stmt,isa 1
;----------------------------------------------------------------------
; 349 | (__LDOUBLE_FRAC_PART_IS_ZERO(e) == 0); }                               
;----------------------------------------------------------------------
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        POP       {A2, A3, A4, V1, V2, V3, V4, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$47, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text:__isnormal"
	.clink
	.thumbfunc __isnormal
	.thumb
	.global	__isnormal

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("__isnormal")
	.dwattr $C$DW$51, DW_AT_low_pc(__isnormal)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("__isnormal")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x15f)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$51, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$51, DW_AT_decl_column(0x25)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 352,column 1,is_stmt,address __isnormal,isa 1

	.dwfde $C$DW$CIE, __isnormal
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("d")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 351 | _CODE_ACCESS _INLINE_DEFINITION int __isnormal(double d)               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isnormal                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V3,V4,SP,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V3,V4,SP,LR,SR,D0,D0_hi                 *
;*   Local Frame Size  : 0 Args + 8 Auto + 12 Save = 20 byte                 *
;*****************************************************************************
__isnormal:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, V3, V4, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 3, -16
	.dwcfi	save_reg_to_mem, 2, -20
	.dwcfi	save_reg_to_mem, 1, -24
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("d")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 352 | { return (__DOUBLE_BIASED_EXP_IS_ZERO(d) == 0) &&                      
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |352| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |352| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 352,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |352| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |352| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |352| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |352| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |352| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |352| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |352| 
        LSRS      A4, A2, #20           ; [DPU_V7M3_PIPE] |352| 
        MOVS      A3, #0                ; [DPU_V7M3_PIPE] |352| 
        MOV       A2, #2047             ; [DPU_V7M3_PIPE] |352| 
        ASRS      V3, A2, #31           ; [DPU_V7M3_PIPE] |352| 
        ANDS      V3, V3, A3            ; [DPU_V7M3_PIPE] |352| 
        AND       A2, A2, A4            ; [DPU_V7M3_PIPE] |352| 
        BNE       ||$C$L15||            ; [DPU_V7M3_PIPE] |352| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |352| 
;* --------------------------------------------------------------------------*
        CMP       A2, #0                ; [DPU_V7M3_PIPE] |352| 
;* --------------------------------------------------------------------------*
||$C$L15||:    
        BNE       ||$C$L16||            ; [DPU_V7M3_PIPE] |352| 
        ; BRANCHCC OCCURS {||$C$L16||}   ; [] |352| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |352| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
        CBNZ      V4, ||$C$L18||        ; [] 
        ; BRANCHCC OCCURS {||$C$L18||}   ; [] |352| 
;* --------------------------------------------------------------------------*
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |352| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |352| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |352| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |352| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |352| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |352| 
        LSRS      A3, A2, #16           ; [DPU_V7M3_PIPE] |352| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |352| 
        ANDS      A2, A2, A3            ; [DPU_V7M3_PIPE] |352| 
        MOV       A3, #32752            ; [DPU_V7M3_PIPE] |352| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |352| 
        BNE       ||$C$L17||            ; [DPU_V7M3_PIPE] |352| 
        ; BRANCHCC OCCURS {||$C$L17||}   ; [] |352| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |352| 
;* --------------------------------------------------------------------------*
||$C$L17||:    
        CBNZ      V4, ||$C$L18||        ; [] 
        ; BRANCHCC OCCURS {||$C$L18||}   ; [] |352| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |352| 
;* --------------------------------------------------------------------------*
||$C$L18||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 353,column 48,is_stmt,isa 1
;----------------------------------------------------------------------
; 353 | (__DOUBLE_BIASED_EXP_IS_MAX(d) == 0); }                                
;----------------------------------------------------------------------
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        POP       {A2, A3, A4, V3, V4, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text:__isnormalf"
	.clink
	.thumbfunc __isnormalf
	.thumb
	.global	__isnormalf

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("__isnormalf")
	.dwattr $C$DW$55, DW_AT_low_pc(__isnormalf)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("__isnormalf")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$55, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x163)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$55, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x163)
	.dwattr $C$DW$55, DW_AT_decl_column(0x25)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 356,column 1,is_stmt,address __isnormalf,isa 1

	.dwfde $C$DW$CIE, __isnormalf
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("f")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 355 | _CODE_ACCESS _INLINE_DEFINITION int __isnormalf(float f)               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isnormalf                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR,D0                                *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
__isnormalf:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("f")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 356 | { return (__FLOAT_BIASED_EXP_IS_ZERO(f) == 0) &&                       
;----------------------------------------------------------------------
        VSTR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |356| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |356| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |356| 
        UBFX      A3, A1, #23, #8       ; [DPU_V7M3_PIPE] |356| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |356| 
        CBNZ      A3, ||$C$L19||        ; [] 
        ; BRANCHCC OCCURS {||$C$L19||}   ; [] |356| 
;* --------------------------------------------------------------------------*
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |356| 
;* --------------------------------------------------------------------------*
||$C$L19||:    
        CBNZ      A2, ||$C$L21||        ; [] 
        ; BRANCHCC OCCURS {||$C$L21||}   ; [] |356| 
;* --------------------------------------------------------------------------*
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |356| 
        LSRS      A2, A2, #16           ; [DPU_V7M3_PIPE] |356| 
        AND       A3, A2, #32640        ; [DPU_V7M3_PIPE] |356| 
        CMP       A3, #32640            ; [DPU_V7M3_PIPE] |356| 
        MOV       A2, #0                ; [DPU_V7M3_PIPE] |356| 
        BNE       ||$C$L20||            ; [DPU_V7M3_PIPE] |356| 
        ; BRANCHCC OCCURS {||$C$L20||}   ; [] |356| 
;* --------------------------------------------------------------------------*
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |356| 
;* --------------------------------------------------------------------------*
||$C$L20||:    
        CBNZ      A2, ||$C$L21||        ; [] 
        ; BRANCHCC OCCURS {||$C$L21||}   ; [] |356| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |356| 
;* --------------------------------------------------------------------------*
||$C$L21||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 357,column 47,is_stmt,isa 1
;----------------------------------------------------------------------
; 357 | (__FLOAT_BIASED_EXP_IS_MAX(f) == 0); }                                 
;----------------------------------------------------------------------
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text:__isnormall"
	.clink
	.thumbfunc __isnormall
	.thumb
	.global	__isnormall

$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("__isnormall")
	.dwattr $C$DW$59, DW_AT_low_pc(__isnormall)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("__isnormall")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$59, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x167)
	.dwattr $C$DW$59, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$59, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x167)
	.dwattr $C$DW$59, DW_AT_decl_column(0x25)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 360,column 1,is_stmt,address __isnormall,isa 1

	.dwfde $C$DW$CIE, __isnormall
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_name("e")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 359 | _CODE_ACCESS _INLINE_DEFINITION int __isnormall(long double e)         
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isnormall                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V3,V4,SP,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V3,V4,SP,LR,SR,D0,D0_hi                 *
;*   Local Frame Size  : 0 Args + 8 Auto + 12 Save = 20 byte                 *
;*****************************************************************************
__isnormall:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, V3, V4, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 3, -16
	.dwcfi	save_reg_to_mem, 2, -20
	.dwcfi	save_reg_to_mem, 1, -24
$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("e")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 360 | { return (__LDOUBLE_BIASED_EXP_IS_ZERO(e) == 0) &&                     
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |360| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |360| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 360,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |360| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |360| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |360| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |360| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |360| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |360| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |360| 
        LSRS      A4, A2, #20           ; [DPU_V7M3_PIPE] |360| 
        MOVS      A3, #0                ; [DPU_V7M3_PIPE] |360| 
        MOV       A2, #2047             ; [DPU_V7M3_PIPE] |360| 
        ASRS      V3, A2, #31           ; [DPU_V7M3_PIPE] |360| 
        ANDS      V3, V3, A3            ; [DPU_V7M3_PIPE] |360| 
        AND       A2, A2, A4            ; [DPU_V7M3_PIPE] |360| 
        BNE       ||$C$L22||            ; [DPU_V7M3_PIPE] |360| 
        ; BRANCHCC OCCURS {||$C$L22||}   ; [] |360| 
;* --------------------------------------------------------------------------*
        CMP       A2, #0                ; [DPU_V7M3_PIPE] |360| 
;* --------------------------------------------------------------------------*
||$C$L22||:    
        BNE       ||$C$L23||            ; [DPU_V7M3_PIPE] |360| 
        ; BRANCHCC OCCURS {||$C$L23||}   ; [] |360| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |360| 
;* --------------------------------------------------------------------------*
||$C$L23||:    
        CBNZ      V4, ||$C$L25||        ; [] 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |360| 
;* --------------------------------------------------------------------------*
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |360| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |360| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |360| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |360| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |360| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |360| 
        LSRS      A3, A2, #16           ; [DPU_V7M3_PIPE] |360| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |360| 
        ANDS      A2, A2, A3            ; [DPU_V7M3_PIPE] |360| 
        MOV       A3, #32752            ; [DPU_V7M3_PIPE] |360| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |360| 
        BNE       ||$C$L24||            ; [DPU_V7M3_PIPE] |360| 
        ; BRANCHCC OCCURS {||$C$L24||}   ; [] |360| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |360| 
;* --------------------------------------------------------------------------*
||$C$L24||:    
        CBNZ      V4, ||$C$L25||        ; [] 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |360| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |360| 
;* --------------------------------------------------------------------------*
||$C$L25||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 361,column 49,is_stmt,isa 1
;----------------------------------------------------------------------
; 361 | (__LDOUBLE_BIASED_EXP_IS_MAX(e) == 0); }                               
;----------------------------------------------------------------------
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        POP       {A2, A3, A4, V3, V4, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$59, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text:__signbit"
	.clink
	.thumbfunc __signbit
	.thumb
	.global	__signbit

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("__signbit")
	.dwattr $C$DW$63, DW_AT_low_pc(__signbit)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("__signbit")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$63, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x16b)
	.dwattr $C$DW$63, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$63, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$63, DW_AT_decl_column(0x25)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 364,column 1,is_stmt,address __signbit,isa 1

	.dwfde $C$DW$CIE, __signbit
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("d")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 363 | _CODE_ACCESS _INLINE_DEFINITION int __signbit(double d)                
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __signbit                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,SP,SR                       *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,SP,LR,SR,D0,D0_hi           *
;*   Local Frame Size  : 0 Args + 8 Auto + 20 Save = 28 byte                 *
;*****************************************************************************
__signbit:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, V1, V2, V3, V4, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
	.dwcfi	save_reg_to_mem, 3, -24
	.dwcfi	save_reg_to_mem, 2, -28
	.dwcfi	save_reg_to_mem, 1, -32
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("d")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 364 | { return __DOUBLE_SIGN_BIT_ZERO(d) == 0; }                             
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |364| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |364| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 364,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |364| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |364| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |364| 
        MOVS      V2, #0                ; [DPU_V7M3_PIPE] |364| 
        MOV       V3, #-2147483648      ; [DPU_V7M3_PIPE] |364| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |364| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |364| 
        LSLS      V1, A2, #0            ; [DPU_V7M3_PIPE] |364| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |364| 
        ORRS      A2, A2, V1            ; [DPU_V7M3_PIPE] |364| 
        MOVS      A4, #0                ; [DPU_V7M3_PIPE] |364| 
        ORRS      A3, A3, V2            ; [DPU_V7M3_PIPE] |364| 
        ANDS      V3, V3, A2            ; [DPU_V7M3_PIPE] |364| 
        AND       A4, A4, A3            ; [DPU_V7M3_PIPE] |364| 
        BNE       ||$C$L26||            ; [DPU_V7M3_PIPE] |364| 
        ; BRANCHCC OCCURS {||$C$L26||}   ; [] |364| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |364| 
;* --------------------------------------------------------------------------*
||$C$L26||:    
        BNE       ||$C$L27||            ; [DPU_V7M3_PIPE] |364| 
        ; BRANCHCC OCCURS {||$C$L27||}   ; [] |364| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |364| 
;* --------------------------------------------------------------------------*
||$C$L27||:    
        CBNZ      V4, ||$C$L28||        ; [] 
        ; BRANCHCC OCCURS {||$C$L28||}   ; [] |364| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |364| 
;* --------------------------------------------------------------------------*
||$C$L28||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 364,column 42,is_stmt,isa 1
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        POP       {A2, A3, A4, V1, V2, V3, V4, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text:__signbitf"
	.clink
	.thumbfunc __signbitf
	.thumb
	.global	__signbitf

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("__signbitf")
	.dwattr $C$DW$67, DW_AT_low_pc(__signbitf)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("__signbitf")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$67, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x16d)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$67, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$67, DW_AT_decl_column(0x25)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 366,column 1,is_stmt,address __signbitf,isa 1

	.dwfde $C$DW$CIE, __signbitf
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("f")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 365 | _CODE_ACCESS _INLINE_DEFINITION int __signbitf(float f)                
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __signbitf                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR,D0                                *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
__signbitf:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("f")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 366 | { return __FLOAT_SIGN_BIT_ZERO(f) == 0; }                              
;----------------------------------------------------------------------
        VSTR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |366| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 366,column 3,is_stmt,isa 1
        LDR       A3, [SP, #0]          ; [DPU_V7M3_PIPE] |366| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |366| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |366| 
        LSRS      A3, A3, #32           ; [DPU_V7M3_PIPE] |366| 
        BCS       ||$C$L29||            ; [DPU_V7M3_PIPE] |366| 
        ; BRANCHCC OCCURS {||$C$L29||}   ; [] |366| 
;* --------------------------------------------------------------------------*
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |366| 
;* --------------------------------------------------------------------------*
||$C$L29||:    
        CBNZ      A2, ||$C$L30||        ; [] 
        ; BRANCHCC OCCURS {||$C$L30||}   ; [] |366| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |366| 
;* --------------------------------------------------------------------------*
||$C$L30||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 366,column 41,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text:__signbitl"
	.clink
	.thumbfunc __signbitl
	.thumb
	.global	__signbitl

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("__signbitl")
	.dwattr $C$DW$71, DW_AT_low_pc(__signbitl)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("__signbitl")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$71, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x16f)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$71, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$71, DW_AT_decl_column(0x25)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 368,column 1,is_stmt,address __signbitl,isa 1

	.dwfde $C$DW$CIE, __signbitl
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("e")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 367 | _CODE_ACCESS _INLINE_DEFINITION int __signbitl(long double e)          
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __signbitl                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,SP,SR                       *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,SP,LR,SR,D0,D0_hi           *
;*   Local Frame Size  : 0 Args + 8 Auto + 20 Save = 28 byte                 *
;*****************************************************************************
__signbitl:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, V1, V2, V3, V4, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
	.dwcfi	save_reg_to_mem, 3, -24
	.dwcfi	save_reg_to_mem, 2, -28
	.dwcfi	save_reg_to_mem, 1, -32
$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("e")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 368 | { return __LDOUBLE_SIGN_BIT_ZERO(e) == 0; }                            
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |368| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |368| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 368,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |368| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |368| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |368| 
        MOVS      V2, #0                ; [DPU_V7M3_PIPE] |368| 
        MOV       V3, #-2147483648      ; [DPU_V7M3_PIPE] |368| 
        MOVS      V4, #0                ; [DPU_V7M3_PIPE] |368| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |368| 
        LSLS      V1, A2, #0            ; [DPU_V7M3_PIPE] |368| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |368| 
        ORRS      A2, A2, V1            ; [DPU_V7M3_PIPE] |368| 
        MOVS      A4, #0                ; [DPU_V7M3_PIPE] |368| 
        ORRS      A3, A3, V2            ; [DPU_V7M3_PIPE] |368| 
        ANDS      V3, V3, A2            ; [DPU_V7M3_PIPE] |368| 
        AND       A4, A4, A3            ; [DPU_V7M3_PIPE] |368| 
        BNE       ||$C$L31||            ; [DPU_V7M3_PIPE] |368| 
        ; BRANCHCC OCCURS {||$C$L31||}   ; [] |368| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |368| 
;* --------------------------------------------------------------------------*
||$C$L31||:    
        BNE       ||$C$L32||            ; [DPU_V7M3_PIPE] |368| 
        ; BRANCHCC OCCURS {||$C$L32||}   ; [] |368| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #1                ; [DPU_V7M3_PIPE] |368| 
;* --------------------------------------------------------------------------*
||$C$L32||:    
        CBNZ      V4, ||$C$L33||        ; [] 
        ; BRANCHCC OCCURS {||$C$L33||}   ; [] |368| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |368| 
;* --------------------------------------------------------------------------*
||$C$L33||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 368,column 43,is_stmt,isa 1
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_return

        POP       {A2, A3, A4, V1, V2, V3, V4, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text:__isinff"
	.clink
	.thumbfunc __isinff
	.thumb
	.global	__isinff

$C$DW$75	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$75, DW_AT_name("__isinff")
	.dwattr $C$DW$75, DW_AT_low_pc(__isinff)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("__isinff")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$75, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x176)
	.dwattr $C$DW$75, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$75, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x176)
	.dwattr $C$DW$75, DW_AT_decl_column(0x25)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 375,column 1,is_stmt,address __isinff,isa 1

	.dwfde $C$DW$CIE, __isinff
$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_name("f")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 374 | _CODE_ACCESS _INLINE_DEFINITION int __isinff(float f)                  
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isinff                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR,D0                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
__isinff:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("f")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 375 | { return __FLOAT_BIASED_EXP_IS_MAX(f) && __FLOAT_FRAC_PART_IS_ZERO(f);
;     | }                                                                      
;----------------------------------------------------------------------
        VSTR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |375| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |375| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |375| 
        LSRS      A1, A1, #16           ; [DPU_V7M3_PIPE] |375| 
        AND       A1, A1, #32640        ; [DPU_V7M3_PIPE] |375| 
        CMP       A1, #32640            ; [DPU_V7M3_PIPE] |375| 
        BNE       ||$C$L34||            ; [DPU_V7M3_PIPE] |375| 
        ; BRANCHCC OCCURS {||$C$L34||}   ; [] |375| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |375| 
        BFC       A1, #23, #9           ; [DPU_V7M3_PIPE] |375| 
        CBNZ      A1, ||$C$L34||        ; [] 
        ; BRANCHCC OCCURS {||$C$L34||}   ; [] |375| 
;* --------------------------------------------------------------------------*
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |375| 
;* --------------------------------------------------------------------------*
||$C$L34||:    
        MOV       A1, A2                ; [DPU_V7M3_PIPE] |375| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 375,column 72,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$75, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text:__isinf"
	.clink
	.thumbfunc __isinf
	.thumb
	.global	__isinf

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("__isinf")
	.dwattr $C$DW$79, DW_AT_low_pc(__isinf)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("__isinf")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$79, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x178)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$79, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x178)
	.dwattr $C$DW$79, DW_AT_decl_column(0x25)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 377,column 1,is_stmt,address __isinf,isa 1

	.dwfde $C$DW$CIE, __isinf
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("d")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 376 | _CODE_ACCESS _INLINE_DEFINITION int __isinf (double d)                 
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isinf                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V4,SP,SR                          *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V4,SP,LR,SR,D0,D0_hi              *
;*   Local Frame Size  : 0 Args + 8 Auto + 16 Save = 24 byte                 *
;*****************************************************************************
__isinf:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A3, A4, V1, V2, V4, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 5, -12
	.dwcfi	save_reg_to_mem, 4, -16
	.dwcfi	save_reg_to_mem, 3, -20
	.dwcfi	save_reg_to_mem, 2, -24
$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("d")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 377 | { return __DOUBLE_BIASED_EXP_IS_MAX(d) && __DOUBLE_FRAC_PART_IS_ZERO(d)
;     | ; }                                                                    
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |377| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |377| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 377,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |377| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |377| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |377| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |377| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |377| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |377| 
        LSRS      A3, A2, #16           ; [DPU_V7M3_PIPE] |377| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |377| 
        ANDS      A2, A2, A3            ; [DPU_V7M3_PIPE] |377| 
        MOV       A3, #32752            ; [DPU_V7M3_PIPE] |377| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |377| 
        BNE       ||$C$L36||            ; [DPU_V7M3_PIPE] |377| 
        ; BRANCHCC OCCURS {||$C$L36||}   ; [] |377| 
;* --------------------------------------------------------------------------*
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |377| 
        LDR       V4, $C$CON3           ; [DPU_V7M3_PIPE] |377| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |377| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |377| 
        MOVS      V2, #0                ; [DPU_V7M3_PIPE] |377| 
        LSLS      V1, A2, #0            ; [DPU_V7M3_PIPE] |377| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |377| 
        MOV       A4, #-1               ; [DPU_V7M3_PIPE] |377| 
        ORRS      A3, A3, V2            ; [DPU_V7M3_PIPE] |377| 
        ORRS      A2, A2, V1            ; [DPU_V7M3_PIPE] |377| 
        ANDS      A4, A4, A3            ; [DPU_V7M3_PIPE] |377| 
        ANDS      V4, V4, A2            ; [DPU_V7M3_PIPE] |377| 
        BNE       ||$C$L35||            ; [DPU_V7M3_PIPE] |377| 
        ; BRANCHCC OCCURS {||$C$L35||}   ; [] |377| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |377| 
;* --------------------------------------------------------------------------*
||$C$L35||:    
        BNE       ||$C$L36||            ; [DPU_V7M3_PIPE] |377| 
        ; BRANCHCC OCCURS {||$C$L36||}   ; [] |377| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |377| 
;* --------------------------------------------------------------------------*
||$C$L36||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 377,column 74,is_stmt,isa 1
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return

        POP       {A3, A4, V1, V2, V4, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:__isinfl"
	.clink
	.thumbfunc __isinfl
	.thumb
	.global	__isinfl

$C$DW$83	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$83, DW_AT_name("__isinfl")
	.dwattr $C$DW$83, DW_AT_low_pc(__isinfl)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("__isinfl")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$83, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x17a)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$83, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$83, DW_AT_decl_column(0x25)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 379,column 1,is_stmt,address __isinfl,isa 1

	.dwfde $C$DW$CIE, __isinfl
$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_name("e")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 378 | _CODE_ACCESS _INLINE_DEFINITION int __isinfl(long double e)            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __isinfl                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V4,SP,SR                          *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V4,SP,LR,SR,D0,D0_hi              *
;*   Local Frame Size  : 0 Args + 8 Auto + 16 Save = 24 byte                 *
;*****************************************************************************
__isinfl:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A3, A4, V1, V2, V4, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 5, -12
	.dwcfi	save_reg_to_mem, 4, -16
	.dwcfi	save_reg_to_mem, 3, -20
	.dwcfi	save_reg_to_mem, 2, -24
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("e")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 379 | { return __LDOUBLE_BIASED_EXP_IS_MAX(e) && __LDOUBLE_FRAC_PART_IS_ZERO(
;     | e); }                                                                  
;----------------------------------------------------------------------
        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |379| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |379| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 379,column 3,is_stmt,isa 1
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |379| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |379| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |379| 
        LSLS      A3, A2, #0            ; [DPU_V7M3_PIPE] |379| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |379| 
        ORRS      A2, A2, A3            ; [DPU_V7M3_PIPE] |379| 
        LSRS      A3, A2, #16           ; [DPU_V7M3_PIPE] |379| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |379| 
        ANDS      A2, A2, A3            ; [DPU_V7M3_PIPE] |379| 
        MOV       A3, #32752            ; [DPU_V7M3_PIPE] |379| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |379| 
        BNE       ||$C$L38||            ; [DPU_V7M3_PIPE] |379| 
        ; BRANCHCC OCCURS {||$C$L38||}   ; [] |379| 
;* --------------------------------------------------------------------------*
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |379| 
        LDR       V4, $C$CON4           ; [DPU_V7M3_PIPE] |379| 
        MOV       A2, A3                ; [DPU_V7M3_PIPE] |379| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |379| 
        MOVS      V2, #0                ; [DPU_V7M3_PIPE] |379| 
        LSLS      V1, A2, #0            ; [DPU_V7M3_PIPE] |379| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |379| 
        MOV       A4, #-1               ; [DPU_V7M3_PIPE] |379| 
        ORRS      A3, A3, V2            ; [DPU_V7M3_PIPE] |379| 
        ORRS      A2, A2, V1            ; [DPU_V7M3_PIPE] |379| 
        ANDS      A4, A4, A3            ; [DPU_V7M3_PIPE] |379| 
        ANDS      V4, V4, A2            ; [DPU_V7M3_PIPE] |379| 
        BNE       ||$C$L37||            ; [DPU_V7M3_PIPE] |379| 
        ; BRANCHCC OCCURS {||$C$L37||}   ; [] |379| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |379| 
;* --------------------------------------------------------------------------*
||$C$L37||:    
        BNE       ||$C$L38||            ; [DPU_V7M3_PIPE] |379| 
        ; BRANCHCC OCCURS {||$C$L38||}   ; [] |379| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |379| 
;* --------------------------------------------------------------------------*
||$C$L38||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 379,column 76,is_stmt,isa 1
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        POP       {A3, A4, V1, V2, V4, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$83, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$83

	.sect	".text:__fpclassifyf"
	.clink
	.thumbfunc __fpclassifyf
	.thumb
	.global	__fpclassifyf

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$87, DW_AT_low_pc(__fpclassifyf)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("__fpclassifyf")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$87, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x18c)
	.dwattr $C$DW$87, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$87, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$87, DW_AT_decl_column(0x25)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 397,column 1,is_stmt,address __fpclassifyf,isa 1

	.dwfde $C$DW$CIE, __fpclassifyf
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("f")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 396 | _CODE_ACCESS _INLINE_DEFINITION int __fpclassifyf(float f)             
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __fpclassifyf                                              *
;*                                                                           *
;*   Regs Modified     : A1,SP,SR                                            *
;*   Regs Used         : A1,SP,LR,SR,D0                                      *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
__fpclassifyf:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("f")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg13 0]

        VSTR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |397| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 398,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 398 | if (__FLOAT_BIASED_EXP_IS_MAX(f))                                      
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |398| 
        LSRS      A1, A1, #16           ; [DPU_V7M3_PIPE] |398| 
        AND       A1, A1, #32640        ; [DPU_V7M3_PIPE] |398| 
        CMP       A1, #32640            ; [DPU_V7M3_PIPE] |398| 
        BNE       ||$C$L40||            ; [DPU_V7M3_PIPE] |398| 
        ; BRANCHCC OCCURS {||$C$L40||}   ; [] |398| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 400,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 400 | if (__FLOAT_FRAC_PART_IS_ZERO(f))                                      
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |400| 
        BFC       A1, #23, #9           ; [DPU_V7M3_PIPE] |400| 
        CBNZ      A1, ||$C$L39||        ; [] 
        ; BRANCHCC OCCURS {||$C$L39||}   ; [] |400| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 401,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 401 | return __FP_INFINITE;                                                  
;----------------------------------------------------------------------
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |401| 
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |401| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |401| 
;* --------------------------------------------------------------------------*
||$C$L39||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 1
;----------------------------------------------------------------------
; 402 | else return __FP_NAN;                                                  
;----------------------------------------------------------------------
        MOVS      A1, #2                ; [DPU_V7M3_PIPE] |402| 
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |402| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |402| 
;* --------------------------------------------------------------------------*
||$C$L40||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 404,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 404 | if (__FLOAT_BIASED_EXP_IS_ZERO(f))                                     
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |404| 
        UBFX      A1, A1, #23, #8       ; [DPU_V7M3_PIPE] |404| 
        CBNZ      A1, ||$C$L42||        ; [] 
        ; BRANCHCC OCCURS {||$C$L42||}   ; [] |404| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 406,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 406 | if (__FLOAT_FRAC_PART_IS_ZERO(f))                                      
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |406| 
        BFC       A1, #23, #9           ; [DPU_V7M3_PIPE] |406| 
        CBNZ      A1, ||$C$L41||        ; [] 
        ; BRANCHCC OCCURS {||$C$L41||}   ; [] |406| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 407,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 407 | return __FP_ZERO;                                                      
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |407| 
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |407| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |407| 
;* --------------------------------------------------------------------------*
||$C$L41||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 408,column 14,is_stmt,isa 1
;----------------------------------------------------------------------
; 408 | else return __FP_SUBNORMAL;                                            
;----------------------------------------------------------------------
        MVN       A1, #1                ; [DPU_V7M3_PIPE] |408| 
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |408| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |408| 
;* --------------------------------------------------------------------------*
||$C$L42||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 410,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 410 | return __FP_NORMAL;                                                    
;----------------------------------------------------------------------
        MOV       A1, #-1               ; [DPU_V7M3_PIPE] |410| 
;* --------------------------------------------------------------------------*
||$C$L43||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 411,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text:__fpclassify"
	.clink
	.thumbfunc __fpclassify
	.thumb
	.global	__fpclassify

$C$DW$91	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$91, DW_AT_name("__fpclassify")
	.dwattr $C$DW$91, DW_AT_low_pc(__fpclassify)
	.dwattr $C$DW$91, DW_AT_high_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("__fpclassify")
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$91, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$91, DW_AT_TI_begin_line(0x19d)
	.dwattr $C$DW$91, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$91, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$91, DW_AT_decl_column(0x25)
	.dwattr $C$DW$91, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 414,column 1,is_stmt,address __fpclassify,isa 1

	.dwfde $C$DW$CIE, __fpclassify
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("d")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 413 | _CODE_ACCESS _INLINE_DEFINITION int __fpclassify (double d)            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __fpclassify                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,SP,SR                                *
;*   Regs Used         : A1,A2,A3,A4,V1,SP,LR,SR,D0,D0_hi                    *
;*   Local Frame Size  : 0 Args + 8 Auto + 8 Save = 16 byte                  *
;*****************************************************************************
__fpclassify:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A3, A4, V1, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
	.dwcfi	save_reg_to_mem, 3, -12
	.dwcfi	save_reg_to_mem, 2, -16
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("d")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg13 0]

        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |414| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |414| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 415,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 415 | if (__DOUBLE_BIASED_EXP_IS_MAX(d))                                     
;----------------------------------------------------------------------
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |415| 
        MOV       A1, A3                ; [DPU_V7M3_PIPE] |415| 
        LSLS      A2, A1, #0            ; [DPU_V7M3_PIPE] |415| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |415| 
        ORRS      A1, A1, A2            ; [DPU_V7M3_PIPE] |415| 
        LSRS      A2, A1, #16           ; [DPU_V7M3_PIPE] |415| 
        MOV       A1, #32752            ; [DPU_V7M3_PIPE] |415| 
        ANDS      A1, A1, A2            ; [DPU_V7M3_PIPE] |415| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |415| 
        CMP       A2, A1                ; [DPU_V7M3_PIPE] |415| 
        BNE       ||$C$L46||            ; [DPU_V7M3_PIPE] |415| 
        ; BRANCHCC OCCURS {||$C$L46||}   ; [] |415| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 417,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 417 | if (__DOUBLE_FRAC_PART_IS_ZERO(d))                                     
;----------------------------------------------------------------------
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |417| 
        MOV       A1, A3                ; [DPU_V7M3_PIPE] |417| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |417| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |417| 
        LSLS      A1, A1, #0            ; [DPU_V7M3_PIPE] |417| 
        ORRS      A2, A2, A1            ; [DPU_V7M3_PIPE] |417| 
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |417| 
        MOVS      V1, #0                ; [DPU_V7M3_PIPE] |417| 
        MOV       A4, #-1               ; [DPU_V7M3_PIPE] |417| 
        ORRS      A3, A3, V1            ; [DPU_V7M3_PIPE] |417| 
        ANDS      A4, A4, A3            ; [DPU_V7M3_PIPE] |417| 
        ANDS      A1, A1, A2            ; [DPU_V7M3_PIPE] |417| 
        BNE       ||$C$L44||            ; [DPU_V7M3_PIPE] |417| 
        ; BRANCHCC OCCURS {||$C$L44||}   ; [] |417| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |417| 
;* --------------------------------------------------------------------------*
||$C$L44||:    
        BNE       ||$C$L45||            ; [DPU_V7M3_PIPE] |417| 
        ; BRANCHCC OCCURS {||$C$L45||}   ; [] |417| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 418,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 418 | return __FP_INFINITE;                                                  
;----------------------------------------------------------------------
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |418| 
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |418| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |418| 
;* --------------------------------------------------------------------------*
||$C$L45||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 419,column 14,is_stmt,isa 1
;----------------------------------------------------------------------
; 419 | else return __FP_NAN;                                                  
;----------------------------------------------------------------------
        MOVS      A1, #2                ; [DPU_V7M3_PIPE] |419| 
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |419| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |419| 
;* --------------------------------------------------------------------------*
||$C$L46||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 421,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 421 | if (__DOUBLE_BIASED_EXP_IS_ZERO(d))                                    
;----------------------------------------------------------------------
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |421| 
        MOV       A1, A3                ; [DPU_V7M3_PIPE] |421| 
        LSLS      A2, A1, #0            ; [DPU_V7M3_PIPE] |421| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |421| 
        MOVS      A3, #0                ; [DPU_V7M3_PIPE] |421| 
        ORRS      A1, A1, A2            ; [DPU_V7M3_PIPE] |421| 
        LSRS      A4, A1, #20           ; [DPU_V7M3_PIPE] |421| 
        MOV       A1, #2047             ; [DPU_V7M3_PIPE] |421| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |421| 
        ASRS      A1, A1, #31           ; [DPU_V7M3_PIPE] |421| 
        ANDS      A2, A2, A4            ; [DPU_V7M3_PIPE] |421| 
        ANDS      A1, A1, A3            ; [DPU_V7M3_PIPE] |421| 
        BNE       ||$C$L47||            ; [DPU_V7M3_PIPE] |421| 
        ; BRANCHCC OCCURS {||$C$L47||}   ; [] |421| 
;* --------------------------------------------------------------------------*
        CMP       A2, #0                ; [DPU_V7M3_PIPE] |421| 
;* --------------------------------------------------------------------------*
||$C$L47||:    
        BNE       ||$C$L50||            ; [DPU_V7M3_PIPE] |421| 
        ; BRANCHCC OCCURS {||$C$L50||}   ; [] |421| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 423,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 423 | if (__DOUBLE_FRAC_PART_IS_ZERO(d))                                     
;----------------------------------------------------------------------
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |423| 
        MOV       A1, A3                ; [DPU_V7M3_PIPE] |423| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |423| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |423| 
        LSLS      A1, A1, #0            ; [DPU_V7M3_PIPE] |423| 
        ORRS      A2, A2, A1            ; [DPU_V7M3_PIPE] |423| 
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |423| 
        MOVS      V1, #0                ; [DPU_V7M3_PIPE] |423| 
        MOV       A4, #-1               ; [DPU_V7M3_PIPE] |423| 
        ORRS      A3, A3, V1            ; [DPU_V7M3_PIPE] |423| 
        ANDS      A4, A4, A3            ; [DPU_V7M3_PIPE] |423| 
        ANDS      A1, A1, A2            ; [DPU_V7M3_PIPE] |423| 
        BNE       ||$C$L48||            ; [DPU_V7M3_PIPE] |423| 
        ; BRANCHCC OCCURS {||$C$L48||}   ; [] |423| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |423| 
;* --------------------------------------------------------------------------*
||$C$L48||:    
        BNE       ||$C$L49||            ; [DPU_V7M3_PIPE] |423| 
        ; BRANCHCC OCCURS {||$C$L49||}   ; [] |423| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 424,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 424 | return __FP_ZERO;                                                      
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |424| 
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |424| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |424| 
;* --------------------------------------------------------------------------*
||$C$L49||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 425,column 14,is_stmt,isa 1
;----------------------------------------------------------------------
; 425 | else return __FP_SUBNORMAL;                                            
;----------------------------------------------------------------------
        MVN       A1, #1                ; [DPU_V7M3_PIPE] |425| 
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |425| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |425| 
;* --------------------------------------------------------------------------*
||$C$L50||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 427,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 427 | return __FP_NORMAL;                                                    
;----------------------------------------------------------------------
        MOV       A1, #-1               ; [DPU_V7M3_PIPE] |427| 
;* --------------------------------------------------------------------------*
||$C$L51||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 428,column 1,is_stmt,isa 1
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        POP       {A3, A4, V1, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$91, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$91, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$91

	.sect	".text:__fpclassifyl"
	.clink
	.thumbfunc __fpclassifyl
	.thumb
	.global	__fpclassifyl

$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$95, DW_AT_low_pc(__fpclassifyl)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("__fpclassifyl")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$95, DW_AT_TI_begin_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x1ae)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$95, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$95, DW_AT_decl_column(0x25)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 431,column 1,is_stmt,address __fpclassifyl,isa 1

	.dwfde $C$DW$CIE, __fpclassifyl
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_name("e")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x40]

;----------------------------------------------------------------------
; 430 | _CODE_ACCESS _INLINE_DEFINITION int __fpclassifyl(long double e)       
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: __fpclassifyl                                              *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,SP,SR                                *
;*   Regs Used         : A1,A2,A3,A4,V1,SP,LR,SR,D0,D0_hi                    *
;*   Local Frame Size  : 0 Args + 8 Auto + 8 Save = 16 byte                  *
;*****************************************************************************
__fpclassifyl:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A3, A4, V1, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
	.dwcfi	save_reg_to_mem, 3, -12
	.dwcfi	save_reg_to_mem, 2, -16
$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("e")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg13 0]

        VMOV      A1,A2, D0             ; [DPU_MERLIN_PIPE] |431| 
        STMIA     SP, {A1,A2}           ; [DPU_V7M3_PIPE] |431| 
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 432,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 432 | if (__LDOUBLE_BIASED_EXP_IS_MAX(e))                                    
;----------------------------------------------------------------------
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |432| 
        MOV       A1, A3                ; [DPU_V7M3_PIPE] |432| 
        LSLS      A2, A1, #0            ; [DPU_V7M3_PIPE] |432| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |432| 
        ORRS      A1, A1, A2            ; [DPU_V7M3_PIPE] |432| 
        LSRS      A2, A1, #16           ; [DPU_V7M3_PIPE] |432| 
        MOV       A1, #32752            ; [DPU_V7M3_PIPE] |432| 
        ANDS      A1, A1, A2            ; [DPU_V7M3_PIPE] |432| 
        MOV       A2, #32752            ; [DPU_V7M3_PIPE] |432| 
        CMP       A2, A1                ; [DPU_V7M3_PIPE] |432| 
        BNE       ||$C$L54||            ; [DPU_V7M3_PIPE] |432| 
        ; BRANCHCC OCCURS {||$C$L54||}   ; [] |432| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 434,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 434 | if (__LDOUBLE_FRAC_PART_IS_ZERO(e))                                    
;----------------------------------------------------------------------
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |434| 
        MOV       A1, A3                ; [DPU_V7M3_PIPE] |434| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |434| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |434| 
        LSLS      A1, A1, #0            ; [DPU_V7M3_PIPE] |434| 
        ORRS      A2, A2, A1            ; [DPU_V7M3_PIPE] |434| 
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |434| 
        MOVS      V1, #0                ; [DPU_V7M3_PIPE] |434| 
        MOV       A4, #-1               ; [DPU_V7M3_PIPE] |434| 
        ORRS      A3, A3, V1            ; [DPU_V7M3_PIPE] |434| 
        ANDS      A4, A4, A3            ; [DPU_V7M3_PIPE] |434| 
        ANDS      A1, A1, A2            ; [DPU_V7M3_PIPE] |434| 
        BNE       ||$C$L52||            ; [DPU_V7M3_PIPE] |434| 
        ; BRANCHCC OCCURS {||$C$L52||}   ; [] |434| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |434| 
;* --------------------------------------------------------------------------*
||$C$L52||:    
        BNE       ||$C$L53||            ; [DPU_V7M3_PIPE] |434| 
        ; BRANCHCC OCCURS {||$C$L53||}   ; [] |434| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 435,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 435 | return __FP_INFINITE;                                                  
;----------------------------------------------------------------------
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |435| 
        B         ||$C$L59||            ; [DPU_V7M3_PIPE] |435| 
        ; BRANCH OCCURS {||$C$L59||}     ; [] |435| 
;* --------------------------------------------------------------------------*
||$C$L53||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 436,column 14,is_stmt,isa 1
;----------------------------------------------------------------------
; 436 | else return __FP_NAN;                                                  
;----------------------------------------------------------------------
        MOVS      A1, #2                ; [DPU_V7M3_PIPE] |436| 
        B         ||$C$L59||            ; [DPU_V7M3_PIPE] |436| 
        ; BRANCH OCCURS {||$C$L59||}     ; [] |436| 
;* --------------------------------------------------------------------------*
||$C$L54||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 438,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 438 | if (__LDOUBLE_BIASED_EXP_IS_ZERO(e))                                   
;----------------------------------------------------------------------
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |438| 
        MOV       A1, A3                ; [DPU_V7M3_PIPE] |438| 
        LSLS      A2, A1, #0            ; [DPU_V7M3_PIPE] |438| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |438| 
        MOVS      A3, #0                ; [DPU_V7M3_PIPE] |438| 
        ORRS      A1, A1, A2            ; [DPU_V7M3_PIPE] |438| 
        LSRS      A4, A1, #20           ; [DPU_V7M3_PIPE] |438| 
        MOV       A1, #2047             ; [DPU_V7M3_PIPE] |438| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |438| 
        ASRS      A1, A1, #31           ; [DPU_V7M3_PIPE] |438| 
        ANDS      A2, A2, A4            ; [DPU_V7M3_PIPE] |438| 
        ANDS      A1, A1, A3            ; [DPU_V7M3_PIPE] |438| 
        BNE       ||$C$L55||            ; [DPU_V7M3_PIPE] |438| 
        ; BRANCHCC OCCURS {||$C$L55||}   ; [] |438| 
;* --------------------------------------------------------------------------*
        CMP       A2, #0                ; [DPU_V7M3_PIPE] |438| 
;* --------------------------------------------------------------------------*
||$C$L55||:    
        BNE       ||$C$L58||            ; [DPU_V7M3_PIPE] |438| 
        ; BRANCHCC OCCURS {||$C$L58||}   ; [] |438| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 440,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 440 | if (__LDOUBLE_FRAC_PART_IS_ZERO(e))                                    
;----------------------------------------------------------------------
        LDMIA     SP, {A2,A3}           ; [DPU_V7M3_PIPE] |440| 
        MOV       A1, A3                ; [DPU_V7M3_PIPE] |440| 
        LDMIA     SP, {A3,A4}           ; [DPU_V7M3_PIPE] |440| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |440| 
        LSLS      A1, A1, #0            ; [DPU_V7M3_PIPE] |440| 
        ORRS      A2, A2, A1            ; [DPU_V7M3_PIPE] |440| 
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |440| 
        MOVS      V1, #0                ; [DPU_V7M3_PIPE] |440| 
        MOV       A4, #-1               ; [DPU_V7M3_PIPE] |440| 
        ORRS      A3, A3, V1            ; [DPU_V7M3_PIPE] |440| 
        ANDS      A4, A4, A3            ; [DPU_V7M3_PIPE] |440| 
        ANDS      A1, A1, A2            ; [DPU_V7M3_PIPE] |440| 
        BNE       ||$C$L56||            ; [DPU_V7M3_PIPE] |440| 
        ; BRANCHCC OCCURS {||$C$L56||}   ; [] |440| 
;* --------------------------------------------------------------------------*
        CMP       A4, #0                ; [DPU_V7M3_PIPE] |440| 
;* --------------------------------------------------------------------------*
||$C$L56||:    
        BNE       ||$C$L57||            ; [DPU_V7M3_PIPE] |440| 
        ; BRANCHCC OCCURS {||$C$L57||}   ; [] |440| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 441,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 441 | return __FP_ZERO;                                                      
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |441| 
        B         ||$C$L59||            ; [DPU_V7M3_PIPE] |441| 
        ; BRANCH OCCURS {||$C$L59||}     ; [] |441| 
;* --------------------------------------------------------------------------*
||$C$L57||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 442,column 14,is_stmt,isa 1
;----------------------------------------------------------------------
; 442 | else return __FP_SUBNORMAL;                                            
;----------------------------------------------------------------------
        MVN       A1, #1                ; [DPU_V7M3_PIPE] |442| 
        B         ||$C$L59||            ; [DPU_V7M3_PIPE] |442| 
        ; BRANCH OCCURS {||$C$L59||}     ; [] |442| 
;* --------------------------------------------------------------------------*
||$C$L58||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 444,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 444 | return __FP_NORMAL;                                                    
;----------------------------------------------------------------------
        MOV       A1, #-1               ; [DPU_V7M3_PIPE] |444| 
;* --------------------------------------------------------------------------*
||$C$L59||:    
	.dwpsn	file "C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h",line 445,column 1,is_stmt,isa 1
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return

        POP       {A3, A4, V1, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$95, DW_AT_TI_end_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/_defs.h")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text"
	.clink
	.thumbfunc main
	.thumb
	.global	main

$C$DW$99	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$99, DW_AT_name("main")
	.dwattr $C$DW$99, DW_AT_low_pc(main)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$99, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$99, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main_Anemometro.c",line 47,column 15,is_stmt,address main,isa 1

	.dwfde $C$DW$CIE, main
;----------------------------------------------------------------------
;  47 | int main(void){                                                        
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../main_Anemometro.c",line 48,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  48 | StartCritical();                                                       
;----------------------------------------------------------------------
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("StartCritical")
	.dwattr $C$DW$100, DW_AT_TI_call

        BL        StartCritical         ; [DPU_V7M3_PIPE] |48| 
        ; CALL OCCURS {StartCritical }   ; [] |48| 
	.dwpsn	file "../main_Anemometro.c",line 49,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  49 | QEI_INIT();                                                            
;----------------------------------------------------------------------
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("QEI_INIT")
	.dwattr $C$DW$101, DW_AT_TI_call

        BL        QEI_INIT              ; [DPU_V7M3_PIPE] |49| 
        ; CALL OCCURS {QEI_INIT }        ; [] |49| 
	.dwpsn	file "../main_Anemometro.c",line 50,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  50 | PORTD_INIT();                                                          
;----------------------------------------------------------------------
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("PORTD_INIT")
	.dwattr $C$DW$102, DW_AT_TI_call

        BL        PORTD_INIT            ; [DPU_V7M3_PIPE] |50| 
        ; CALL OCCURS {PORTD_INIT }      ; [] |50| 
	.dwpsn	file "../main_Anemometro.c",line 51,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  51 | PORTC_INIT();                                                          
;----------------------------------------------------------------------
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("PORTC_INIT")
	.dwattr $C$DW$103, DW_AT_TI_call

        BL        PORTC_INIT            ; [DPU_V7M3_PIPE] |51| 
        ; CALL OCCURS {PORTC_INIT }      ; [] |51| 
	.dwpsn	file "../main_Anemometro.c",line 52,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  52 | UART5_Init();                                                          
;----------------------------------------------------------------------
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("UART5_Init")
	.dwattr $C$DW$104, DW_AT_TI_call

        BL        UART5_Init            ; [DPU_V7M3_PIPE] |52| 
        ; CALL OCCURS {UART5_Init }      ; [] |52| 
	.dwpsn	file "../main_Anemometro.c",line 53,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  53 | PORTF_INIT();                                                          
;----------------------------------------------------------------------
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("PORTF_INIT")
	.dwattr $C$DW$105, DW_AT_TI_call

        BL        PORTF_INIT            ; [DPU_V7M3_PIPE] |53| 
        ; CALL OCCURS {PORTF_INIT }      ; [] |53| 
	.dwpsn	file "../main_Anemometro.c",line 54,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  54 | EnableInterrupts();                                                    
;----------------------------------------------------------------------
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("EnableInterrupts")
	.dwattr $C$DW$106, DW_AT_TI_call

        BL        EnableInterrupts      ; [DPU_V7M3_PIPE] |54| 
        ; CALL OCCURS {EnableInterrupts }  ; [] |54| 
	.dwpsn	file "../main_Anemometro.c",line 55,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  55 | EndCritical();                                                         
;----------------------------------------------------------------------
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("EndCritical")
	.dwattr $C$DW$107, DW_AT_TI_call

        BL        EndCritical           ; [DPU_V7M3_PIPE] |55| 
        ; CALL OCCURS {EndCritical }     ; [] |55| 

$C$DW$108	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_high_pc(0x00)
	.dwpsn	file "../main_Anemometro.c",line 56,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  56 | while(1){                                                              
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L60||
;*
;*   Loop source line                : 56
;*   Loop closing brace source line  : 125
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L60||:    

$C$DW$109	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwpsn	file "../main_Anemometro.c",line 57,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  57 | if(QEI1_TIME_R < 8000000){ //menor que meio segundo (período total 1seg
;     | )                                                                      
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |57| 
        LDR       A2, $C$CON8           ; [DPU_V7M3_PIPE] |57| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |57| 
        CMP       A2, A1                ; [DPU_V7M3_PIPE] |57| 
        BLS       ||$C$L61||            ; [DPU_V7M3_PIPE] |57| 
        ; BRANCHCC OCCURS {||$C$L61||}   ; [] |57| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 58,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  58 | if(flag1 == 0){                                                        
;----------------------------------------------------------------------
        LDR       A1, $C$CON9           ; [DPU_V7M3_PIPE] |58| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |58| 
        CBNZ      A1, ||$C$L62||        ; [] 
        ; BRANCHCC OCCURS {||$C$L62||}   ; [] |58| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 59,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  59 | angulo = QEI1_POS_R*360/2400;                                          
;----------------------------------------------------------------------
        LDR       A1, $C$CON11          ; [DPU_V7M3_PIPE] |59| 
        LDR       A3, [A1, #0]          ; [DPU_V7M3_PIPE] |59| 
        LDR       A2, $C$CON10          ; [DPU_V7M3_PIPE] |59| 
        MOV       A4, #2400             ; [DPU_V7M3_PIPE] |59| 
        MOV       A1, #360              ; [DPU_V7M3_PIPE] |59| 
        MULS      A1, A1, A3            ; [DPU_V7M3_PIPE] |59| 
        UDIV      A1, A1, A4            ; [DPU_V7M3_PIPE] |59| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |59| 
	.dwpsn	file "../main_Anemometro.c",line 60,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  60 | Enviar_DIR(angulo);                                                    
;----------------------------------------------------------------------
        LDR       A1, $C$CON10          ; [DPU_V7M3_PIPE] |60| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |60| 
        VMOV      S0, A1                ; [DPU_MERLIN_PIPE] |60| 
        VCVT.F32.S32 S0, S0             ; [DPU_MERLIN_PIPE] |60| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("Enviar_DIR")
	.dwattr $C$DW$110, DW_AT_TI_call

        BL        Enviar_DIR            ; [DPU_V7M3_PIPE] |60| 
        ; CALL OCCURS {Enviar_DIR }      ; [] |60| 
	.dwpsn	file "../main_Anemometro.c",line 61,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  61 | flag1=1;                                                               
;----------------------------------------------------------------------
        LDR       A2, $C$CON9           ; [DPU_V7M3_PIPE] |61| 
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |61| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |61| 
        B         ||$C$L62||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L62||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L61||:    
	.dwpsn	file "../main_Anemometro.c",line 64,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
;  64 | else{flag1=0;}                                                         
;----------------------------------------------------------------------
        LDR       A2, $C$CON9           ; [DPU_V7M3_PIPE] |64| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |64| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |64| 
;* --------------------------------------------------------------------------*
||$C$L62||:    
	.dwpsn	file "../main_Anemometro.c",line 66,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  66 | if(QEI0_TIME_R<16000000){ //1segundo (período é 10 seg)                
;----------------------------------------------------------------------
        LDR       A1, $C$CON12          ; [DPU_V7M3_PIPE] |66| 
        LDR       A2, $C$CON13          ; [DPU_V7M3_PIPE] |66| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |66| 
        CMP       A2, A1                ; [DPU_V7M3_PIPE] |66| 
        BLS       ||$C$L63||            ; [DPU_V7M3_PIPE] |66| 
        ; BRANCHCC OCCURS {||$C$L63||}   ; [] |66| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 67,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  67 | if(flag2 == 0){                                                        
;----------------------------------------------------------------------
        LDR       A1, $C$CON14          ; [DPU_V7M3_PIPE] |67| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |67| 
        CBNZ      A1, ||$C$L64||        ; [] 
        ; BRANCHCC OCCURS {||$C$L64||}   ; [] |67| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 68,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  68 | velocidade = (QEI0_SPEED_R/(2.4)); // para RPM colcoar (qei0*0.01)     
;----------------------------------------------------------------------
        LDR       A1, $C$CON16          ; [DPU_V7M3_PIPE] |68| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |68| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("__aeabi_ui2d")
	.dwattr $C$DW$111, DW_AT_TI_call

        BL        __aeabi_ui2d          ; [DPU_V7M3_PIPE] |68| 
        ; CALL OCCURS {__aeabi_ui2d }    ; [] |68| 
        ADR       A3, $C$FL1            ; [DPU_V7M3_PIPE] |68| 
        LDMIA     A3, {A3,A4}           ; [DPU_V7M3_PIPE] |68| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("__aeabi_ddiv")
	.dwattr $C$DW$112, DW_AT_TI_call

        BL        __aeabi_ddiv          ; [DPU_V7M3_PIPE] |68| 
        ; CALL OCCURS {__aeabi_ddiv }    ; [] |68| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("__aeabi_d2iz")
	.dwattr $C$DW$113, DW_AT_TI_call

        BL        __aeabi_d2iz          ; [DPU_V7M3_PIPE] |68| 
        ; CALL OCCURS {__aeabi_d2iz }    ; [] |68| 
        LDR       A2, $C$CON15          ; [DPU_V7M3_PIPE] |68| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |68| 
	.dwpsn	file "../main_Anemometro.c",line 69,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  69 | Enviar_VEL(velocidade);                                                
;----------------------------------------------------------------------
        LDR       A1, $C$CON15          ; [DPU_V7M3_PIPE] |69| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |69| 
        VMOV      S0, A1                ; [DPU_MERLIN_PIPE] |69| 
        VCVT.F32.S32 S0, S0             ; [DPU_MERLIN_PIPE] |69| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("Enviar_VEL")
	.dwattr $C$DW$114, DW_AT_TI_call

        BL        Enviar_VEL            ; [DPU_V7M3_PIPE] |69| 
        ; CALL OCCURS {Enviar_VEL }      ; [] |69| 
	.dwpsn	file "../main_Anemometro.c",line 70,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  70 | flag2 = 1;                                                             
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_V7M3_PIPE] |70| 
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |70| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |70| 
        B         ||$C$L64||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L64||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L63||:    
	.dwpsn	file "../main_Anemometro.c",line 73,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
;  73 | else{flag2=0;}                                                         
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_V7M3_PIPE] |73| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |73| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |73| 
;* --------------------------------------------------------------------------*
||$C$L64||:    

$C$DW$115	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwpsn	file "../main_Anemometro.c",line 75,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  75 | if(salvar==2){                                                         
;----------------------------------------------------------------------
        LDR       A1, $C$CON17          ; [DPU_V7M3_PIPE] |75| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |75| 
        CMP       A1, #2                ; [DPU_V7M3_PIPE] |75| 
        BNE       ||$C$L60||            ; [DPU_V7M3_PIPE] |75| 
        ; BRANCHCC OCCURS {||$C$L60||}   ; [] |75| 
;* --------------------------------------------------------------------------*

$C$DW$116	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwpsn	file "../main_Anemometro.c",line 76,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  76 | GPIO_PORTF_DATA_R = 0x08;    //LED VERDE                               
;----------------------------------------------------------------------
        LDR       A2, $C$CON18          ; [DPU_V7M3_PIPE] |76| 
        MOVS      A1, #8                ; [DPU_V7M3_PIPE] |76| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |76| 
	.dwpsn	file "../main_Anemometro.c",line 77,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  77 | UART_OutString("AT+SEND=5:");                                          
;----------------------------------------------------------------------
        ADR       A1, $C$SL1            ; [DPU_V7M3_PIPE] |77| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("UART_OutString")
	.dwattr $C$DW$117, DW_AT_TI_call

        BL        UART_OutString        ; [DPU_V7M3_PIPE] |77| 
        ; CALL OCCURS {UART_OutString }  ; [] |77| 
	.dwpsn	file "../main_Anemometro.c",line 78,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  78 | UART_OutUDec(V);                                                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON19          ; [DPU_V7M3_PIPE] |78| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |78| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("UART_OutUDec")
	.dwattr $C$DW$118, DW_AT_TI_call

        BL        UART_OutUDec          ; [DPU_V7M3_PIPE] |78| 
        ; CALL OCCURS {UART_OutUDec }    ; [] |78| 
	.dwpsn	file "../main_Anemometro.c",line 79,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  79 | UART_OutChar(';');                                                     
;----------------------------------------------------------------------
        MOVS      A1, #59               ; [DPU_V7M3_PIPE] |79| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$119, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |79| 
        ; CALL OCCURS {UART_OutChar }    ; [] |79| 
	.dwpsn	file "../main_Anemometro.c",line 80,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  80 | UART_OutUDec(D);                                                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON20          ; [DPU_V7M3_PIPE] |80| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |80| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("UART_OutUDec")
	.dwattr $C$DW$120, DW_AT_TI_call

        BL        UART_OutUDec          ; [DPU_V7M3_PIPE] |80| 
        ; CALL OCCURS {UART_OutUDec }    ; [] |80| 
	.dwpsn	file "../main_Anemometro.c",line 81,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  81 | UART_OutChar('\n');                                                    
;----------------------------------------------------------------------
        MOVS      A1, #10               ; [DPU_V7M3_PIPE] |81| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$121, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |81| 
        ; CALL OCCURS {UART_OutChar }    ; [] |81| 
	.dwpsn	file "../main_Anemometro.c",line 82,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  82 | salvar=0;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON17          ; [DPU_V7M3_PIPE] |82| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |82| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |82| 
	.dwpsn	file "../main_Anemometro.c",line 83,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  83 | flag_e=0;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON21          ; [DPU_V7M3_PIPE] |83| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |83| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |83| 
	.dwpsn	file "../main_Anemometro.c",line 84,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  84 | UART5_InString(); //enche o buffer                                     
;----------------------------------------------------------------------
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("UART5_InString")
	.dwattr $C$DW$122, DW_AT_TI_call

        BL        UART5_InString        ; [DPU_V7M3_PIPE] |84| 
        ; CALL OCCURS {UART5_InString }  ; [] |84| 

$C$DW$123	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("h")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("h")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_breg13 0]

	.dwpsn	file "../main_Anemometro.c",line 85,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
;  85 | for(int h=0;h<50;h++){                                                 
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |85| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |85| 
	.dwpsn	file "../main_Anemometro.c",line 85,column 21,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |85| 
        CMP       A1, #50               ; [DPU_V7M3_PIPE] |85| 
        BGE       ||$C$L73||            ; [DPU_V7M3_PIPE] |85| 
        ; BRANCHCC OCCURS {||$C$L73||}   ; [] |85| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L65||
;*
;*   Loop source line                : 85
;*   Loop closing brace source line  : 116
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L65||:    
	.dwpsn	file "../main_Anemometro.c",line 86,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
;  86 | if(h==49){                                                             
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |86| 
        CMP       A1, #49               ; [DPU_V7M3_PIPE] |86| 
        BNE       ||$C$L66||            ; [DPU_V7M3_PIPE] |86| 
        ; BRANCHCC OCCURS {||$C$L66||}   ; [] |86| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 87,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
;  87 | count=0;                                                               
;----------------------------------------------------------------------
        LDR       A2, $C$CON22          ; [DPU_V7M3_PIPE] |87| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |87| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |87| 
;* --------------------------------------------------------------------------*
||$C$L66||:    
	.dwpsn	file "../main_Anemometro.c",line 89,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
;  89 | if(buffer[h]=='E'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |89| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |89| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |89| 
        CMP       A1, #69               ; [DPU_V7M3_PIPE] |89| 
        BNE       ||$C$L67||            ; [DPU_V7M3_PIPE] |89| 
        ; BRANCHCC OCCURS {||$C$L67||}   ; [] |89| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 90,column 17,is_stmt,isa 1
;----------------------------------------------------------------------
;  90 | flag_e=1;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON21          ; [DPU_V7M3_PIPE] |90| 
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |90| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |90| 
;* --------------------------------------------------------------------------*
||$C$L67||:    
	.dwpsn	file "../main_Anemometro.c",line 92,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
;  92 | if(flag_e==1){                                                         
;----------------------------------------------------------------------
        LDR       A1, $C$CON21          ; [DPU_V7M3_PIPE] |92| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |92| 
        CMP       A1, #1                ; [DPU_V7M3_PIPE] |92| 
        BNE       ||$C$L68||            ; [DPU_V7M3_PIPE] |92| 
        ; BRANCHCC OCCURS {||$C$L68||}   ; [] |92| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 93,column 17,is_stmt,isa 1
;----------------------------------------------------------------------
;  93 | if(buffer[h]=='R'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |93| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |93| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |93| 
        CMP       A1, #82               ; [DPU_V7M3_PIPE] |93| 
        BNE       ||$C$L68||            ; [DPU_V7M3_PIPE] |93| 
        ; BRANCHCC OCCURS {||$C$L68||}   ; [] |93| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 94,column 20,is_stmt,isa 1
;----------------------------------------------------------------------
;  94 | flag_e=2;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON21          ; [DPU_V7M3_PIPE] |94| 
        MOVS      A1, #2                ; [DPU_V7M3_PIPE] |94| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |94| 
;* --------------------------------------------------------------------------*
||$C$L68||:    
	.dwpsn	file "../main_Anemometro.c",line 97,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
;  97 | if(flag_e==2){                                                         
;----------------------------------------------------------------------
        LDR       A1, $C$CON21          ; [DPU_V7M3_PIPE] |97| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |97| 
        CMP       A1, #2                ; [DPU_V7M3_PIPE] |97| 
        BNE       ||$C$L69||            ; [DPU_V7M3_PIPE] |97| 
        ; BRANCHCC OCCURS {||$C$L69||}   ; [] |97| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 98,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
;  98 | if(buffer[h]=='R'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |98| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |98| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |98| 
        CMP       A1, #82               ; [DPU_V7M3_PIPE] |98| 
        BNE       ||$C$L69||            ; [DPU_V7M3_PIPE] |98| 
        ; BRANCHCC OCCURS {||$C$L69||}   ; [] |98| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 99,column 21,is_stmt,isa 1
;----------------------------------------------------------------------
;  99 | flag_e=3;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON21          ; [DPU_V7M3_PIPE] |99| 
        MOVS      A1, #3                ; [DPU_V7M3_PIPE] |99| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |99| 
;* --------------------------------------------------------------------------*
||$C$L69||:    
	.dwpsn	file "../main_Anemometro.c",line 102,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 102 | if(flag_e==3){                                                         
;----------------------------------------------------------------------
        LDR       A1, $C$CON21          ; [DPU_V7M3_PIPE] |102| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |102| 
        CMP       A1, #3                ; [DPU_V7M3_PIPE] |102| 
        BNE       ||$C$L70||            ; [DPU_V7M3_PIPE] |102| 
        ; BRANCHCC OCCURS {||$C$L70||}   ; [] |102| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 103,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
; 103 | if(buffer[h]=='O'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |103| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |103| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |103| 
        CMP       A1, #79               ; [DPU_V7M3_PIPE] |103| 
        BNE       ||$C$L70||            ; [DPU_V7M3_PIPE] |103| 
        ; BRANCHCC OCCURS {||$C$L70||}   ; [] |103| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 104,column 21,is_stmt,isa 1
;----------------------------------------------------------------------
; 104 | flag_e=4;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON21          ; [DPU_V7M3_PIPE] |104| 
        MOVS      A1, #4                ; [DPU_V7M3_PIPE] |104| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |104| 
;* --------------------------------------------------------------------------*
||$C$L70||:    
	.dwpsn	file "../main_Anemometro.c",line 107,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 107 | if(flag_e==4){                                                         
;----------------------------------------------------------------------
        LDR       A1, $C$CON21          ; [DPU_V7M3_PIPE] |107| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |107| 
        CMP       A1, #4                ; [DPU_V7M3_PIPE] |107| 
        BNE       ||$C$L71||            ; [DPU_V7M3_PIPE] |107| 
        ; BRANCHCC OCCURS {||$C$L71||}   ; [] |107| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 108,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
; 108 | if(buffer[h]=='R'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |108| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |108| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |108| 
        CMP       A1, #82               ; [DPU_V7M3_PIPE] |108| 
        BNE       ||$C$L71||            ; [DPU_V7M3_PIPE] |108| 
        ; BRANCHCC OCCURS {||$C$L71||}   ; [] |108| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 109,column 21,is_stmt,isa 1
;----------------------------------------------------------------------
; 109 | flag_e=5;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON21          ; [DPU_V7M3_PIPE] |109| 
        MOVS      A1, #5                ; [DPU_V7M3_PIPE] |109| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |109| 
;* --------------------------------------------------------------------------*
||$C$L71||:    
	.dwpsn	file "../main_Anemometro.c",line 112,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 112 | if(flag_e==5){                                                         
;----------------------------------------------------------------------
        LDR       A1, $C$CON21          ; [DPU_V7M3_PIPE] |112| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |112| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |112| 
        BNE       ||$C$L72||            ; [DPU_V7M3_PIPE] |112| 
        ; BRANCHCC OCCURS {||$C$L72||}   ; [] |112| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 113,column 17,is_stmt,isa 1
;----------------------------------------------------------------------
; 113 | count++;                                                               
;----------------------------------------------------------------------
        LDR       A2, $C$CON22          ; [DPU_V7M3_PIPE] |113| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |113| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |113| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |113| 
	.dwpsn	file "../main_Anemometro.c",line 114,column 17,is_stmt,isa 1
;----------------------------------------------------------------------
; 114 | h=50;                                                                  
;----------------------------------------------------------------------
        MOVS      A1, #50               ; [DPU_V7M3_PIPE] |114| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |114| 
;* --------------------------------------------------------------------------*
||$C$L72||:    
	.dwpsn	file "../main_Anemometro.c",line 85,column 26,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |85| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |85| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |85| 
	.dwpsn	file "../main_Anemometro.c",line 85,column 21,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |85| 
        CMP       A1, #50               ; [DPU_V7M3_PIPE] |85| 
        BLT       ||$C$L65||            ; [DPU_V7M3_PIPE] |85| 
        ; BRANCHCC OCCURS {||$C$L65||}   ; [] |85| 
;* --------------------------------------------------------------------------*
||$C$L73||:    
	.dwendtag $C$DW$123

	.dwpsn	file "../main_Anemometro.c",line 117,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 117 | RESET_DIARIO();                                                        
;----------------------------------------------------------------------
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("RESET_DIARIO")
	.dwattr $C$DW$125, DW_AT_TI_call

        BL        RESET_DIARIO          ; [DPU_V7M3_PIPE] |117| 
        ; CALL OCCURS {RESET_DIARIO }    ; [] |117| 
	.dwpsn	file "../main_Anemometro.c",line 118,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 118 | if(count==5){                                                          
;----------------------------------------------------------------------
        LDR       A1, $C$CON22          ; [DPU_V7M3_PIPE] |118| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |118| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |118| 
        BNE       ||$C$L74||            ; [DPU_V7M3_PIPE] |118| 
        ; BRANCHCC OCCURS {||$C$L74||}   ; [] |118| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 119,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 119 | UART_OutString("ATZ");                                                 
;----------------------------------------------------------------------
        ADR       A1, $C$SL2            ; [DPU_V7M3_PIPE] |119| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("UART_OutString")
	.dwattr $C$DW$126, DW_AT_TI_call

        BL        UART_OutString        ; [DPU_V7M3_PIPE] |119| 
        ; CALL OCCURS {UART_OutString }  ; [] |119| 
	.dwpsn	file "../main_Anemometro.c",line 120,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 120 | UART_OutChar('\n');                                                    
;----------------------------------------------------------------------
        MOVS      A1, #10               ; [DPU_V7M3_PIPE] |120| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$127, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |120| 
        ; CALL OCCURS {UART_OutChar }    ; [] |120| 
	.dwpsn	file "../main_Anemometro.c",line 121,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 121 | count=0;                                                               
;----------------------------------------------------------------------
        LDR       A2, $C$CON22          ; [DPU_V7M3_PIPE] |121| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |121| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |121| 
;* --------------------------------------------------------------------------*
||$C$L74||:    
	.dwpsn	file "../main_Anemometro.c",line 123,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 123 | GPIO_PORTF_DATA_R = 0x00;    //LED OFF                                 
;----------------------------------------------------------------------
        LDR       A2, $C$CON18          ; [DPU_V7M3_PIPE] |123| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |123| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |123| 
	.dwendtag $C$DW$116

	.dwendtag $C$DW$115

	.dwendtag $C$DW$109

	.dwpsn	file "../main_Anemometro.c",line 56,column 9,is_stmt,isa 1
        B         ||$C$L60||            ; [DPU_V7M3_PIPE] |56| 
        ; BRANCH OCCURS {||$C$L60||}     ; [] |56| 
;* --------------------------------------------------------------------------*
	.dwendtag $C$DW$108

	.dwattr $C$DW$99, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x7e)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.clink
	.thumbfunc Enviar_VEL
	.thumb
	.global	Enviar_VEL

$C$DW$128	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$128, DW_AT_name("Enviar_VEL")
	.dwattr $C$DW$128, DW_AT_low_pc(Enviar_VEL)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("Enviar_VEL")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0x80)
	.dwattr $C$DW$128, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$128, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$128, DW_AT_decl_line(0x80)
	.dwattr $C$DW$128, DW_AT_decl_column(0x06)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main_Anemometro.c",line 128,column 35,is_stmt,address Enviar_VEL,isa 1

	.dwfde $C$DW$CIE, Enviar_VEL
$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("in")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("in")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x40]


;*****************************************************************************
;* FUNCTION NAME: Enviar_VEL                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR,D0,D0_hi                                *
;*   Regs Used         : A1,A2,SP,LR,SR,D0,D0_hi                             *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Enviar_VEL:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("in")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("in")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 128 | void Enviar_VEL(float volatile in){                                    
;----------------------------------------------------------------------
        VSTR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |128| 
	.dwpsn	file "../main_Anemometro.c",line 129,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 129 | if(count1 < 6){                                                        
;----------------------------------------------------------------------
        LDR       A1, $C$CON24          ; [DPU_V7M3_PIPE] |129| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |129| 
        CMP       A1, #6                ; [DPU_V7M3_PIPE] |129| 
        BGE       ||$C$L75||            ; [DPU_V7M3_PIPE] |129| 
        ; BRANCHCC OCCURS {||$C$L75||}   ; [] |129| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 130,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 130 | LAST_VEL = (in/6) + LAST_VEL;  // FAZ A MÉDIA dos valores de velocidade
;     |  que sao medidos a cada                                                
;----------------------------------------------------------------------
        VLDR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |130| 
        VMOV.F32  S1, #6.00000000000000000000e+00 ; [DPU_MERLIN_PIPE] |130| 
        VDIV.F32  S0, S0, S1            ; [DPU_MERLIN_PIPE] |130| 
        LDR       A1, $C$CON25          ; [DPU_V7M3_PIPE] |130| 
        VLDR.32   S1, [A1, #0]          ; [DPU_MERLIN_PIPE] |130| 
        LDR       A1, $C$CON25          ; [DPU_V7M3_PIPE] |130| 
        VADD.F32  S0, S1, S0            ; [DPU_MERLIN_PIPE] |130| 
        VSTR.32   S0, [A1, #0]          ; [DPU_MERLIN_PIPE] |130| 
	.dwpsn	file "../main_Anemometro.c",line 131,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 131 | count1++;                      //10 seg para ser salva a cada 60seg (60
;     |  valores))                                                             
; 133 | else{                                                                  
;----------------------------------------------------------------------
        LDR       A2, $C$CON24          ; [DPU_V7M3_PIPE] |131| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |131| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |131| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |131| 
        B         ||$C$L76||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L76||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L75||:    
	.dwpsn	file "../main_Anemometro.c",line 134,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 134 | V=LAST_VEL;                                                            
;----------------------------------------------------------------------
        LDR       A1, $C$CON25          ; [DPU_V7M3_PIPE] |134| 
        VLDR.32   S0, [A1, #0]          ; [DPU_MERLIN_PIPE] |134| 
        VCVT.U32.F32 S0, S0             ; [DPU_MERLIN_PIPE] |134| 
        LDR       A2, $C$CON19          ; [DPU_V7M3_PIPE] |134| 
        VMOV      A1, S0                ; [DPU_MERLIN_PIPE] |134| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |134| 
	.dwpsn	file "../main_Anemometro.c",line 135,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 135 | salvar++;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON17          ; [DPU_V7M3_PIPE] |135| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |135| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |135| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |135| 
	.dwpsn	file "../main_Anemometro.c",line 136,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 136 | count1 = 1;                                                            
;----------------------------------------------------------------------
        LDR       A2, $C$CON24          ; [DPU_V7M3_PIPE] |136| 
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |136| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |136| 
	.dwpsn	file "../main_Anemometro.c",line 137,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 137 | LAST_VEL=(in/6);                                                       
;----------------------------------------------------------------------
        VLDR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |137| 
        VMOV.F32  S1, #6.00000000000000000000e+00 ; [DPU_MERLIN_PIPE] |137| 
        VDIV.F32  S0, S0, S1            ; [DPU_MERLIN_PIPE] |137| 
        LDR       A1, $C$CON25          ; [DPU_V7M3_PIPE] |137| 
        VSTR.32   S0, [A1, #0]          ; [DPU_MERLIN_PIPE] |137| 
	.dwpsn	file "../main_Anemometro.c",line 139,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L76||:    
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$128, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x8b)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text"
	.clink
	.thumbfunc Enviar_DIR
	.thumb
	.global	Enviar_DIR

$C$DW$132	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$132, DW_AT_name("Enviar_DIR")
	.dwattr $C$DW$132, DW_AT_low_pc(Enviar_DIR)
	.dwattr $C$DW$132, DW_AT_high_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("Enviar_DIR")
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$132, DW_AT_TI_begin_line(0x8d)
	.dwattr $C$DW$132, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$132, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$132, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$132, DW_AT_decl_column(0x06)
	.dwattr $C$DW$132, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main_Anemometro.c",line 141,column 35,is_stmt,address Enviar_DIR,isa 1

	.dwfde $C$DW$CIE, Enviar_DIR
$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("in")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("in")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x40]


;*****************************************************************************
;* FUNCTION NAME: Enviar_DIR                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR,D0,D0_hi                                *
;*   Regs Used         : A1,A2,SP,LR,SR,D0,D0_hi                             *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Enviar_DIR:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("in")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("in")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 141 | void Enviar_DIR(float volatile in){                                    
;----------------------------------------------------------------------
        VSTR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |141| 
	.dwpsn	file "../main_Anemometro.c",line 142,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 142 | if(count2 < 60){                                                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON26          ; [DPU_V7M3_PIPE] |142| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |142| 
        CMP       A1, #60               ; [DPU_V7M3_PIPE] |142| 
        BGE       ||$C$L77||            ; [DPU_V7M3_PIPE] |142| 
        ; BRANCHCC OCCURS {||$C$L77||}   ; [] |142| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 143,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 143 | LAST_DIR = (in/60) + LAST_DIR;  // FAZ A MÉDIA dos valores de direção q
;     | ue sao medidos a cada                                                  
;----------------------------------------------------------------------
        VLDR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |143| 
        LDR       A1, $C$FL2            ; [DPU_V7M3_PIPE] |143| 
        VMOV      S1, A1                ; [DPU_MERLIN_PIPE] |143| 
        VDIV.F32  S0, S0, S1            ; [DPU_MERLIN_PIPE] |143| 
        LDR       A1, $C$CON27          ; [DPU_V7M3_PIPE] |143| 
        VLDR.32   S1, [A1, #0]          ; [DPU_MERLIN_PIPE] |143| 
        LDR       A1, $C$CON27          ; [DPU_V7M3_PIPE] |143| 
        VADD.F32  S0, S1, S0            ; [DPU_MERLIN_PIPE] |143| 
        VSTR.32   S0, [A1, #0]          ; [DPU_MERLIN_PIPE] |143| 
	.dwpsn	file "../main_Anemometro.c",line 144,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 144 | count2++;                      //1 seg para ser salva a cada 60seg (60
;     | valores))                                                              
; 146 | else{                                                                  
;----------------------------------------------------------------------
        LDR       A2, $C$CON26          ; [DPU_V7M3_PIPE] |144| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |144| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |144| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |144| 
        B         ||$C$L78||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L78||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L77||:    
	.dwpsn	file "../main_Anemometro.c",line 147,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 147 | D=LAST_DIR;                                                            
;----------------------------------------------------------------------
        LDR       A1, $C$CON27          ; [DPU_V7M3_PIPE] |147| 
        VLDR.32   S0, [A1, #0]          ; [DPU_MERLIN_PIPE] |147| 
        VCVT.U32.F32 S0, S0             ; [DPU_MERLIN_PIPE] |147| 
        LDR       A2, $C$CON20          ; [DPU_V7M3_PIPE] |147| 
        VMOV      A1, S0                ; [DPU_MERLIN_PIPE] |147| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |147| 
	.dwpsn	file "../main_Anemometro.c",line 148,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 148 | salvar++;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON17          ; [DPU_V7M3_PIPE] |148| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |148| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |148| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |148| 
	.dwpsn	file "../main_Anemometro.c",line 149,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 149 | count2 = 1;                                                            
;----------------------------------------------------------------------
        LDR       A2, $C$CON26          ; [DPU_V7M3_PIPE] |149| 
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |149| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |149| 
	.dwpsn	file "../main_Anemometro.c",line 150,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 150 | LAST_DIR=(in/60);                                                      
;----------------------------------------------------------------------
        VLDR.32   S0, [SP, #0]          ; [DPU_MERLIN_PIPE] |150| 
        LDR       A1, $C$FL2            ; [DPU_V7M3_PIPE] |150| 
        VMOV      S1, A1                ; [DPU_MERLIN_PIPE] |150| 
        VDIV.F32  S0, S0, S1            ; [DPU_MERLIN_PIPE] |150| 
        LDR       A1, $C$CON27          ; [DPU_V7M3_PIPE] |150| 
        VSTR.32   S0, [A1, #0]          ; [DPU_MERLIN_PIPE] |150| 
	.dwpsn	file "../main_Anemometro.c",line 152,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L78||:    
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$132, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$132, DW_AT_TI_end_line(0x98)
	.dwattr $C$DW$132, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$132

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$SL1||:	.string	"AT+SEND=5:",0
;******************************************************************************
;* FLOATING-POINT CONSTANTS                                                   *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$FL1||:	.word	033333333h
	.word	040033333h	; 2.39999999999999991118
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON7||:	.bits		0x4002d014,32

	.align	4
||$C$CON8||:	.bits		0x7a1200,32

	.align	4
||$C$CON9||:	.bits	flag1,32
	.align	4
||$C$CON10||:	.bits	angulo,32
	.align	4
||$C$CON11||:	.bits		0x4002d008,32

	.align	4
||$C$CON12||:	.bits		0x4002c014,32

	.align	4
||$C$CON13||:	.bits		0xf42400,32

	.align	4
||$C$CON14||:	.bits	flag2,32
	.align	4
||$C$CON15||:	.bits	velocidade,32
	.align	4
||$C$CON16||:	.bits		0x4002c01c,32

	.align	4
||$C$CON17||:	.bits	salvar,32
	.align	4
||$C$CON18||:	.bits		0x400253fc,32

	.align	4
||$C$CON19||:	.bits	V,32
	.align	4
||$C$CON20||:	.bits	D,32
	.sect	".text"
	.clink
	.thumbfunc UART5_Handler
	.thumb
	.global	UART5_Handler

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("UART5_Handler")
	.dwattr $C$DW$136, DW_AT_low_pc(UART5_Handler)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("UART5_Handler")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x9a)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$136, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$136, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$136, DW_AT_decl_column(0x06)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../main_Anemometro.c",line 154,column 25,is_stmt,address UART5_Handler,isa 1

	.dwfde $C$DW$CIE, UART5_Handler
;----------------------------------------------------------------------
; 154 | void UART5_Handler(void){                                              
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART5_Handler                                              *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                  *
;*****************************************************************************
UART5_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("flag_e")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("flag_e")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_breg13 0]

	.dwpsn	file "../main_Anemometro.c",line 155,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
; 155 | int flag_e=0;                                                          
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |155| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |155| 
	.dwpsn	file "../main_Anemometro.c",line 156,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 156 | UART5_InString(); //enche o buffer                                     
;----------------------------------------------------------------------
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("UART5_InString")
	.dwattr $C$DW$138, DW_AT_TI_call

        BL        UART5_InString        ; [DPU_V7M3_PIPE] |156| 
        ; CALL OCCURS {UART5_InString }  ; [] |156| 

$C$DW$139	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("h")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("h")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_breg13 4]

	.dwpsn	file "../main_Anemometro.c",line 157,column 12,is_stmt,isa 1
;----------------------------------------------------------------------
; 157 | for(int h=0;h<50;h++){                                                 
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |157| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |157| 
	.dwpsn	file "../main_Anemometro.c",line 157,column 15,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |157| 
        CMP       A1, #50               ; [DPU_V7M3_PIPE] |157| 
        BGE       ||$C$L87||            ; [DPU_V7M3_PIPE] |157| 
        ; BRANCHCC OCCURS {||$C$L87||}   ; [] |157| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L79||
;*
;*   Loop source line                : 157
;*   Loop closing brace source line  : 188
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L79||:    
	.dwpsn	file "../main_Anemometro.c",line 158,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 158 | if(h==49){                                                             
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |158| 
        CMP       A1, #49               ; [DPU_V7M3_PIPE] |158| 
        BNE       ||$C$L80||            ; [DPU_V7M3_PIPE] |158| 
        ; BRANCHCC OCCURS {||$C$L80||}   ; [] |158| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 159,column 12,is_stmt,isa 1
;----------------------------------------------------------------------
; 159 | count=0;                                                               
;----------------------------------------------------------------------
        LDR       A2, $C$CON22          ; [DPU_V7M3_PIPE] |159| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |159| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |159| 
;* --------------------------------------------------------------------------*
||$C$L80||:    
	.dwpsn	file "../main_Anemometro.c",line 161,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 161 | if(buffer[h]=='E'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |161| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |161| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |161| 
        CMP       A1, #69               ; [DPU_V7M3_PIPE] |161| 
        BNE       ||$C$L81||            ; [DPU_V7M3_PIPE] |161| 
        ; BRANCHCC OCCURS {||$C$L81||}   ; [] |161| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 162,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
; 162 | flag_e=1;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |162| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |162| 
;* --------------------------------------------------------------------------*
||$C$L81||:    
	.dwpsn	file "../main_Anemometro.c",line 164,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 164 | if(flag_e==1){                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |164| 
        CMP       A1, #1                ; [DPU_V7M3_PIPE] |164| 
        BNE       ||$C$L82||            ; [DPU_V7M3_PIPE] |164| 
        ; BRANCHCC OCCURS {||$C$L82||}   ; [] |164| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 165,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
; 165 | if(buffer[h]=='R'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |165| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |165| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |165| 
        CMP       A1, #82               ; [DPU_V7M3_PIPE] |165| 
        BNE       ||$C$L82||            ; [DPU_V7M3_PIPE] |165| 
        ; BRANCHCC OCCURS {||$C$L82||}   ; [] |165| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 166,column 14,is_stmt,isa 1
;----------------------------------------------------------------------
; 166 | flag_e=2;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #2                ; [DPU_V7M3_PIPE] |166| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |166| 
;* --------------------------------------------------------------------------*
||$C$L82||:    
	.dwpsn	file "../main_Anemometro.c",line 169,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 169 | if(flag_e==2){                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |169| 
        CMP       A1, #2                ; [DPU_V7M3_PIPE] |169| 
        BNE       ||$C$L83||            ; [DPU_V7M3_PIPE] |169| 
        ; BRANCHCC OCCURS {||$C$L83||}   ; [] |169| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 170,column 12,is_stmt,isa 1
;----------------------------------------------------------------------
; 170 | if(buffer[h]=='R'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |170| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |170| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |170| 
        CMP       A1, #82               ; [DPU_V7M3_PIPE] |170| 
        BNE       ||$C$L83||            ; [DPU_V7M3_PIPE] |170| 
        ; BRANCHCC OCCURS {||$C$L83||}   ; [] |170| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 171,column 15,is_stmt,isa 1
;----------------------------------------------------------------------
; 171 | flag_e=3;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #3                ; [DPU_V7M3_PIPE] |171| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |171| 
;* --------------------------------------------------------------------------*
||$C$L83||:    
	.dwpsn	file "../main_Anemometro.c",line 174,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 174 | if(flag_e==3){                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |174| 
        CMP       A1, #3                ; [DPU_V7M3_PIPE] |174| 
        BNE       ||$C$L84||            ; [DPU_V7M3_PIPE] |174| 
        ; BRANCHCC OCCURS {||$C$L84||}   ; [] |174| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 175,column 12,is_stmt,isa 1
;----------------------------------------------------------------------
; 175 | if(buffer[h]=='O'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |175| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |175| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |175| 
        CMP       A1, #79               ; [DPU_V7M3_PIPE] |175| 
        BNE       ||$C$L84||            ; [DPU_V7M3_PIPE] |175| 
        ; BRANCHCC OCCURS {||$C$L84||}   ; [] |175| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 176,column 15,is_stmt,isa 1
;----------------------------------------------------------------------
; 176 | flag_e=4;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #4                ; [DPU_V7M3_PIPE] |176| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |176| 
;* --------------------------------------------------------------------------*
||$C$L84||:    
	.dwpsn	file "../main_Anemometro.c",line 179,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 179 | if(flag_e==4){                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |179| 
        CMP       A1, #4                ; [DPU_V7M3_PIPE] |179| 
        BNE       ||$C$L85||            ; [DPU_V7M3_PIPE] |179| 
        ; BRANCHCC OCCURS {||$C$L85||}   ; [] |179| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 180,column 12,is_stmt,isa 1
;----------------------------------------------------------------------
; 180 | if(buffer[h]=='R'){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |180| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |180| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |180| 
        CMP       A1, #82               ; [DPU_V7M3_PIPE] |180| 
        BNE       ||$C$L85||            ; [DPU_V7M3_PIPE] |180| 
        ; BRANCHCC OCCURS {||$C$L85||}   ; [] |180| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 181,column 15,is_stmt,isa 1
;----------------------------------------------------------------------
; 181 | flag_e=5;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #5                ; [DPU_V7M3_PIPE] |181| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |181| 
;* --------------------------------------------------------------------------*
||$C$L85||:    
	.dwpsn	file "../main_Anemometro.c",line 184,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 184 | if(flag_e==5){                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |184| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |184| 
        BNE       ||$C$L86||            ; [DPU_V7M3_PIPE] |184| 
        ; BRANCHCC OCCURS {||$C$L86||}   ; [] |184| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 185,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
; 185 | count++;                                                               
;----------------------------------------------------------------------
        LDR       A2, $C$CON22          ; [DPU_V7M3_PIPE] |185| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |185| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |185| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |185| 
	.dwpsn	file "../main_Anemometro.c",line 186,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
; 186 | h=50;                                                                  
;----------------------------------------------------------------------
        MOVS      A1, #50               ; [DPU_V7M3_PIPE] |186| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |186| 
;* --------------------------------------------------------------------------*
||$C$L86||:    
	.dwpsn	file "../main_Anemometro.c",line 157,column 20,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |157| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |157| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |157| 
	.dwpsn	file "../main_Anemometro.c",line 157,column 15,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |157| 
        CMP       A1, #50               ; [DPU_V7M3_PIPE] |157| 
        BLT       ||$C$L79||            ; [DPU_V7M3_PIPE] |157| 
        ; BRANCHCC OCCURS {||$C$L79||}   ; [] |157| 
;* --------------------------------------------------------------------------*
||$C$L87||:    
	.dwendtag $C$DW$139

	.dwpsn	file "../main_Anemometro.c",line 189,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 189 | if(count==10){                                                         
;----------------------------------------------------------------------
        LDR       A1, $C$CON22          ; [DPU_V7M3_PIPE] |189| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |189| 
        CMP       A1, #10               ; [DPU_V7M3_PIPE] |189| 
        BNE       ||$C$L88||            ; [DPU_V7M3_PIPE] |189| 
        ; BRANCHCC OCCURS {||$C$L88||}   ; [] |189| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 190,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 190 | UART_OutString("ATZ");                                                 
;----------------------------------------------------------------------
        ADR       A1, $C$SL2            ; [DPU_V7M3_PIPE] |190| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("UART_OutString")
	.dwattr $C$DW$141, DW_AT_TI_call

        BL        UART_OutString        ; [DPU_V7M3_PIPE] |190| 
        ; CALL OCCURS {UART_OutString }  ; [] |190| 
	.dwpsn	file "../main_Anemometro.c",line 191,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 191 | UART_OutChar('\n');                                                    
;----------------------------------------------------------------------
        MOVS      A1, #10               ; [DPU_V7M3_PIPE] |191| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$142, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |191| 
        ; CALL OCCURS {UART_OutChar }    ; [] |191| 
	.dwpsn	file "../main_Anemometro.c",line 192,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 192 | count=0;                                                               
;----------------------------------------------------------------------
        LDR       A2, $C$CON22          ; [DPU_V7M3_PIPE] |192| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |192| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |192| 
;* --------------------------------------------------------------------------*
||$C$L88||:    
	.dwpsn	file "../main_Anemometro.c",line 194,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 194 | UART5_ICR_R=0x10;           //Reciver interrupt clear                  
;----------------------------------------------------------------------
        LDR       A2, $C$CON28          ; [DPU_V7M3_PIPE] |194| 
        MOVS      A1, #16               ; [DPU_V7M3_PIPE] |194| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |194| 
	.dwpsn	file "../main_Anemometro.c",line 195,column 1,is_stmt,isa 1
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_return

        POP       {A2, A3, A4, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0xc3)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON21||:	.bits	flag_e,32
	.align	4
||$C$CON22||:	.bits	count,32
	.align	4
||$C$CON23||:	.bits	buffer,32
	.sect	".text"
	.clink
	.thumbfunc RESET_DIARIO
	.thumb
	.global	RESET_DIARIO

$C$DW$144	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$144, DW_AT_name("RESET_DIARIO")
	.dwattr $C$DW$144, DW_AT_low_pc(RESET_DIARIO)
	.dwattr $C$DW$144, DW_AT_high_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("RESET_DIARIO")
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$144, DW_AT_TI_begin_line(0xc5)
	.dwattr $C$DW$144, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$144, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$144, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$144, DW_AT_decl_column(0x06)
	.dwattr $C$DW$144, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main_Anemometro.c",line 197,column 24,is_stmt,address RESET_DIARIO,isa 1

	.dwfde $C$DW$CIE, RESET_DIARIO
;----------------------------------------------------------------------
; 197 | void RESET_DIARIO(void){                                               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: RESET_DIARIO                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
RESET_DIARIO:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../main_Anemometro.c",line 198,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 198 | min++;                                                                 
;----------------------------------------------------------------------
        LDR       A2, $C$CON29          ; [DPU_V7M3_PIPE] |198| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |198| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |198| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |198| 
	.dwpsn	file "../main_Anemometro.c",line 199,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 199 | if(min >= 720){    //1 dia tem 1440 minutos                            
;----------------------------------------------------------------------
        LDR       A1, $C$CON29          ; [DPU_V7M3_PIPE] |199| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |199| 
        CMP       A1, #720              ; [DPU_V7M3_PIPE] |199| 
        BLT       ||$C$L89||            ; [DPU_V7M3_PIPE] |199| 
        ; BRANCHCC OCCURS {||$C$L89||}   ; [] |199| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 200,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 200 | UART_OutString("ATZ");                                                 
;----------------------------------------------------------------------
        ADR       A1, $C$SL2            ; [DPU_V7M3_PIPE] |200| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("UART_OutString")
	.dwattr $C$DW$145, DW_AT_TI_call

        BL        UART_OutString        ; [DPU_V7M3_PIPE] |200| 
        ; CALL OCCURS {UART_OutString }  ; [] |200| 
	.dwpsn	file "../main_Anemometro.c",line 201,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 201 | UART_OutChar('\n');                                                    
;----------------------------------------------------------------------
        MOVS      A1, #10               ; [DPU_V7M3_PIPE] |201| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$146, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |201| 
        ; CALL OCCURS {UART_OutChar }    ; [] |201| 
	.dwpsn	file "../main_Anemometro.c",line 202,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 202 | min=0;                                                                 
;----------------------------------------------------------------------
        LDR       A2, $C$CON29          ; [DPU_V7M3_PIPE] |202| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |202| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |202| 
	.dwpsn	file "../main_Anemometro.c",line 204,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L89||:    
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_return

        POP       {A4, PC}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$144, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$144, DW_AT_TI_end_line(0xcc)
	.dwattr $C$DW$144, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$144

	.sect	".text"
	.clink
	.thumbfunc PORTD_INIT
	.thumb
	.global	PORTD_INIT

$C$DW$148	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$148, DW_AT_name("PORTD_INIT")
	.dwattr $C$DW$148, DW_AT_low_pc(PORTD_INIT)
	.dwattr $C$DW$148, DW_AT_high_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("PORTD_INIT")
	.dwattr $C$DW$148, DW_AT_external
	.dwattr $C$DW$148, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$148, DW_AT_TI_begin_line(0xce)
	.dwattr $C$DW$148, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$148, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$148, DW_AT_decl_line(0xce)
	.dwattr $C$DW$148, DW_AT_decl_column(0x06)
	.dwattr $C$DW$148, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../main_Anemometro.c",line 206,column 22,is_stmt,address PORTD_INIT,isa 1

	.dwfde $C$DW$CIE, PORTD_INIT
;----------------------------------------------------------------------
; 206 | void PORTD_INIT(void){                                                 
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: PORTD_INIT                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
PORTD_INIT:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../main_Anemometro.c",line 207,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 207 | SYSCTL_RCGC2_R    |= 0x08;                                             
;----------------------------------------------------------------------
        LDR       A2, $C$CON30          ; [DPU_V7M3_PIPE] |207| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |207| 
        ORR       A1, A1, #8            ; [DPU_V7M3_PIPE] |207| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |207| 
	.dwpsn	file "../main_Anemometro.c",line 208,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 208 | GPIO_PORTD_LOCK_R  = 0x4C4F434B;                                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON32          ; [DPU_V7M3_PIPE] |208| 
        LDR       A2, $C$CON31          ; [DPU_V7M3_PIPE] |208| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |208| 
	.dwpsn	file "../main_Anemometro.c",line 209,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 209 | GPIO_PORTD_CR_R    = 0x40;                                             
;----------------------------------------------------------------------
        LDR       A2, $C$CON33          ; [DPU_V7M3_PIPE] |209| 
        MOVS      A1, #64               ; [DPU_V7M3_PIPE] |209| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |209| 
	.dwpsn	file "../main_Anemometro.c",line 210,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 210 | GPIO_PORTD_PCTL_R |= 0x66000000;  // GPIO clear bit PCTL Port Control  
;----------------------------------------------------------------------
        LDR       A2, $C$CON34          ; [DPU_V7M3_PIPE] |210| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |210| 
        ORR       A1, A1, #1711276032   ; [DPU_V7M3_PIPE] |210| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |210| 
	.dwpsn	file "../main_Anemometro.c",line 211,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 211 | GPIO_PORTD_DIR_R   = 0x00;        // ALLINPUT                          
;----------------------------------------------------------------------
        LDR       A2, $C$CON35          ; [DPU_V7M3_PIPE] |211| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |211| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |211| 
	.dwpsn	file "../main_Anemometro.c",line 212,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 212 | GPIO_PORTD_AFSEL_R = 0xc0;        // habilitando pinos para perifericos
;     |  conforme tabela do datasheet  // A PIN 6 // B PIN 7                   
;----------------------------------------------------------------------
        LDR       A2, $C$CON36          ; [DPU_V7M3_PIPE] |212| 
        MOVS      A1, #192              ; [DPU_V7M3_PIPE] |212| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |212| 
	.dwpsn	file "../main_Anemometro.c",line 213,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 213 | GPIO_PORTD_PUR_R   = 0xc0;        // PULL-UP                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON37          ; [DPU_V7M3_PIPE] |213| 
        MOVS      A1, #192              ; [DPU_V7M3_PIPE] |213| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |213| 
	.dwpsn	file "../main_Anemometro.c",line 214,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 214 | GPIO_PORTD_DEN_R   = 0xc0;        // DIGITAL ENEABLE                   
;----------------------------------------------------------------------
        LDR       A2, $C$CON38          ; [DPU_V7M3_PIPE] |214| 
        MOVS      A1, #192              ; [DPU_V7M3_PIPE] |214| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |214| 
	.dwpsn	file "../main_Anemometro.c",line 215,column 1,is_stmt,isa 1
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$148, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$148, DW_AT_TI_end_line(0xd7)
	.dwattr $C$DW$148, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$148

	.sect	".text"
	.clink
	.thumbfunc PORTC_INIT
	.thumb
	.global	PORTC_INIT

$C$DW$150	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$150, DW_AT_name("PORTC_INIT")
	.dwattr $C$DW$150, DW_AT_low_pc(PORTC_INIT)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("PORTC_INIT")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0xd9)
	.dwattr $C$DW$150, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$150, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$150, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$150, DW_AT_decl_column(0x06)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../main_Anemometro.c",line 217,column 22,is_stmt,address PORTC_INIT,isa 1

	.dwfde $C$DW$CIE, PORTC_INIT
;----------------------------------------------------------------------
; 217 | void PORTC_INIT(void){                                                 
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: PORTC_INIT                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
PORTC_INIT:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../main_Anemometro.c",line 218,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 218 | SYSCTL_RCGC2_R    |= 0x04;                                             
;----------------------------------------------------------------------
        LDR       A2, $C$CON30          ; [DPU_V7M3_PIPE] |218| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |218| 
        ORR       A1, A1, #4            ; [DPU_V7M3_PIPE] |218| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |218| 
	.dwpsn	file "../main_Anemometro.c",line 219,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 219 | GPIO_PORTC_PCTL_R |= 0x6600000;   // GPIO clear bit PCTL Port Control  
;----------------------------------------------------------------------
        LDR       A2, $C$CON39          ; [DPU_V7M3_PIPE] |219| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |219| 
        ORR       A1, A1, #106954752    ; [DPU_V7M3_PIPE] |219| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |219| 
	.dwpsn	file "../main_Anemometro.c",line 220,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 220 | GPIO_PORTC_DIR_R   = 0x00;        // ALLINPUT                          
;----------------------------------------------------------------------
        LDR       A2, $C$CON40          ; [DPU_V7M3_PIPE] |220| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |220| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |220| 
	.dwpsn	file "../main_Anemometro.c",line 221,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 221 | GPIO_PORTC_AFSEL_R = 0x60;        // A PIN 5 // B PIN 6  // habilitando
;     |  pinos para perifericos conforme tabela do datasheet                   
;----------------------------------------------------------------------
        LDR       A2, $C$CON41          ; [DPU_V7M3_PIPE] |221| 
        MOVS      A1, #96               ; [DPU_V7M3_PIPE] |221| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |221| 
	.dwpsn	file "../main_Anemometro.c",line 222,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 222 | GPIO_PORTC_PUR_R   = 0x60;        // PULL-UP                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON42          ; [DPU_V7M3_PIPE] |222| 
        MOVS      A1, #96               ; [DPU_V7M3_PIPE] |222| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |222| 
	.dwpsn	file "../main_Anemometro.c",line 223,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 223 | GPIO_PORTC_DEN_R   = 0x60;        // DIGITAL ENEABLE                   
;----------------------------------------------------------------------
        LDR       A2, $C$CON43          ; [DPU_V7M3_PIPE] |223| 
        MOVS      A1, #96               ; [DPU_V7M3_PIPE] |223| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |223| 
	.dwpsn	file "../main_Anemometro.c",line 224,column 1,is_stmt,isa 1
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$150, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0xe0)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text"
	.clink
	.thumbfunc QEI_INIT
	.thumb
	.global	QEI_INIT

$C$DW$152	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$152, DW_AT_name("QEI_INIT")
	.dwattr $C$DW$152, DW_AT_low_pc(QEI_INIT)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("QEI_INIT")
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$152, DW_AT_TI_begin_line(0xe2)
	.dwattr $C$DW$152, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$152, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$152, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$152, DW_AT_decl_column(0x06)
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../main_Anemometro.c",line 226,column 20,is_stmt,address QEI_INIT,isa 1

	.dwfde $C$DW$CIE, QEI_INIT
;----------------------------------------------------------------------
; 226 | void QEI_INIT(void){                                                   
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: QEI_INIT                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
QEI_INIT:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../main_Anemometro.c",line 227,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 227 | SYSCTL_RCGCQEI_R   = 0x03;        // ativa os 2 modulos QEI (envio cloc
;     | k para cada um)                                                        
;----------------------------------------------------------------------
        LDR       A2, $C$CON44          ; [DPU_V7M3_PIPE] |227| 
        MOVS      A1, #3                ; [DPU_V7M3_PIPE] |227| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |227| 
	.dwpsn	file "../main_Anemometro.c",line 228,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 228 | SYSCTL_RCGCGPIO_R  = 0x0c;        // clock para port D e C             
;----------------------------------------------------------------------
        LDR       A2, $C$CON45          ; [DPU_V7M3_PIPE] |228| 
        MOVS      A1, #12               ; [DPU_V7M3_PIPE] |228| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |228| 
	.dwpsn	file "../main_Anemometro.c",line 229,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 229 | QEI0_CTL_R         = 0x2029;                                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON46          ; [DPU_V7M3_PIPE] |229| 
        MOV       A1, #8233             ; [DPU_V7M3_PIPE] |229| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |229| 
	.dwpsn	file "../main_Anemometro.c",line 230,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 230 | QEI1_CTL_R         = 0x2029;                                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON47          ; [DPU_V7M3_PIPE] |230| 
        MOV       A1, #8233             ; [DPU_V7M3_PIPE] |230| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |230| 
	.dwpsn	file "../main_Anemometro.c",line 231,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 231 | QEI0_MAXPOS_R      = 0X95F;       // 600*2-1 600ppr 4 da enquadratura  
;----------------------------------------------------------------------
        LDR       A2, $C$CON48          ; [DPU_V7M3_PIPE] |231| 
        MOV       A1, #2399             ; [DPU_V7M3_PIPE] |231| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |231| 
	.dwpsn	file "../main_Anemometro.c",line 232,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 232 | QEI1_MAXPOS_R      = 0X95F;                                            
;----------------------------------------------------------------------
        LDR       A2, $C$CON49          ; [DPU_V7M3_PIPE] |232| 
        MOV       A1, #2399             ; [DPU_V7M3_PIPE] |232| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |232| 
	.dwpsn	file "../main_Anemometro.c",line 233,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 233 | QEI0_LOAD_R        = 0x9896800;   // 10seg                             
;----------------------------------------------------------------------
        LDR       A1, $C$CON51          ; [DPU_V7M3_PIPE] |233| 
        LDR       A2, $C$CON50          ; [DPU_V7M3_PIPE] |233| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |233| 
	.dwpsn	file "../main_Anemometro.c",line 234,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 234 | QEI1_LOAD_R        = 0xF42400;    // posição 1seg                      
;----------------------------------------------------------------------
        LDR       A1, $C$CON53          ; [DPU_V7M3_PIPE] |234| 
        LDR       A2, $C$CON52          ; [DPU_V7M3_PIPE] |234| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |234| 
	.dwpsn	file "../main_Anemometro.c",line 235,column 1,is_stmt,isa 1
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$152, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0xeb)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".text"
	.clink
	.thumbfunc PORTF_INIT
	.thumb
	.global	PORTF_INIT

$C$DW$154	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$154, DW_AT_name("PORTF_INIT")
	.dwattr $C$DW$154, DW_AT_low_pc(PORTF_INIT)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("PORTF_INIT")
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0xed)
	.dwattr $C$DW$154, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$154, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$154, DW_AT_decl_line(0xed)
	.dwattr $C$DW$154, DW_AT_decl_column(0x06)
	.dwattr $C$DW$154, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../main_Anemometro.c",line 237,column 22,is_stmt,address PORTF_INIT,isa 1

	.dwfde $C$DW$CIE, PORTF_INIT
;----------------------------------------------------------------------
; 237 | void PORTF_INIT(void){                                                 
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: PORTF_INIT                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
PORTF_INIT:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../main_Anemometro.c",line 238,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 238 | SYSCTL_RCGC2_R    |= 0x020;       // F clock                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON30          ; [DPU_V7M3_PIPE] |238| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |238| 
        ORR       A1, A1, #32           ; [DPU_V7M3_PIPE] |238| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |238| 
	.dwpsn	file "../main_Anemometro.c",line 239,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 239 | GPIO_PORTF_LOCK_R  = 0x4C4F434B;  // unlock PortF PF0                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON32          ; [DPU_V7M3_PIPE] |239| 
        LDR       A2, $C$CON54          ; [DPU_V7M3_PIPE] |239| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |239| 
	.dwpsn	file "../main_Anemometro.c",line 240,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 240 | GPIO_PORTF_CR_R    = 0x01;        // allow changes to PF0              
;----------------------------------------------------------------------
        LDR       A2, $C$CON55          ; [DPU_V7M3_PIPE] |240| 
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |240| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |240| 
	.dwpsn	file "../main_Anemometro.c",line 241,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 241 | GPIO_PORTF_AMSEL_R = 0x00;        // disable analog function           
;----------------------------------------------------------------------
        LDR       A2, $C$CON56          ; [DPU_V7M3_PIPE] |241| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |241| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |241| 
	.dwpsn	file "../main_Anemometro.c",line 242,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 242 | GPIO_PORTF_PCTL_R  = 0x0;         // GPIO clear bit PCTL Port Control  
;----------------------------------------------------------------------
        LDR       A2, $C$CON57          ; [DPU_V7M3_PIPE] |242| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |242| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |242| 
	.dwpsn	file "../main_Anemometro.c",line 243,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 243 | GPIO_PORTF_DIR_R   = 0x0E;        // PF4,PF0 input, PF3,PF2,PF1 output 
;----------------------------------------------------------------------
        LDR       A2, $C$CON58          ; [DPU_V7M3_PIPE] |243| 
        MOVS      A1, #14               ; [DPU_V7M3_PIPE] |243| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |243| 
	.dwpsn	file "../main_Anemometro.c",line 244,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 244 | GPIO_PORTF_AFSEL_R = 0x0;         // no alternate function             
;----------------------------------------------------------------------
        LDR       A2, $C$CON59          ; [DPU_V7M3_PIPE] |244| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |244| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |244| 
	.dwpsn	file "../main_Anemometro.c",line 245,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 245 | GPIO_PORTF_PUR_R   = 0x11;        // enable pullup resistors on PF4,PF0
;----------------------------------------------------------------------
        LDR       A2, $C$CON60          ; [DPU_V7M3_PIPE] |245| 
        MOVS      A1, #17               ; [DPU_V7M3_PIPE] |245| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |245| 
	.dwpsn	file "../main_Anemometro.c",line 246,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 246 | GPIO_PORTF_DEN_R   = 0x01F;       // enable digital pins PF4-PF0       
; 247 | //  GPIO_PORTF_IM_R    = 0x01;        // Mask PF0 (botão SW2)          
; 248 | //  GPIO_PORTF_IEV_R   = 0x00;        // Fallin\\g edge PF0            
; 249 | //  NVIC_PRI7_R        = 0x600000;    // Prioridade 3                  
; 250 | //  NVIC_EN0_R         = 0x40000000;  // BIT 30                        
;----------------------------------------------------------------------
        LDR       A2, $C$CON61          ; [DPU_V7M3_PIPE] |246| 
        MOVS      A1, #31               ; [DPU_V7M3_PIPE] |246| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |246| 
	.dwpsn	file "../main_Anemometro.c",line 251,column 1,is_stmt,isa 1
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$154, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$154, DW_AT_TI_end_line(0xfb)
	.dwattr $C$DW$154, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$154

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$SL2||:	.string	"ATZ",0
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON24||:	.bits	count1,32
	.align	4
||$C$CON25||:	.bits	LAST_VEL,32
	.sect	".text"
	.clink
	.thumbfunc UART5_Init
	.thumb
	.global	UART5_Init

$C$DW$156	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$156, DW_AT_name("UART5_Init")
	.dwattr $C$DW$156, DW_AT_low_pc(UART5_Init)
	.dwattr $C$DW$156, DW_AT_high_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("UART5_Init")
	.dwattr $C$DW$156, DW_AT_external
	.dwattr $C$DW$156, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$156, DW_AT_TI_begin_line(0xfd)
	.dwattr $C$DW$156, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$156, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$156, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$156, DW_AT_decl_column(0x06)
	.dwattr $C$DW$156, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../main_Anemometro.c",line 253,column 22,is_stmt,address UART5_Init,isa 1

	.dwfde $C$DW$CIE, UART5_Init
;----------------------------------------------------------------------
; 253 | void UART5_Init(void){                                                 
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART5_Init                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
UART5_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../main_Anemometro.c",line 254,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 254 | SYSCTL_RCGCUART_R  |= 0x20;        // activate UART                    
;----------------------------------------------------------------------
        LDR       A2, $C$CON62          ; [DPU_V7M3_PIPE] |254| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |254| 
        ORR       A1, A1, #32           ; [DPU_V7M3_PIPE] |254| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |254| 
	.dwpsn	file "../main_Anemometro.c",line 255,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 255 | SYSCTL_RCGC2_R     |= 0x010;       // activate port E                  
;----------------------------------------------------------------------
        LDR       A2, $C$CON30          ; [DPU_V7M3_PIPE] |255| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |255| 
        ORR       A1, A1, #16           ; [DPU_V7M3_PIPE] |255| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |255| 
	.dwpsn	file "../main_Anemometro.c",line 256,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 256 | while((SYSCTL_PRGPIO_R&0x010) == 0){};                                 
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L90||
;*
;*   Loop source line                : 256
;*   Loop closing brace source line  : 256
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L90||:    
	.dwpsn	file "../main_Anemometro.c",line 256,column 9,is_stmt,isa 1
        LDR       A1, $C$CON63          ; [DPU_V7M3_PIPE] |256| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |256| 
        LSRS      A1, A1, #5            ; [DPU_V7M3_PIPE] |256| 
        BCC       ||$C$L90||            ; [DPU_V7M3_PIPE] |256| 
        ; BRANCHCC OCCURS {||$C$L90||}   ; [] |256| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 257,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 257 | UART5_CTL_R &= ~UART_CTL_UARTEN;   // disable UART                     
;----------------------------------------------------------------------
        LDR       A2, $C$CON64          ; [DPU_V7M3_PIPE] |257| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |257| 
        BIC       A1, A1, #1            ; [DPU_V7M3_PIPE] |257| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |257| 
	.dwpsn	file "../main_Anemometro.c",line 258,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 258 | UART5_IBRD_R        = 104;         // IBRD = int(16,000,000 / (16 * 960
;     | 0)) = int(104.1666)                                                    
;----------------------------------------------------------------------
        LDR       A2, $C$CON65          ; [DPU_V7M3_PIPE] |258| 
        MOVS      A1, #104              ; [DPU_V7M3_PIPE] |258| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |258| 
	.dwpsn	file "../main_Anemometro.c",line 259,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 259 | UART5_FBRD_R        = 11;          // FBRD = int(0.1666 * 64 + 0.5) = 1
;     | 1,11111                                                                
;----------------------------------------------------------------------
        LDR       A2, $C$CON66          ; [DPU_V7M3_PIPE] |259| 
        MOVS      A1, #11               ; [DPU_V7M3_PIPE] |259| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |259| 
	.dwpsn	file "../main_Anemometro.c",line 260,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 260 | UART5_LCRH_R = (UART_LCRH_WLEN_8|UART_LCRH_FEN);// 8 bit word length (n
;     | o parity bits, one stop bit, FIFOs)                                    
;----------------------------------------------------------------------
        LDR       A2, $C$CON67          ; [DPU_V7M3_PIPE] |260| 
        MOVS      A1, #112              ; [DPU_V7M3_PIPE] |260| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |260| 
	.dwpsn	file "../main_Anemometro.c",line 261,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 261 | UART5_CTL_R |= UART_CTL_UARTEN;    // enable UART                      
;----------------------------------------------------------------------
        LDR       A2, $C$CON64          ; [DPU_V7M3_PIPE] |261| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |261| 
        ORR       A1, A1, #1            ; [DPU_V7M3_PIPE] |261| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |261| 
	.dwpsn	file "../main_Anemometro.c",line 262,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 262 | GPIO_PORTE_AFSEL_R |= 0x030;       // enable alt funct on PE5 and PE4  
;----------------------------------------------------------------------
        LDR       A2, $C$CON68          ; [DPU_V7M3_PIPE] |262| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |262| 
        ORR       A1, A1, #48           ; [DPU_V7M3_PIPE] |262| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |262| 
	.dwpsn	file "../main_Anemometro.c",line 263,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 263 | GPIO_PORTE_DEN_R   |= 0x030;       // enable digital I/O on PE5 and PE4
;----------------------------------------------------------------------
        LDR       A2, $C$CON69          ; [DPU_V7M3_PIPE] |263| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |263| 
        ORR       A1, A1, #48           ; [DPU_V7M3_PIPE] |263| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |263| 
	.dwpsn	file "../main_Anemometro.c",line 264,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 264 | GPIO_PORTE_PCTL_R   = 0x0110000;    // configure PE5(Tx) PE4(Rx) as UAR
;     | T                                                                      
;----------------------------------------------------------------------
        LDR       A2, $C$CON70          ; [DPU_V7M3_PIPE] |264| 
        MOV       A1, #1114112          ; [DPU_V7M3_PIPE] |264| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |264| 
	.dwpsn	file "../main_Anemometro.c",line 265,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 265 | GPIO_PORTE_AMSEL_R  = 0x30;        // disable analog functionality on P
;     | E5 and PE4                                                             
;----------------------------------------------------------------------
        LDR       A2, $C$CON71          ; [DPU_V7M3_PIPE] |265| 
        MOVS      A1, #48               ; [DPU_V7M3_PIPE] |265| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |265| 
	.dwpsn	file "../main_Anemometro.c",line 266,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 266 | UART5_IFLS_R        = 0x00;        // ira ativar o interrupt quando a f
;     | ifo estiver 1/4(0x08) cheia (0x0 para 1/8)                             
;----------------------------------------------------------------------
        LDR       A2, $C$CON72          ; [DPU_V7M3_PIPE] |266| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |266| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |266| 
	.dwpsn	file "../main_Anemometro.c",line 267,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 267 | UART5_IM_R          = 0x010;       // recive interrupt mask            
;----------------------------------------------------------------------
        LDR       A2, $C$CON73          ; [DPU_V7M3_PIPE] |267| 
        MOVS      A1, #16               ; [DPU_V7M3_PIPE] |267| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |267| 
	.dwpsn	file "../main_Anemometro.c",line 268,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 268 | NVIC_PRI19_R        = 0x8000;      // Priority 4 (vector number:77)    
;----------------------------------------------------------------------
        LDR       A2, $C$CON74          ; [DPU_V7M3_PIPE] |268| 
        MOV       A1, #32768            ; [DPU_V7M3_PIPE] |268| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |268| 
	.dwpsn	file "../main_Anemometro.c",line 269,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 269 | NVIC_EN1_R          = 0x20000000;  // interrupt number:61              
;----------------------------------------------------------------------
        LDR       A2, $C$CON75          ; [DPU_V7M3_PIPE] |269| 
        MOV       A1, #536870912        ; [DPU_V7M3_PIPE] |269| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |269| 
	.dwpsn	file "../main_Anemometro.c",line 270,column 1,is_stmt,isa 1
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$156, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$156, DW_AT_TI_end_line(0x10e)
	.dwattr $C$DW$156, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$156

;******************************************************************************
;* FLOATING-POINT CONSTANTS                                                   *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$FL2||:	.word	042700000h	; 60
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON26||:	.bits	count2,32
	.align	4
||$C$CON27||:	.bits	LAST_DIR,32
	.sect	".text"
	.clink
	.thumbfunc UART5_InString
	.thumb
	.global	UART5_InString

$C$DW$158	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$158, DW_AT_name("UART5_InString")
	.dwattr $C$DW$158, DW_AT_low_pc(UART5_InString)
	.dwattr $C$DW$158, DW_AT_high_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("UART5_InString")
	.dwattr $C$DW$158, DW_AT_external
	.dwattr $C$DW$158, DW_AT_TI_begin_file("../main_Anemometro.c")
	.dwattr $C$DW$158, DW_AT_TI_begin_line(0x110)
	.dwattr $C$DW$158, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$158, DW_AT_decl_file("../main_Anemometro.c")
	.dwattr $C$DW$158, DW_AT_decl_line(0x110)
	.dwattr $C$DW$158, DW_AT_decl_column(0x06)
	.dwattr $C$DW$158, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../main_Anemometro.c",line 272,column 27,is_stmt,address UART5_InString,isa 1

	.dwfde $C$DW$CIE, UART5_InString
;----------------------------------------------------------------------
; 272 | void UART5_InString(void) {//o tamanho do comando inserido é guardado n
;     | a variavel length                                                      
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART5_InString                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                 *
;*****************************************************************************
UART5_InString:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("max")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("max")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_breg13 0]

$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("ii")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("ii")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_breg13 4]

$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("character")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("character")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_breg13 8]

	.dwpsn	file "../main_Anemometro.c",line 273,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 273 | length=0;                                                              
; 274 | char character;                                                        
;----------------------------------------------------------------------
        LDR       A2, $C$CON76          ; [DPU_V7M3_PIPE] |273| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |273| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |273| 
	.dwpsn	file "../main_Anemometro.c",line 275,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 275 | int max=100;                                                           
;----------------------------------------------------------------------
        MOVS      A1, #100              ; [DPU_V7M3_PIPE] |275| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |275| 
	.dwpsn	file "../main_Anemometro.c",line 276,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 276 | int ii=0;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |276| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |276| 
	.dwpsn	file "../main_Anemometro.c",line 277,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 277 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("UART_InChar")
	.dwattr $C$DW$162, DW_AT_TI_call

        BL        UART_InChar           ; [DPU_V7M3_PIPE] |277| 
        ; CALL OCCURS {UART_InChar }     ; [] |277| 
        STRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |277| 
	.dwpsn	file "../main_Anemometro.c",line 278,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 278 | while(character != CR){                                                
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |278| 
        CMP       A1, #13               ; [DPU_V7M3_PIPE] |278| 
        BEQ       ||$C$L94||            ; [DPU_V7M3_PIPE] |278| 
        ; BRANCHCC OCCURS {||$C$L94||}   ; [] |278| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L91||
;*
;*   Loop source line                : 278
;*   Loop closing brace source line  : 291
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L91||:    
	.dwpsn	file "../main_Anemometro.c",line 279,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 279 | if(character == BS){                                                   
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |279| 
        CMP       A1, #8                ; [DPU_V7M3_PIPE] |279| 
        BNE       ||$C$L92||            ; [DPU_V7M3_PIPE] |279| 
        ; BRANCHCC OCCURS {||$C$L92||}   ; [] |279| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 280,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 280 | if(length){                                                            
;----------------------------------------------------------------------
        LDR       A1, $C$CON76          ; [DPU_V7M3_PIPE] |280| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |280| 
        CBZ       A1, ||$C$L93||        ; [] 
        ; BRANCHCC OCCURS {||$C$L93||}   ; [] |280| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 281,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 281 | ii--;                                                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |281| 
        SUBS      A1, A1, #1            ; [DPU_V7M3_PIPE] |281| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |281| 
	.dwpsn	file "../main_Anemometro.c",line 282,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 282 | length--;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON76          ; [DPU_V7M3_PIPE] |282| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |282| 
        SUBS      A1, A1, #1            ; [DPU_V7M3_PIPE] |282| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |282| 
        B         ||$C$L93||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L93||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L92||:    
	.dwpsn	file "../main_Anemometro.c",line 285,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 285 | else if(length < max){                                                 
;----------------------------------------------------------------------
        LDR       A2, $C$CON76          ; [DPU_V7M3_PIPE] |285| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |285| 
        LDR       A2, [A2, #0]          ; [DPU_V7M3_PIPE] |285| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |285| 
        BLE       ||$C$L93||            ; [DPU_V7M3_PIPE] |285| 
        ; BRANCHCC OCCURS {||$C$L93||}   ; [] |285| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main_Anemometro.c",line 286,column 8,is_stmt,isa 1
;----------------------------------------------------------------------
; 286 | buffer[ii] = character;                                                
;----------------------------------------------------------------------
        LDR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |286| 
        LDR       A3, $C$CON77          ; [DPU_V7M3_PIPE] |286| 
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |286| 
        STRB      A1, [A3, +A2]         ; [DPU_V7M3_PIPE] |286| 
	.dwpsn	file "../main_Anemometro.c",line 287,column 8,is_stmt,isa 1
;----------------------------------------------------------------------
; 287 | ii++;                                                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |287| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |287| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |287| 
	.dwpsn	file "../main_Anemometro.c",line 288,column 8,is_stmt,isa 1
;----------------------------------------------------------------------
; 288 | length++;                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON76          ; [DPU_V7M3_PIPE] |288| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |288| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |288| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |288| 
;* --------------------------------------------------------------------------*
||$C$L93||:    
	.dwpsn	file "../main_Anemometro.c",line 290,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 290 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("UART_InChar")
	.dwattr $C$DW$163, DW_AT_TI_call

        BL        UART_InChar           ; [DPU_V7M3_PIPE] |290| 
        ; CALL OCCURS {UART_InChar }     ; [] |290| 
        STRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |290| 
	.dwpsn	file "../main_Anemometro.c",line 278,column 9,is_stmt,isa 1
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |278| 
        CMP       A1, #13               ; [DPU_V7M3_PIPE] |278| 
        BNE       ||$C$L91||            ; [DPU_V7M3_PIPE] |278| 
        ; BRANCHCC OCCURS {||$C$L91||}   ; [] |278| 
;* --------------------------------------------------------------------------*
||$C$L94||:    
	.dwpsn	file "../main_Anemometro.c",line 292,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 292 | ii = length;                                                           
;----------------------------------------------------------------------
        LDR       A1, $C$CON76          ; [DPU_V7M3_PIPE] |292| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |292| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |292| 
	.dwpsn	file "../main_Anemometro.c",line 293,column 1,is_stmt,isa 1
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return

        POP       {A2, A3, A4, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$158, DW_AT_TI_end_file("../main_Anemometro.c")
	.dwattr $C$DW$158, DW_AT_TI_end_line(0x125)
	.dwattr $C$DW$158, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$158

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:__isnan"
	.align	4
||$C$CON1||:	.bits		0xfffff,32

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:__isnanl"
	.align	4
||$C$CON2||:	.bits		0xfffff,32

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:__isinf"
	.align	4
||$C$CON3||:	.bits		0xfffff,32

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:__isinfl"
	.align	4
||$C$CON4||:	.bits		0xfffff,32

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:__fpclassify"
	.align	4
||$C$CON5||:	.bits		0xfffff,32

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:__fpclassifyl"
	.align	4
||$C$CON6||:	.bits		0xfffff,32

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON28||:	.bits		0x40011044,32

	.align	4
||$C$CON29||:	.bits	min,32
	.align	4
||$C$CON30||:	.bits		0x400fe108,32

	.align	4
||$C$CON31||:	.bits		0x40007520,32

	.align	4
||$C$CON32||:	.bits		0x4c4f434b,32

	.align	4
||$C$CON33||:	.bits		0x40007524,32

	.align	4
||$C$CON34||:	.bits		0x4000752c,32

	.align	4
||$C$CON35||:	.bits		0x40007400,32

	.align	4
||$C$CON36||:	.bits		0x40007420,32

	.align	4
||$C$CON37||:	.bits		0x40007510,32

	.align	4
||$C$CON38||:	.bits		0x4000751c,32

	.align	4
||$C$CON39||:	.bits		0x4000652c,32

	.align	4
||$C$CON40||:	.bits		0x40006400,32

	.align	4
||$C$CON41||:	.bits		0x40006420,32

	.align	4
||$C$CON42||:	.bits		0x40006510,32

	.align	4
||$C$CON43||:	.bits		0x4000651c,32

	.align	4
||$C$CON44||:	.bits		0x400fe644,32

	.align	4
||$C$CON45||:	.bits		0x400fe608,32

	.align	4
||$C$CON46||:	.bits		0x4002c000,32

	.align	4
||$C$CON47||:	.bits		0x4002d000,32

	.align	4
||$C$CON48||:	.bits		0x4002c00c,32

	.align	4
||$C$CON49||:	.bits		0x4002d00c,32

	.align	4
||$C$CON50||:	.bits		0x4002c010,32

	.align	4
||$C$CON51||:	.bits		0x9896800,32

	.align	4
||$C$CON52||:	.bits		0x4002d010,32

	.align	4
||$C$CON53||:	.bits		0xf42400,32

	.align	4
||$C$CON54||:	.bits		0x40025520,32

	.align	4
||$C$CON55||:	.bits		0x40025524,32

	.align	4
||$C$CON56||:	.bits		0x40025528,32

	.align	4
||$C$CON57||:	.bits		0x4002552c,32

	.align	4
||$C$CON58||:	.bits		0x40025400,32

	.align	4
||$C$CON59||:	.bits		0x40025420,32

	.align	4
||$C$CON60||:	.bits		0x40025510,32

	.align	4
||$C$CON61||:	.bits		0x4002551c,32

	.align	4
||$C$CON62||:	.bits		0x400fe618,32

	.align	4
||$C$CON63||:	.bits		0x400fea08,32

	.align	4
||$C$CON64||:	.bits		0x40011030,32

	.align	4
||$C$CON65||:	.bits		0x40011024,32

	.align	4
||$C$CON66||:	.bits		0x40011028,32

	.align	4
||$C$CON67||:	.bits		0x4001102c,32

	.align	4
||$C$CON68||:	.bits		0x40024420,32

	.align	4
||$C$CON69||:	.bits		0x4002451c,32

	.align	4
||$C$CON70||:	.bits		0x4002452c,32

	.align	4
||$C$CON71||:	.bits		0x40024528,32

	.align	4
||$C$CON72||:	.bits		0x40011034,32

	.align	4
||$C$CON73||:	.bits		0x40011038,32

	.align	4
||$C$CON74||:	.bits		0xe000e44c,32

	.align	4
||$C$CON75||:	.bits		0xe000e104,32

	.align	4
||$C$CON76||:	.bits	length,32
	.align	4
||$C$CON77||:	.bits	buffer,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	StartCritical
	.global	EnableInterrupts
	.global	EndCritical
	.global	UART_OutString
	.global	UART_OutUDec
	.global	UART_OutChar
	.global	UART_InChar
	.global	__aeabi_ui2d
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "__fpclassify", 1
	.gmember  ".text:__fpclassify"
	.endgroup
	.group    "__fpclassifyf", 1
	.gmember  ".text:__fpclassifyf"
	.endgroup
	.group    "__fpclassifyl", 1
	.gmember  ".text:__fpclassifyl"
	.endgroup
	.group    "__isfinite", 1
	.gmember  ".text:__isfinite"
	.endgroup
	.group    "__isfinitef", 1
	.gmember  ".text:__isfinitef"
	.endgroup
	.group    "__isfinitel", 1
	.gmember  ".text:__isfinitel"
	.endgroup
	.group    "__isinf", 1
	.gmember  ".text:__isinf"
	.endgroup
	.group    "__isinff", 1
	.gmember  ".text:__isinff"
	.endgroup
	.group    "__isinfl", 1
	.gmember  ".text:__isinfl"
	.endgroup
	.group    "__isnan", 1
	.gmember  ".text:__isnan"
	.endgroup
	.group    "__isnanf", 1
	.gmember  ".text:__isnanf"
	.endgroup
	.group    "__isnanl", 1
	.gmember  ".text:__isnanl"
	.endgroup
	.group    "__isnormal", 1
	.gmember  ".text:__isnormal"
	.endgroup
	.group    "__isnormalf", 1
	.gmember  ".text:__isnormalf"
	.endgroup
	.group    "__isnormall", 1
	.gmember  ".text:__isnormall"
	.endgroup
	.group    "__signbit", 1
	.gmember  ".text:__signbit"
	.endgroup
	.group    "__signbitf", 1
	.gmember  ".text:__signbitf"
	.endgroup
	.group    "__signbitl", 1
	.gmember  ".text:__signbitl"
	.endgroup


;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(5)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(0)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_FP_interface(0)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x10)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$165, DW_AT_name("__max_align1")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$165, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$165, DW_AT_decl_column(0x0c)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$166, DW_AT_name("__max_align2")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$166, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$166, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x08)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$167, DW_AT_name("quot")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$167, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$167, DW_AT_decl_column(0x16)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$168, DW_AT_name("rem")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$168, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$168, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("div_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x23)


$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x08)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$169, DW_AT_name("quot")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x53)
	.dwattr $C$DW$169, DW_AT_decl_column(0x16)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$170, DW_AT_name("rem")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x53)
	.dwattr $C$DW$170, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$23

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("ldiv_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x23)


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x10)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$171, DW_AT_name("quot")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$171, DW_AT_decl_column(0x1c)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$172, DW_AT_name("rem")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$172, DW_AT_decl_column(0x22)

	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$24

$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("lldiv_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x29)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)


$C$DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("__TI_atexit_fn")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x14)

$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$2)

$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x20)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x16)

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x12)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x19)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("int8_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x18)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x13)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x13)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x1a)

$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x14)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x11)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x13)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x1a)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("int16_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x14)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x1a)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x19)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x14)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x14)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x1a)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x1a)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x15)

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x1a)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x0d)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x13)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x0e)


$C$DW$T$76	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
$C$DW$173	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$47)

$C$DW$174	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$47)

	.dwendtag $C$DW$T$76

$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x20)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("__TI_compar_fn")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x13)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x0e)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x0e)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x0e)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x0e)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x15)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x15)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x0f)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x13)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x13)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x13)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x13)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x19)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x13)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x19)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x13)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x18)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x13)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x1a)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x13)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x13)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x15)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x13)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x13)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x13)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("__register_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x13)

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x13)

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x13)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("int32_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x14)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x0e)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x17)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x14)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x14)

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x14)

$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x14)

$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("__size_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x14)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x14)

$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("__time_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x19)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x14)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x14)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x14)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x1a)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x14)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x1a)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x14)

$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x19)

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x14)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x1a)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x1a)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x14)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x14)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x16)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x14)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x14)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x14)

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x15)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x16)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("size_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/stdlib.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x19)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("__key_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x0f)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x0f)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("_off_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x0e)

$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("__off_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x18)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x14)

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x13)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("__id_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x13)

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x13)

$C$DW$T$144	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$144, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$144, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x19)

$C$DW$T$145	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$145, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$145, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x13)

$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$146, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x1a)

$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x13)

$C$DW$T$148	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$148, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$148, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x15)

$C$DW$T$149	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$149, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$149, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x13)

$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x13)

$C$DW$T$151	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$151, DW_AT_name("int64_t")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$151, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$152	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$152, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$152, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$152, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$152, DW_AT_decl_column(0x1c)

$C$DW$T$153	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$153, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$153, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$153, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$153, DW_AT_decl_column(0x14)

$C$DW$T$154	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$154, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$154, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$154, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$154, DW_AT_decl_column(0x14)

$C$DW$T$155	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$155, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$155, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$155, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$155, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$155, DW_AT_decl_column(0x14)

$C$DW$T$156	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$156, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$156, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$156, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$156, DW_AT_decl_column(0x14)

$C$DW$T$157	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$157, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$157, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$157, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$157, DW_AT_decl_column(0x14)

$C$DW$T$158	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$158, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$158, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x14)

$C$DW$T$159	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$159, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$159, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x1a)

$C$DW$T$160	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$160, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$160, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$160, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$160, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$160, DW_AT_decl_column(0x14)

$C$DW$T$161	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$161, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$161, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x1a)

$C$DW$T$162	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$162, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$162, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$162, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$162, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$162, DW_AT_decl_column(0x14)

$C$DW$T$163	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$163, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$163, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x19)

$C$DW$T$164	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$164, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$164, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$164, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$164, DW_AT_decl_column(0x16)

$C$DW$T$165	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$165, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$165, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$165, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$165, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$43	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$16)

$C$DW$T$166	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$166, DW_AT_name("__float_t")
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$166, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$166, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x10)

$C$DW$T$167	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$167, DW_AT_name("float_t")
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$167, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$167, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/math.h")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x0f)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$168	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$168, DW_AT_name("__double_t")
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$168, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$168, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$168, DW_AT_decl_column(0x11)

$C$DW$T$169	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$169, DW_AT_name("double_t")
	.dwattr $C$DW$T$169, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$169, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$169, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/math.h")
	.dwattr $C$DW$T$169, DW_AT_decl_line(0x143)
	.dwattr $C$DW$T$169, DW_AT_decl_column(0x10)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)


$C$DW$T$172	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$172, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$172, DW_AT_byte_size(0x64)
$C$DW$175	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$175, DW_AT_upper_bound(0x63)

	.dwendtag $C$DW$T$172


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$173	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$173, DW_AT_address_class(0x20)

$C$DW$T$174	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$174, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$T$174, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$174, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$174, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$174, DW_AT_decl_column(0x16)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$175	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$175, DW_AT_address_class(0x20)

$C$DW$T$176	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$176, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$T$176, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$176, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$176, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$176, DW_AT_decl_column(0x19)


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("__va_list_t")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x04)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$176, DW_AT_name("__ap")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("__ap")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$176, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$25

$C$DW$T$177	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$177, DW_AT_name("__va_list")
	.dwattr $C$DW$T$177, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$177, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$177, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$177, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$T$177, DW_AT_decl_column(0x03)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 80
	.dwcfi	same_value, 81
	.dwcfi	same_value, 82
	.dwcfi	same_value, 83
	.dwcfi	same_value, 84
	.dwcfi	same_value, 85
	.dwcfi	same_value, 86
	.dwcfi	same_value, 87
	.dwcfi	same_value, 88
	.dwcfi	same_value, 89
	.dwcfi	same_value, 90
	.dwcfi	same_value, 91
	.dwcfi	same_value, 92
	.dwcfi	same_value, 93
	.dwcfi	same_value, 94
	.dwcfi	same_value, 95
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$177	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$177, DW_AT_name("A1")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg0]

$C$DW$178	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$178, DW_AT_name("A2")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg1]

$C$DW$179	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$179, DW_AT_name("A3")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg2]

$C$DW$180	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$180, DW_AT_name("A4")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg3]

$C$DW$181	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$181, DW_AT_name("V1")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg4]

$C$DW$182	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$182, DW_AT_name("V2")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg5]

$C$DW$183	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$183, DW_AT_name("V3")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg6]

$C$DW$184	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$184, DW_AT_name("V4")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg7]

$C$DW$185	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$185, DW_AT_name("V5")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg8]

$C$DW$186	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$186, DW_AT_name("V6")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg9]

$C$DW$187	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$187, DW_AT_name("V7")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg10]

$C$DW$188	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$188, DW_AT_name("V8")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg11]

$C$DW$189	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$189, DW_AT_name("V9")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg12]

$C$DW$190	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$190, DW_AT_name("SP")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg13]

$C$DW$191	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$191, DW_AT_name("LR")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg14]

$C$DW$192	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$192, DW_AT_name("PC")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg15]

$C$DW$193	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$193, DW_AT_name("SR")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg17]

$C$DW$194	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$194, DW_AT_name("AP")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg7]

$C$DW$195	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$195, DW_AT_name("D0")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x40]

$C$DW$196	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$196, DW_AT_name("D0_hi")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x41]

$C$DW$197	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$197, DW_AT_name("D1")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x42]

$C$DW$198	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$198, DW_AT_name("D1_hi")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x43]

$C$DW$199	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$199, DW_AT_name("D2")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x44]

$C$DW$200	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$200, DW_AT_name("D2_hi")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x45]

$C$DW$201	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$201, DW_AT_name("D3")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x46]

$C$DW$202	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$202, DW_AT_name("D3_hi")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x47]

$C$DW$203	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$203, DW_AT_name("D4")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x48]

$C$DW$204	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$204, DW_AT_name("D4_hi")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x49]

$C$DW$205	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$205, DW_AT_name("D5")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$206	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$206, DW_AT_name("D5_hi")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$207	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$207, DW_AT_name("D6")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$208	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$208, DW_AT_name("D6_hi")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$209	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$209, DW_AT_name("D7")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$210	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$210, DW_AT_name("D7_hi")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$211	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$211, DW_AT_name("D8")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x50]

$C$DW$212	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$212, DW_AT_name("D8_hi")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x51]

$C$DW$213	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$213, DW_AT_name("D9")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x52]

$C$DW$214	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$214, DW_AT_name("D9_hi")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x53]

$C$DW$215	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$215, DW_AT_name("D10")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x54]

$C$DW$216	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$216, DW_AT_name("D10_hi")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x55]

$C$DW$217	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$217, DW_AT_name("D11")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x56]

$C$DW$218	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$218, DW_AT_name("D11_hi")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x57]

$C$DW$219	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$219, DW_AT_name("D12")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x58]

$C$DW$220	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$220, DW_AT_name("D12_hi")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x59]

$C$DW$221	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$221, DW_AT_name("D13")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$222	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$222, DW_AT_name("D13_hi")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$223	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$223, DW_AT_name("D14")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$224	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$224, DW_AT_name("D14_hi")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$225	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$225, DW_AT_name("D15")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$226	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$226, DW_AT_name("D15_hi")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$227	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$227, DW_AT_name("FPEXC")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg18]

$C$DW$228	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$228, DW_AT_name("FPSCR")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU

