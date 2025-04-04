/******************************************************************************
*
* Register Bit Structured header file for DAC
*
* Copyright (c) 2008-2013 Texas Instruments Incorporated.  All rights reserved.
* Software License Agreement
*
* Texas Instruments (TI) is supplying this software for use solely and
* exclusively on TI devices. The software is owned by TI and/or its
* suppliers, and is protected under applicable patent and copyright laws.
*
* You may not combine this software with any open-source software if such
* combination would cause this software to become subject to any of the
* license terms applicable to such open source software.
*
* THIS SOFTWARE IS PROVIDED "AS IS" AND WITH ALL FAULTS.
* NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT
* NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
* A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. TI SHALL NOT, UNDER ANY
* CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
* DAMAGES, FOR ANY REASON WHATSOEVER.
*
******************************************************************************
*/
#ifndef __F2837xD_DAC_H__
#define __F2837xD_DAC_H__

#ifdef __cplusplus 
extern "C" {
#endif 


//---------------------------------------------------------------------------
// DAC Individual Register Bit Definitions:

struct DACREV_BITS {                    // bits description
    Uint16 REV:8;                       // 7:0 DAC Revision Register
    Uint16 rsvd1:8;                     // 15:8 Reserved
};

union DACREV_REG {
    Uint16  all;
    struct  DACREV_BITS  bit;
};

struct DACCTL_BITS {                    // bits description
    Uint16 DACREFSEL:1;                 // 0 DAC Reference Select
    Uint16 rsvd1:1;                     // 1 Reserved
    Uint16 LOADMODE:1;                  // 2 DACVALA Load Mode
    Uint16 rsvd2:1;                     // 3 Reserved
    Uint16 SYNCSEL:4;                   // 7:4 DAC PWMSYNC Select
    Uint16 rsvd3:8;                     // 15:8 Reserved
};

union DACCTL_REG {
    Uint16  all;
    struct  DACCTL_BITS  bit;
};

struct DACVALA_BITS {                   // bits description
    Uint16 DACVALA:12;                  // 11:0 DAC Active Output Code
    Uint16 rsvd1:4;                     // 15:12 Reserved
};

union DACVALA_REG {
    Uint16  all;
    struct  DACVALA_BITS  bit;
};

struct DACVALS_BITS {                   // bits description
    Uint16 DACVALS:12;                  // 11:0 DAC Shadow Output Code
    Uint16 rsvd1:4;                     // 15:12 Reserved
};

union DACVALS_REG {
    Uint16  all;
    struct  DACVALS_BITS  bit;
};

struct DACOUTEN_BITS {                  // bits description
    Uint16 DACOUTEN:1;                  // 0 DAC Output Code
    Uint16 rsvd1:15;                    // 15:1 Reserved
};

union DACOUTEN_REG {
    Uint16  all;
    struct  DACOUTEN_BITS  bit;
};

struct DACLOCK_BITS {                   // bits description
    Uint16 DACCTL:1;                    // 0 DAC Control Register Lock
    Uint16 DACVAL:1;                    // 1 DAC Value Register Lock
    Uint16 DACOUTEN:1;                  // 2 DAC Output Enable Register Lock
    Uint16 rsvd1:13;                    // 15:3 Reserved
};

union DACLOCK_REG {
    Uint16  all;
    struct  DACLOCK_BITS  bit;
};

struct DAC_REGS {
    union   DACREV_REG                       DACREV;                       // DAC Revision Register
    union   DACCTL_REG                       DACCTL;                       // DAC Control Register
    union   DACVALA_REG                      DACVALA;                      // DAC Value Register - Active
    union   DACVALS_REG                      DACVALS;                      // DAC Value Register - Shadow
    union   DACOUTEN_REG                     DACOUTEN;                     // DAC Output Enable Register
    union   DACLOCK_REG                      DACLOCK;                      // DAC Lock Register
};

//---------------------------------------------------------------------------
// DAC External References & Function Declarations:
//
#ifdef CPU1
extern volatile struct DAC_REGS DacaRegs;
extern volatile struct DAC_REGS DacbRegs;
extern volatile struct DAC_REGS DaccRegs;
extern volatile struct DAC_REGS DacdRegs;
extern volatile struct DAC_REGS DaceRegs;
extern volatile struct DAC_REGS DacfRegs;
extern volatile struct DAC_REGS DacgRegs;
extern volatile struct DAC_REGS DachRegs;
#endif
#ifdef CPU2
extern volatile struct DAC_REGS DacaRegs;
extern volatile struct DAC_REGS DacbRegs;
extern volatile struct DAC_REGS DaccRegs;
extern volatile struct DAC_REGS DacdRegs;
extern volatile struct DAC_REGS DaceRegs;
extern volatile struct DAC_REGS DacfRegs;
extern volatile struct DAC_REGS DacgRegs;
extern volatile struct DAC_REGS DachRegs;
#endif
#ifdef __cplusplus
}
#endif                                  /* extern "C" */

#endif

//===========================================================================
// End of file.
//===========================================================================
