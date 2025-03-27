#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"


uint64_t TEMPO_NOVO=0;
uint64_t TEMPO_ANTIGO=0;
uint64_t DIF=0;


void WTimer0A_Init(uint64_t period);


void main(void){

    void WTimer0A_Init(uint64_t period)


    while(1){



    }
}





void WTimer0A_Init(uint64_t period){
  SYSCTL_RCGCWTIMER_R |= 0x01; // 0) activate WTIMER0
  WTIMER0_CTL_R = 0x0C;  // 1) disable WTIMER0A during setup AND POSITIVE EDGE FOR CAPTURE MODE
  WTIMER0_CFG_R = 0x00;  // 2) configure for 64-bit mode
  WTIMER0_TAMR_R = 0x06; // 3) configure for capture edge-time mode | Periodic | down counting
  WTIMER0_TAILR_R = period-1;  // 4) reload value
  WTIMER0_TAPR_R = 0;        // 5) bus clock resolution
  WTIMER0_IMR_R = 0x02; // event match interrupt mask
  NVIC_PRI23_R = 0x600000; //priority 4
  NVIC_EN2_R |= 1<<31;   //VECTOR NUMEBER 94
  WTIMER0_CTL_R |= 0x01;
}


void WideTimer0A_Handler(void){

if(TEMPO_ANTIGO>TEMPO NOVO){

    TEMPO_NOVO=WTIMER0_TAR_R;
    DIF=TEMPO_NOVO-TEMPO_ANTIGO;
    TEMPO_ANTIGO=TEMPO_NOVO;
}

if(TEMPO_ANTIGO<TEMPO NOVO){
    TEMPO_NOVO=WTIMER0_TAR_R;
    DIF=TEMPO_ANTIGO-TEMPO_NOVO;
    TEMPO_ANTIGO=TEMPO_NOVO;
}

WTIMER0_ICR_R = 0x01;
}
