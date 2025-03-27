#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"


int AD=0;
int x=1;
int duty=25; //pf3
int duty2 = 25; //pf2
int RPM=0;
int freqQEI=5000;      //FREQUENCIA DE LEITURA DO ENCODER  | Hz
int freqADC=10000;     //FREQUENCIA DE CONVERÇÃO DO ADC  | Hz
//int freqdutyPWM=5000;  //FREQUENCIA DE ATUALIZAÇÃO DO VALOR DO DUTY NO PWM  | Hz    TIREI POIS A ATUAÇÃO DEVE SER FEITA LOGO APÓS A LEITURA DO SENSOR, PARA MANTER O PRINCIPIO DE CONTROLE
int freqPWM=10000;     //FREQUENCIA DO PWM  | Hz
int PPRenc=600;        //PULSOS POR ROTAÇÃO DO ENCODER
uint16_t vet[15000];

int  CONTROLE(int A, int B);
void ADC_Init(void);
void StartCritical(void);
void EndCritical(void);
void EnableInterrupts(void);
void Timer0A_Init(uint32_t period);
void Timer1A_Init(uint32_t period);
void PWM1_3_B_Init(uint16_t period, uint16_t duty);
void QEI_INIT(void);
void Clock_Init(long SYSDIV_var);
void PortF_Init(void);
void PORTD_INIT(void);
void PWM1_3_A_Init(uint16_t duty);

int delay=0;
void main(void){

    StartCritical();

    Clock_Init(4); //80M
    PortF_Init();
    PWM1_3_B_Init(62,25);
    PWM1_3_A_Init(25);
    ADC_Init();
    Timer0A_Init(5000);
    EnableInterrupts();
    EndCritical();
    ADC0_PSSI_R=0x8;
    TIMER0_CTL_R = 0x01;

    while(1){
      if(x>=15000){x=0;}
      PWM1_3_CMPB_R = duty;
      PWM1_3_CMPA_R = duty2;
    }
}

void Timer0A_Handler(void){
    vet[x]=ADC0_SSFIFO3_R;
    ADC0_PSSI_R=0x8;
    x++;
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

void ADC_Init(void){
  volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x00000010; // 1) activate PORTE
  delay = SYSCTL_RCGC2_R;
  delay = SYSCTL_RCGC2_R;           // delay
  delay = SYSCTL_RCGC2_R;           // delay

  GPIO_PORTE_DIR_R &= ~0x04;  // 2) make PE2 input
  GPIO_PORTE_AFSEL_R |= 0x04; // 3) enable alternate function on PE2
  GPIO_PORTE_DEN_R &= ~0x04;  // 4) disable digital I/O on PE2
  GPIO_PORTE_AMSEL_R |= 0x04; // 5) enable analog functionality on PE2
  SYSCTL_RCGC0_R |= 0x010000; // 6) activate ADC0
  delay = SYSCTL_RCGCADC_R;
  delay = SYSCTL_RCGC2_R;           // delay
  delay = SYSCTL_RCGC2_R;           // delay

  ADC0_PC_R = 0x07;         // 7) configure for 1M samples/sec
  ADC0_SSPRI_R |= 0x3210;    // 8) sequencer 0 is highest, sequencer 3 is lowest
  ADC0_ACTSS_R &= ~0x08;    // 9) disable sample sequencer 3
  ADC0_SAC_R = 0x04;        // 10) hardware average
  ADC0_EMUX_R = (ADC0_EMUX_R&0xFFFF0FFF)+0x0000; // 11) activate software trigger event
  ADC0_SSMUX3_R = 1;        // 12) Sample Input Select
  ADC0_ACTSS_R |= 0x08;     // 13) enable sample sequencer 3
  ADC0_SSCTL3_R = 0x06;     // 14) set flag and end
  }

void PWM1_3_B_Init(uint16_t period, uint16_t duty){
  SYSCTL_RCGCPWM_R |= 0x03;       //  activate PWM
 // SYSCTL_RCC_R = 0x00100000 |     //  use PWM divider
 //(SYSCTL_RCC_R & (~0x00000000)); //  configure for /2 divider
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
    delay = SYSCTL_RCGC2_R;           // delay

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
