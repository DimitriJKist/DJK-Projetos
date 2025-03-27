//#include <stdint.h>
//#include <stdlib.h>
#include "tm4c123gh6pm.h"

void Clock_Init(long SYSDIV_var);
void Timer0A_Init(uint32_t period);
void Delay(void);
void StartCritical(void);
void EndCritical(void);
void EnableInterrupts(void);
int count=0;
uint16_t Vet[100];

void main(void){
  StartCritical();
  Clock_Init(24);
  Timer0A_Init(65000);
  EnableInterrupts();
  EndCritical();

  TIMER0_CTL_R = 0x01;
  while(1){

       Vet[count]=sinf(count*0.0614);
    if(count>100){
        while(1){}
    }
  }
}
void Timer0A_Handler(void){
    count++;
    TIMER0_CTL_R = 0x01;
    TIMER0_ICR_R = 0x01;
}

void Timer0A_Init(uint32_t period){
  SYSCTL_RCGCTIMER_R |= 0x01; // 0) activate TIMER0
  TIMER0_CTL_R = 0x00;  // 1) disable TIMER0A during setup
  TIMER0_CFG_R = 0x04;  // 2) configure for 16-bit mode
  TIMER0_TAMR_R = 0x01; // 3) configure for one-shot mode
  //down-count settings
  TIMER0_TAILR_R = period-1;  // 4) reload value
  TIMER0_TAPR_R = 0;        // 5) bus clock resolution
  TIMER0_IMR_R = 0x01; // mask
  NVIC_PRI4_R = 0x60000000; //priority 4
  NVIC_EN0_R |= 1<<19;
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

