#include "F28x_Project.h"     		// Device Header File and Examples Include File

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "InicializacaoFuncoes.h"
#include "FuncoesGerais.h"
#include "Definicoes.h"
#include "Global.h"
#include "Interrupcoes.h"


void Inicializacao(void)
{
	InitSysCtrl();
    EALLOW;
    ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV = 0;
    EDIS;

    // Initialize GPIO
    InitGpio(); 		// Configure default GPIO
    InitEPwm1Gpio();	// Configure EPWM1 GPIO pins
    InitEPwm2Gpio();	// Configure EPWM2 GPIO pins
    InitEPwm3Gpio();	// Configure EPWM3 GPIO pins
    InitEPwm4Gpio();	// Configure EPWM4 GPIO pins
    InitEPwm5Gpio();	// Configure EPWM5 GPIO pins
    InitEPwm6Gpio();	// Configure EPWM6 GPIO pins
    InitEPwm7Gpio();	// Configure EPWM7 GPIO pins
    InitEPwm8Gpio();	// Configure EPWM8 GPIO pins
    InitEQep1Gpio();

    // 	Realiza essas rotinas para ...
    EALLOW; //Utilizado para acessar o registrador
    GpioCtrlRegs.GPADIR.bit.GPIO18 = 1;			// Drives LED LD2 on controlCARD (configuração como saída)
    EDIS; //Sair do acesso restrito aos registradores
    GpioDataRegs.GPADAT.bit.GPIO18 = 1;			// Turn off LED (estado inicial alto)

    EALLOW;
    GpioCtrlRegs.GPBDIR.bit.GPIO40 = 1;			// Bit para reset do inversor
    EDIS;
    GpioDataRegs.GPBDAT.bit.GPIO40 = 0;			// Desliga o Reset

    EALLOW;
    GpioCtrlRegs.GPBDIR.bit.GPIO41 = 1;			// Bit para desarmar o buffer
    EDIS;
    GpioDataRegs.GPBDAT.bit.GPIO41 = 0;			// Desliga o Disable

    EALLOW;
    GpioCtrlRegs.GPCDIR.bit.GPIO94 = 1;			// Bit para Medição do tempo de rotina (dento do loop)
    EDIS;
    GpioDataRegs.GPCDAT.bit.GPIO94 = 0;			// Desliga o Bit

    EALLOW;
    GpioCtrlRegs.GPFDIR.bit.GPIO161 = 1;		// Bit para ligar a resistência
    EDIS;
    GpioDataRegs.GPFDAT.bit.GPIO161 = 0;		// Desliga a resistÊncia

    // Clear all interrupts and initialize PIE vector table
    DINT;
    InitPieCtrl();
    IER = 0x0000;
    IFR = 0x0000;
    InitPieVectTable();

    // Map ISR functions
    EALLOW;
    PieVectTable.ADCA1_INT = &adca1_isr; 			// Function for ADCA interrupt 1
    //PieVectTable.EQEP1_INT = &eqep1_isr;
    EDIS;

    // Configure the ADC and power it up
    ConfigureADC();

    // Setup the ADC for ePWM triggered conversions on channel 0
    SetupADCEpwm();


    // Initialize ePWM modules
    InitEPwm1();
    InitEPwm2();
 	InitEPwm3();
    InitEPwm4();
    InitEPwm5();
    InitEPwm6();
    InitEPwm7();
    InitEPwm8();

    // Initialize eQEP module
   	    InitEQep1();

   	    // Configure the DAC
   	    ConfigureDAC();

   	    // Enable global interrupts and higher priority real-time debug events
   	    IER |= M_INT1; 			// Enable group 1 interrupts ADC_1
   	  //  IER |= M_INT5;          // Enable group 5 interrupts EQEP1

   	    EINT;  					// Enable Global interrupt INTM
   	    ERTM;  					// Enable Global realtime interrupt DBGM

   	    // Enable PIE interrupt
   	    PieCtrlRegs.PIEIER1.bit.INTx1 = 1;
   	  //  PieCtrlRegs.PIEIER5.bit.INTx1 = 1;

   	    // Sync ePWM
   	    EALLOW;
   	    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;

   	    // Start ePWM
   	    EPwm2Regs.ETSEL.bit.SOCAEN = 1; 			// Enable SOCA
   	    //EPwm2Regs.TBCTL.bit.CTRMODE = 0; 			// Un-freeze and enter up-count mode
   	    EPwm2Regs.TBCTL.bit.CTRMODE = 2; 			// Triangular Up down
}



void ConfigureADC(void)
{
	EALLOW;

	// ADC-A
	AdcaRegs.ADCCTL2.bit.PRESCALE = 6; 			// Set ADCCLK divider to /4
	AdcaRegs.ADCCTL2.bit.RESOLUTION =  0; 		// 12-bit resolution
	AdcaRegs.ADCCTL2.bit.SIGNALMODE = 0; 		// Single-ended channel conversions (12-bit mode only)
	AdcaRegs.ADCCTL1.bit.INTPULSEPOS = 1;		// Set pulse positions to late
	AdcaRegs.ADCCTL1.bit.ADCPWDNZ = 1;			// Power up the ADC

	// ADC-B
	AdcbRegs.ADCCTL2.bit.PRESCALE = 6; 			// Set ADCCLK divider to /4
	AdcbRegs.ADCCTL2.bit.RESOLUTION =  0; 		// 12-bit resolution
	AdcbRegs.ADCCTL2.bit.SIGNALMODE = 0; 		// Single-ended channel conversions (12-bit mode only)
	AdcbRegs.ADCCTL1.bit.INTPULSEPOS = 1;		// Set pulse positions to late
	AdcbRegs.ADCCTL1.bit.ADCPWDNZ = 1;			// Power up the ADC

	DELAY_US(1000);								// Delay for 1ms to allow ADC time to power up
}


void SetupADCEpwm(void)
{
	// Select the channels to convert and end of conversion flag
	EALLOW;
	// Pino ADC-A2 - Fase A do Motor 1
	AdcaRegs.ADCSOC2CTL.bit.CHSEL = 2;  		// SOC2 will convert pin A2
	AdcaRegs.ADCSOC2CTL.bit.ACQPS = 199; 		// Sample window is 100 SYSCLK cycles
	AdcaRegs.ADCSOC2CTL.bit.TRIGSEL = 7; 		// Trigger on ePWM2 SOCA/C

	// Pino ADC-A3 - Fase B do Motor 1
	AdcaRegs.ADCSOC3CTL.bit.CHSEL = 3;  		// SOC3 will convert pin A3
	AdcaRegs.ADCSOC3CTL.bit.ACQPS = 199; 		// Sample window is 100 SYSCLK cycles
	AdcaRegs.ADCSOC3CTL.bit.TRIGSEL = 7; 		// Trigger on ePWM2 SOCA/C

	// Pino ADC-A4 - Fase C do Motor 1
	AdcaRegs.ADCSOC4CTL.bit.CHSEL = 4;  		// SOC4 will convert pin A4
	AdcaRegs.ADCSOC4CTL.bit.ACQPS = 199; 		// Sample window is 100 SYSCLK cycles
	AdcaRegs.ADCSOC4CTL.bit.TRIGSEL = 7; 		// Trigger on ePWM2 SOCA/C

	// Pino ADC-A5 - Fase A do Motor 2
	AdcaRegs.ADCSOC5CTL.bit.CHSEL = 5;  		// SOC5 will convert pin A5
	AdcaRegs.ADCSOC5CTL.bit.ACQPS = 199; 		// Sample window is 100 SYSCLK cycles
	AdcaRegs.ADCSOC5CTL.bit.TRIGSEL = 7; 		// Trigger on ePWM2 SOCA/C

	// Final do Canal ADC-A
	AdcaRegs.ADCINTSEL1N2.bit.INT1SEL = 2; 		// End of SOC0 will set INT1 flag
	AdcaRegs.ADCINTSEL1N2.bit.INT1E = 1;   		// Enable INT1 flag
	AdcaRegs.ADCINTFLGCLR.bit.ADCINT1 = 1; 		// Make sure INT1 flag is cleared

	// Pino ADC-B0 - Fase B do Motor 2
	AdcbRegs.ADCSOC0CTL.bit.CHSEL = 0;  		// SOC0 will convert pin B0
	AdcbRegs.ADCSOC0CTL.bit.ACQPS = 199; 		// Sample window is 100 SYSCLK cycles
	AdcbRegs.ADCSOC0CTL.bit.TRIGSEL = 7; 		// Trigger on ePWM2 SOCA/C

	// Pino ADC-B1 - Tensão do Barramento CC
	AdcbRegs.ADCSOC1CTL.bit.CHSEL = 1;  		// SOC1 will convert pin B1
	AdcbRegs.ADCSOC1CTL.bit.ACQPS = 199; 		// Sample window is 100 SYSCLK cycles
	AdcbRegs.ADCSOC1CTL.bit.TRIGSEL = 7; 		// Trigger on ePWM2 SOCA/C

	// Final do Canal ADC-B
	AdcbRegs.ADCINTSEL1N2.bit.INT1SEL = 2; 		// End of SOC0 will set INT1 flag
	AdcbRegs.ADCINTSEL1N2.bit.INT1E = 1;   		// Enable INT1 flag
	AdcbRegs.ADCINTFLGCLR.bit.ADCINT1 = 1; 		// Make sure INT1 flag is cleared
	EDIS;
}

void InitEQep1()
{
	EQep1Regs.QUPRD = 2000000; 					// Unit Timer for 100Hz at 200 MHz SYSCLKOUt

    EQep1Regs.QDECCTL.bit.QSRC = 00;            // QEP quadrature count mode


	EQep1Regs.QEPCTL.bit.QPEN = 1;              // QEP enable
	/*EQep1Regs.QDECCTL.bit.QAP = 0;
	EQep1Regs.QDECCTL.bit.QBP = 1;
	EQep1Regs.QDECCTL.bit.QIP = 0;*/
	EQep1Regs.QEPCTL.bit.FREE_SOFT = 2;
	EQep1Regs.QEPCTL.bit.PCRM = 01;				// PCRM = 00 mode - QPOSCNT reset on index event
	EQep1Regs.QEPCTL.bit.UTE = 1;				// Unit Timeout Enable
	EQep1Regs.QEPCTL.bit.QCLM = 1;				// Latch on unit time out

	EQep1Regs.QCAPCTL.bit.UPPS = 5;				// 1/32 for unit postiton
	EQep1Regs.QCAPCTL.bit.CCPS = 6;				// 1/64 for CAP clock
	EQep1Regs.QCAPCTL.bit.CEN = 1;

	EQep1Regs.QPOSMAX = 0x1000; //0xffffffff; //0x2710; (10.000 PONTOS NO EQEP QUADRATURA)
	//EQep1Regs.QPOSCMP = 0x1388; // VALOR DE COMPARAÇÃO PARA GERAR INTERRUPÇÃO (METADE DO VALOR MÁXIMO 10.000/2)

	//EQep1Regs.QPOSCTL.bit.PCE = 1;

	EQep1Regs.QEINT.bit.PCO = 0;                // Position Counter Overflow Interrupt Enable
    EQep1Regs.QEINT.bit.PCU = 0;                // Position Counter Overflow Interrupt Enable

   //EQep1Regs.QEINT.bit.PCM = 1;                // Position Compare Interrupt Enable
   // EQep1Regs.QEINT.bit.PCR = 1;                // Position Compare Interrupt Enable


	//EQep1Regs.QEINT.bit.IEL = 1;                // Interrupt Enable for Index event
}

void ConfigureDAC(void)
{
	EALLOW;
	DacbRegs.DACCTL.bit.DACREFSEL = 1;			// use ADC references
	DacbRegs.DACCTL.bit.LOADMODE = 0;			// load on next SYSCLK
	DacbRegs.DACVALS.all = 0x0800;				// set mid-range
	DacbRegs.DACOUTEN.bit.DACOUTEN = 1;			// enable DACB

	DacaRegs.DACCTL.bit.DACREFSEL = 1;			// use ADC references
	DacaRegs.DACCTL.bit.LOADMODE = 0;			// load on next SYSCLK
	DacaRegs.DACVALS.all = 0x0800;				// set mid-range
	DacaRegs.DACOUTEN.bit.DACOUTEN = 1;			// enable DACA
	EDIS;
}

void InitEPwm1(void)
{
	   // Setup TBCLK
	   //EPwm1Regs.TBCTL.bit.CTRMODE = tipo_onda; 	// Count up
	   EPwm1Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; 	//  up down
	   EPwm1Regs.TBPRD = M1contadorPWM;  					// Set timer period
	   EPwm1Regs.TBCTL.bit.PHSEN = TB_DISABLE;    	// Disable phase loading
	   EPwm1Regs.TBPHS.bit.TBPHS = M1PHASE;          // Phase is 0
	   EPwm1Regs.TBCTR = 0x0000;                  	// Clear counter
	   EPwm1Regs.TBCTL.bit.HSPCLKDIV = M1_HSPCLKDIV;   	// Clock ratio to SYSCLKOUT
	   EPwm1Regs.TBCTL.bit.CLKDIV = M1_CLKDIV;
	   EPwm1Regs.TBCTL.bit.SYNCOSEL = TB_CTR_ZERO;	// SYNC output on CTR = 0
	   EPwm1Regs.TBCTL.bit.PRDLD = TB_SHADOW;

	   // Setup shadow register load on ZERO
	   EPwm1Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
	   EPwm1Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
	   EPwm1Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
	   EPwm1Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

	   // Set Compare values
	   EPwm1Regs.CMPA.bit.CMPA = 0x0000; 	    		// Set compare A value
	   EPwm1Regs.CMPB.bit.CMPB = 0x0000; 	    		// Set compare B value

	   // Set actions
	   EPwm1Regs.AQCTLA.bit.ZRO = AQ_CLEAR;   		// Set PWM1A on Zero
	   EPwm1Regs.AQCTLA.bit.CAU = AQ_SET;    	    // Clear PWM1A on event A, up count
	   EPwm1Regs.AQCTLA.bit.CAD = AQ_CLEAR;    	 // Clear PWM1A on event B, down count

	   EPwm1Regs.AQCTLB.bit.CBU = AQ_CLEAR;   		// Set PWM1B on Zero
	   EPwm1Regs.AQCTLB.bit.ZRO = AQ_SET;    	    // Forma complementar
	   EPwm1Regs.AQCTLB.bit.CBD = AQ_SET;   		// Clear PWM1B on event B, down count

}


void InitEPwm2(void)
{
	EALLOW;
	// Assumes ePWM clock is already enabled





	EPwm2Regs.ETSEL.bit.SOCAEN	= 0;	        // Disable SOC on A group
	EPwm2Regs.ETSEL.bit.SOCASEL	= 4;	        // Select SOCA on period match
	EPwm2Regs.ETPS.bit.SOCAPRD = 1;		        // Generate pulse on 1st event
	EPwm2Regs.CMPA.bit.CMPA = 0x32;//4E20; //0x32;			// Set compare A value to 2048 counts
	EPwm2Regs.TBPRD = 0x1388;	     // 20 kHz

    EPwm2Regs.TBCTL.bit.PHSEN = TB_ENABLE;     // Disable phase loading
    EPwm2Regs.TBPHS.bit.TBPHS = M1PHASE;          // Phase is 0


	EPwm2Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;            // Freeze counter
	//EPwm2Regs.TBCTL.bit.CTRMODE = 2; 			// Triangular up-down
	EPwm2Regs.TBCTL.bit.HSPCLKDIV = 0;			// TBCLK pre-scaler = /1

	EPwm2Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN; // SYNC output on CTR = 0

	EDIS;
}

void InitEPwm3(void)
{
	   // Setup TBCLK
	   EPwm3Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; 	// Count up
	   EPwm3Regs.TBPRD = M1contadorPWM;  					// Set timer period
	   EPwm3Regs.TBCTL.bit.PHSEN = TB_ENABLE;    	// Disable phase loading
	   EPwm3Regs.TBPHS.bit.TBPHS = M1PHASE;          // Phase is 0
	   EPwm3Regs.TBCTR = 0x0000;                  	// Clear counter
	   EPwm3Regs.TBCTL.bit.HSPCLKDIV = M1_HSPCLKDIV;   	// Clock ratio to SYSCLKOUT
	   EPwm3Regs.TBCTL.bit.CLKDIV = M1_CLKDIV;
	   EPwm3Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;	// SYNC output on CTR = 0
	   EPwm3Regs.TBCTL.bit.PRDLD = TB_SHADOW;

	// Setup shadow register load on ZERO
	   EPwm3Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
	   EPwm3Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
	   EPwm3Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
	   EPwm3Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

	   // Set Compare values
	   EPwm3Regs.CMPA.bit.CMPA = 0x0000; 	    		// Set compare A value
	   EPwm3Regs.CMPB.bit.CMPB = 0x0000; 	    		// Set compare B value

	   // Set actions
	   EPwm3Regs.AQCTLA.bit.ZRO = AQ_CLEAR;   		// Set PWM1A on Zero
	   EPwm3Regs.AQCTLA.bit.CAU = AQ_SET;    	    // Clear PWM1A on event A, up count
	   EPwm3Regs.AQCTLA.bit.CAD = AQ_CLEAR;    	 // Clear PWM1A on event B, down count

	   EPwm3Regs.AQCTLB.bit.CBU = AQ_CLEAR;   		// Set PWM1B on Zero
	   EPwm3Regs.AQCTLB.bit.ZRO = AQ_SET;    	    // Forma complementar
	   EPwm3Regs.AQCTLB.bit.CBD = AQ_SET;   		// Clear PWM1B on event B, down count
}

void InitEPwm4(void)
{
	   // Setup TBCLK
	   EPwm4Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; 	// Count up
	   EPwm4Regs.TBPRD = M1contadorPWM;  					// Set timer period
	   EPwm4Regs.TBCTL.bit.PHSEN = TB_ENABLE;    	// Disable phase loading
	   EPwm4Regs.TBPHS.bit.TBPHS = M1PHASE;          // Phase is 0
	   EPwm4Regs.TBCTR = 0x0000;                  	// Clear counter
	   EPwm4Regs.TBCTL.bit.HSPCLKDIV = M1_HSPCLKDIV;   	// Clock ratio to SYSCLKOUT
	   EPwm4Regs.TBCTL.bit.CLKDIV = M1_CLKDIV;
	   EPwm4Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;	// SYNC output on CTR = 0
	   EPwm4Regs.TBCTL.bit.PRDLD = 0x1; //TB_SHADOW;

	   // Setup shadow register load on ZERO
	   EPwm4Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
	   EPwm4Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
	   EPwm4Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
	   EPwm4Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

	   // Set Compare values
	   EPwm4Regs.CMPA.bit.CMPA = 0x0000; 	    		// Set compare A value
	   EPwm4Regs.CMPB.bit.CMPB = 0x0000; 	    		// Set compare B value

	   // Set actions
	   EPwm4Regs.AQCTLA.bit.ZRO = AQ_CLEAR;   		// Set PWM1A on Zero
	   EPwm4Regs.AQCTLA.bit.CAU = AQ_SET;    	    // Clear PWM1A on event A, up count
	   EPwm4Regs.AQCTLA.bit.CAD = AQ_CLEAR;    	 // Clear PWM1A on event B, down count

	   EPwm4Regs.AQCTLB.bit.CBU = AQ_CLEAR;   		// Set PWM1B on Zero
	   EPwm4Regs.AQCTLB.bit.ZRO = AQ_SET;    	    // Forma complementar
	   EPwm4Regs.AQCTLB.bit.CBD = AQ_SET;   		// Clear PWM1B on event B, down count
}

void InitEPwm5(void)
{
   // Setup TBCLK
   EPwm5Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; 	// Count up
   EPwm5Regs.TBPRD = M2contadorPWM;  					// Set timer period
   EPwm5Regs.TBCTL.bit.PHSEN = TB_ENABLE;    	// Disable phase loading
   EPwm5Regs.TBPHS.bit.TBPHS = 0x0000;          // Phase is 0
   EPwm5Regs.TBCTR = 0x0000;                  	// Clear counter
   EPwm5Regs.TBCTL.bit.HSPCLKDIV = M2_HSPCLKDIV;   	// Clock ratio to SYSCLKOUT
   EPwm5Regs.TBCTL.bit.CLKDIV = M2_CLKDIV;
   EPwm5Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;	// SYNC output on CTR = 0
   EPwm5Regs.TBCTL.bit.PRDLD = TB_SHADOW;

   // Setup shadow register load on ZERO
   EPwm5Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
   EPwm5Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
   EPwm5Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
   EPwm5Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

   // Set Compare values
   EPwm5Regs.CMPA.bit.CMPA = 0x0000; 	    		// Set compare A value
   EPwm5Regs.CMPB.bit.CMPB = 0x0000; 	    		// Set compare B value

   // Set actions
   // Set actions
   EPwm5Regs.AQCTLA.bit.ZRO = AQ_CLEAR;   		// Set PWM1A on Zero
   EPwm5Regs.AQCTLA.bit.CAU = AQ_SET;    	    // Clear PWM1A on event A, up count
   EPwm5Regs.AQCTLA.bit.CAD = AQ_CLEAR;    	 // Clear PWM1A on event B, down count

   EPwm5Regs.AQCTLB.bit.CBU = AQ_CLEAR;   		// Set PWM1B on Zero
   EPwm5Regs.AQCTLB.bit.ZRO = AQ_SET;    	    // Forma complementar
   EPwm5Regs.AQCTLB.bit.CBD = AQ_SET;   		// Clear PWM1B on event B, down count
}

void InitEPwm6(void)
{
   // Setup TBCLK
   EPwm6Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; 	// Count up
   EPwm6Regs.TBPRD = M2contadorPWM;  					// Set timer period
   EPwm6Regs.TBCTL.bit.PHSEN = TB_ENABLE;    	// Disable phase loading
   EPwm6Regs.TBPHS.bit.TBPHS = 0x0000;          // Phase is 0
   EPwm6Regs.TBCTR = 0x0000;                  	// Clear counter
   EPwm6Regs.TBCTL.bit.HSPCLKDIV = M2_HSPCLKDIV;   	// Clock ratio to SYSCLKOUT
   EPwm6Regs.TBCTL.bit.CLKDIV = M2_CLKDIV;
   EPwm6Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;	// SYNC output on CTR = 0
   EPwm6Regs.TBCTL.bit.PRDLD = TB_SHADOW;

   // Setup shadow register load on ZERO
   EPwm6Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
   EPwm6Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
   EPwm6Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
   EPwm6Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

   // Set Compare values
   EPwm6Regs.CMPA.bit.CMPA = 0x0000; 	    		// Set compare A value
   EPwm6Regs.CMPB.bit.CMPB = 0x0000; 	    		// Set compare B value

   // Set actions
   EPwm6Regs.AQCTLA.bit.ZRO = AQ_CLEAR;   		// Set PWM1A on Zero
   EPwm6Regs.AQCTLA.bit.CAU = AQ_SET;    	    // Clear PWM1A on event A, up count
   EPwm6Regs.AQCTLA.bit.CAD = AQ_CLEAR;    	 // Clear PWM1A on event B, down count

   EPwm6Regs.AQCTLB.bit.CBU = AQ_CLEAR;   		// Set PWM1B on Zero
   EPwm6Regs.AQCTLB.bit.ZRO = AQ_SET;    	    // Forma complementar
   EPwm6Regs.AQCTLB.bit.CBD = AQ_SET;   		// Clear PWM1B on event B, down count
}

void InitEPwm7(void)
{
   // Setup TBCLK
   EPwm7Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; 	// Count up
   EPwm7Regs.TBPRD = M2contadorPWM;  					// Set timer period
   EPwm7Regs.TBCTL.bit.PHSEN = TB_ENABLE;    	// Disable phase loading
   EPwm7Regs.TBPHS.bit.TBPHS = 0x0000;          // Phase is 0
   EPwm7Regs.TBCTR = 0x0000;                  	// Clear counter
   EPwm7Regs.TBCTL.bit.HSPCLKDIV = M2_HSPCLKDIV;   	// Clock ratio to SYSCLKOUT
   EPwm7Regs.TBCTL.bit.CLKDIV = M2_CLKDIV;
   EPwm7Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;	// SYNC output on CTR = 0
   EPwm7Regs.TBCTL.bit.PRDLD = TB_SHADOW;

   // Setup shadow register load on ZERO
   EPwm7Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
   EPwm7Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
   EPwm7Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
   EPwm7Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

   // Set Compare values
   EPwm7Regs.CMPA.bit.CMPA = 0x0000; 	    		// Set compare A value
   EPwm7Regs.CMPB.bit.CMPB = 0x0000; 	    		// Set compare B value

   // Set actions
   EPwm7Regs.AQCTLA.bit.ZRO = AQ_CLEAR;   		// Set PWM1A on Zero
   EPwm7Regs.AQCTLA.bit.CAU = AQ_SET;    	    // Clear PWM1A on event A, up count
   EPwm7Regs.AQCTLA.bit.CAD = AQ_CLEAR;    	 // Clear PWM1A on event B, down count

   EPwm7Regs.AQCTLB.bit.CBU = AQ_CLEAR;   		// Set PWM1B on Zero
   EPwm7Regs.AQCTLB.bit.ZRO = AQ_SET;    	    // Forma complementar
   EPwm7Regs.AQCTLB.bit.CBD = AQ_SET;   		// Clear PWM1B on event B, down count
}

void InitEPwm8(void)
{
   // Setup TBCLK
   EPwm8Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; 	// Count up
   EPwm8Regs.TBPRD = M2contadorPWM;  					// Set timer period
   EPwm8Regs.TBCTL.bit.PHSEN = TB_ENABLE;    	// Disable phase loading
   EPwm8Regs.TBPHS.bit.TBPHS = 0x0000;          // Phase is 0
   EPwm8Regs.TBCTR = 0x0000;                  	// Clear counter
   EPwm8Regs.TBCTL.bit.HSPCLKDIV = M2_HSPCLKDIV;   	// Clock ratio to SYSCLKOUT
   EPwm8Regs.TBCTL.bit.CLKDIV = M2_CLKDIV;
   EPwm8Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;	// SYNC output on CTR = 0
   EPwm8Regs.TBCTL.bit.PRDLD = TB_SHADOW;

   // Setup shadow register load on ZERO
   EPwm8Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
   EPwm8Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
   EPwm8Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
   EPwm8Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

   // Set Compare values
   EPwm8Regs.CMPA.bit.CMPA = 0x0000; 	    		// Set compare A value
   EPwm8Regs.CMPB.bit.CMPB = 0x0000; 	    		// Set compare B value

   // Set actions
   // Set actions
   EPwm8Regs.AQCTLA.bit.ZRO = AQ_CLEAR;   		// Set PWM1A on Zero
   EPwm8Regs.AQCTLA.bit.CAU = AQ_SET;    	    // Clear PWM1A on event A, up count
   EPwm8Regs.AQCTLA.bit.CAD = AQ_CLEAR;    	    // Clear PWM1A on event B, down count

   EPwm8Regs.AQCTLB.bit.CBU = AQ_CLEAR;   		// Set PWM1B on Zero
   EPwm8Regs.AQCTLB.bit.ZRO = AQ_SET;    	    // Forma complementar
   EPwm8Regs.AQCTLB.bit.CBD = AQ_SET;   		// Clear PWM1B on event B, down count
}


void InitECapture()
{
    EALLOW;

    GpioCtrlRegs.GPAPUD.bit.GPIO7 = 0;      // Enable pullup on GPIO7
    GpioCtrlRegs.GPAQSEL1.bit.GPIO7 = 0;    // Synch to SYSCLOUT
    GpioCtrlRegs.GPAMUX1.bit.GPIO7 = 3;     // GPIO7 = ECAP2

    ECap1Regs.ECEINT.all = 0x0000;          // Disable all capture __interrupts
    ECap1Regs.ECCLR.all = 0xFFFF;           // Clear all CAP __interrupt flags
    ECap1Regs.ECCTL1.bit.CAPLDEN = 0;       // Disable CAP1-CAP4 register loads
    ECap1Regs.ECCTL2.bit.TSCTRSTOP = 0;     // Make sure the counter is stopped

    //
    // Configure peripheral registers
    //
    ECap1Regs.ECCTL2.bit.CONT_ONESHT = 1;   // One-shot
    ECap1Regs.ECCTL2.bit.STOP_WRAP = 0;     // Stop at 1st event
    ECap1Regs.ECCTL1.bit.CAP1POL = 0;       // Rising edge
    ECap1Regs.ECCTL1.bit.CAP2POL = 0;       // Rising edge
    ECap1Regs.ECCTL1.bit.CAP3POL = 0;       // Rising edge
    ECap1Regs.ECCTL1.bit.CAP4POL = 0;       // Rising edge

    ECap1Regs.ECCTL1.bit.CTRRST1 = 1;       // Difference operation Reset counter after Event 1 time-stamp has been captured (used in difference mode operation)
    ECap1Regs.ECCTL1.bit.CTRRST2 = 1;       // Difference operation
    ECap1Regs.ECCTL1.bit.CTRRST3 = 1;       // Difference operation
    ECap1Regs.ECCTL1.bit.CTRRST4 = 1;       // Difference operation

    ECap1Regs.ECCTL2.bit.SYNCI_EN = 1;      // Enable sync in
    ECap1Regs.ECCTL2.bit.SYNCO_SEL = 0;     // Pass through
    ECap1Regs.ECCTL1.bit.CAPLDEN = 1;       // Enable capture units

    ECap1Regs.ECCTL2.bit.TSCTRSTOP = 1;     // Start Counter
    ECap1Regs.ECCTL2.bit.REARM = 1;         // arm one-shot
    ECap1Regs.ECCTL1.bit.CAPLDEN = 1;       // Enable CAP1-CAP4 register loads
    ECap1Regs.ECEINT.bit.CEVT1 = 1;         // 1st event = __interrupt
    EDIS;
}

__interrupt void ecap1_isr(void)
{
    freq_pwm_torquimetro = 200000000/((float) ECap1Regs.CAP1) ;

    ECap1Regs.ECCLR.bit.CEVT1 = 1;
    ECap1Regs.ECCLR.bit.INT = 1;
    ECap1Regs.ECCTL2.bit.REARM = 1;

    //
    // Acknowledge this __interrupt to receive more __interrupts from group 4
    //
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP4;
}
