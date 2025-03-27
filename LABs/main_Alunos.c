4//-----------------------------------------------------------------------------------------------------------------
// Código - Lab 03
// Orientações:
// - Explique linha a linha as configuções da função Clock_Init();
// - Defina o valor de clock configurado;
// - Observe o compartamento do Led azul contando o periodo de tempo aproximado que o led pisca;
// - Altere o clock para 16MHz;
// - Observe o novamente o compartamento do Led azul contando o periodo de tempo aproximado que o led pisca;
// - Explique porque uma alteração no clock do sistema levou a uma alteração no piscar do Led, justificando com auxílio do código.
// - Responda o questionário com as explicações solicitadas;

// 0.Documentation Section
// main.c
// Runs on LM4F120 or TM4C123
// Lab3_CLK,
// Authors: Daniel Valvano, Jonathan Valvano and Ramesh Yerraballi
// Edited by: Vinícius Dário Bacon
// Date: April 18, 2023

// LaunchPad built-in hardware
// blue LED connected to PF2 on the Launchpad

// 1. Pre-processor Directives Section
// Constant declarations to access port registers using
// symbolic names instead of addresses

#include "tm4c123gh6pm.h"

// 2. Declarations Section
//   Global Variables
unsigned long In;  // input from PF4
unsigned long Out; // outputs to PF3,PF2,PF1 (multicolor LED)

//   Function Prototypes
void Clock_Init(long SYSDIV_var);
void PortF_Init(void);
void Delay(void);
void EnableInterrupts(void);


// 3. Subroutines Section
// MAIN: Mandatory for a C Program to be executable
int main(void){

  PortF_Init();        // Call initialization of port F
  Clock_Init(4);      // 24 -> 16MHz    400M / (24+1)

  while(1){
    GPIO_PORTF_DATA_R |= 0x04;    // LED is blue
    Delay();                     // wait
    GPIO_PORTF_DATA_R &= ~0x04;    // LED is blue
    Delay();                     // wait
  }
}

// Subroutine to initialize port F pins for input and output
// PF4 and PF0 are input SW1 and SW2 respectively
// PF3,PF2,PF1 are outputs to the LED
// Inputs: None
// Outputs: None
// Notes: These five pins are connected to hardware on the LaunchPad

void PortF_Init(void){ volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x00000020;     // 1) F clock
  delay = SYSCTL_RCGC2_R;           // delay
  GPIO_PORTF_LOCK_R = 0x4C4F434B;   // 2) unlock PortF PF0
  GPIO_PORTF_CR_R = 0x1F;           // allow changes to PF4-0
  GPIO_PORTF_AMSEL_R = 0x00;        // 3) disable analog function
  GPIO_PORTF_PCTL_R = 0x00000000;   // 4) GPIO clear bit PCTL Port Control
  GPIO_PORTF_DIR_R = 0x0E;          // 5) PF4,PF0 input, PF3,PF2,PF1 output
  GPIO_PORTF_AFSEL_R = 0x00;        // 6) no alternate function
  GPIO_PORTF_PUR_R = 0x11;          // enable pullup resistors on PF4,PF0
  GPIO_PORTF_DEN_R = 0x1F;          // 7) enable digital pins PF4-PF0
}
// Color    LED(s) PortF
// dark     ---    0
// red      R--    0x02
// blue     --B    0x04
// green    -G-    0x08
// yellow   RG-    0x0A
// sky blue -GB    0x0C
// white    RGB    0x0E
// pink     R-B    0x06

// Subroutine to wait time
// Inputs: None
// Outputs: None
// Notes: ...
void Delay(void){unsigned long volatile time;
  time = 1600000;
  while(time){
        time--;
  }
}


void Clock_Init(long SYSDIV_var){

    // a) configure the system to use RCC2 for advanced features
    SYSCTL_RCC2_R |= 0x80000000;

    // b) bypass PLL e SYSDIV while initializing
    SYSCTL_RCC2_R |= 0x00000800;
    SYSCTL_RCC_R &= ~0x00400000;

    // c) select the crystal value and oscillator source
    SYSCTL_RCC_R &= ~0x000007C0;//0111 1100 0000
    SYSCTL_RCC_R += 0x00000540;//0x15
    SYSCTL_RCC2_R &= ~0x00000070;
    SYSCTL_RCC2_R += 0x00000000;

    // d) activate PLL by clearing PWRDN
    SYSCTL_RCC2_R &= ~0x00002000;

    // e) set the desired system divider and the system divider least significant bit
    SYSCTL_RCC2_R |= 0x40000000;
    SYSCTL_RCC2_R  = (SYSCTL_RCC2_R&~0x1FC00000)+ (SYSDIV_var<<22);
    SYSCTL_RCC_R  |= 0x00400000;

    // f) wait for the PLL to lock by polling PLLLRIS
    while((SYSCTL_RIS_R&0x00000040)==0){};

    // g) enable use of PLL by clearing BYPASS
    SYSCTL_RCC2_R &= ~0x00000800;
}
