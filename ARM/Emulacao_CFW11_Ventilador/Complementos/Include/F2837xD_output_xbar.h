/******************************************************************************
*
* Register Bit Structured header file for OUTPUT_XBAR
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
#ifndef __F2837xD_OUTPUT_XBAR_H__
#define __F2837xD_OUTPUT_XBAR_H__

#ifdef __cplusplus 
extern "C" {
#endif 


//---------------------------------------------------------------------------
// OUTPUT_XBAR Individual Register Bit Definitions:

struct OUTPUT1MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for OUTPUT1 of OUTPUT-XBAR
};

union OUTPUT1MUX0TO15CFG_REG {
    Uint32  all;
    struct  OUTPUT1MUX0TO15CFG_BITS  bit;
};

struct OUTPUT1MUX16TO31CFG_BITS {       // bits description
    Uint16 Mux16:2;                     // 1:0 Mux16 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux17:2;                     // 3:2 Mux17 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux18:2;                     // 5:4 Mux18 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux19:2;                     // 7:6 Mux19 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux20:2;                     // 9:8 Mux20 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux21:2;                     // 11:10 Mux21 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux22:2;                     // 13:12 Mux22 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux23:2;                     // 15:14 Mux23 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux24:2;                     // 17:16 Mux24 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux25:2;                     // 19:18 Mux25 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux26:2;                     // 21:20 Mux26 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux27:2;                     // 23:22 Mux27 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux28:2;                     // 25:24 Mux28 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux29:2;                     // 27:26 Mux29 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux30:2;                     // 29:28 Mux30 Configuration for OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux31:2;                     // 31:30 Mux31 Configuration for OUTPUT1 of OUTPUT-XBAR
};

union OUTPUT1MUX16TO31CFG_REG {
    Uint32  all;
    struct  OUTPUT1MUX16TO31CFG_BITS  bit;
};

struct OUTPUT2MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for OUTPUT2 of OUTPUT-XBAR
};

union OUTPUT2MUX0TO15CFG_REG {
    Uint32  all;
    struct  OUTPUT2MUX0TO15CFG_BITS  bit;
};

struct OUTPUT2MUX16TO31CFG_BITS {       // bits description
    Uint16 Mux16:2;                     // 1:0 Mux16 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux17:2;                     // 3:2 Mux17 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux18:2;                     // 5:4 Mux18 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux19:2;                     // 7:6 Mux19 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux20:2;                     // 9:8 Mux20 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux21:2;                     // 11:10 Mux21 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux22:2;                     // 13:12 Mux22 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux23:2;                     // 15:14 Mux23 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux24:2;                     // 17:16 Mux24 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux25:2;                     // 19:18 Mux25 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux26:2;                     // 21:20 Mux26 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux27:2;                     // 23:22 Mux27 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux28:2;                     // 25:24 Mux28 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux29:2;                     // 27:26 Mux29 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux30:2;                     // 29:28 Mux30 Configuration for OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux31:2;                     // 31:30 Mux31 Configuration for OUTPUT2 of OUTPUT-XBAR
};

union OUTPUT2MUX16TO31CFG_REG {
    Uint32  all;
    struct  OUTPUT2MUX16TO31CFG_BITS  bit;
};

struct OUTPUT3MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for OUTPUT3 of OUTPUT-XBAR
};

union OUTPUT3MUX0TO15CFG_REG {
    Uint32  all;
    struct  OUTPUT3MUX0TO15CFG_BITS  bit;
};

struct OUTPUT3MUX16TO31CFG_BITS {       // bits description
    Uint16 Mux16:2;                     // 1:0 Mux16 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux17:2;                     // 3:2 Mux17 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux18:2;                     // 5:4 Mux18 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux19:2;                     // 7:6 Mux19 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux20:2;                     // 9:8 Mux20 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux21:2;                     // 11:10 Mux21 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux22:2;                     // 13:12 Mux22 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux23:2;                     // 15:14 Mux23 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux24:2;                     // 17:16 Mux24 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux25:2;                     // 19:18 Mux25 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux26:2;                     // 21:20 Mux26 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux27:2;                     // 23:22 Mux27 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux28:2;                     // 25:24 Mux28 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux29:2;                     // 27:26 Mux29 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux30:2;                     // 29:28 Mux30 Configuration for OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux31:2;                     // 31:30 Mux31 Configuration for OUTPUT3 of OUTPUT-XBAR
};

union OUTPUT3MUX16TO31CFG_REG {
    Uint32  all;
    struct  OUTPUT3MUX16TO31CFG_BITS  bit;
};

struct OUTPUT4MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for OUTPUT4 of OUTPUT-XBAR
};

union OUTPUT4MUX0TO15CFG_REG {
    Uint32  all;
    struct  OUTPUT4MUX0TO15CFG_BITS  bit;
};

struct OUTPUT4MUX16TO31CFG_BITS {       // bits description
    Uint16 Mux16:2;                     // 1:0 Mux16 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux17:2;                     // 3:2 Mux17 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux18:2;                     // 5:4 Mux18 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux19:2;                     // 7:6 Mux19 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux20:2;                     // 9:8 Mux20 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux21:2;                     // 11:10 Mux21 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux22:2;                     // 13:12 Mux22 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux23:2;                     // 15:14 Mux23 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux24:2;                     // 17:16 Mux24 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux25:2;                     // 19:18 Mux25 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux26:2;                     // 21:20 Mux26 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux27:2;                     // 23:22 Mux27 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux28:2;                     // 25:24 Mux28 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux29:2;                     // 27:26 Mux29 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux30:2;                     // 29:28 Mux30 Configuration for OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux31:2;                     // 31:30 Mux31 Configuration for OUTPUT4 of OUTPUT-XBAR
};

union OUTPUT4MUX16TO31CFG_REG {
    Uint32  all;
    struct  OUTPUT4MUX16TO31CFG_BITS  bit;
};

struct OUTPUT5MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for OUTPUT5 of OUTPUT-XBAR
};

union OUTPUT5MUX0TO15CFG_REG {
    Uint32  all;
    struct  OUTPUT5MUX0TO15CFG_BITS  bit;
};

struct OUTPUT5MUX16TO31CFG_BITS {       // bits description
    Uint16 Mux16:2;                     // 1:0 Mux16 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux17:2;                     // 3:2 Mux17 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux18:2;                     // 5:4 Mux18 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux19:2;                     // 7:6 Mux19 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux20:2;                     // 9:8 Mux20 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux21:2;                     // 11:10 Mux21 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux22:2;                     // 13:12 Mux22 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux23:2;                     // 15:14 Mux23 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux24:2;                     // 17:16 Mux24 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux25:2;                     // 19:18 Mux25 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux26:2;                     // 21:20 Mux26 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux27:2;                     // 23:22 Mux27 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux28:2;                     // 25:24 Mux28 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux29:2;                     // 27:26 Mux29 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux30:2;                     // 29:28 Mux30 Configuration for OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux31:2;                     // 31:30 Mux31 Configuration for OUTPUT5 of OUTPUT-XBAR
};

union OUTPUT5MUX16TO31CFG_REG {
    Uint32  all;
    struct  OUTPUT5MUX16TO31CFG_BITS  bit;
};

struct OUTPUT6MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for OUTPUT6 of OUTPUT-XBAR
};

union OUTPUT6MUX0TO15CFG_REG {
    Uint32  all;
    struct  OUTPUT6MUX0TO15CFG_BITS  bit;
};

struct OUTPUT6MUX16TO31CFG_BITS {       // bits description
    Uint16 Mux16:2;                     // 1:0 Mux16 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux17:2;                     // 3:2 Mux17 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux18:2;                     // 5:4 Mux18 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux19:2;                     // 7:6 Mux19 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux20:2;                     // 9:8 Mux20 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux21:2;                     // 11:10 Mux21 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux22:2;                     // 13:12 Mux22 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux23:2;                     // 15:14 Mux23 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux24:2;                     // 17:16 Mux24 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux25:2;                     // 19:18 Mux25 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux26:2;                     // 21:20 Mux26 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux27:2;                     // 23:22 Mux27 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux28:2;                     // 25:24 Mux28 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux29:2;                     // 27:26 Mux29 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux30:2;                     // 29:28 Mux30 Configuration for OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux31:2;                     // 31:30 Mux31 Configuration for OUTPUT6 of OUTPUT-XBAR
};

union OUTPUT6MUX16TO31CFG_REG {
    Uint32  all;
    struct  OUTPUT6MUX16TO31CFG_BITS  bit;
};

struct OUTPUT7MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for OUTPUT7 of OUTPUT-XBAR
};

union OUTPUT7MUX0TO15CFG_REG {
    Uint32  all;
    struct  OUTPUT7MUX0TO15CFG_BITS  bit;
};

struct OUTPUT7MUX16TO31CFG_BITS {       // bits description
    Uint16 Mux16:2;                     // 1:0 Mux16 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux17:2;                     // 3:2 Mux17 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux18:2;                     // 5:4 Mux18 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux19:2;                     // 7:6 Mux19 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux20:2;                     // 9:8 Mux20 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux21:2;                     // 11:10 Mux21 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux22:2;                     // 13:12 Mux22 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux23:2;                     // 15:14 Mux23 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux24:2;                     // 17:16 Mux24 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux25:2;                     // 19:18 Mux25 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux26:2;                     // 21:20 Mux26 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux27:2;                     // 23:22 Mux27 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux28:2;                     // 25:24 Mux28 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux29:2;                     // 27:26 Mux29 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux30:2;                     // 29:28 Mux30 Configuration for OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux31:2;                     // 31:30 Mux31 Configuration for OUTPUT7 of OUTPUT-XBAR
};

union OUTPUT7MUX16TO31CFG_REG {
    Uint32  all;
    struct  OUTPUT7MUX16TO31CFG_BITS  bit;
};

struct OUTPUT8MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for OUTPUT8 of OUTPUT-XBAR
};

union OUTPUT8MUX0TO15CFG_REG {
    Uint32  all;
    struct  OUTPUT8MUX0TO15CFG_BITS  bit;
};

struct OUTPUT8MUX16TO31CFG_BITS {       // bits description
    Uint16 Mux16:2;                     // 1:0 Mux16 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux17:2;                     // 3:2 Mux17 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux18:2;                     // 5:4 Mux18 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux19:2;                     // 7:6 Mux19 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux20:2;                     // 9:8 Mux20 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux21:2;                     // 11:10 Mux21 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux22:2;                     // 13:12 Mux22 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux23:2;                     // 15:14 Mux23 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux24:2;                     // 17:16 Mux24 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux25:2;                     // 19:18 Mux25 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux26:2;                     // 21:20 Mux26 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux27:2;                     // 23:22 Mux27 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux28:2;                     // 25:24 Mux28 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux29:2;                     // 27:26 Mux29 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux30:2;                     // 29:28 Mux30 Configuration for OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux31:2;                     // 31:30 Mux31 Configuration for OUTPUT8 of OUTPUT-XBAR
};

union OUTPUT8MUX16TO31CFG_REG {
    Uint32  all;
    struct  OUTPUT8MUX16TO31CFG_BITS  bit;
};

struct OUTPUT1MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 Mux0 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive OUTPUT1 of OUTPUT-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive OUTPUT1 of OUTPUT-XBAR
};

union OUTPUT1MUXENABLE_REG {
    Uint32  all;
    struct  OUTPUT1MUXENABLE_BITS  bit;
};

struct OUTPUT2MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive OUTPUT2 of OUTPUT-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive OUTPUT2 of OUTPUT-XBAR
};

union OUTPUT2MUXENABLE_REG {
    Uint32  all;
    struct  OUTPUT2MUXENABLE_BITS  bit;
};

struct OUTPUT3MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive OUTPUT3 of OUTPUT-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive OUTPUT3 of OUTPUT-XBAR
};

union OUTPUT3MUXENABLE_REG {
    Uint32  all;
    struct  OUTPUT3MUXENABLE_BITS  bit;
};

struct OUTPUT4MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive OUTPUT4 of OUTPUT-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive OUTPUT4 of OUTPUT-XBAR
};

union OUTPUT4MUXENABLE_REG {
    Uint32  all;
    struct  OUTPUT4MUXENABLE_BITS  bit;
};

struct OUTPUT5MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive OUTPUT5 of OUTPUT-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive OUTPUT5 of OUTPUT-XBAR
};

union OUTPUT5MUXENABLE_REG {
    Uint32  all;
    struct  OUTPUT5MUXENABLE_BITS  bit;
};

struct OUTPUT6MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive OUTPUT6 of OUTPUT-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive OUTPUT6 of OUTPUT-XBAR
};

union OUTPUT6MUXENABLE_REG {
    Uint32  all;
    struct  OUTPUT6MUXENABLE_BITS  bit;
};

struct OUTPUT7MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive OUTPUT7 of OUTPUT-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive OUTPUT7 of OUTPUT-XBAR
};

union OUTPUT7MUXENABLE_REG {
    Uint32  all;
    struct  OUTPUT7MUXENABLE_BITS  bit;
};

struct OUTPUT8MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive OUTPUT8 of OUTPUT-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive OUTPUT8 of OUTPUT-XBAR
};

union OUTPUT8MUXENABLE_REG {
    Uint32  all;
    struct  OUTPUT8MUXENABLE_BITS  bit;
};

struct OUTPUTLATCH_BITS {               // bits description
    Uint16 OUT0:1;                      // 0 Records the OUTPUT1 of OUTPUT-XBAR
    Uint16 OUT1:1;                      // 1 Records the OUTPUT2 of OUTPUT-XBAR
    Uint16 OUT2:1;                      // 2 Records the OUTPUT3 of OUTPUT-XBAR
    Uint16 OUT3:1;                      // 3 Records the OUTPUT4 of OUTPUT-XBAR
    Uint16 OUT4:1;                      // 4 Records the OUTPUT5 of OUTPUT-XBAR
    Uint16 OUT5:1;                      // 5 Records the OUTPUT6 of OUTPUT-XBAR
    Uint16 OUT6:1;                      // 6 Records the OUTPUT7 of OUTPUT-XBAR
    Uint16 OUT7:1;                      // 7 Records the OUTPUT8 of OUTPUT-XBAR
    Uint16 rsvd1:8;                     // 15:8 Reserved
    Uint16 rsvd2:16;                    // 31:16 Reserved
};

union OUTPUTLATCH_REG {
    Uint32  all;
    struct  OUTPUTLATCH_BITS  bit;
};

struct OUTPUTLATCHCLR_BITS {            // bits description
    Uint16 OUT0:1;                      // 0 Clears the Output-Latch for OUTPUT1 of OUTPUT-XBAR
    Uint16 OUT1:1;                      // 1 Clears the Output-Latch for OUTPUT2 of OUTPUT-XBAR
    Uint16 OUT2:1;                      // 2 Clears the Output-Latch for OUTPUT3 of OUTPUT-XBAR
    Uint16 OUT3:1;                      // 3 Clears the Output-Latch for OUTPUT4 of OUTPUT-XBAR
    Uint16 OUT4:1;                      // 4 Clears the Output-Latch for OUTPUT5 of OUTPUT-XBAR
    Uint16 OUT5:1;                      // 5 Clears the Output-Latch for OUTPUT6 of OUTPUT-XBAR
    Uint16 OUT6:1;                      // 6 Clears the Output-Latch for OUTPUT7 of OUTPUT-XBAR
    Uint16 OUT7:1;                      // 7 Clears the Output-Latch for OUTPUT8 of OUTPUT-XBAR
    Uint16 rsvd1:8;                     // 15:8 Reserved
    Uint16 rsvd2:16;                    // 31:16 Reserved
};

union OUTPUTLATCHCLR_REG {
    Uint32  all;
    struct  OUTPUTLATCHCLR_BITS  bit;
};

struct OUTPUTLATCHFRC_BITS {            // bits description
    Uint16 OUT0:1;                      // 0 Sets the Output-Latch for OUTPUT1 of OUTPUT-XBAR
    Uint16 OUT1:1;                      // 1 Sets the Output-Latch for OUTPUT2 of OUTPUT-XBAR
    Uint16 OUT2:1;                      // 2 Sets the Output-Latch for OUTPUT3 of OUTPUT-XBAR
    Uint16 OUT3:1;                      // 3 Sets the Output-Latch for OUTPUT4 of OUTPUT-XBAR
    Uint16 OUT4:1;                      // 4 Sets the Output-Latch for OUTPUT5 of OUTPUT-XBAR
    Uint16 OUT5:1;                      // 5 Sets the Output-Latch for OUTPUT6 of OUTPUT-XBAR
    Uint16 OUT6:1;                      // 6 Sets the Output-Latch for OUTPUT7 of OUTPUT-XBAR
    Uint16 OUT7:1;                      // 7 Sets the Output-Latch for OUTPUT8 of OUTPUT-XBAR
    Uint16 rsvd1:8;                     // 15:8 Reserved
    Uint16 rsvd2:16;                    // 31:16 Reserved
};

union OUTPUTLATCHFRC_REG {
    Uint32  all;
    struct  OUTPUTLATCHFRC_BITS  bit;
};

struct OUTPUTLATCHENABLE_BITS {         // bits description
    Uint16 OUT0:1;                      // 0 Selects the output latch to drive OUTPUT1 for OUTPUT-XBAR
    Uint16 OUT1:1;                      // 1 Selects the output latch to drive output1 for OUTPUT-XBAR
    Uint16 OUT2:1;                      // 2 Selects the output latch to drive output2 for OUTPUT-XBAR
    Uint16 OUT3:1;                      // 3 Selects the output latch to drive output3 for OUTPUT-XBAR
    Uint16 OUT4:1;                      // 4 Selects the output latch to drive output4 for OUTPUT-XBAR
    Uint16 OUT5:1;                      // 5 Selects the output latch to drive output5 for OUTPUT-XBAR
    Uint16 OUT6:1;                      // 6 Selects the output latch to drive output6 for OUTPUT-XBAR
    Uint16 OUT7:1;                      // 7 Selects the output latch to drive output7 for OUTPUT-XBAR
    Uint16 rsvd1:8;                     // 15:8 Reserved
    Uint16 rsvd2:16;                    // 31:16 Reserved
};

union OUTPUTLATCHENABLE_REG {
    Uint32  all;
    struct  OUTPUTLATCHENABLE_BITS  bit;
};

struct OUTPUTINV_BITS {                 // bits description
    Uint16 OUT0:1;                      // 0 Selects polarity for OUTPUT1 of OUTPUT-XBAR
    Uint16 OUT1:1;                      // 1 Selects polarity for OUTPUT2 of OUTPUT-XBAR
    Uint16 OUT2:1;                      // 2 Selects polarity for OUTPUT3 of OUTPUT-XBAR
    Uint16 OUT3:1;                      // 3 Selects polarity for OUTPUT4 of OUTPUT-XBAR
    Uint16 OUT4:1;                      // 4 Selects polarity for OUTPUT5 of OUTPUT-XBAR
    Uint16 OUT5:1;                      // 5 Selects polarity for OUTPUT6 of OUTPUT-XBAR
    Uint16 OUT6:1;                      // 6 Selects polarity for OUTPUT7 of OUTPUT-XBAR
    Uint16 OUT7:1;                      // 7 Selects polarity for OUTPUT8 of OUTPUT-XBAR
    Uint16 rsvd1:8;                     // 15:8 Reserved
    Uint16 rsvd2:16;                    // 31:16 Reserved
};

union OUTPUTINV_REG {
    Uint32  all;
    struct  OUTPUTINV_BITS  bit;
};

struct OUTPUTLOCK_BITS {                // bits description
    Uint16 LOCK:1;                      // 0 Locks the configuration for OUTPUT-XBAR
    Uint16 rsvd1:15;                    // 15:1 Reserved
    Uint16 KEY:16;                      // 31:16 Write Protection KEY
};

union OUTPUTLOCK_REG {
    Uint32  all;
    struct  OUTPUTLOCK_BITS  bit;
};

struct OUTPUT_XBAR_REGS {
    union   OUTPUT1MUX0TO15CFG_REG           OUTPUT1MUX0TO15CFG;           // Output X-BAR Mux Configuration for Output 1
    union   OUTPUT1MUX16TO31CFG_REG          OUTPUT1MUX16TO31CFG;          // Output X-BAR Mux Configuration for Output 1
    union   OUTPUT2MUX0TO15CFG_REG           OUTPUT2MUX0TO15CFG;           // Output X-BAR Mux Configuration for Output 2
    union   OUTPUT2MUX16TO31CFG_REG          OUTPUT2MUX16TO31CFG;          // Output X-BAR Mux Configuration for Output 2
    union   OUTPUT3MUX0TO15CFG_REG           OUTPUT3MUX0TO15CFG;           // Output X-BAR Mux Configuration for Output 3
    union   OUTPUT3MUX16TO31CFG_REG          OUTPUT3MUX16TO31CFG;          // Output X-BAR Mux Configuration for Output 3
    union   OUTPUT4MUX0TO15CFG_REG           OUTPUT4MUX0TO15CFG;           // Output X-BAR Mux Configuration for Output 4
    union   OUTPUT4MUX16TO31CFG_REG          OUTPUT4MUX16TO31CFG;          // Output X-BAR Mux Configuration for Output 4
    union   OUTPUT5MUX0TO15CFG_REG           OUTPUT5MUX0TO15CFG;           // Output X-BAR Mux Configuration for Output 5
    union   OUTPUT5MUX16TO31CFG_REG          OUTPUT5MUX16TO31CFG;          // Output X-BAR Mux Configuration for Output 5
    union   OUTPUT6MUX0TO15CFG_REG           OUTPUT6MUX0TO15CFG;           // Output X-BAR Mux Configuration for Output 6
    union   OUTPUT6MUX16TO31CFG_REG          OUTPUT6MUX16TO31CFG;          // Output X-BAR Mux Configuration for Output 6
    union   OUTPUT7MUX0TO15CFG_REG           OUTPUT7MUX0TO15CFG;           // Output X-BAR Mux Configuration for Output 7
    union   OUTPUT7MUX16TO31CFG_REG          OUTPUT7MUX16TO31CFG;          // Output X-BAR Mux Configuration for Output 7
    union   OUTPUT8MUX0TO15CFG_REG           OUTPUT8MUX0TO15CFG;           // Output X-BAR Mux Configuration for Output 8
    union   OUTPUT8MUX16TO31CFG_REG          OUTPUT8MUX16TO31CFG;          // Output X-BAR Mux Configuration for Output 8
    union   OUTPUT1MUXENABLE_REG             OUTPUT1MUXENABLE;             // Output X-BAR Mux Enable  for Output 1
    union   OUTPUT2MUXENABLE_REG             OUTPUT2MUXENABLE;             // Output X-BAR Mux Enable  for Output 2
    union   OUTPUT3MUXENABLE_REG             OUTPUT3MUXENABLE;             // Output X-BAR Mux Enable  for Output 3
    union   OUTPUT4MUXENABLE_REG             OUTPUT4MUXENABLE;             // Output X-BAR Mux Enable  for Output 4
    union   OUTPUT5MUXENABLE_REG             OUTPUT5MUXENABLE;             // Output X-BAR Mux Enable  for Output 5
    union   OUTPUT6MUXENABLE_REG             OUTPUT6MUXENABLE;             // Output X-BAR Mux Enable  for Output 6
    union   OUTPUT7MUXENABLE_REG             OUTPUT7MUXENABLE;             // Output X-BAR Mux Enable  for Output 7
    union   OUTPUT8MUXENABLE_REG             OUTPUT8MUXENABLE;             // Output X-BAR Mux Enable  for Output 8
    union   OUTPUTLATCH_REG                  OUTPUTLATCH;                  // Output X-BAR Output Latch 
    union   OUTPUTLATCHCLR_REG               OUTPUTLATCHCLR;               // Output X-BAR Output Latch Clear 
    union   OUTPUTLATCHFRC_REG               OUTPUTLATCHFRC;               // Output X-BAR Output Latch Clear 
    union   OUTPUTLATCHENABLE_REG            OUTPUTLATCHENABLE;            // Output X-BAR Output Latch Enable 
    union   OUTPUTINV_REG                    OUTPUTINV;                    // Output X-BAR Output Inversion 
    Uint16                                   rsvd1[4];                     // Reserved
    union   OUTPUTLOCK_REG                   OUTPUTLOCK;                   // Output X-BAR Configuration Lock register
};

//---------------------------------------------------------------------------
// OUTPUT_XBAR External References & Function Declarations:
//
#ifdef CPU1
extern volatile struct OUTPUT_XBAR_REGS OutputXbarRegs;
#endif
#ifdef __cplusplus
}
#endif                                  /* extern "C" */

#endif

//===========================================================================
// End of file.
//===========================================================================
