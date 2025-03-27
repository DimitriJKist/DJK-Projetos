;******************************************************************************
;* TI ARM G3 C/C++ Codegen                                              PC v20.2.7.LTS *
;* Date/Time created: Fri Feb 14 12:43:41 2025                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../UART.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM G3 C/C++ Codegen PC v20.2.7.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\dimit\workspace_v12\Controle_Digital_Trabalho_Final\Debug")
	.global	comando
	.common	comando,1,1
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("comando")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("comando")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr comando]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\UART.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)

	.global	confirmacao
	.common	confirmacao,1,1
$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("confirmacao")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("confirmacao")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr confirmacao]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("..\UART.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x70)
	.dwattr $C$DW$2, DW_AT_decl_column(0x06)

	.global	confirmacao2
	.common	confirmacao2,1,1
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("confirmacao2")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("confirmacao2")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr confirmacao2]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("..\UART.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x71)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)

;	C:\ti\ccs1230\ccs\tools\compiler\ti-cgt-arm_20.2.7.LTS\bin\armacpia.exe -@C:\\Users\\dimit\\AppData\\Local\\Temp\\{C903AAFA-432D-4C22-9FA6-BD2D4D5AEBB7} 
	.sect	".text"
	.clink
	.thumbfunc UART_InChar
	.thumb
	.global	UART_InChar

$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("UART_InChar")
	.dwattr $C$DW$4, DW_AT_low_pc(UART_InChar)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("UART_InChar")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$4, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x42)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$4, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x42)
	.dwattr $C$DW$4, DW_AT_decl_column(0x06)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../UART.c",line 66,column 23,is_stmt,address UART_InChar,isa 1

	.dwfde $C$DW$CIE, UART_InChar
;----------------------------------------------------------------------
;  66 | char UART_InChar(void){                                                
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART_InChar                                                *
;*                                                                           *
;*   Regs Modified     : A1,SR                                               *
;*   Regs Used         : A1,LR,SR                                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
UART_InChar:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../UART.c",line 67,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  67 | while((UART0_FR_R&UART_FR_RXFE) != 0);//                               
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 67
;*   Loop closing brace source line  : 67
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../UART.c",line 67,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  68 | // comando = ((char)(UART0_DR_R&0xFF));                                
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_V7M3_PIPE] |67| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |67| 
        LSRS      A1, A1, #5            ; [DPU_V7M3_PIPE] |67| 
        BCS       ||$C$L1||             ; [DPU_V7M3_PIPE] |67| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |67| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 69,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  69 | return((char)(UART0_DR_R&0xFF));                                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_V7M3_PIPE] |69| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |69| 
        AND       A1, A1, #255          ; [DPU_V7M3_PIPE] |69| 
        UXTB      A1, A1                ; [DPU_V7M3_PIPE] |69| 
	.dwpsn	file "../UART.c",line 70,column 1,is_stmt,isa 1
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x46)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.thumbfunc UART_OutChar
	.thumb
	.global	UART_OutChar

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$6, DW_AT_low_pc(UART_OutChar)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("UART_OutChar")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x4b)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$6, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$6, DW_AT_decl_column(0x06)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 75,column 29,is_stmt,address UART_OutChar,isa 1

	.dwfde $C$DW$CIE, UART_OutChar
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("data")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: UART_OutChar                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
UART_OutChar:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("data")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
;  75 | void UART_OutChar(char data){  while((UART0_FR_R&UART_FR_TXFF) != 0);//
;     | MUDADO DE UART0 PARA UART5                                             
;----------------------------------------------------------------------
        STRB      A1, [SP, #0]          ; [DPU_V7M3_PIPE] |75| 
	.dwpsn	file "../UART.c",line 75,column 32,is_stmt,isa 1
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L2||
;*
;*   Loop source line                : 75
;*   Loop closing brace source line  : 75
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../UART.c",line 75,column 38,is_stmt,isa 1
        LDR       A1, $C$CON1           ; [DPU_V7M3_PIPE] |75| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |75| 
        LSRS      A1, A1, #6            ; [DPU_V7M3_PIPE] |75| 
        BCS       ||$C$L2||             ; [DPU_V7M3_PIPE] |75| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |75| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 76,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  76 | UART0_DR_R = data;                                                     
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_V7M3_PIPE] |76| 
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |76| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |76| 
	.dwpsn	file "../UART.c",line 77,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x4d)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text"
	.clink
	.thumbfunc UART_OutString
	.thumb
	.global	UART_OutString

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("UART_OutString")
	.dwattr $C$DW$10, DW_AT_low_pc(UART_OutString)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("UART_OutString")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x55)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x55)
	.dwattr $C$DW$10, DW_AT_decl_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 85,column 30,is_stmt,address UART_OutString,isa 1

	.dwfde $C$DW$CIE, UART_OutString
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("pt")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("pt")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: UART_OutString                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A4,SP,LR,SR,FPEXC,FPSCR                       *
;*   Regs Used         : A1,A2,A4,SP,LR,SR,FPEXC,FPSCR                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
UART_OutString:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("pt")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("pt")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
;  85 | void UART_OutString(char *pt){                                         
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |85| 
	.dwpsn	file "../UART.c",line 86,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  86 | while(*pt){                                                            
;----------------------------------------------------------------------
        B         ||$C$L4||             ; [DPU_V7M3_PIPE] |86| 
        ; BRANCH OCCURS {||$C$L4||}      ; [] |86| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../UART.c",line 87,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  87 | UART_OutChar(*pt);                                                     
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |87| 
        LDRB      A1, [A1, #0]          ; [DPU_V7M3_PIPE] |87| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$13, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |87| 
        ; CALL OCCURS {UART_OutChar }    ; [] |87| 
	.dwpsn	file "../UART.c",line 88,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  88 | pt++;                                                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |88| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |88| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |88| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L4||
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "../UART.c",line 89,column 3,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |89| 
        LDRB      A1, [A1, #0]          ; [DPU_V7M3_PIPE] |89| 
        CMP       A1, #0                ; [DPU_V7M3_PIPE] |89| 
        BNE       ||$C$L3||             ; [DPU_V7M3_PIPE] |89| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |89| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 90,column 1,is_stmt,isa 1
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        POP       {A4, PC}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x5a)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.clink
	.thumbfunc UART_InUDec
	.thumb
	.global	UART_InUDec

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("UART_InUDec")
	.dwattr $C$DW$15, DW_AT_low_pc(UART_InUDec)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("UART_InUDec")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x64)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$15, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x64)
	.dwattr $C$DW$15, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../UART.c",line 100,column 27,is_stmt,address UART_InUDec,isa 1

	.dwfde $C$DW$CIE, UART_InUDec
;----------------------------------------------------------------------
; 100 | uint32_t UART_InUDec(void){                                            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART_InUDec                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                 *
;*****************************************************************************
UART_InUDec:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("number")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg13 0]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("length")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("length")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg13 4]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("character")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("character")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg13 8]

	.dwpsn	file "../UART.c",line 101,column 16,is_stmt,isa 1
;----------------------------------------------------------------------
; 101 | uint32_t number=0, length=0;                                           
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |101| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |101| 
	.dwpsn	file "../UART.c",line 101,column 26,is_stmt,isa 1
;----------------------------------------------------------------------
; 102 | char character;                                                        
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |101| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |101| 
	.dwpsn	file "../UART.c",line 103,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 103 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("UART_InChar")
	.dwattr $C$DW$19, DW_AT_TI_call

        BL        UART_InChar           ; [DPU_V7M3_PIPE] |103| 
        ; CALL OCCURS {UART_InChar }     ; [] |103| 
        STRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |103| 
	.dwpsn	file "../UART.c",line 104,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 104 | while(character != CR){ // accepts until <enter> is typed              
; 105 | // The next line checks that the input is a digit, 0-9.                
; 106 | // If the character is not 0-9, it is ignored and not echoed           
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |104| 
        CMP       A1, #13               ; [DPU_V7M3_PIPE] |104| 
        BEQ       ||$C$L8||             ; [DPU_V7M3_PIPE] |104| 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |104| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L5||
;*
;*   Loop source line                : 104
;*   Loop closing brace source line  : 120
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L5||:    
	.dwpsn	file "../UART.c",line 107,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 107 | if((character>='0') && (character<='9')) {                             
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |107| 
        CMP       A1, #48               ; [DPU_V7M3_PIPE] |107| 
        BLT       ||$C$L6||             ; [DPU_V7M3_PIPE] |107| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |107| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |107| 
        CMP       A1, #57               ; [DPU_V7M3_PIPE] |107| 
        BGT       ||$C$L6||             ; [DPU_V7M3_PIPE] |107| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |107| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 108,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 108 | number = 10*number+(character-'0');   // this line overflows if above 4
;     | 294967295                                                              
;----------------------------------------------------------------------
        LDR       A3, [SP, #0]          ; [DPU_V7M3_PIPE] |108| 
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |108| 
        LSLS      A1, A3, #1            ; [DPU_V7M3_PIPE] |108| 
        SUBS      A2, A2, #48           ; [DPU_V7M3_PIPE] |108| 
        ADD       A1, A1, A3, LSL #3    ; [DPU_V7M3_PIPE] |108| 
        ADDS      A2, A2, A1            ; [DPU_V7M3_PIPE] |108| 
        STR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |108| 
	.dwpsn	file "../UART.c",line 109,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 109 | length++;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |109| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |109| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |109| 
	.dwpsn	file "../UART.c",line 110,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 110 | UART_OutChar(character);                                               
; 112 | // If the input is a backspace, then the return number is              
; 113 | // changed and a backspace is outputted to the screen                  
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |110| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$20, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |110| 
        ; CALL OCCURS {UART_OutChar }    ; [] |110| 
        B         ||$C$L7||             ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L7||}      ; [] 
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "../UART.c",line 114,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 114 | else if((character==BS) && length){                                    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |114| 
        CMP       A1, #8                ; [DPU_V7M3_PIPE] |114| 
        BNE       ||$C$L7||             ; [DPU_V7M3_PIPE] |114| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |114| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |114| 
        CBZ       A1, ||$C$L7||         ; [] 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |114| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 115,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 115 | number /= 10;                                                          
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |115| 
        MOVS      A1, #10               ; [DPU_V7M3_PIPE] |115| 
        UDIV      A1, A2, A1            ; [DPU_V7M3_PIPE] |115| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |115| 
	.dwpsn	file "../UART.c",line 116,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 116 | length--;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |116| 
        SUBS      A1, A1, #1            ; [DPU_V7M3_PIPE] |116| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |116| 
	.dwpsn	file "../UART.c",line 117,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 117 | UART_OutChar(character);                                               
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |117| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$21, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |117| 
        ; CALL OCCURS {UART_OutChar }    ; [] |117| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
	.dwpsn	file "../UART.c",line 119,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 119 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("UART_InChar")
	.dwattr $C$DW$22, DW_AT_TI_call

        BL        UART_InChar           ; [DPU_V7M3_PIPE] |119| 
        ; CALL OCCURS {UART_InChar }     ; [] |119| 
        STRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |119| 
	.dwpsn	file "../UART.c",line 104,column 9,is_stmt,isa 1
        LDRB      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |104| 
        CMP       A1, #13               ; [DPU_V7M3_PIPE] |104| 
        BNE       ||$C$L5||             ; [DPU_V7M3_PIPE] |104| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |104| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
	.dwpsn	file "../UART.c",line 121,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 121 | return number;                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |121| 
	.dwpsn	file "../UART.c",line 122,column 1,is_stmt,isa 1
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        POP       {A2, A3, A4, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x7a)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.clink
	.thumbfunc UART_OutUDec
	.thumb
	.global	UART_OutUDec

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("UART_OutUDec")
	.dwattr $C$DW$24, DW_AT_low_pc(UART_OutUDec)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("UART_OutUDec")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$24, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x81)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 129,column 30,is_stmt,address UART_OutUDec,isa 1

	.dwfde $C$DW$CIE, UART_OutUDec
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("n")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: UART_OutUDec                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
UART_OutUDec:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("n")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 129 | void UART_OutUDec(uint32_t n){                                         
; 130 | // This function uses recursion to convert decimal number              
; 131 | //   of unspecified length as an ASCII string                          
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |129| 
	.dwpsn	file "../UART.c",line 132,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 132 | if(n >= 10){                                                           
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |132| 
        CMP       A1, #10               ; [DPU_V7M3_PIPE] |132| 
        BCC       ||$C$L9||             ; [DPU_V7M3_PIPE] |132| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |132| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 133,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 133 | UART_OutUDec(n/10);                                                    
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |133| 
        MOVS      A1, #10               ; [DPU_V7M3_PIPE] |133| 
        UDIV      A1, A2, A1            ; [DPU_V7M3_PIPE] |133| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("UART_OutUDec")
	.dwattr $C$DW$27, DW_AT_TI_call

        BL        UART_OutUDec          ; [DPU_V7M3_PIPE] |133| 
        ; CALL OCCURS {UART_OutUDec }    ; [] |133| 
	.dwpsn	file "../UART.c",line 134,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 134 | n = n%10;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |134| 
        MOVS      A3, #10               ; [DPU_V7M3_PIPE] |134| 
        UDIV      A2, A1, A3            ; [DPU_V7M3_PIPE] |134| 
        MULS      A2, A2, A3            ; [DPU_V7M3_PIPE] |134| 
        SUBS      A1, A1, A2            ; [DPU_V7M3_PIPE] |134| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |134| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
	.dwpsn	file "../UART.c",line 136,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 136 | UART_OutChar(n+'0'); /* n is between 0 and 9 */                        
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |136| 
        ADDS      A1, A1, #48           ; [DPU_V7M3_PIPE] |136| 
        UXTB      A1, A1                ; [DPU_V7M3_PIPE] |136| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$28, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |136| 
        ; CALL OCCURS {UART_OutChar }    ; [] |136| 
	.dwpsn	file "../UART.c",line 137,column 1,is_stmt,isa 1
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        POP       {A4, PC}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x89)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text"
	.clink
	.thumbfunc UART_InUHex
	.thumb
	.global	UART_InUHex

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("UART_InUHex")
	.dwattr $C$DW$30, DW_AT_low_pc(UART_InUHex)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("UART_InUHex")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$30, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x95)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$30, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x95)
	.dwattr $C$DW$30, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../UART.c",line 149,column 27,is_stmt,address UART_InUHex,isa 1

	.dwfde $C$DW$CIE, UART_InUHex
;----------------------------------------------------------------------
; 149 | uint32_t UART_InUHex(void){                                            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART_InUHex                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,LR,SR,FPEXC,FPSCR                          *
;*   Regs Used         : A1,A2,SP,LR,SR,FPEXC,FPSCR                          *
;*   Local Frame Size  : 0 Args + 16 Auto + 4 Save = 20 byte                 *
;*****************************************************************************
UART_InUHex:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {LR}                  ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
        SUB       SP, SP, #20           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 24
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("number")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_breg13 0]

$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("digit")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("digit")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg13 4]

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("length")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("length")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg13 8]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("character")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("character")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg13 12]

	.dwpsn	file "../UART.c",line 150,column 16,is_stmt,isa 1
;----------------------------------------------------------------------
; 150 | uint32_t number=0, digit, length=0;                                    
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |150| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |150| 
	.dwpsn	file "../UART.c",line 150,column 33,is_stmt,isa 1
;----------------------------------------------------------------------
; 151 | char character;                                                        
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |150| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |150| 
	.dwpsn	file "../UART.c",line 152,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 152 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("UART_InChar")
	.dwattr $C$DW$35, DW_AT_TI_call

        BL        UART_InChar           ; [DPU_V7M3_PIPE] |152| 
        ; CALL OCCURS {UART_InChar }     ; [] |152| 
        STRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |152| 
	.dwpsn	file "../UART.c",line 153,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 153 | while(character != CR){                                                
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |153| 
        CMP       A1, #13               ; [DPU_V7M3_PIPE] |153| 
        BEQ       ||$C$L16||            ; [DPU_V7M3_PIPE] |153| 
        ; BRANCHCC OCCURS {||$C$L16||}   ; [] |153| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L10||
;*
;*   Loop source line                : 153
;*   Loop closing brace source line  : 177
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L10||:    
	.dwpsn	file "../UART.c",line 154,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 154 | digit = 0x10; // assume bad                                            
;----------------------------------------------------------------------
        MOVS      A1, #16               ; [DPU_V7M3_PIPE] |154| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |154| 
	.dwpsn	file "../UART.c",line 155,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 155 | if((character>='0') && (character<='9')){                              
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |155| 
        CMP       A1, #48               ; [DPU_V7M3_PIPE] |155| 
        BLT       ||$C$L11||            ; [DPU_V7M3_PIPE] |155| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |155| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |155| 
        CMP       A1, #57               ; [DPU_V7M3_PIPE] |155| 
        BGT       ||$C$L11||            ; [DPU_V7M3_PIPE] |155| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |155| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 156,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 156 | digit = character-'0';                                                 
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |156| 
        SUBS      A1, A1, #48           ; [DPU_V7M3_PIPE] |156| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |156| 
        B         ||$C$L13||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L13||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L11||:    
	.dwpsn	file "../UART.c",line 158,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 158 | else if((character>='A') && (character<='F')){                         
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |158| 
        CMP       A1, #65               ; [DPU_V7M3_PIPE] |158| 
        BLT       ||$C$L12||            ; [DPU_V7M3_PIPE] |158| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |158| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |158| 
        CMP       A1, #70               ; [DPU_V7M3_PIPE] |158| 
        BGT       ||$C$L12||            ; [DPU_V7M3_PIPE] |158| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |158| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 159,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 159 | digit = (character-'A')+0xA;                                           
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |159| 
        SUBS      A1, A1, #55           ; [DPU_V7M3_PIPE] |159| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |159| 
        B         ||$C$L13||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L13||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "../UART.c",line 161,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 161 | else if((character>='a') && (character<='f')){                         
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |161| 
        CMP       A1, #97               ; [DPU_V7M3_PIPE] |161| 
        BLT       ||$C$L13||            ; [DPU_V7M3_PIPE] |161| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |161| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |161| 
        CMP       A1, #102              ; [DPU_V7M3_PIPE] |161| 
        BGT       ||$C$L13||            ; [DPU_V7M3_PIPE] |161| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |161| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 162,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 162 | digit = (character-'a')+0xA;                                           
; 164 | // If the character is not 0-9 or A-F, it is ignored and not echoed    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |162| 
        SUBS      A1, A1, #87           ; [DPU_V7M3_PIPE] |162| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |162| 
;* --------------------------------------------------------------------------*
||$C$L13||:    
	.dwpsn	file "../UART.c",line 165,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 165 | if(digit <= 0xF){                                                      
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |165| 
        CMP       A1, #15               ; [DPU_V7M3_PIPE] |165| 
        BHI       ||$C$L14||            ; [DPU_V7M3_PIPE] |165| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |165| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 166,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 166 | number = number*0x10+digit;                                            
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |166| 
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |166| 
        ADD       A1, A1, A2, LSL #4    ; [DPU_V7M3_PIPE] |166| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |166| 
	.dwpsn	file "../UART.c",line 167,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 167 | length++;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |167| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |167| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |167| 
	.dwpsn	file "../UART.c",line 168,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 168 | UART_OutChar(character);                                               
; 170 | // Backspace outputted and return value changed if a backspace is input
;     | ted                                                                    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |168| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$36, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |168| 
        ; CALL OCCURS {UART_OutChar }    ; [] |168| 
        B         ||$C$L15||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L15||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L14||:    
	.dwpsn	file "../UART.c",line 171,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 171 | else if((character==BS) && length){                                    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |171| 
        CMP       A1, #8                ; [DPU_V7M3_PIPE] |171| 
        BNE       ||$C$L15||            ; [DPU_V7M3_PIPE] |171| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |171| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |171| 
        CBZ       A1, ||$C$L15||        ; [] 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |171| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 172,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 172 | number /= 0x10;                                                        
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |172| 
        LSRS      A1, A1, #4            ; [DPU_V7M3_PIPE] |172| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |172| 
	.dwpsn	file "../UART.c",line 173,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 173 | length--;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |173| 
        SUBS      A1, A1, #1            ; [DPU_V7M3_PIPE] |173| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |173| 
	.dwpsn	file "../UART.c",line 174,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 174 | UART_OutChar(character);                                               
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |174| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$37, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |174| 
        ; CALL OCCURS {UART_OutChar }    ; [] |174| 
;* --------------------------------------------------------------------------*
||$C$L15||:    
	.dwpsn	file "../UART.c",line 176,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 176 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("UART_InChar")
	.dwattr $C$DW$38, DW_AT_TI_call

        BL        UART_InChar           ; [DPU_V7M3_PIPE] |176| 
        ; CALL OCCURS {UART_InChar }     ; [] |176| 
        STRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |176| 
	.dwpsn	file "../UART.c",line 153,column 9,is_stmt,isa 1
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |153| 
        CMP       A1, #13               ; [DPU_V7M3_PIPE] |153| 
        BNE       ||$C$L10||            ; [DPU_V7M3_PIPE] |153| 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |153| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
	.dwpsn	file "../UART.c",line 178,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 178 | return number;                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |178| 
	.dwpsn	file "../UART.c",line 179,column 1,is_stmt,isa 1
        ADD       SP, SP, #20           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 4
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return

        POP       {PC}                  ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0xb3)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.clink
	.thumbfunc UART_OutUHex
	.thumb
	.global	UART_OutUHex

$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("UART_OutUHex")
	.dwattr $C$DW$40, DW_AT_low_pc(UART_OutUHex)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("UART_OutUHex")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0xba)
	.dwattr $C$DW$40, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$40, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$40, DW_AT_decl_line(0xba)
	.dwattr $C$DW$40, DW_AT_decl_column(0x06)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 186,column 35,is_stmt,address UART_OutUHex,isa 1

	.dwfde $C$DW$CIE, UART_OutUHex
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("number")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: UART_OutUHex                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
UART_OutUHex:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("number")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
; 186 | void UART_OutUHex(uint32_t number){                                    
; 187 | // This function uses recursion to convert the number of               
; 188 | //   unspecified length as an ASCII string                             
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |186| 
	.dwpsn	file "../UART.c",line 189,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 189 | if(number >= 0x10){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |189| 
        CMP       A1, #16               ; [DPU_V7M3_PIPE] |189| 
        BCC       ||$C$L17||            ; [DPU_V7M3_PIPE] |189| 
        ; BRANCHCC OCCURS {||$C$L17||}   ; [] |189| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 190,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 190 | UART_OutUHex(number/0x10);                                             
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |190| 
        LSRS      A1, A1, #4            ; [DPU_V7M3_PIPE] |190| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("UART_OutUHex")
	.dwattr $C$DW$43, DW_AT_TI_call

        BL        UART_OutUHex          ; [DPU_V7M3_PIPE] |190| 
        ; CALL OCCURS {UART_OutUHex }    ; [] |190| 
	.dwpsn	file "../UART.c",line 191,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 191 | UART_OutUHex(number%0x10);                                             
; 193 | else{                                                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |191| 
        AND       A1, A1, #15           ; [DPU_V7M3_PIPE] |191| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("UART_OutUHex")
	.dwattr $C$DW$44, DW_AT_TI_call

        BL        UART_OutUHex          ; [DPU_V7M3_PIPE] |191| 
        ; CALL OCCURS {UART_OutUHex }    ; [] |191| 
        B         ||$C$L19||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L19||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L17||:    
	.dwpsn	file "../UART.c",line 194,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 194 | if(number < 0xA){                                                      
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |194| 
        CMP       A1, #10               ; [DPU_V7M3_PIPE] |194| 
        BCS       ||$C$L18||            ; [DPU_V7M3_PIPE] |194| 
        ; BRANCHCC OCCURS {||$C$L18||}   ; [] |194| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 195,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 195 | UART_OutChar(number+'0');                                              
; 197 | else{                                                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |195| 
        ADDS      A1, A1, #48           ; [DPU_V7M3_PIPE] |195| 
        UXTB      A1, A1                ; [DPU_V7M3_PIPE] |195| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$45, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |195| 
        ; CALL OCCURS {UART_OutChar }    ; [] |195| 
        B         ||$C$L19||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L19||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L18||:    
	.dwpsn	file "../UART.c",line 198,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 198 | UART_OutChar((number-0x0A)+'A');                                       
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |198| 
        ADDS      A1, A1, #55           ; [DPU_V7M3_PIPE] |198| 
        UXTB      A1, A1                ; [DPU_V7M3_PIPE] |198| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$46, DW_AT_TI_call

        BL        UART_OutChar          ; [DPU_V7M3_PIPE] |198| 
        ; CALL OCCURS {UART_OutChar }    ; [] |198| 
	.dwpsn	file "../UART.c",line 201,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L19||:    
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        POP       {A4, PC}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$40, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0xc9)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text"
	.clink
	.thumbfunc UART_InString
	.thumb
	.global	UART_InString

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("UART_InString")
	.dwattr $C$DW$48, DW_AT_low_pc(UART_InString)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("UART_InString")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0xd7)
	.dwattr $C$DW$48, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$48, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$48, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$48, DW_AT_decl_column(0x06)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../UART.c",line 215,column 47,is_stmt,address UART_InString,isa 1

	.dwfde $C$DW$CIE, UART_InString
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("bufPt")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("bufPt")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg0]

$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_name("max")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("max")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: UART_InString                                              *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                 *
;*****************************************************************************
UART_InString:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("bufPt")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("bufPt")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg13 0]

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("length")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("length")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg13 4]

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("max")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("max")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg13 8]

$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("character")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("character")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg13 10]

;----------------------------------------------------------------------
; 215 | void UART_InString(char *bufPt, uint16_t max) {                        
;----------------------------------------------------------------------
        STRH      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |215| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |215| 
	.dwpsn	file "../UART.c",line 216,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
; 216 | int length=0;                                                          
; 217 | char character;                                                        
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |216| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |216| 
	.dwpsn	file "../UART.c",line 218,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 218 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("UART_InChar")
	.dwattr $C$DW$55, DW_AT_TI_call

        BL        UART_InChar           ; [DPU_V7M3_PIPE] |218| 
        ; CALL OCCURS {UART_InChar }     ; [] |218| 
        STRB      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |218| 
	.dwpsn	file "../UART.c",line 219,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 219 | while(character != CR){                                                
;----------------------------------------------------------------------
        LDRB      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |219| 
        CMP       A1, #13               ; [DPU_V7M3_PIPE] |219| 
        BEQ       ||$C$L23||            ; [DPU_V7M3_PIPE] |219| 
        ; BRANCHCC OCCURS {||$C$L23||}   ; [] |219| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L20||
;*
;*   Loop source line                : 219
;*   Loop closing brace source line  : 234
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L20||:    
	.dwpsn	file "../UART.c",line 220,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 220 | if(character == BS){                                                   
;----------------------------------------------------------------------
        LDRB      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |220| 
        CMP       A1, #8                ; [DPU_V7M3_PIPE] |220| 
        BNE       ||$C$L21||            ; [DPU_V7M3_PIPE] |220| 
        ; BRANCHCC OCCURS {||$C$L21||}   ; [] |220| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 221,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 221 | if(length){                                                            
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |221| 
        CBZ       A1, ||$C$L22||        ; [] 
        ; BRANCHCC OCCURS {||$C$L22||}   ; [] |221| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 222,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 222 | bufPt--;                                                               
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |222| 
        SUBS      A1, A1, #1            ; [DPU_V7M3_PIPE] |222| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |222| 
	.dwpsn	file "../UART.c",line 223,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 223 | length--;                                                              
; 224 | // UART_OutChar(BS);                                                   
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |223| 
        SUBS      A1, A1, #1            ; [DPU_V7M3_PIPE] |223| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |223| 
        B         ||$C$L22||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L22||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L21||:    
	.dwpsn	file "../UART.c",line 227,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 227 | else if(length < max){                                                 
;----------------------------------------------------------------------
        LDRH      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |227| 
        LDR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |227| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |227| 
        BLE       ||$C$L22||            ; [DPU_V7M3_PIPE] |227| 
        ; BRANCHCC OCCURS {||$C$L22||}   ; [] |227| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 228,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 228 | *bufPt = character;                                                    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |228| 
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |228| 
        STRB      A1, [A2, #0]          ; [DPU_V7M3_PIPE] |228| 
	.dwpsn	file "../UART.c",line 229,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 229 | bufPt++;                                                               
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |229| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |229| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |229| 
	.dwpsn	file "../UART.c",line 230,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 230 | length++;                                                              
; 231 | //  UART_OutChar(character);                                           
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |230| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |230| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |230| 
;* --------------------------------------------------------------------------*
||$C$L22||:    
	.dwpsn	file "../UART.c",line 233,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 233 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("UART_InChar")
	.dwattr $C$DW$56, DW_AT_TI_call

        BL        UART_InChar           ; [DPU_V7M3_PIPE] |233| 
        ; CALL OCCURS {UART_InChar }     ; [] |233| 
        STRB      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |233| 
	.dwpsn	file "../UART.c",line 219,column 9,is_stmt,isa 1
        LDRB      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |219| 
        CMP       A1, #13               ; [DPU_V7M3_PIPE] |219| 
        BNE       ||$C$L20||            ; [DPU_V7M3_PIPE] |219| 
        ; BRANCHCC OCCURS {||$C$L20||}   ; [] |219| 
;* --------------------------------------------------------------------------*
||$C$L23||:    
	.dwpsn	file "../UART.c",line 235,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 235 | *bufPt = 0;                                                            
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |235| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |235| 
        STRB      A2, [A1, #0]          ; [DPU_V7M3_PIPE] |235| 
	.dwpsn	file "../UART.c",line 236,column 1,is_stmt,isa 1
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return

        POP       {A2, A3, A4, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0xec)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$48

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits		0x4000c018,32

	.align	4
||$C$CON2||:	.bits		0x4000c000,32


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
	.battr "aeabi", Tag_File, 1, Tag_ABI_VFP_args(3)
	.battr "TI", Tag_File, 1, Tag_FP_interface(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x10)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$58, DW_AT_name("__max_align1")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0c)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$59, DW_AT_name("__max_align2")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x16)

$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x12)

$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x19)

$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("int8_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x18)

$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x13)

$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x13)

$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x1a)

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x14)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x11)

$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x13)

$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x1a)

$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("int16_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x14)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x1a)

$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x19)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x14)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x14)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x1a)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x1a)

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x15)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x0d)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x13)

$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x0e)

$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x0e)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x0e)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x0e)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x0e)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x15)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x15)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x0f)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x13)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x13)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x13)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x13)

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x19)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x13)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x19)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x13)

$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x18)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x13)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x1a)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x13)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x13)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x15)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x13)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x13)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x13)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("__register_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x13)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x13)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x13)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("int32_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x14)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x0e)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x17)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x14)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x14)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x14)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x14)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("__size_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x14)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x14)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("__time_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x19)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x14)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x14)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x14)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x1a)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x14)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x1a)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x14)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x19)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x14)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x1a)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x1a)

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x14)

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x14)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x16)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x14)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x14)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x14)

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x15)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x16)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("__key_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x0f)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x0f)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("_off_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x0e)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("__off_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x18)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x14)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x13)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__id_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x13)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x13)

$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x19)

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x13)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x1a)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x13)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x15)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x13)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x13)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("int64_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x1c)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x14)

$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x14)

$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x14)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x14)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x14)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x14)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x1a)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x14)

$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x1a)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x14)

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x19)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x16)

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$144	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$144, DW_AT_name("__float_t")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$144, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$145	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$145, DW_AT_name("__double_t")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$145, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x11)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x20)


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$148	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$148, DW_AT_address_class(0x20)

$C$DW$T$149	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$149, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$149, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x16)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$150	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$150, DW_AT_address_class(0x20)

$C$DW$T$151	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$151, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$151, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x19)


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("__va_list_t")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x04)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$60, DW_AT_name("__ap")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("__ap")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

$C$DW$T$152	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$152, DW_AT_name("__va_list")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$152, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$152, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$T$152, DW_AT_decl_column(0x03)

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

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("A1")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg0]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("A2")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg1]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("A3")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg2]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("A4")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg3]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("V1")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg4]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("V2")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg5]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("V3")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg6]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("V4")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg7]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("V5")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg8]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("V6")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg9]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("V7")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg10]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("V8")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg11]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("V9")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg12]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("SP")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg13]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("LR")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg14]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("PC")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg15]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("SR")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg17]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("AP")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg7]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("D0")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x40]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("D0_hi")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x41]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("D1")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x42]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("D1_hi")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x43]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("D2")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x44]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("D2_hi")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x45]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("D3")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x46]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("D3_hi")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x47]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("D4")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x48]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("D4_hi")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x49]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("D5")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("D5_hi")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("D6")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("D6_hi")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("D7")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("D7_hi")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("D8")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x50]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("D8_hi")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x51]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("D9")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x52]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("D9_hi")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x53]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("D10")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x54]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("D10_hi")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x55]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("D11")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x56]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("D11_hi")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x57]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("D12")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x58]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("D12_hi")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x59]

$C$DW$105	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$105, DW_AT_name("D13")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$106	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$106, DW_AT_name("D13_hi")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$107	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$107, DW_AT_name("D14")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$108	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$108, DW_AT_name("D14_hi")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$109	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$109, DW_AT_name("D15")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$110	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$110, DW_AT_name("D15_hi")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$111	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$111, DW_AT_name("FPEXC")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg18]

$C$DW$112	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$112, DW_AT_name("FPSCR")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU

