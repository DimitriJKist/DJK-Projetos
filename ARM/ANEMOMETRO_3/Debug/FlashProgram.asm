;******************************************************************************
;* TI ARM G3 C/C++ Codegen                                              PC v20.2.7.LTS *
;* Date/Time created: Tue Dec 12 15:31:22 2023                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../FlashProgram.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM G3 C/C++ Codegen PC v20.2.7.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\dimit\workspace_v12\ANEMOMETRO_3\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("DisableInterrupts")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("DisableInterrupts")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("EnableInterrupts")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("EnableInterrupts")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$2, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$2

;	C:\ti\ccs1230\ccs\tools\compiler\ti-cgt-arm_20.2.7.LTS\bin\armacpia.exe -@C:\\Users\\dimit\\AppData\\Local\\Temp\\{89767B78-1803-45BC-B753-15906152D434} 
	.sect	".text"
	.clink
	.thumbfunc WriteAddrValid
	.thumb

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("WriteAddrValid")
	.dwattr $C$DW$3, DW_AT_low_pc(WriteAddrValid)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("WriteAddrValid")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("../FlashProgram.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x35)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$3, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x35)
	.dwattr $C$DW$3, DW_AT_decl_column(0x0c)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../FlashProgram.c",line 53,column 41,is_stmt,address WriteAddrValid,isa 1

	.dwfde $C$DW$CIE, WriteAddrValid
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("addr")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: WriteAddrValid                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
WriteAddrValid:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("addr")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
;  53 | static int WriteAddrValid(uint32_t addr){                              
;  54 | // check if address offset works for writing                           
;  55 | // must be 4-byte aligned                                              
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |53| 
	.dwpsn	file "../FlashProgram.c",line 56,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  56 | return (((addr % 4) == 0) && (addr <= FLASH_FMA_OFFSET_MAX));          
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |56| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |56| 
        TST       A2, #3                ; [DPU_V7M3_PIPE] |56| 
        BNE       ||$C$L1||             ; [DPU_V7M3_PIPE] |56| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |56| 
;* --------------------------------------------------------------------------*
        LDR       A3, $C$CON1           ; [DPU_V7M3_PIPE] |56| 
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |56| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |56| 
        BCC       ||$C$L1||             ; [DPU_V7M3_PIPE] |56| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |56| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |56| 
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../FlashProgram.c",line 57,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../FlashProgram.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x39)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.clink
	.thumbfunc MassWriteAddrValid
	.thumb

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("MassWriteAddrValid")
	.dwattr $C$DW$7, DW_AT_low_pc(MassWriteAddrValid)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("MassWriteAddrValid")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../FlashProgram.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x3c)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$7, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$7, DW_AT_decl_column(0x0c)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../FlashProgram.c",line 60,column 45,is_stmt,address MassWriteAddrValid,isa 1

	.dwfde $C$DW$CIE, MassWriteAddrValid
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("addr")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: MassWriteAddrValid                                         *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
MassWriteAddrValid:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("addr")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
;  60 | static int MassWriteAddrValid(uint32_t addr){                          
;  61 | // check if address offset works for mass writing                      
;  62 | // must be 32-word (128-byte) aligned                                  
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |60| 
	.dwpsn	file "../FlashProgram.c",line 63,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  63 | return (((addr % 128) == 0) && (addr <= FLASH_FMA_OFFSET_MAX));        
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |63| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |63| 
        TST       A2, #127              ; [DPU_V7M3_PIPE] |63| 
        BNE       ||$C$L2||             ; [DPU_V7M3_PIPE] |63| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |63| 
;* --------------------------------------------------------------------------*
        LDR       A3, $C$CON1           ; [DPU_V7M3_PIPE] |63| 
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |63| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |63| 
        BCC       ||$C$L2||             ; [DPU_V7M3_PIPE] |63| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |63| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |63| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../FlashProgram.c",line 64,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../FlashProgram.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x40)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.thumbfunc EraseAddrValid
	.thumb

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("EraseAddrValid")
	.dwattr $C$DW$11, DW_AT_low_pc(EraseAddrValid)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("EraseAddrValid")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("../FlashProgram.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x43)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$11, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x43)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0c)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../FlashProgram.c",line 67,column 41,is_stmt,address EraseAddrValid,isa 1

	.dwfde $C$DW$CIE, EraseAddrValid
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("addr")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: EraseAddrValid                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
EraseAddrValid:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("addr")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
;  67 | static int EraseAddrValid(uint32_t addr){                              
;  68 | // check if address offset works for erasing                           
;  69 | // must be 1 KB aligned                                                
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |67| 
	.dwpsn	file "../FlashProgram.c",line 70,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  70 | return (((addr % 1024) == 0) && (addr <= FLASH_FMA_OFFSET_MAX));       
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |70| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |70| 
        BFC       A2, #10, #22          ; [DPU_V7M3_PIPE] |70| 
        CBNZ      A2, ||$C$L3||         ; [] 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |70| 
;* --------------------------------------------------------------------------*
        LDR       A3, $C$CON1           ; [DPU_V7M3_PIPE] |70| 
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |70| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |70| 
        BCC       ||$C$L3||             ; [DPU_V7M3_PIPE] |70| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |70| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |70| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../FlashProgram.c",line 71,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../FlashProgram.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.clink
	.thumbfunc Flash_Init
	.thumb
	.global	Flash_Init

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("Flash_Init")
	.dwattr $C$DW$15, DW_AT_low_pc(Flash_Init)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("Flash_Init")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../FlashProgram.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$15, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x54)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../FlashProgram.c",line 84,column 44,is_stmt,address Flash_Init,isa 1

	.dwfde $C$DW$CIE, Flash_Init
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("systemClockFreqMHz")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("systemClockFreqMHz")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: Flash_Init                                                 *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : A1,SP,LR                                            *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Flash_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("systemClockFreqMHz")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("systemClockFreqMHz")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
;  84 | void Flash_Init(uint8_t systemClockFreqMHz){                           
;  85 | // do nothing; flash and EEPROM memory configured in PLL_Init()        
;  86 | // if the processor is executing code out of flash memory,             
;  87 | // presumably everything is configured correctly                       
;----------------------------------------------------------------------
        STRB      A1, [SP, #0]          ; [DPU_V7M3_PIPE] |84| 
	.dwpsn	file "../FlashProgram.c",line 88,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../FlashProgram.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x58)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.clink
	.thumbfunc Flash_Write
	.thumb
	.global	Flash_Write

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("Flash_Write")
	.dwattr $C$DW$19, DW_AT_low_pc(Flash_Write)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("Flash_Write")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$19, DW_AT_TI_begin_file("../FlashProgram.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x60)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$19, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x60)
	.dwattr $C$DW$19, DW_AT_decl_column(0x05)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../FlashProgram.c",line 96,column 46,is_stmt,address Flash_Write,isa 1

	.dwfde $C$DW$CIE, Flash_Write
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("addr")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("data")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: Flash_Write                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                 *
;*****************************************************************************
Flash_Write:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("addr")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg13 0]

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("data")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg13 4]

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("flashkey")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("flashkey")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg13 8]

;----------------------------------------------------------------------
;  96 | int Flash_Write(uint32_t addr, uint32_t data){ //mudei de unit 32 para
;     | 16                                                                     
;  97 | uint32_t flashkey;                                                     
;----------------------------------------------------------------------
        STR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |96| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |96| 
	.dwpsn	file "../FlashProgram.c",line 98,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  98 | if(WriteAddrValid(addr)){                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |98| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("WriteAddrValid")
	.dwattr $C$DW$25, DW_AT_TI_call

        BL        WriteAddrValid        ; [DPU_V7M3_PIPE] |98| 
        ; CALL OCCURS {WriteAddrValid }  ; [] |98| 
        CBZ       A1, ||$C$L8||         ; [] 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |98| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 99,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  99 | DisableInterrupts();                            // may be optional step
; 100 |                                                 // wait for hardware id
;     | le                                                                     
;----------------------------------------------------------------------
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("DisableInterrupts")
	.dwattr $C$DW$26, DW_AT_TI_call

        BL        DisableInterrupts     ; [DPU_V7M3_PIPE] |99| 
        ; CALL OCCURS {DisableInterrupts }  ; [] |99| 
	.dwpsn	file "../FlashProgram.c",line 101,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 101 | while(FLASH_FMC_R&(FLASH_FMC_WRITE|FLASH_FMC_ERASE|FLASH_FMC_MERASE)){ 
; 102 |              // to do later: return ERROR if this takes too long       
; 103 |              // remember to re-enable interrupts                       
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L4||
;*
;*   Loop source line                : 101
;*   Loop closing brace source line  : 104
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "../FlashProgram.c",line 104,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 104 | };                                                                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_V7M3_PIPE] |104| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |104| 
        TST       A1, #7                ; [DPU_V7M3_PIPE] |104| 
        BNE       ||$C$L4||             ; [DPU_V7M3_PIPE] |104| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |104| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 105,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 105 | FLASH_FMD_R = data;                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |105| 
        LDR       A2, $C$CON3           ; [DPU_V7M3_PIPE] |105| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |105| 
	.dwpsn	file "../FlashProgram.c",line 106,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 106 | FLASH_FMA_R = addr;                                                    
;----------------------------------------------------------------------
        LDR       A2, $C$CON4           ; [DPU_V7M3_PIPE] |106| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |106| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |106| 
	.dwpsn	file "../FlashProgram.c",line 107,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 107 | if(FLASH_BOOTCFG_R&FLASH_BOOTCFG_KEY){          // by default, the key
;     | is 0xA442                                                              
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |107| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |107| 
        LSRS      A1, A1, #5            ; [DPU_V7M3_PIPE] |107| 
        BCC       ||$C$L5||             ; [DPU_V7M3_PIPE] |107| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |107| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 108,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 108 | flashkey = FLASH_FMC_WRKEY;                                            
; 109 | } else{                                         // otherwise, the key i
;     | s 0x71D5                                                               
;----------------------------------------------------------------------
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |108| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |108| 
        B         ||$C$L6||             ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L6||}      ; [] 
;* --------------------------------------------------------------------------*
||$C$L5||:    
	.dwpsn	file "../FlashProgram.c",line 110,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 110 | flashkey = FLASH_FMC_WRKEY2;                                           
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |110| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |110| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "../FlashProgram.c",line 112,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 112 | FLASH_FMC_R = (flashkey|FLASH_FMC_WRITE);       // start writing       
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |112| 
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |112| 
        ORR       A1, A1, #1            ; [DPU_V7M3_PIPE] |112| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |112| 
	.dwpsn	file "../FlashProgram.c",line 113,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 113 | while(FLASH_FMC_R&FLASH_FMC_WRITE){                                    
; 114 |              // to do later: return ERROR if this takes too long       
; 115 |              // remember to re-enable interrupts                       
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L7||
;*
;*   Loop source line                : 113
;*   Loop closing brace source line  : 116
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L7||:    
	.dwpsn	file "../FlashProgram.c",line 116,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 116 | };           // wait for completion (~3 to 4 usec)                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_V7M3_PIPE] |116| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |116| 
        LSRS      A1, A1, #1            ; [DPU_V7M3_PIPE] |116| 
        BCS       ||$C$L7||             ; [DPU_V7M3_PIPE] |116| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |116| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 117,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 117 | EnableInterrupts();                                                    
;----------------------------------------------------------------------
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("EnableInterrupts")
	.dwattr $C$DW$27, DW_AT_TI_call

        BL        EnableInterrupts      ; [DPU_V7M3_PIPE] |117| 
        ; CALL OCCURS {EnableInterrupts }  ; [] |117| 
	.dwpsn	file "../FlashProgram.c",line 118,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 118 | return NOERROR;                                                        
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |118| 
        B         ||$C$L9||             ; [DPU_V7M3_PIPE] |118| 
        ; BRANCH OCCURS {||$C$L9||}      ; [] |118| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
	.dwpsn	file "../FlashProgram.c",line 120,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 120 | return ERROR;                                                          
;----------------------------------------------------------------------
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |120| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
	.dwpsn	file "../FlashProgram.c",line 121,column 1,is_stmt,isa 1
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        POP       {A2, A3, A4, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../FlashProgram.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x79)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.clink
	.thumbfunc Flash_WriteArray
	.thumb
	.global	Flash_WriteArray

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("Flash_WriteArray")
	.dwattr $C$DW$29, DW_AT_low_pc(Flash_WriteArray)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("Flash_WriteArray")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$29, DW_AT_TI_begin_file("../FlashProgram.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x83)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$29, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x83)
	.dwattr $C$DW$29, DW_AT_decl_column(0x05)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../FlashProgram.c",line 131,column 70,is_stmt,address Flash_WriteArray,isa 1

	.dwfde $C$DW$CIE, Flash_WriteArray
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("source")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("source")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg0]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("addr")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg1]

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("count")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg2]


;*****************************************************************************
;* FUNCTION NAME: Flash_WriteArray                                           *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                 *
;*****************************************************************************
Flash_WriteArray:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("source")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("source")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg13 0]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("addr")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg13 4]

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("count")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg13 8]

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("successfulWrites")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("successfulWrites")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg13 10]

;----------------------------------------------------------------------
; 131 | int Flash_WriteArray(uint32_t *source, uint32_t addr, uint16_t count){ 
;----------------------------------------------------------------------
        STRH      A3, [SP, #8]          ; [DPU_V7M3_PIPE] |131| 
        STR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |131| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |131| 
	.dwpsn	file "../FlashProgram.c",line 132,column 29,is_stmt,isa 1
;----------------------------------------------------------------------
; 132 | uint16_t successfulWrites = 0;                                         
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |132| 
        STRH      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |132| 
	.dwpsn	file "../FlashProgram.c",line 133,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 133 | while((successfulWrites < count) && (Flash_Write(addr + 4*successfulWri
;     | tes, source[successfulWrites]) == NOERROR)){                           
;----------------------------------------------------------------------
        B         ||$C$L11||            ; [DPU_V7M3_PIPE] |133| 
        ; BRANCH OCCURS {||$C$L11||}     ; [] |133| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
	.dwpsn	file "../FlashProgram.c",line 134,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 134 | successfulWrites = successfulWrites + 1;                               
;----------------------------------------------------------------------
        LDRH      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |134| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |134| 
        STRH      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |134| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L11||
;* --------------------------------------------------------------------------*
||$C$L11||:    
	.dwpsn	file "../FlashProgram.c",line 133,column 9,is_stmt,isa 1
        LDRH      A1, [SP, #8]          ; [DPU_V7M3_PIPE] |133| 
        LDRH      A2, [SP, #10]         ; [DPU_V7M3_PIPE] |133| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |133| 
        BLE       ||$C$L12||            ; [DPU_V7M3_PIPE] |133| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |133| 
;* --------------------------------------------------------------------------*
        LDRH      A2, [SP, #10]         ; [DPU_V7M3_PIPE] |133| 
        LDR       A3, [SP, #0]          ; [DPU_V7M3_PIPE] |133| 
        LDRH      A4, [SP, #10]         ; [DPU_V7M3_PIPE] |133| 
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |133| 
        LDR       A2, [A3, +A2, LSL #2] ; [DPU_V7M3_PIPE] |133| 
        ADD       A1, A1, A4, LSL #2    ; [DPU_V7M3_PIPE] |133| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("Flash_Write")
	.dwattr $C$DW$37, DW_AT_TI_call

        BL        Flash_Write           ; [DPU_V7M3_PIPE] |133| 
        ; CALL OCCURS {Flash_Write }     ; [] |133| 
        CMP       A1, #0                ; [DPU_V7M3_PIPE] |133| 
        BEQ       ||$C$L10||            ; [DPU_V7M3_PIPE] |133| 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |133| 
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "../FlashProgram.c",line 136,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 136 | return successfulWrites;                                               
;----------------------------------------------------------------------
        LDRH      A1, [SP, #10]         ; [DPU_V7M3_PIPE] |136| 
	.dwpsn	file "../FlashProgram.c",line 137,column 1,is_stmt,isa 1
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        POP       {A2, A3, A4, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("../FlashProgram.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x89)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text"
	.clink
	.thumbfunc Flash_FastWrite
	.thumb
	.global	Flash_FastWrite

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("Flash_FastWrite")
	.dwattr $C$DW$39, DW_AT_low_pc(Flash_FastWrite)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("Flash_FastWrite")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("../FlashProgram.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x95)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$39, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0x95)
	.dwattr $C$DW$39, DW_AT_decl_column(0x05)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "../FlashProgram.c",line 149,column 69,is_stmt,address Flash_FastWrite,isa 1

	.dwfde $C$DW$CIE, Flash_FastWrite
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("source")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("source")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg0]

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("addr")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg1]

$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("count")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg2]


;*****************************************************************************
;* FUNCTION NAME: Flash_FastWrite                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 24 Auto + 4 Save = 28 byte                 *
;*****************************************************************************
Flash_FastWrite:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {LR}                  ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
        SUB       SP, SP, #28           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 32
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("source")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("source")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg13 0]

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("addr")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg13 4]

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("flashkey")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("flashkey")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg13 8]

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("FLASH_FWBn_R")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("FLASH_FWBn_R")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg13 12]

$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("writes")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("writes")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg13 16]

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("count")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg13 20]

;----------------------------------------------------------------------
; 149 | int Flash_FastWrite(uint32_t *source, uint32_t addr, uint16_t count){  
; 150 | uint32_t flashkey;                                                     
;----------------------------------------------------------------------
        STRH      A3, [SP, #20]         ; [DPU_V7M3_PIPE] |149| 
        STR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |149| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |149| 
	.dwpsn	file "../FlashProgram.c",line 151,column 35,is_stmt,isa 1
;----------------------------------------------------------------------
; 151 | uint32_t volatile *FLASH_FWBn_R = (uint32_t volatile*)0x400FD100;      
;----------------------------------------------------------------------
        LDR       A1, $C$CON8           ; [DPU_V7M3_PIPE] |151| 
        STR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |151| 
	.dwpsn	file "../FlashProgram.c",line 152,column 14,is_stmt,isa 1
;----------------------------------------------------------------------
; 152 | int writes = 0;                                                        
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |152| 
        STR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |152| 
	.dwpsn	file "../FlashProgram.c",line 153,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 153 | if(MassWriteAddrValid(addr)){                                          
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |153| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("MassWriteAddrValid")
	.dwattr $C$DW$49, DW_AT_TI_call

        BL        MassWriteAddrValid    ; [DPU_V7M3_PIPE] |153| 
        ; CALL OCCURS {MassWriteAddrValid }  ; [] |153| 
        CMP       A1, #0                ; [DPU_V7M3_PIPE] |153| 
        BEQ       ||$C$L20||            ; [DPU_V7M3_PIPE] |153| 
        ; BRANCHCC OCCURS {||$C$L20||}   ; [] |153| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 154,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 154 | DisableInterrupts();                            // may be optional step
;----------------------------------------------------------------------
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("DisableInterrupts")
	.dwattr $C$DW$50, DW_AT_TI_call

        BL        DisableInterrupts     ; [DPU_V7M3_PIPE] |154| 
        ; CALL OCCURS {DisableInterrupts }  ; [] |154| 
	.dwpsn	file "../FlashProgram.c",line 155,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 155 | while(FLASH_FMC2_R&FLASH_FMC2_WRBUF){           // wait for hardware id
;     | le                                                                     
; 156 |              // to do later: return ERROR if this takes too long       
; 157 |              // remember to re-enable interrupts                       
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L13||
;*
;*   Loop source line                : 155
;*   Loop closing brace source line  : 158
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L13||:    
	.dwpsn	file "../FlashProgram.c",line 158,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 158 | };                                                                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON9           ; [DPU_V7M3_PIPE] |158| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |158| 
        LSRS      A1, A1, #1            ; [DPU_V7M3_PIPE] |158| 
        BCS       ||$C$L13||            ; [DPU_V7M3_PIPE] |158| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |158| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 159,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 159 | while((writes < 32) && (writes < count)){                              
;----------------------------------------------------------------------
        B         ||$C$L15||            ; [DPU_V7M3_PIPE] |159| 
        ; BRANCH OCCURS {||$C$L15||}     ; [] |159| 
;* --------------------------------------------------------------------------*
||$C$L14||:    
	.dwpsn	file "../FlashProgram.c",line 160,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 160 | FLASH_FWBn_R[writes] = source[writes];                                 
;----------------------------------------------------------------------
        LDR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |160| 
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |160| 
        LDR       A3, [SP, #16]         ; [DPU_V7M3_PIPE] |160| 
        LDR       A4, [SP, #12]         ; [DPU_V7M3_PIPE] |160| 
        LDR       A1, [A2, +A1, LSL #2] ; [DPU_V7M3_PIPE] |160| 
        STR       A1, [A4, +A3, LSL #2] ; [DPU_V7M3_PIPE] |160| 
	.dwpsn	file "../FlashProgram.c",line 161,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 161 | writes = writes + 1;                                                   
;----------------------------------------------------------------------
        LDR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |161| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |161| 
        STR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |161| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L15||
;* --------------------------------------------------------------------------*
||$C$L15||:    
	.dwpsn	file "../FlashProgram.c",line 159,column 11,is_stmt,isa 1
        LDR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |159| 
        CMP       A1, #32               ; [DPU_V7M3_PIPE] |159| 
        BGE       ||$C$L16||            ; [DPU_V7M3_PIPE] |159| 
        ; BRANCHCC OCCURS {||$C$L16||}   ; [] |159| 
;* --------------------------------------------------------------------------*
        LDRH      A1, [SP, #20]         ; [DPU_V7M3_PIPE] |159| 
        LDR       A2, [SP, #16]         ; [DPU_V7M3_PIPE] |159| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |159| 
        BGT       ||$C$L14||            ; [DPU_V7M3_PIPE] |159| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |159| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
	.dwpsn	file "../FlashProgram.c",line 163,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 163 | FLASH_FMA_R = addr;                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |163| 
        LDR       A2, $C$CON4           ; [DPU_V7M3_PIPE] |163| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |163| 
	.dwpsn	file "../FlashProgram.c",line 164,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 164 | if(FLASH_BOOTCFG_R&FLASH_BOOTCFG_KEY){          // by default, the key
;     | is 0xA442                                                              
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |164| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |164| 
        LSRS      A1, A1, #5            ; [DPU_V7M3_PIPE] |164| 
        BCC       ||$C$L17||            ; [DPU_V7M3_PIPE] |164| 
        ; BRANCHCC OCCURS {||$C$L17||}   ; [] |164| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 165,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 165 | flashkey = FLASH_FMC_WRKEY;                                            
; 166 | } else{                                         // otherwise, the key i
;     | s 0x71D5                                                               
;----------------------------------------------------------------------
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |165| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |165| 
        B         ||$C$L18||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L18||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L17||:    
	.dwpsn	file "../FlashProgram.c",line 167,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 167 | flashkey = FLASH_FMC_WRKEY2;                                           
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |167| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |167| 
;* --------------------------------------------------------------------------*
||$C$L18||:    
	.dwpsn	file "../FlashProgram.c",line 169,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 169 | FLASH_FMC2_R = (flashkey|FLASH_FMC2_WRBUF);     // start writing       
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |169| 
        LDR       A2, $C$CON9           ; [DPU_V7M3_PIPE] |169| 
        ORR       A1, A1, #1            ; [DPU_V7M3_PIPE] |169| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |169| 
	.dwpsn	file "../FlashProgram.c",line 170,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 170 | while(FLASH_FMC2_R&FLASH_FMC2_WRBUF){                                  
; 171 |              // to do later: return ERROR if this takes too long       
; 172 |              // remember to re-enable interrupts                       
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L19||
;*
;*   Loop source line                : 170
;*   Loop closing brace source line  : 173
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L19||:    
	.dwpsn	file "../FlashProgram.c",line 173,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 173 | };           // wait for completion (~3 to 4 usec)                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON9           ; [DPU_V7M3_PIPE] |173| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |173| 
        LSRS      A1, A1, #1            ; [DPU_V7M3_PIPE] |173| 
        BCS       ||$C$L19||            ; [DPU_V7M3_PIPE] |173| 
        ; BRANCHCC OCCURS {||$C$L19||}   ; [] |173| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 174,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 174 | EnableInterrupts();                                                    
;----------------------------------------------------------------------
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("EnableInterrupts")
	.dwattr $C$DW$51, DW_AT_TI_call

        BL        EnableInterrupts      ; [DPU_V7M3_PIPE] |174| 
        ; CALL OCCURS {EnableInterrupts }  ; [] |174| 
;* --------------------------------------------------------------------------*
||$C$L20||:    
	.dwpsn	file "../FlashProgram.c",line 176,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 176 | return writes;                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |176| 
	.dwpsn	file "../FlashProgram.c",line 177,column 1,is_stmt,isa 1
        ADD       SP, SP, #28           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 4
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return

        POP       {PC}                  ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../FlashProgram.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0xb1)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text"
	.clink
	.thumbfunc Flash_Erase
	.thumb
	.global	Flash_Erase

$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("Flash_Erase")
	.dwattr $C$DW$53, DW_AT_low_pc(Flash_Erase)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("Flash_Erase")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$53, DW_AT_TI_begin_file("../FlashProgram.c")
	.dwattr $C$DW$53, DW_AT_TI_begin_line(0xb8)
	.dwattr $C$DW$53, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$53, DW_AT_decl_file("../FlashProgram.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$53, DW_AT_decl_column(0x05)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../FlashProgram.c",line 184,column 31,is_stmt,address Flash_Erase,isa 1

	.dwfde $C$DW$CIE, Flash_Erase
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("addr")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: Flash_Erase                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                  *
;*****************************************************************************
Flash_Erase:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("addr")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg13 0]

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("flashkey")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("flashkey")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_breg13 4]

;----------------------------------------------------------------------
; 184 | int Flash_Erase(uint32_t addr){                                        
; 185 | uint32_t flashkey;                                                     
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |184| 
	.dwpsn	file "../FlashProgram.c",line 186,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 186 | if(EraseAddrValid(addr)){                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |186| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("EraseAddrValid")
	.dwattr $C$DW$57, DW_AT_TI_call

        BL        EraseAddrValid        ; [DPU_V7M3_PIPE] |186| 
        ; CALL OCCURS {EraseAddrValid }  ; [] |186| 
        CBZ       A1, ||$C$L25||        ; [] 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |186| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 187,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 187 | DisableInterrupts();                            // may be optional step
; 188 |                                                 // wait for hardware id
;     | le                                                                     
;----------------------------------------------------------------------
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("DisableInterrupts")
	.dwattr $C$DW$58, DW_AT_TI_call

        BL        DisableInterrupts     ; [DPU_V7M3_PIPE] |187| 
        ; CALL OCCURS {DisableInterrupts }  ; [] |187| 
	.dwpsn	file "../FlashProgram.c",line 189,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 189 | while(FLASH_FMC_R&(FLASH_FMC_WRITE|FLASH_FMC_ERASE|FLASH_FMC_MERASE)){ 
; 190 |              // to do later: return ERROR if this takes too long       
; 191 |              // remember to re-enable interrupts                       
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L21||
;*
;*   Loop source line                : 189
;*   Loop closing brace source line  : 192
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L21||:    
	.dwpsn	file "../FlashProgram.c",line 192,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 192 | };                                                                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_V7M3_PIPE] |192| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |192| 
        TST       A1, #7                ; [DPU_V7M3_PIPE] |192| 
        BNE       ||$C$L21||            ; [DPU_V7M3_PIPE] |192| 
        ; BRANCHCC OCCURS {||$C$L21||}   ; [] |192| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 193,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 193 | FLASH_FMA_R = addr;                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |193| 
        LDR       A2, $C$CON4           ; [DPU_V7M3_PIPE] |193| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |193| 
	.dwpsn	file "../FlashProgram.c",line 194,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 194 | if(FLASH_BOOTCFG_R&FLASH_BOOTCFG_KEY){          // by default, the key
;     | is 0xA442                                                              
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |194| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |194| 
        LSRS      A1, A1, #5            ; [DPU_V7M3_PIPE] |194| 
        BCC       ||$C$L22||            ; [DPU_V7M3_PIPE] |194| 
        ; BRANCHCC OCCURS {||$C$L22||}   ; [] |194| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 195,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 195 | flashkey = FLASH_FMC_WRKEY;                                            
; 196 | } else{                                         // otherwise, the key i
;     | s 0x71D5                                                               
;----------------------------------------------------------------------
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |195| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |195| 
        B         ||$C$L23||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L23||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L22||:    
	.dwpsn	file "../FlashProgram.c",line 197,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 197 | flashkey = FLASH_FMC_WRKEY2;                                           
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |197| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |197| 
;* --------------------------------------------------------------------------*
||$C$L23||:    
	.dwpsn	file "../FlashProgram.c",line 199,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 199 | FLASH_FMC_R = (flashkey|FLASH_FMC_ERASE);       // start erasing 1 KB b
;     | lock                                                                   
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |199| 
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |199| 
        ORR       A1, A1, #2            ; [DPU_V7M3_PIPE] |199| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |199| 
	.dwpsn	file "../FlashProgram.c",line 200,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 200 | while(FLASH_FMC_R&FLASH_FMC_ERASE){                                    
; 201 |              // to do later: return ERROR if this takes too long       
; 202 |              // remember to re-enable interrupts                       
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L24||
;*
;*   Loop source line                : 200
;*   Loop closing brace source line  : 203
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L24||:    
	.dwpsn	file "../FlashProgram.c",line 203,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 203 | };           // wait for completion (~3 to 4 usec)                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_V7M3_PIPE] |203| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |203| 
        LSRS      A1, A1, #2            ; [DPU_V7M3_PIPE] |203| 
        BCS       ||$C$L24||            ; [DPU_V7M3_PIPE] |203| 
        ; BRANCHCC OCCURS {||$C$L24||}   ; [] |203| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../FlashProgram.c",line 204,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 204 | EnableInterrupts();                                                    
;----------------------------------------------------------------------
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("EnableInterrupts")
	.dwattr $C$DW$59, DW_AT_TI_call

        BL        EnableInterrupts      ; [DPU_V7M3_PIPE] |204| 
        ; CALL OCCURS {EnableInterrupts }  ; [] |204| 
	.dwpsn	file "../FlashProgram.c",line 205,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 205 | return NOERROR;                                                        
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |205| 
        B         ||$C$L26||            ; [DPU_V7M3_PIPE] |205| 
        ; BRANCH OCCURS {||$C$L26||}     ; [] |205| 
;* --------------------------------------------------------------------------*
||$C$L25||:    
	.dwpsn	file "../FlashProgram.c",line 207,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 207 | return ERROR;                                                          
;----------------------------------------------------------------------
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |207| 
;* --------------------------------------------------------------------------*
||$C$L26||:    
	.dwpsn	file "../FlashProgram.c",line 208,column 1,is_stmt,isa 1
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        POP       {A2, A3, A4, PC}      ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$53, DW_AT_TI_end_file("../FlashProgram.c")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0xd0)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$53

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits		0x3ffff,32

	.align	4
||$C$CON2||:	.bits		0x400fd008,32

	.align	4
||$C$CON3||:	.bits		0x400fd004,32

	.align	4
||$C$CON4||:	.bits		0x400fd000,32

	.align	4
||$C$CON5||:	.bits		0x400fe1d0,32

	.align	4
||$C$CON6||:	.bits		0xa4420000,32

	.align	4
||$C$CON7||:	.bits		0x71d50000,32

	.align	4
||$C$CON8||:	.bits		0x400fd100,32

	.align	4
||$C$CON9||:	.bits		0x400fd020,32

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	DisableInterrupts
	.global	EnableInterrupts

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
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$61, DW_AT_name("__max_align1")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$61, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$61, DW_AT_decl_column(0x0c)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$62, DW_AT_name("__max_align2")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0e)

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

$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x16)

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x12)

$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x19)

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("int8_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x18)

$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x13)

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x13)

$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x1a)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x14)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x11)

$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x13)

$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x1a)

$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("int16_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x14)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x1a)

$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x19)

$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x14)

$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x14)

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x1a)

$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x1a)

$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x15)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x0d)

$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x13)

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x0e)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x0e)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x0e)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x0e)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x0e)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x15)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x15)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x0f)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x13)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x13)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x13)

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x13)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x19)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x13)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x19)

$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x13)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x18)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x13)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x1a)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x13)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x13)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x15)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x13)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x13)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x13)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__register_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x13)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x13)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x13)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("int32_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x14)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x0e)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x17)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x14)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x14)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x14)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x14)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("__size_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x14)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x14)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("__time_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x19)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x14)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x14)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x14)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x1a)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x14)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x1a)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x14)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x19)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x14)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x1a)

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x1a)

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x14)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x14)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x16)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x14)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x14)

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x14)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x15)

$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x20)

$C$DW$T$111	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$51)

$C$DW$T$112	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_address_class(0x20)

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


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$146	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$146, DW_AT_address_class(0x20)

$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x16)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$148	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$148, DW_AT_address_class(0x20)

$C$DW$T$149	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$149, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$149, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x19)


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("__va_list_t")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x04)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$63, DW_AT_name("__ap")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("__ap")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$63, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("__va_list")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x03)

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

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("A1")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg0]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("A2")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg1]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("A3")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg2]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("A4")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg3]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("V1")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg4]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("V2")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg5]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("V3")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg6]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("V4")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg7]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("V5")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg8]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("V6")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg9]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("V7")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg10]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("V8")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg11]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("V9")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg12]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("SP")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg13]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("LR")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg14]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("PC")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg15]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("SR")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg17]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("AP")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg7]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("D0")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x40]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("D0_hi")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x41]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("D1")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x42]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("D1_hi")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x43]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("D2")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x44]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("D2_hi")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x45]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("D3")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x46]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("D3_hi")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x47]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("D4")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x48]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("D4_hi")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x49]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("D5")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("D5_hi")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("D6")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("D6_hi")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("D7")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("D7_hi")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("D8")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x50]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("D8_hi")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x51]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("D9")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x52]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("D9_hi")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x53]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("D10")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x54]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("D10_hi")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x55]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("D11")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x56]

$C$DW$105	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$105, DW_AT_name("D11_hi")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x57]

$C$DW$106	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$106, DW_AT_name("D12")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x58]

$C$DW$107	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$107, DW_AT_name("D12_hi")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x59]

$C$DW$108	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$108, DW_AT_name("D13")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$109	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$109, DW_AT_name("D13_hi")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$110	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$110, DW_AT_name("D14")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$111	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$111, DW_AT_name("D14_hi")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$112	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$112, DW_AT_name("D15")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$113	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$113, DW_AT_name("D15_hi")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$114	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$114, DW_AT_name("FPEXC")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg18]

$C$DW$115	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$115, DW_AT_name("FPSCR")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU

