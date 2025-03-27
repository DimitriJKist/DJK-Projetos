#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"

void Clock_Init(long SYSDIV_var);
void PortF_Init(void);
void Timer0A_Init(uint32_t period);
void Delay(void);

void main(void){
    Clock_Init(24);
    PortF_Init();

    Timer0A_Init(65000);
    TIMER0_CTL_R = 0x01;

    while(1){
        if(TIMER0_TAR_R<32500){
            GPIO_PORTF_DATA_R = 0x04;  //LED Blue
        }
        else {
            GPIO_PORTF_DATA_R = 0x02; //LED RED
            }

    }
}

void Timer0A_Init(uint32_t period){
  SYSCTL_RCGCTIMER_R |= 0x01; //  activate TIMER0
  TIMER0_CTL_R = 0x00;  // disable TIMER0A during setup
  TIMER0_CFG_R = 0x04;  //  configure for 16-bit mode
  TIMER0_TAMR_R = 0x02; // configure for periodic mode
  //down-count settings
  TIMER0_TAILR_R = period-1;  // reload value
  TIMER0_TAPR_R = 250;        // bus clock resolution
  }

void PortF_Init(void){ volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x00000020;     // F clock
//  delay = SYSCTL_RCGC2_R;         // delay
  GPIO_PORTF_LOCK_R = 0x4C4F434B;   // unlock PortF PF0
  GPIO_PORTF_CR_R = 0x09;           // allow changes to PF0 and PF3
  GPIO_PORTF_AMSEL_R = 0x00;        // disable analog function
  GPIO_PORTF_PCTL_R = 0x0;          // GPIO clear bit PCTL Port Control
  GPIO_PORTF_DIR_R = 0x0E;          // PF4,PF0 input, PF3,PF2,PF1 output
  GPIO_PORTF_AFSEL_R = 0x00;        // no alternate function
  GPIO_PORTF_PUR_R = 0x1C;          // enable pullup resistors on PF4,PF3,PF2,PF1,PF0
  GPIO_PORTF_DEN_R = 0x01F;         // enable digital pins PF4-PF0
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
 void Delay(void){ //0.2seg
        int volatile time=0;
        while(time<4000){
             time++;}
        time=0;
    }

