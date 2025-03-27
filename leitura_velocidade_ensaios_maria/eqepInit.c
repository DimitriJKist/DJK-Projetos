/*
 * eqepInit.c
 *
 *  Created on: 6 de jan de 2025
 *      Author: Francisco
 */
#include "F28x_Project.h"
#include "global_variables.h"

void InitEQep1(void)
{
    EQep1Regs.QUPRD = 2000000; // Unit Timer for 100Hz at 200 MHz SYSCLKOUt
    EQep1Regs.QDECCTL.bit.QSRC = 00;//Quadrature count mode (QCLK = iCLK, QDIR = iDIR)
    EQep1Regs.QEPCTL.bit.QPEN = 1; //eQEP position counter is enabled
    EQep1Regs.QEPCTL.bit.FREE_SOFT = 2;//QPOSCNT, QWDTMR, QUTMR, QCTMR não são afetados pela suspenção de emulação
    EQep1Regs.QEPCTL.bit.PCRM = 01; //Position counter reset on the maximum position
    EQep1Regs.QEPCTL.bit.UTE = 1; // Enable unit timer
    EQep1Regs.QEPCTL.bit.QCLM = 1;//Latch on unit time out.
                                  //Position counter, capture timer and capture period values are latched into
                                  //QPOSLAT, QCTMRLAT and QCPRDLAT registers on unit time out.
    EQep1Regs.QCAPCTL.bit.UPPS = 5;//Unit position event prescaler UPEVNT = QCLK/32
    //A cada 32 pulsos de QCLK, um evento de posição da unidade (UPEVNT) é gerado.
    EQep1Regs.QCAPCTL.bit.CCPS = 7; //eQEP capture timer clock prescaler CAPCLK = SYSCLKOUT/64 = 3.125MHz
    EQep1Regs.QCAPCTL.bit.CEN = 1; //eQEP capture unit is enabled
    EQep1Regs.QPOSMAX = 2400; //maximum position counter value  ppr*4 (modo quadratura) 600*4
    //0x1000: Este é um valor hexadecimal que equivale a 600 em decimal.
    //Portanto, o contador de posição pode contar até 600 antes de ser reiniciado.


    EQep1Regs.QEINT.bit.PCO = 0; // Position Counter Overflow Interrupt is disabled
    EQep1Regs.QEINT.bit.PCU = 0; // Position counter underflow interrupt disabled
}


