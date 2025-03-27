#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"

int i=0;
int x=0;
uint8_t vet[32000];
void StartCritical(void);
void ADC_Init(void);
void EndCritical(void);
void EnableInterrupts(void);
void Timer0A_Init(uint32_t period);
void DisableInterrupts(void);

void main(void){
    StartCritical();
    DisableInterrupts();
    ADC_Init();
    Timer0A_Init(50);
    ADC0_PSSI_R=0x8;
    EnableInterrupts();
    EndCritical();
    TIMER0_CTL_R = 0x01;
    while(1){
       if(x>320000) {
           x=0;
       }
    }
}
//gerador de função 5hz
//acquisition 10000
//data tipe 16bit unsignet integer
//sample rate 3200
//display data size 10000
//time display ms


void Timer0A_Handler(void){
    i=(ADC0_SSFIFO3_R-1950)*0.05;
    vet[x]=i;
    ADC0_PSSI_R=0x8;
    x++;
    TIMER0_CTL_R = 0x01;
    TIMER0_ICR_R = 0x01;
}

void ADC_Init(void){volatile unsigned long delay;
SYSCTL_RCGC2_R |= 0x00000010; // 1) activate PORTE
delay = SYSCTL_RCGC2_R;
delay = SYSCTL_RCGC2_R;
GPIO_PORTE_DIR_R &= ~0x04; // 2) make PE2 input
GPIO_PORTE_AFSEL_R |= 0x04; // 3) enable alternate function on PE2
GPIO_PORTE_DEN_R &= ~0x04; // 4) disable digital I/O on PE2
GPIO_PORTE_AMSEL_R |= 0x04; // 5) enable analog functionality on PE2
SYSCTL_RCGCADC_R |= 0x01; // 6) activate ADC0
delay = SYSCTL_RCGCADC_R;
delay = SYSCTL_RCGCADC_R;
ADC0_PC_R = 0x07; // 7) configure for 1M samples/sec
ADC0_SSPRI_R = 0x3210; // 8) sequencer 0 is highest, sequencer 3 is lowest
ADC0_ACTSS_R &= ~0x08; // 9) disable sample sequencer 3
ADC0_SAC_R = 0x04; // 10) hardware average
ADC0_EMUX_R = (ADC0_EMUX_R&0xFFFF0FFF)+0x0000; // 11) activate software trigger event
ADC0_SSMUX3_R = 1; // 12) Sample Input Select
ADC0_ACTSS_R |= 0x08; // 13) enable sample sequencer 3
ADC0_SSCTL3_R = 0x06; // 14) set flag and end
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

