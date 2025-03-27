#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"



int PWMGERAL=0;
float tensao_motor=0;
int delay=0;
int AD0=0;
int AD1=0;
int vet0[1000];
int vet1[1000];
int x=0;
int velocidade=0;
int LOAD_QEI=8000;


void Clock_Init(long SYSDIV_var);
void PortF_Init(void);
void Timer0A_Init(uint32_t period);
void PORTC_INIT(void);
void ADC_Init(void);
void Delay(void);
void StartCritical(void);
void EndCritical(void);
void PWM1_3_Init(uint16_t period, uint16_t duty);
void EnableInterrupts(void);
void QEI_INIT(void);

//PC5 E PC6 ENCODER
//PE2 AD0
//PE3 AD1
//PWM PF2 (PADRAO) E PF3 (COMPLEMENTAR)



void main(void){
    StartCritical();

    Clock_Init(19);
    PortF_Init();
    PWM1_3_Init(2000,PWMGERAL);
    Timer0A_Init(2000);
    ADC_Init();
    QEI_INIT();
    PORTC_INIT();

    EnableInterrupts();
    EndCritical();

//    PWM1_2_B_Init(2000,PWM2B);
//    PWM1_2_A_Init(PWM2A);

     PWM1_ENABLE_R |= 0xC0;
     ADC0_PSSI_R=0x8;
     ADC1_PSSI_R=0x8;
     TIMER0_CTL_R = 0x01;

    while(1){
        velocidade = (QEI1_SPEED_R*292968.75/LOAD_QEI); // para RPM colcoar (qei0*0.01)

        if(abs(tensao_motor) <= 60){
        PWMGERAL=tensao_motor*16.64+1000;
        PWM1_3_CMPB_R = PWMGERAL;
        PWM1_3_CMPA_R = PWMGERAL;
        }
        if(x >= 1000){x=0;}
    }

}

void Timer0A_Handler(void){
    AD0=ADC0_SSFIFO3_R;
    AD1=ADC1_SSFIFO3_R;
    vet0[x]=AD0;
    vet1[x]=AD1;
    ADC0_PSSI_R=0x8;
    ADC1_PSSI_R=0x8;
    x++;


    TIMER0_CTL_R = 0x01;
    TIMER0_ICR_R = 0x01;
}

void QEI_INIT(void){
  SYSCTL_RCGCQEI_R   = 0x02;        // ativa o modulos QEI1
  SYSCTL_RCGCGPIO_R  = 0x08;        // clock para port  C
  QEI1_CTL_R         = 0x2029;
  QEI1_MAXPOS_R      = 0XFFF;
  QEI1_LOAD_R        = LOAD_QEI;    //
}
void PORTC_INIT(void){
  SYSCTL_RCGC2_R    |= 0x04;
  GPIO_PORTC_PCTL_R |= 0x6600000;   // GPIO clear bit PCTL Port Control
  GPIO_PORTC_DIR_R   = 0x00;        // ALLINPUT
  GPIO_PORTC_AFSEL_R = 0x60;        // A PIN 5 // B PIN 6  // habilitando pinos para perifericos conforme tabela do datasheet
  GPIO_PORTC_PUR_R   = 0x60;        // PULL-UP
  GPIO_PORTC_DEN_R   = 0x60;        // DIGITAL ENEABLE
}

void ADC_Init(void){
  volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x00000010; // 1) activate PORTE

  delay = SYSCTL_RCGC2_R;
  delay = SYSCTL_RCGC2_R;
  delay = SYSCTL_RCGC2_R;

  GPIO_PORTE_DIR_R &= ~0x0C;  // 2) make PE2 and PE3 input
  GPIO_PORTE_AFSEL_R |= 0x0C; // 3) enable alternate function on PE2 and PE3
  GPIO_PORTE_DEN_R &= ~0x0C;  // 4) disable digital I/O on PE2 and PE3
  GPIO_PORTE_AMSEL_R |= 0x0C; // 5) enable analog functionality on PE2 and PE3
  SYSCTL_RCGC0_R |= 0x030000; // 6) activate ADC0

  delay = SYSCTL_RCGCADC_R;
  delay = SYSCTL_RCGCADC_R;
  delay = SYSCTL_RCGCADC_R;

  ADC0_PC_R = 0x07;         // 7) configure for 1M samples/sec
  ADC1_PC_R = 0x07;         // 7) configure for 1M samples/sec
  ADC0_SSPRI_R |= 0x3210;    // 8) sequencer 0 is highest, sequencer 3 is lowest
  ADC1_SSPRI_R |= 0x3210;    // 8) sequencer 0 is highest, sequencer 3 is lowest
  ADC0_ACTSS_R &= ~0x08;    // 9) disable sample sequencer 3
  ADC1_ACTSS_R &= ~0x08;    // 9) disable sample sequencer 3
  ADC0_SAC_R = 0x04;        // 10) hardware average
  ADC1_SAC_R = 0x04;        // 10) hardware average
  ADC0_EMUX_R = (ADC0_EMUX_R&0xFFFF0FFF)+0x0000; // 11) activate software trigger event
  ADC1_EMUX_R = (ADC0_EMUX_R&0xFFFF0FFF)+0x0000; // 11) activate software trigger event
  ADC0_SSMUX3_R = 1;        // 12) Sample Input Select PE2
  ADC1_SSMUX3_R = 0;        // 12) Sample Input Select PE3
  ADC0_ACTSS_R |= 0x08;     // 13) enable sample sequencer 3
  ADC1_ACTSS_R |= 0x08;     // 13) enable sample sequencer 3
  ADC0_SSCTL3_R = 0x06;     // 14) set flag and end
  ADC1_SSCTL3_R = 0x06;     // 14) set flag and end

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

void PWM1_3_Init(uint16_t period, uint16_t duty){ //PF3
  SYSCTL_RCGCPWM_R |= 0x03;       //  activate PWM
  delay = SYSCTL_RCGC2_R;
  delay = SYSCTL_RCGC2_R;
  //SYSCTL_RCC_R = 0x00100000 |   //  use PWM divider
//(SYSCTL_RCC_R & (~0x000E0000)); //  configure for /2 divider
  PWM1_3_CTL_R = 0;               //  re-loading down-counting mode
  PWM1_3_GENB_R = 0x80C;          //  HIGTH on LOAD, LOW on CMPB down
  PWM1_3_LOAD_R = period - 1;     //  cycles needed to count down to 0
  PWM1_3_CMPB_R = duty - 1;       //  count value when output rises
  PWM1_3_GENA_R = 0x0C8;          //  low on LOAD, high on CMPA down
  PWM1_3_CMPA_R = duty - 1;       //  count value when output rises
  PWM1_3_CTL_R |= 0x01;           //  start PWM1_GEN3
 // PWM1_ENABLE_R |= 0xC0;
}

void PortF_Init(void){ volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x00000020;    // F clock
  GPIO_PORTF_LOCK_R = 0x4C4F434B;  // unlock PortF PF0
  GPIO_PORTF_CR_R = 0x0F;          // allow changes to PF0-PF3
  GPIO_PORTF_AMSEL_R = 0x00;       // disable analog function
  //GPIO_PORTF_PCTL_R = 0x0;       // GPIO clear bit PCTL Port Control
  GPIO_PORTF_PCTL_R = 0x05555;
  GPIO_PORTF_DIR_R = 0x0F;         // PF4 input, PF3,PF2,PF1,PF0 output
  GPIO_PORTF_AFSEL_R = 0x0F;       // alternate function TO pf3|pf2|pf1|pf0
 // GPIO_PORTF_PUR_R = 0x1C;         // enable pullup resistors on PF4,PF3,PF2,PF1,PF0
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
        while(time<10000){
             time++;}
        time=0;
    }

