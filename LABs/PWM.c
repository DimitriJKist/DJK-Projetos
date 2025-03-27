
#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"

void Clock_Init(long SYSDIV_var);
void PortF_Init(void);
void Delay(void);
void PWM1_3_B_Init(uint16_t period, uint16_t duty); //PF3 LED GREEN
void PWM1_3_A_Init(uint16_t duty);                  //PF2 LED BLUE
void PWM1_2_B_Init(uint16_t period, uint16_t duty); //PF1 LED RED

int i=240;
int j=480;
int k=720;
int flagi=3;
int flagj=3;
int flagk=3;

void main(void){
    Clock_Init(24);
    PortF_Init();
    PWM1_3_B_Init(2500,i);
    PWM1_3_A_Init(j);
    PWM1_2_B_Init(2500,k);
    while(1){
        Delay();
        PWM1_3_CMPB_R = i;
        PWM1_3_CMPA_R = j;
        PWM1_2_CMPB_R = k;
        if(i==0){flagi=0;}
        if(i>720){flagi=1;}
        if(j==0){flagj=0;}
        if(j>720){flagj=1;}
        if(k==0){flagk=0;}
        if(k>720){flagk=1;}

        switch(flagi){
        case 0:
            i++;
        break;
        case 1:
            i--;
        break;
        case 3:
            i++;
        break;

        }
        switch(flagj){
        case 0:
            j++;
        break;
        case 1:
            j--;
        break;
        case 3:
            j++;
        break;
        }

        switch(flagk){
        case 0:
            k++;
        break;
        case 1:
            k--;
        break;
        case 3:
            k++;
        break;
        }
    }
}

void PWM1_3_B_Init(uint16_t period, uint16_t duty){
  SYSCTL_RCGCPWM_R |= 0x03;       //  activate PWM
  SYSCTL_RCC_R = 0x00100000 |     //  use PWM divider
  (SYSCTL_RCC_R & (~0x000E0000)); //  configure for /2 divider
  PWM1_3_CTL_R = 0;               //  re-loading down-counting mode
  PWM1_3_GENB_R = 0xC08;          //  low on LOAD, high on CMPB down
  PWM1_3_LOAD_R = period - 1;     //  cycles needed to count down to 0
  PWM1_3_CMPB_R = duty - 1;       //  count value when output rises
  PWM1_3_CTL_R |= 0x01;           //  start PWM1_GEN3
  PWM1_ENABLE_R |= 0x80;
}

void PWM1_3_A_Init(uint16_t duty){
  PWM1_3_GENA_R = 0x0C8;         //  low on LOAD, high on CMPA down
  PWM1_3_CMPA_R = duty - 1;       //  count value when output rises
  //PWM1_3_CTL_R |= 0x01;           //  start PWM1_GEN3
  PWM1_ENABLE_R |= 0x40;
}

void PWM1_2_B_Init(uint16_t period, uint16_t duty){
  PWM1_2_CTL_R = 0;               //  re-loading down-counting mode
  PWM1_2_GENB_R = 0xC08;          //  low on LOAD, high on CMPB down
  PWM1_2_LOAD_R = period - 1;     //  cycles needed to count down to 0
  PWM1_2_CMPB_R = duty - 1;       //  count value when output rises
  PWM1_2_CTL_R |= 0x01;           //  start PWM1_GEN2
  PWM1_ENABLE_R |= 0x20;          //  enable PF1 M1PWM5
                                  //  SOMENTE PF2 0x40  |  SOMENTE PF3 0x80
}

void PortF_Init(void){ volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x00000020;    // F clock
  GPIO_PORTF_LOCK_R = 0x4C4F434B;  // unlock PortF PF0
  GPIO_PORTF_CR_R = 0x0F;          // allow changes to PF0-PF3
  GPIO_PORTF_AMSEL_R = 0x00;       // disable analog function
  //GPIO_PORTF_PCTL_R = 0x0;       // GPIO clear bit PCTL Port Control
  GPIO_PORTF_PCTL_R = 0x05550;
  GPIO_PORTF_DIR_R = 0x0E;         // PF4,PF0 input, PF3,PF2,PF1 output
  GPIO_PORTF_AFSEL_R = 0x0E;       // alternate function TO pf3|pf2|pf1
  GPIO_PORTF_PUR_R = 0x1C;         // enable pullup resistors on PF4,PF3,PF2,PF1,PF0
  GPIO_PORTF_DEN_R = 0x01F;        // enable digital pins PF4-PF0
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

 void Delay(void){
        int volatile time=0;
        while(time<7000){
             time++;}
        time=0;
    }

