;******************************************************************************
;* TI ARM G3 C/C++ Codegen                                              PC v20.2.7.LTS *
;* Date/Time created: Fri Jan 17 11:31:07 2025                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Scoreboard.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM G3 C/C++ Codegen PC v20.2.7.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\dimit\workspace_v12\Controle_Digital_Trabalho_Final\Debug")
	.data
	.align	4
	.elfsym	scoreblock,SYM_SIZE(4)
scoreblock:
	.bits		0,32
			; scoreblock @ 0

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("scoreblock")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("scoreblock")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr scoreblock]
	.dwattr $C$DW$1, DW_AT_decl_file("../Scoreboard.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$1, DW_AT_decl_column(0x11)

	.bss	boardptr,4,4
$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("boardptr")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("boardptr")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr boardptr]
	.dwattr $C$DW$2, DW_AT_decl_file("../Scoreboard.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x20)
	.dwattr $C$DW$2, DW_AT_decl_column(0x12)

RAMScoreboard:	.usect	".bss:RAMScoreboard",40,4
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("RAMScoreboard")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("RAMScoreboard")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr RAMScoreboard]
	.dwattr $C$DW$3, DW_AT_decl_file("../Scoreboard.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x21)
	.dwattr $C$DW$3, DW_AT_decl_column(0x10)


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("Flash_Write")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("Flash_Write")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("..\FlashProgram.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x31)
	.dwattr $C$DW$4, DW_AT_decl_column(0x05)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$24)

	.dwendtag $C$DW$4


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("Flash_Erase")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("Flash_Erase")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("..\FlashProgram.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$7, DW_AT_decl_column(0x05)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$24)

	.dwendtag $C$DW$7

;	C:\ti\ccs1230\ccs\tools\compiler\ti-cgt-arm_20.2.7.LTS\bin\armacpia.exe -@C:\\Users\\dimit\\AppData\\Local\\Temp\\{CF618114-A8D0-4BF8-994C-7DC01CCCA2F8} 
	.sect	".text"
	.clink
	.thumbfunc AddrValid
	.thumb

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("AddrValid")
	.dwattr $C$DW$9, DW_AT_low_pc(AddrValid)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("AddrValid")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$9, DW_AT_TI_begin_file("../Scoreboard.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$9, DW_AT_decl_file("../Scoreboard.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x25)
	.dwattr $C$DW$9, DW_AT_decl_column(0x0c)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Scoreboard.c",line 37,column 36,is_stmt,address AddrValid,isa 1

	.dwfde $C$DW$CIE, AddrValid
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("addr")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: AddrValid                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
AddrValid:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("addr")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
;  37 | static int AddrValid(uint32_t addr){                                   
;  38 | // check if address offset works for scoreboard                        
;  39 | // must be 1 KB aligned                                                
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |37| 
	.dwpsn	file "../Scoreboard.c",line 40,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  40 | return (((addr % 1024) == 0) && (addr <= 0x0003FFFF));                 
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |40| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |40| 
        BFC       A2, #10, #22          ; [DPU_V7M3_PIPE] |40| 
        CBNZ      A2, ||$C$L1||         ; [] 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |40| 
;* --------------------------------------------------------------------------*
        LDR       A3, $C$CON1           ; [DPU_V7M3_PIPE] |40| 
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |40| 
        CMP       A3, A2                ; [DPU_V7M3_PIPE] |40| 
        BCC       ||$C$L1||             ; [DPU_V7M3_PIPE] |40| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |40| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |40| 
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../Scoreboard.c",line 41,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../Scoreboard.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.clink
	.thumbfunc Scoreboard_Init
	.thumb
	.global	Scoreboard_Init

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("Scoreboard_Init")
	.dwattr $C$DW$13, DW_AT_low_pc(Scoreboard_Init)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("Scoreboard_Init")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$13, DW_AT_TI_begin_file("../Scoreboard.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x31)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$13, DW_AT_decl_file("../Scoreboard.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x31)
	.dwattr $C$DW$13, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../Scoreboard.c",line 49,column 40,is_stmt,address Scoreboard_Init,isa 1

	.dwfde $C$DW$CIE, Scoreboard_Init
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("addr")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: Scoreboard_Init                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                 *
;*****************************************************************************
Scoreboard_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {LR}                  ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
        SUB       SP, SP, #20           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 24
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("addr")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg13 0]

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("initials")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("initials")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg13 4]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("score")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("score")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg13 8]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("i")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg13 12]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("j")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("j")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg13 16]

;----------------------------------------------------------------------
;  49 | SBEType* Scoreboard_Init(uint32_t addr){                               
;  50 | uint32_t initials, score;                                              
;  51 | int i, j;                                                              
;  52 | // initialize blank scoreboard                                         
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |49| 
	.dwpsn	file "../Scoreboard.c",line 53,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  53 | for(i=0; i<SCOREBOARDSIZE; i=i+1){                                     
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |53| 
        STR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |53| 
	.dwpsn	file "../Scoreboard.c",line 53,column 12,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |53| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |53| 
        BGE       ||$C$L3||             ; [DPU_V7M3_PIPE] |53| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |53| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L2||
;*
;*   Loop source line                : 53
;*   Loop closing brace source line  : 58
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../Scoreboard.c",line 54,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  54 | RAMScoreboard[i].first = ' ';                                          
;----------------------------------------------------------------------
        LDR       A2, [SP, #12]         ; [DPU_V7M3_PIPE] |54| 
        LDR       A3, $C$CON2           ; [DPU_V7M3_PIPE] |54| 
        MOVS      A1, #32               ; [DPU_V7M3_PIPE] |54| 
        STRB      A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |54| 
	.dwpsn	file "../Scoreboard.c",line 55,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  55 | RAMScoreboard[i].middle = ' ';                                         
;----------------------------------------------------------------------
        LDR       A2, [SP, #12]         ; [DPU_V7M3_PIPE] |55| 
        LDR       A3, $C$CON3           ; [DPU_V7M3_PIPE] |55| 
        MOVS      A1, #32               ; [DPU_V7M3_PIPE] |55| 
        STRB      A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |55| 
	.dwpsn	file "../Scoreboard.c",line 56,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  56 | RAMScoreboard[i].last = ' ';                                           
;----------------------------------------------------------------------
        LDR       A2, [SP, #12]         ; [DPU_V7M3_PIPE] |56| 
        LDR       A3, $C$CON4           ; [DPU_V7M3_PIPE] |56| 
        MOVS      A1, #32               ; [DPU_V7M3_PIPE] |56| 
        STRB      A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |56| 
	.dwpsn	file "../Scoreboard.c",line 57,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  57 | RAMScoreboard[i].score = 0;                                            
;----------------------------------------------------------------------
        LDR       A2, [SP, #12]         ; [DPU_V7M3_PIPE] |57| 
        LDR       A3, $C$CON5           ; [DPU_V7M3_PIPE] |57| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |57| 
        STR       A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |57| 
	.dwpsn	file "../Scoreboard.c",line 53,column 30,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |53| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |53| 
        STR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |53| 
	.dwpsn	file "../Scoreboard.c",line 53,column 12,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |53| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |53| 
        BLT       ||$C$L2||             ; [DPU_V7M3_PIPE] |53| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |53| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../Scoreboard.c",line 59,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  59 | if(AddrValid(addr)){                                                   
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |59| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("AddrValid")
	.dwattr $C$DW$20, DW_AT_TI_call

        BL        AddrValid             ; [DPU_V7M3_PIPE] |59| 
        ; CALL OCCURS {AddrValid }       ; [] |59| 
        CMP       A1, #0                ; [DPU_V7M3_PIPE] |59| 
        BEQ       ||$C$L11||            ; [DPU_V7M3_PIPE] |59| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |59| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Scoreboard.c",line 60,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  60 | scoreblock = addr;                                                     
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |60| 
        LDR       A2, $C$CON6           ; [DPU_V7M3_PIPE] |60| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |60| 
	.dwpsn	file "../Scoreboard.c",line 61,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  61 | boardptr = (uint32_t *)scoreblock;                                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |61| 
        LDR       A2, $C$CON7           ; [DPU_V7M3_PIPE] |61| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |61| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |61| 
	.dwpsn	file "../Scoreboard.c",line 62,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  62 | initials = *boardptr;                                                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |62| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |62| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |62| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |62| 
	.dwpsn	file "../Scoreboard.c",line 63,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  63 | score = *(boardptr + 1);                                               
;  64 | // step through the flash block, pulling out all scores                
;  65 | // in the form:                                                        
;  66 | // [8-bit first initial]                                               
;  67 | // [8-bit middle initial]                                              
;  68 | // [8-bit last initial]                                                
;  69 | // [0x00]                                                              
;  70 | // [32-bit score]                                                      
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |63| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |63| 
        LDR       A1, [A1, #4]          ; [DPU_V7M3_PIPE] |63| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |63| 
	.dwpsn	file "../Scoreboard.c",line 71,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  71 | while(((initials&0x000000FF) == 0x00000000) && (boardptr <= (uint32_t *
;     | )(scoreblock + 0x3F8))){                                               
;  72 |   // compare the score with the RAM scoreboard so far                  
;----------------------------------------------------------------------
        B         ||$C$L10||            ; [DPU_V7M3_PIPE] |71| 
        ; BRANCH OCCURS {||$C$L10||}     ; [] |71| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "../Scoreboard.c",line 73,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
;  73 | for(i=0; i<SCOREBOARDSIZE; i=i+1){                                     
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |73| 
        STR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |73| 
	.dwpsn	file "../Scoreboard.c",line 73,column 16,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |73| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |73| 
        BGE       ||$C$L9||             ; [DPU_V7M3_PIPE] |73| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |73| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L5||
;*
;*   Loop source line                : 73
;*   Loop closing brace source line  : 91
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L5||:    
	.dwpsn	file "../Scoreboard.c",line 74,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  74 | if(score > RAMScoreboard[i].score){                                    
;  75 |   // found a score better than one in RAM                              
;  76 |   // shift all lower scores down                                       
;----------------------------------------------------------------------
        LDR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |74| 
        LDR       A3, $C$CON5           ; [DPU_V7M3_PIPE] |74| 
        LDR       A2, [SP, #8]          ; [DPU_V7M3_PIPE] |74| 
        LDR       A1, [A3, +A1, LSL #3] ; [DPU_V7M3_PIPE] |74| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |74| 
        BCS       ||$C$L8||             ; [DPU_V7M3_PIPE] |74| 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |74| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Scoreboard.c",line 77,column 15,is_stmt,isa 1
;----------------------------------------------------------------------
;  77 | for(j=(SCOREBOARDSIZE-1); j>i; j=j-1){                                 
;----------------------------------------------------------------------
        MOVS      A1, #4                ; [DPU_V7M3_PIPE] |77| 
        STR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |77| 
	.dwpsn	file "../Scoreboard.c",line 77,column 37,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |77| 
        LDR       A2, [SP, #16]         ; [DPU_V7M3_PIPE] |77| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |77| 
        BGE       ||$C$L7||             ; [DPU_V7M3_PIPE] |77| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |77| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L6||
;*
;*   Loop source line                : 77
;*   Loop closing brace source line  : 82
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "../Scoreboard.c",line 78,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
;  78 | RAMScoreboard[j].first = RAMScoreboard[j-1].first;                     
;----------------------------------------------------------------------
        LDR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |78| 
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |78| 
        LDR       A3, [SP, #16]         ; [DPU_V7M3_PIPE] |78| 
        LDR       A4, $C$CON2           ; [DPU_V7M3_PIPE] |78| 
        LSLS      A1, A1, #3            ; [DPU_V7M3_PIPE] |78| 
        SUBS      A1, A1, #8            ; [DPU_V7M3_PIPE] |78| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |78| 
        STRB      A1, [A4, +A3, LSL #3] ; [DPU_V7M3_PIPE] |78| 
	.dwpsn	file "../Scoreboard.c",line 79,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
;  79 | RAMScoreboard[j].middle = RAMScoreboard[j-1].middle;                   
;----------------------------------------------------------------------
        LDR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |79| 
        LDR       A2, $C$CON3           ; [DPU_V7M3_PIPE] |79| 
        LDR       A3, [SP, #16]         ; [DPU_V7M3_PIPE] |79| 
        LDR       A4, $C$CON3           ; [DPU_V7M3_PIPE] |79| 
        LSLS      A1, A1, #3            ; [DPU_V7M3_PIPE] |79| 
        SUBS      A1, A1, #8            ; [DPU_V7M3_PIPE] |79| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |79| 
        STRB      A1, [A4, +A3, LSL #3] ; [DPU_V7M3_PIPE] |79| 
	.dwpsn	file "../Scoreboard.c",line 80,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
;  80 | RAMScoreboard[j].last = RAMScoreboard[j-1].last;                       
;----------------------------------------------------------------------
        LDR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |80| 
        LDR       A2, $C$CON4           ; [DPU_V7M3_PIPE] |80| 
        LDR       A3, [SP, #16]         ; [DPU_V7M3_PIPE] |80| 
        LDR       A4, $C$CON4           ; [DPU_V7M3_PIPE] |80| 
        LSLS      A1, A1, #3            ; [DPU_V7M3_PIPE] |80| 
        SUBS      A1, A1, #8            ; [DPU_V7M3_PIPE] |80| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |80| 
        STRB      A1, [A4, +A3, LSL #3] ; [DPU_V7M3_PIPE] |80| 
	.dwpsn	file "../Scoreboard.c",line 81,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
;  81 | RAMScoreboard[j].score = RAMScoreboard[j-1].score;                     
;  83 | // insert the new score in the RAM scoreboard                          
;----------------------------------------------------------------------
        LDR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |81| 
        LDR       A2, $C$CON5           ; [DPU_V7M3_PIPE] |81| 
        LDR       A3, [SP, #16]         ; [DPU_V7M3_PIPE] |81| 
        LDR       A4, $C$CON5           ; [DPU_V7M3_PIPE] |81| 
        LSLS      A1, A1, #3            ; [DPU_V7M3_PIPE] |81| 
        SUBS      A1, A1, #8            ; [DPU_V7M3_PIPE] |81| 
        LDR       A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |81| 
        STR       A1, [A4, +A3, LSL #3] ; [DPU_V7M3_PIPE] |81| 
	.dwpsn	file "../Scoreboard.c",line 77,column 42,is_stmt,isa 1
        LDR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |77| 
        SUBS      A1, A1, #1            ; [DPU_V7M3_PIPE] |77| 
        STR       A1, [SP, #16]         ; [DPU_V7M3_PIPE] |77| 
	.dwpsn	file "../Scoreboard.c",line 77,column 37,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |77| 
        LDR       A2, [SP, #16]         ; [DPU_V7M3_PIPE] |77| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |77| 
        BLT       ||$C$L6||             ; [DPU_V7M3_PIPE] |77| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |77| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
	.dwpsn	file "../Scoreboard.c",line 84,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
;  84 | RAMScoreboard[i].first = (initials&0xFF000000)>>24;                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |84| 
        LDR       A2, [SP, #12]         ; [DPU_V7M3_PIPE] |84| 
        LDR       A3, $C$CON2           ; [DPU_V7M3_PIPE] |84| 
        AND       A1, A1, #-16777216    ; [DPU_V7M3_PIPE] |84| 
        LSRS      A1, A1, #24           ; [DPU_V7M3_PIPE] |84| 
        STRB      A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |84| 
	.dwpsn	file "../Scoreboard.c",line 85,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
;  85 | RAMScoreboard[i].middle = (initials&0x00FF0000)>>16;                   
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |85| 
        LDR       A2, [SP, #12]         ; [DPU_V7M3_PIPE] |85| 
        LDR       A3, $C$CON3           ; [DPU_V7M3_PIPE] |85| 
        AND       A1, A1, #16711680     ; [DPU_V7M3_PIPE] |85| 
        LSRS      A1, A1, #16           ; [DPU_V7M3_PIPE] |85| 
        STRB      A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |85| 
	.dwpsn	file "../Scoreboard.c",line 86,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
;  86 | RAMScoreboard[i].last = (initials&0x0000FF00)>>8;                      
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |86| 
        LDR       A2, [SP, #12]         ; [DPU_V7M3_PIPE] |86| 
        LDR       A3, $C$CON4           ; [DPU_V7M3_PIPE] |86| 
        AND       A1, A1, #65280        ; [DPU_V7M3_PIPE] |86| 
        LSRS      A1, A1, #8            ; [DPU_V7M3_PIPE] |86| 
        STRB      A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |86| 
	.dwpsn	file "../Scoreboard.c",line 87,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
;  87 | RAMScoreboard[i].score = score;                                        
;  88 | // do not over-write all lower scores                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |87| 
        LDR       A2, [SP, #12]         ; [DPU_V7M3_PIPE] |87| 
        LDR       A3, $C$CON5           ; [DPU_V7M3_PIPE] |87| 
        STR       A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |87| 
	.dwpsn	file "../Scoreboard.c",line 89,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
;  89 | break;                                                                 
;----------------------------------------------------------------------
        B         ||$C$L9||             ; [DPU_V7M3_PIPE] |89| 
        ; BRANCH OCCURS {||$C$L9||}      ; [] |89| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
	.dwpsn	file "../Scoreboard.c",line 73,column 34,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |73| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |73| 
        STR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |73| 
	.dwpsn	file "../Scoreboard.c",line 73,column 16,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_V7M3_PIPE] |73| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |73| 
        BLT       ||$C$L5||             ; [DPU_V7M3_PIPE] |73| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |73| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
	.dwpsn	file "../Scoreboard.c",line 92,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  92 | boardptr = boardptr + 2;                                               
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |92| 
        LDR       A2, $C$CON7           ; [DPU_V7M3_PIPE] |92| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |92| 
        ADDS      A1, A1, #8            ; [DPU_V7M3_PIPE] |92| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |92| 
	.dwpsn	file "../Scoreboard.c",line 93,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  93 | initials = *boardptr;                                                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |93| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |93| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |93| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |93| 
	.dwpsn	file "../Scoreboard.c",line 94,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  94 | score = *(boardptr + 1);                                               
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |94| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |94| 
        LDR       A1, [A1, #4]          ; [DPU_V7M3_PIPE] |94| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |94| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L10||
;* --------------------------------------------------------------------------*
||$C$L10||:    
	.dwpsn	file "../Scoreboard.c",line 71,column 11,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |71| 
        TST       A1, #255              ; [DPU_V7M3_PIPE] |71| 
        BNE       ||$C$L11||            ; [DPU_V7M3_PIPE] |71| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |71| 
;* --------------------------------------------------------------------------*
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |71| 
        LDR       A2, $C$CON7           ; [DPU_V7M3_PIPE] |71| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |71| 
        LDR       A2, [A2, #0]          ; [DPU_V7M3_PIPE] |71| 
        ADD       A1, A1, #1016         ; [DPU_V7M3_PIPE] |71| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |71| 
        BCS       ||$C$L4||             ; [DPU_V7M3_PIPE] |71| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |71| 
;* --------------------------------------------------------------------------*
||$C$L11||:    
	.dwpsn	file "../Scoreboard.c",line 97,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  97 | return RAMScoreboard;                                                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_V7M3_PIPE] |97| 
	.dwpsn	file "../Scoreboard.c",line 98,column 1,is_stmt,isa 1
        ADD       SP, SP, #20           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 4
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        POP       {PC}                  ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../Scoreboard.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x62)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits		0x3ffff,32

	.sect	".text"
	.clink
	.thumbfunc Scoreboard_Record
	.thumb
	.global	Scoreboard_Record

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("Scoreboard_Record")
	.dwattr $C$DW$22, DW_AT_low_pc(Scoreboard_Record)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("Scoreboard_Record")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_TI_begin_file("../Scoreboard.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x6c)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$22, DW_AT_decl_file("../Scoreboard.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$22, DW_AT_decl_column(0x06)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "../Scoreboard.c",line 108,column 75,is_stmt,address Scoreboard_Record,isa 1

	.dwfde $C$DW$CIE, Scoreboard_Record
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("first")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("first")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("middle")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("middle")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg1]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("last")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("last")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg2]

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("score")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("score")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg3]


;*****************************************************************************
;* FUNCTION NAME: Scoreboard_Record                                          *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi, *
;*                           D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,*
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi, *
;*                           D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,*
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 16 Auto + 16 Save = 32 byte                *
;*****************************************************************************
Scoreboard_Record:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A1, A2, A3, A4, V1, V2, V3, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 6, -8
	.dwcfi	save_reg_to_mem, 5, -12
	.dwcfi	save_reg_to_mem, 4, -16
	.dwcfi	save_reg_to_mem, 3, -20
	.dwcfi	save_reg_to_mem, 2, -24
	.dwcfi	save_reg_to_mem, 1, -28
	.dwcfi	save_reg_to_mem, 0, -32
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("score")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("score")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg13 0]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("i")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg13 4]

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("j")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("j")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg13 8]

$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("first")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("first")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_breg13 12]

$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("middle")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("middle")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_breg13 13]

$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("last")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("last")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg13 14]

;----------------------------------------------------------------------
; 108 | void Scoreboard_Record(char first, char middle, char last, uint32_t sco
;     | re){                                                                   
; 109 | int i, j;                                                              
; 110 | // compare the score with the RAM scoreboard so far                    
;----------------------------------------------------------------------
        STR       A4, [SP, #0]          ; [DPU_V7M3_PIPE] |108| 
        STRB      A3, [SP, #14]         ; [DPU_V7M3_PIPE] |108| 
        STRB      A2, [SP, #13]         ; [DPU_V7M3_PIPE] |108| 
        STRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |108| 
	.dwpsn	file "../Scoreboard.c",line 111,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 111 | for(i=0; i<SCOREBOARDSIZE; i=i+1){                                     
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |111| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |111| 
	.dwpsn	file "../Scoreboard.c",line 111,column 12,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |111| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |111| 
        BGE       ||$C$L16||            ; [DPU_V7M3_PIPE] |111| 
        ; BRANCHCC OCCURS {||$C$L16||}   ; [] |111| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L12||
;*
;*   Loop source line                : 111
;*   Loop closing brace source line  : 129
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "../Scoreboard.c",line 112,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 112 | if(score > RAMScoreboard[i].score){                                    
; 113 |   // found a score better than one in RAM                              
; 114 |   // shift all lower scores down                                       
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |112| 
        LDR       A3, $C$CON5           ; [DPU_V7M3_PIPE] |112| 
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |112| 
        LDR       A1, [A3, +A1, LSL #3] ; [DPU_V7M3_PIPE] |112| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |112| 
        BCS       ||$C$L15||            ; [DPU_V7M3_PIPE] |112| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |112| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Scoreboard.c",line 115,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
; 115 | for(j=(SCOREBOARDSIZE-1); j>i; j=j-1){                                 
;----------------------------------------------------------------------
        MOVS      A1, #4                ; [DPU_V7M3_PIPE] |115| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |115| 
	.dwpsn	file "../Scoreboard.c",line 115,column 33,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |115| 
        LDR       A2, [SP, #8]          ; [DPU_V7M3_PIPE] |115| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |115| 
        BGE       ||$C$L14||            ; [DPU_V7M3_PIPE] |115| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |115| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L13||
;*
;*   Loop source line                : 115
;*   Loop closing brace source line  : 120
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L13||:    
	.dwpsn	file "../Scoreboard.c",line 116,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 116 | RAMScoreboard[j].first = RAMScoreboard[j-1].first;                     
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |116| 
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |116| 
        LDR       A3, [SP, #8]          ; [DPU_V7M3_PIPE] |116| 
        LDR       A4, $C$CON2           ; [DPU_V7M3_PIPE] |116| 
        LSLS      A1, A1, #3            ; [DPU_V7M3_PIPE] |116| 
        SUBS      A1, A1, #8            ; [DPU_V7M3_PIPE] |116| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |116| 
        STRB      A1, [A4, +A3, LSL #3] ; [DPU_V7M3_PIPE] |116| 
	.dwpsn	file "../Scoreboard.c",line 117,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 117 | RAMScoreboard[j].middle = RAMScoreboard[j-1].middle;                   
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |117| 
        LDR       A2, $C$CON3           ; [DPU_V7M3_PIPE] |117| 
        LDR       A3, [SP, #8]          ; [DPU_V7M3_PIPE] |117| 
        LDR       A4, $C$CON3           ; [DPU_V7M3_PIPE] |117| 
        LSLS      A1, A1, #3            ; [DPU_V7M3_PIPE] |117| 
        SUBS      A1, A1, #8            ; [DPU_V7M3_PIPE] |117| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |117| 
        STRB      A1, [A4, +A3, LSL #3] ; [DPU_V7M3_PIPE] |117| 
	.dwpsn	file "../Scoreboard.c",line 118,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 118 | RAMScoreboard[j].last = RAMScoreboard[j-1].last;                       
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |118| 
        LDR       A2, $C$CON4           ; [DPU_V7M3_PIPE] |118| 
        LDR       A3, [SP, #8]          ; [DPU_V7M3_PIPE] |118| 
        LDR       A4, $C$CON4           ; [DPU_V7M3_PIPE] |118| 
        LSLS      A1, A1, #3            ; [DPU_V7M3_PIPE] |118| 
        SUBS      A1, A1, #8            ; [DPU_V7M3_PIPE] |118| 
        LDRB      A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |118| 
        STRB      A1, [A4, +A3, LSL #3] ; [DPU_V7M3_PIPE] |118| 
	.dwpsn	file "../Scoreboard.c",line 119,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 119 | RAMScoreboard[j].score = RAMScoreboard[j-1].score;                     
; 121 | // insert the new score in the RAM scoreboard                          
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |119| 
        LDR       A2, $C$CON5           ; [DPU_V7M3_PIPE] |119| 
        LDR       A3, [SP, #8]          ; [DPU_V7M3_PIPE] |119| 
        LDR       A4, $C$CON5           ; [DPU_V7M3_PIPE] |119| 
        LSLS      A1, A1, #3            ; [DPU_V7M3_PIPE] |119| 
        SUBS      A1, A1, #8            ; [DPU_V7M3_PIPE] |119| 
        LDR       A1, [A2, +A1]         ; [DPU_V7M3_PIPE] |119| 
        STR       A1, [A4, +A3, LSL #3] ; [DPU_V7M3_PIPE] |119| 
	.dwpsn	file "../Scoreboard.c",line 115,column 38,is_stmt,isa 1
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |115| 
        SUBS      A1, A1, #1            ; [DPU_V7M3_PIPE] |115| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |115| 
	.dwpsn	file "../Scoreboard.c",line 115,column 33,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |115| 
        LDR       A2, [SP, #8]          ; [DPU_V7M3_PIPE] |115| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |115| 
        BLT       ||$C$L13||            ; [DPU_V7M3_PIPE] |115| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |115| 
;* --------------------------------------------------------------------------*
||$C$L14||:    
	.dwpsn	file "../Scoreboard.c",line 122,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 122 | RAMScoreboard[i].first = first;                                        
;----------------------------------------------------------------------
        LDR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |122| 
        LDR       A3, $C$CON2           ; [DPU_V7M3_PIPE] |122| 
        LDRB      A1, [SP, #12]         ; [DPU_V7M3_PIPE] |122| 
        STRB      A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |122| 
	.dwpsn	file "../Scoreboard.c",line 123,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 123 | RAMScoreboard[i].middle = middle;                                      
;----------------------------------------------------------------------
        LDR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |123| 
        LDR       A3, $C$CON3           ; [DPU_V7M3_PIPE] |123| 
        LDRB      A1, [SP, #13]         ; [DPU_V7M3_PIPE] |123| 
        STRB      A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |123| 
	.dwpsn	file "../Scoreboard.c",line 124,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 124 | RAMScoreboard[i].last = last;                                          
;----------------------------------------------------------------------
        LDR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |124| 
        LDR       A3, $C$CON4           ; [DPU_V7M3_PIPE] |124| 
        LDRB      A1, [SP, #14]         ; [DPU_V7M3_PIPE] |124| 
        STRB      A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |124| 
	.dwpsn	file "../Scoreboard.c",line 125,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 125 | RAMScoreboard[i].score = score;                                        
; 126 | // do not over-write all lower scores                                  
;----------------------------------------------------------------------
        LDR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |125| 
        LDR       A3, $C$CON5           ; [DPU_V7M3_PIPE] |125| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |125| 
        STR       A1, [A3, +A2, LSL #3] ; [DPU_V7M3_PIPE] |125| 
	.dwpsn	file "../Scoreboard.c",line 127,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 127 | break;                                                                 
;----------------------------------------------------------------------
        B         ||$C$L16||            ; [DPU_V7M3_PIPE] |127| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |127| 
;* --------------------------------------------------------------------------*
||$C$L15||:    
	.dwpsn	file "../Scoreboard.c",line 111,column 30,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |111| 
        ADDS      A1, A1, #1            ; [DPU_V7M3_PIPE] |111| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |111| 
	.dwpsn	file "../Scoreboard.c",line 111,column 12,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |111| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |111| 
        BLT       ||$C$L12||            ; [DPU_V7M3_PIPE] |111| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |111| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
	.dwpsn	file "../Scoreboard.c",line 130,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 130 | if((boardptr <= (uint32_t *)(scoreblock + 0x3F8))){                    
; 131 |   // there is still room in the block to hold more scores              
; 132 |   // append the new score to the end of the scores in flash            
;----------------------------------------------------------------------
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |130| 
        LDR       A2, $C$CON7           ; [DPU_V7M3_PIPE] |130| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |130| 
        LDR       A2, [A2, #0]          ; [DPU_V7M3_PIPE] |130| 
        ADD       A1, A1, #1016         ; [DPU_V7M3_PIPE] |130| 
        CMP       A1, A2                ; [DPU_V7M3_PIPE] |130| 
        BCC       ||$C$L17||            ; [DPU_V7M3_PIPE] |130| 
        ; BRANCHCC OCCURS {||$C$L17||}   ; [] |130| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Scoreboard.c",line 133,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 133 | Flash_Write((uint32_t)boardptr, (first<<24)|(middle<<16)|(last<<8));   
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |133| 
        LDRB      A2, [SP, #12]         ; [DPU_V7M3_PIPE] |133| 
        LDRB      A4, [SP, #13]         ; [DPU_V7M3_PIPE] |133| 
        LDRB      A3, [SP, #14]         ; [DPU_V7M3_PIPE] |133| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |133| 
        LSLS      A2, A2, #24           ; [DPU_V7M3_PIPE] |133| 
        ORR       A2, A2, A4, LSL #16   ; [DPU_V7M3_PIPE] |133| 
        ORR       A2, A2, A3, LSL #8    ; [DPU_V7M3_PIPE] |133| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("Flash_Write")
	.dwattr $C$DW$33, DW_AT_TI_call

        BL        Flash_Write           ; [DPU_V7M3_PIPE] |133| 
        ; CALL OCCURS {Flash_Write }     ; [] |133| 
	.dwpsn	file "../Scoreboard.c",line 134,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 134 | Flash_Write((uint32_t)(boardptr + 1), score);                          
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |134| 
        LDR       A2, [SP, #0]          ; [DPU_V7M3_PIPE] |134| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |134| 
        ADDS      A1, A1, #4            ; [DPU_V7M3_PIPE] |134| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("Flash_Write")
	.dwattr $C$DW$34, DW_AT_TI_call

        BL        Flash_Write           ; [DPU_V7M3_PIPE] |134| 
        ; CALL OCCURS {Flash_Write }     ; [] |134| 
	.dwpsn	file "../Scoreboard.c",line 135,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 135 | boardptr = boardptr + 2;                                               
; 136 | } else{                                                                
; 137 | // there is no more room in the block to hold more scores              
; 138 | // clear the block                                                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |135| 
        LDR       A2, $C$CON7           ; [DPU_V7M3_PIPE] |135| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |135| 
        ADDS      A1, A1, #8            ; [DPU_V7M3_PIPE] |135| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |135| 
        B         ||$C$L20||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L20||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L17||:    
	.dwpsn	file "../Scoreboard.c",line 139,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 139 | Flash_Erase(scoreblock);                                               
;----------------------------------------------------------------------
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |139| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |139| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("Flash_Erase")
	.dwattr $C$DW$35, DW_AT_TI_call

        BL        Flash_Erase           ; [DPU_V7M3_PIPE] |139| 
        ; CALL OCCURS {Flash_Erase }     ; [] |139| 
	.dwpsn	file "../Scoreboard.c",line 140,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 140 | boardptr = (uint32_t *)scoreblock;                                     
; 141 | // store the top 'SCOREBOARDSIZE' scores from the RAM buffer           
;----------------------------------------------------------------------
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |140| 
        LDR       A2, $C$CON7           ; [DPU_V7M3_PIPE] |140| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |140| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |140| 
	.dwpsn	file "../Scoreboard.c",line 142,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 142 | for(i=0; i<SCOREBOARDSIZE; i=i+1){                                     
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |142| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |142| 
	.dwpsn	file "../Scoreboard.c",line 142,column 14,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |142| 
        CMP       A1, #5                ; [DPU_V7M3_PIPE] |142| 
        BGE       ||$C$L20||            ; [DPU_V7M3_PIPE] |142| 
        ; BRANCHCC OCCURS {||$C$L20||}   ; [] |142| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L18||
;*
;*   Loop source line                : 142
;*   Loop closing brace source line  : 146
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L18||:    
	.dwpsn	file "../Scoreboard.c",line 143,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 143 | Flash_Write((uint32_t)boardptr, (RAMScoreboard[i].first<<24)|(RAMScoreb
;     | oard[i].middle<<16)|(RAMScoreboard[i].last<<8));                       
;----------------------------------------------------------------------
        LDR       A2, [SP, #4]          ; [] |143| 
        LDR       V3, $C$CON2           ; [] |143| 
        LDR       A4, [SP, #4]          ; [] |143| 
        LDR       V2, $C$CON3           ; [] |143| 
        LDR       A1, $C$CON7           ; [] |143| 
        LDR       A3, [SP, #4]          ; [] |143| 
        LDR       V1, $C$CON4           ; [] |143| 
        LDRB      A2, [V3, +A2, LSL #3] ; [] |143| 
        LDRB      A4, [V2, +A4, LSL #3] ; [] |143| 
        LDR       A1, [A1, #0]          ; [] |143| 
        LDRB      A3, [V1, +A3, LSL #3] ; [] |143| 
        B         ||$C$L19||            ; [] 
        ; BRANCH OCCURS {||$C$L19||}     ; [] 
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON2||:	.bits	RAMScoreboard,32
	.align	4
||$C$CON3||:	.bits	RAMScoreboard+1,32
	.align	4
||$C$CON4||:	.bits	RAMScoreboard+2,32
	.align	4
||$C$CON5||:	.bits	RAMScoreboard+4,32
;* --------------------------------------------------------------------------*
||$C$L19||:    
        LSLS      A2, A2, #24           ; [] |143| 
        ORR       A2, A2, A4, LSL #16   ; [] |143| 
        ORR       A2, A2, A3, LSL #8    ; [] |143| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("Flash_Write")
	.dwattr $C$DW$36, DW_AT_TI_call

        BL        Flash_Write           ; [] |143| 
        ; CALL OCCURS {Flash_Write }     ; [] |143| 
	.dwpsn	file "../Scoreboard.c",line 144,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 144 | Flash_Write((uint32_t)(boardptr + 1), RAMScoreboard[i].score);         
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [] |144| 
        LDR       A2, [SP, #4]          ; [] |144| 
        LDR       A3, $C$CON8           ; [] |144| 
        LDR       A1, [A1, #0]          ; [] |144| 
        LDR       A2, [A3, +A2, LSL #3] ; [] |144| 
        ADDS      A1, A1, #4            ; [] |144| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("Flash_Write")
	.dwattr $C$DW$37, DW_AT_TI_call

        BL        Flash_Write           ; [] |144| 
        ; CALL OCCURS {Flash_Write }     ; [] |144| 
	.dwpsn	file "../Scoreboard.c",line 145,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 145 | boardptr = boardptr + 2;                                               
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [] |145| 
        LDR       A2, $C$CON7           ; [] |145| 
        LDR       A1, [A1, #0]          ; [] |145| 
        ADDS      A1, A1, #8            ; [] |145| 
        STR       A1, [A2, #0]          ; [] |145| 
	.dwpsn	file "../Scoreboard.c",line 142,column 32,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [] |142| 
        ADDS      A1, A1, #1            ; [] |142| 
        STR       A1, [SP, #4]          ; [] |142| 
	.dwpsn	file "../Scoreboard.c",line 142,column 14,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [] |142| 
        CMP       A1, #5                ; [] |142| 
        BLT       ||$C$L18||            ; [] |142| 
        ; BRANCHCC OCCURS {||$C$L18||}   ; [] |142| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Scoreboard.c",line 148,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L20||:    
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        POP       {A1, A2, A3, A4, V1, V2, V3, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
	.dwcfi	restore_reg, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../Scoreboard.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x94)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.clink
	.thumbfunc Scoreboard_Get
	.thumb
	.global	Scoreboard_Get

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("Scoreboard_Get")
	.dwattr $C$DW$39, DW_AT_low_pc(Scoreboard_Get)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("Scoreboard_Get")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("../Scoreboard.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x9b)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$39, DW_AT_decl_file("../Scoreboard.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$39, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Scoreboard.c",line 155,column 30,is_stmt,address Scoreboard_Get,isa 1

	.dwfde $C$DW$CIE, Scoreboard_Get
;----------------------------------------------------------------------
; 155 | SBEType* Scoreboard_Get(void){                                         
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Scoreboard_Get                                             *
;*                                                                           *
;*   Regs Modified     : A1                                                  *
;*   Regs Used         : A1,LR                                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Scoreboard_Get:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../Scoreboard.c",line 156,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 156 | return RAMScoreboard;                                                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON9           ; [DPU_V7M3_PIPE] |156| 
	.dwpsn	file "../Scoreboard.c",line 157,column 1,is_stmt,isa 1
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../Scoreboard.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x9d)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON6||:	.bits	scoreblock,32
	.align	4
||$C$CON7||:	.bits	boardptr,32
	.align	4
||$C$CON8||:	.bits	RAMScoreboard+4,32
	.align	4
||$C$CON9||:	.bits	RAMScoreboard,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	Flash_Write
	.global	Flash_Erase

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
$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$41, DW_AT_name("__max_align1")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$41, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$41, DW_AT_decl_column(0x0c)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$42, DW_AT_name("__max_align2")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$42, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$42, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("ScoreboardElement")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x08)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$43, DW_AT_name("first")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("first")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("..\Scoreboard.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$43, DW_AT_decl_column(0x08)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$44, DW_AT_name("middle")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("middle")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$44, DW_AT_decl_file("..\Scoreboard.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0f)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$45, DW_AT_name("last")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("last")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("..\Scoreboard.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$45, DW_AT_decl_column(0x17)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$46, DW_AT_name("score")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("score")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("..\Scoreboard.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$46, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\Scoreboard.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$25

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("SBEType")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("..\Scoreboard.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x22)

$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x20)


$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x28)
$C$DW$47	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$47, DW_AT_upper_bound(0x04)

	.dwendtag $C$DW$T$32

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

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x16)

$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x12)

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x19)

$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("int8_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x18)

$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x13)

$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x13)

$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1a)

$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x14)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x11)

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x13)

$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x1a)

$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("int16_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x14)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x1a)

$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x19)

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x14)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x14)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x1a)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x1a)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x15)

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

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x0e)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x0e)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x0e)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x0e)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x15)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x15)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x0f)

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x13)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x13)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x13)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x13)

$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x19)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x13)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x19)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x13)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x18)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x13)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x1a)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x13)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x13)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x15)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x13)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x13)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x13)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("__register_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x13)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x13)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x13)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("int32_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x14)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x0e)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x17)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x14)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x14)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x14)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x14)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("__size_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x14)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x14)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("__time_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x19)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x14)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x14)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x14)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x1a)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x14)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x1a)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x14)

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x19)

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x14)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x1a)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x1a)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x14)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x14)

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x16)

$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x14)

$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x14)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x14)

$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x15)

$C$DW$T$114	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$114, DW_AT_address_class(0x20)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x16)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("__key_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x0f)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x0f)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("_off_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x0e)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__off_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x18)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x14)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x13)

$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("__id_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x13)

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x13)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x19)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x13)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x1a)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x13)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x15)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x13)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x13)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("int64_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x1c)

$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x14)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x14)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x14)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x14)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x14)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x14)

$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x1a)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x14)

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x1a)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x14)

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x19)

$C$DW$T$144	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$144, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$144, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x16)

$C$DW$T$145	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$145, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$145, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("__float_t")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$146, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("__double_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x11)

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


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("__va_list_t")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x04)
$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$48, DW_AT_name("__ap")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("__ap")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$48, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$48, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

$C$DW$T$152	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$152, DW_AT_name("__va_list")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$26)
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

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("A1")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg0]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("A2")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg1]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("A3")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg2]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("A4")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg3]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("V1")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg4]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("V2")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg5]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("V3")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg6]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("V4")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg7]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("V5")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg8]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("V6")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg9]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("V7")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg10]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("V8")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg11]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("V9")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg12]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("SP")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg13]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("LR")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg14]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("PC")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg15]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("SR")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg17]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("AP")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg7]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("D0")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x40]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("D0_hi")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x41]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("D1")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x42]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("D1_hi")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x43]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("D2")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x44]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("D2_hi")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x45]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("D3")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x46]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("D3_hi")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x47]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("D4")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x48]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("D4_hi")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x49]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("D5")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("D5_hi")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("D6")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("D6_hi")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("D7")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("D7_hi")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("D8")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x50]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("D8_hi")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x51]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("D9")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x52]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("D9_hi")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x53]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("D10")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x54]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("D10_hi")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x55]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("D11")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x56]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("D11_hi")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x57]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("D12")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x58]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("D12_hi")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x59]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("D13")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("D13_hi")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("D14")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("D14_hi")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("D15")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("D15_hi")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("FPEXC")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg18]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("FPSCR")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU

