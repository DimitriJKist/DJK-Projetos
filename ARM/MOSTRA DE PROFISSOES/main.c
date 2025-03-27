#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"
//PD6 e PD7 DIREITA
//PC5 E PC6 ESQUERDA
//DIREITA  PB 2 7 6 3 PA 2 3 4 PE 0
//ESQUERDA PA 5 6 7 PE 1 2 3 4 5

int VEL1=0;int VEL2=0;int SCORE1=0;int SCORE2=0;
void Timer0A_Init(void);
void PORTA_INIT(void);
void PORTB_INIT(void);
void PORTC_INIT(void);
void PORTD_INIT(void);
void PORTE_INIT(void);
void PORTF_INIT(void);
void StartCritical(void);
void EndCritical(void);
void EnableInterrupts(void);
void QEI_INIT(void);

  int main(void){
   StartCritical();
   PORTA_INIT();
   PORTB_INIT();
   PORTC_INIT();
   PORTD_INIT();
   PORTE_INIT();
   PORTF_INIT();
   QEI_INIT();
   Timer0A_Init();
   EnableInterrupts();
   EndCritical();

  while(1){
   VEL1 = (QEI0_SPEED_R/5);
   VEL2 = (QEI1_SPEED_R/10); // da o dobro do qei 1
   if(VEL1>SCORE1){SCORE1=VEL1;}
   if(VEL2>SCORE2){SCORE2=VEL2;}

   if(VEL1>10){GPIO_PORTF_DATA_R &= ~0x04;} //PF2 VRD_1D
   else{GPIO_PORTF_DATA_R |= 0x04;}
   if(VEL1>20){GPIO_PORTF_DATA_R &= ~0x08;} //PF3 VRD_2D
   else{GPIO_PORTF_DATA_R |= 0x08;}
   if(VEL1>30){GPIO_PORTB_DATA_R &= ~0x40;} //PB6 VRD_3D
   else{GPIO_PORTB_DATA_R |= 0x40;}
   if(VEL1>40){GPIO_PORTB_DATA_R &= ~0x80;} //PB7 AMARELO_1D
   else{GPIO_PORTB_DATA_R |= 0x80;}
   if(VEL1>50){GPIO_PORTA_DATA_R &= ~0x04;} //PA2 AMARELO_2D
   else{GPIO_PORTA_DATA_R |= 0x04;}
   if(VEL1>65){GPIO_PORTA_DATA_R &= ~0x08;}//PA3 VERMELHO_1D
   else{GPIO_PORTA_DATA_R |= 0x08;}
   if(VEL1>85){GPIO_PORTA_DATA_R &= ~0x10;}//PA4 VERMELHO_2D
   else{GPIO_PORTA_DATA_R |= 0x10;}
   if(VEL1>100){GPIO_PORTE_DATA_R &= ~0x01;}//PE0 VERMELHO_3D
   else{GPIO_PORTE_DATA_R |= 0x01;}

   if(VEL2>10){GPIO_PORTA_DATA_R &= ~0x20;}//PA5  VRD_1E
   else{GPIO_PORTA_DATA_R |= 0x20;}
   if(VEL2>20){GPIO_PORTA_DATA_R &= ~0x80;}//PA8  VRD_2E
   else{GPIO_PORTA_DATA_R |= 0x80;}
   if(VEL2>30){GPIO_PORTD_DATA_R &= ~0x04;}//PD2  VRD_3E
   else{GPIO_PORTD_DATA_R |= 0x04;}
   if(VEL2>40){GPIO_PORTE_DATA_R &= ~0x02;}//PE1  AMARELO_1E
   else{GPIO_PORTE_DATA_R |= 0x02;}
   if(VEL2>50){GPIO_PORTE_DATA_R &= ~0x04;}//PE2  AMARELO_2E
   else{GPIO_PORTE_DATA_R |= 0x04;}
   if(VEL2>65){GPIO_PORTE_DATA_R &= ~0x08;}//PE3 VERMELHO_1E
   else{GPIO_PORTE_DATA_R |= 0x08;}
   if(VEL2>85){GPIO_PORTE_DATA_R &= ~0x10;}//PE4 VERMELHO_2E
   else{GPIO_PORTE_DATA_R |= 0x10;}
   if(VEL2>100){GPIO_PORTE_DATA_R &= ~0x20;}//PE5 VERMELHO_3E
   else{GPIO_PORTE_DATA_R |= 0x20;}
   }
 }
 void GPIOPortF_Handler(void){
     SCORE1=0;
     SCORE2=0;
     GPIO_PORTB_DATA_R |= 0x01;//PB0
     GPIO_PORTC_DATA_R |= 0x80;//PC7;
     TIMER0_CTL_R = 0x01;
     GPIO_PORTF_ICR_R=0x01; //ICR PF0
 }
 void Timer0A_Handler(void){
     if(SCORE1>SCORE2){GPIO_PORTC_DATA_R &= ~0x80;}//PC7
     else if(SCORE2>SCORE1){GPIO_PORTB_DATA_R &= ~0x01;} //PBO
     else if(SCORE1==SCORE2){GPIO_PORTC_DATA_R &= ~0x80;GPIO_PORTB_DATA_R &= ~0x01;}
     TIMER0_ICR_R = 0x01;
 }

void PORTA_INIT(void){
  SYSCTL_RCGC2_R    |= 0x01;        // A clock
  GPIO_PORTA_LOCK_R  = 0x4C4F434B;  // unlock PortF PF0
  GPIO_PORTA_CR_R    = 0xFF;        // allow changes to PA5-PA2
  GPIO_PORTA_PCTL_R  = 0x0;         // GPIO clear bit PCTL Port Control
  GPIO_PORTA_DIR_R   = 0xBF;        // PE0-PE5 output
  GPIO_PORTA_AFSEL_R = 0x0;         // no alternate function
  GPIO_PORTA_DEN_R   = 0x0BF;       // enable digital pins PA
}
void PORTB_INIT(void){
  SYSCTL_RCGC2_R    |= 0x002;       // B clock
  GPIO_PORTB_LOCK_R  = 0x4C4F434B;  // unlock PortF PF0
  GPIO_PORTB_CR_R    = 0x0E;        // allow changes to
  GPIO_PORTB_PCTL_R  = 0x0;         // GPIO clear bit PCTL Port Control
  GPIO_PORTB_DIR_R   = 0xCD;        // PB0 PB2 PB3 PB6 PB7 output
  GPIO_PORTB_AFSEL_R = 0x0;         // no alternate function
  GPIO_PORTB_DEN_R   = 0x0CD;       // enable digital pins PB2 PB3 PB6 PB7
  GPIO_PORTB_DR8R_R = 0xCD;
}
void PORTC_INIT(void){
  SYSCTL_RCGC2_R    |= 0x04;
  GPIO_PORTC_PCTL_R |= 0x6600000;   // GPIO clear bit PCTL Port Control
  GPIO_PORTC_DIR_R   = 0x80;        // PB7 OUTPUT
  GPIO_PORTC_AFSEL_R = 0x60;        // A PIN 5 // B PIN 6  // habilitando pinos para perifericos conforme tabela do datasheet
  GPIO_PORTC_PUR_R   = 0x60;        // PULL-UP
  GPIO_PORTC_DEN_R   = 0xE0;        // DIGITAL ENEABLE
}
void PORTD_INIT(void){
  SYSCTL_RCGC2_R    |= 0x08;
  GPIO_PORTD_LOCK_R  = 0x4C4F434B;
  GPIO_PORTD_CR_R    = 0x40;
  GPIO_PORTD_PCTL_R |= 0x66000000;  // GPIO clear bit PCTL Port Control
  GPIO_PORTD_DIR_R   = 0x06;        // ALLINPUT PD1 PD2 OUTPUT
  GPIO_PORTD_AFSEL_R = 0xc0;        // habilitando pinos para perifericos conforme tabela do datasheet  // A PIN 6 // B PIN 7
  GPIO_PORTD_PUR_R   = 0xc0;        // PULL-UP
  GPIO_PORTD_DEN_R   = 0xcF;        // DIGITAL ENEABLE
}
void PORTE_INIT(void){
  SYSCTL_RCGC2_R    |= 0x010;       // E clock
  GPIO_PORTE_PCTL_R  = 0x0;         // GPIO clear bit PCTL Port Control
  GPIO_PORTE_DIR_R   = 0x3F;        // PE0-PE5 output
  GPIO_PORTE_AFSEL_R = 0x0;         // no alternate function
  GPIO_PORTE_DEN_R   = 0x03F;       // enable digital pins PE0-PE5
}
void PORTF_INIT(void){
  SYSCTL_RCGC2_R    |= 0x020;       // F clock
  GPIO_PORTF_LOCK_R  = 0x4C4F434B;  // unlock PortF PF0
  GPIO_PORTF_CR_R    = 0x01;        // allow changes to PF0
  GPIO_PORTF_AMSEL_R = 0x00;        // disable analog function
  GPIO_PORTF_PCTL_R  = 0x0;         // GPIO clear bit PCTL Port Control
  GPIO_PORTF_DIR_R   = 0x0E;        // PF4,PF0 input, PF3,PF2,PF1 output
  GPIO_PORTF_AFSEL_R = 0x0;         // no alternate function
  GPIO_PORTF_PUR_R   = 0x11;        // enable pullup resistors on PF4,PF0
  GPIO_PORTF_DEN_R   = 0x01F;       // enable digital pins PF4-PF0
  GPIO_PORTF_IM_R    = 0x01;        // Mask PF0 (botão SW2)
  GPIO_PORTF_IEV_R   = 0x00;        // Falling edge PF0
  NVIC_PRI7_R        = 0x600000;    // Prioridade 3
  NVIC_EN0_R         = 0x40000000;  // BIT 30
}
void QEI_INIT(void){
  SYSCTL_RCGCQEI_R   = 0x03;        // ativa os 2 modulos QEI (envio clock para cada um)
  QEI0_CTL_R         = 0x2029;
  QEI1_CTL_R         = 0x2029;
  QEI0_MAXPOS_R      = 0X95F;     // 600*2-1 600ppr 4 da enquadratura
  QEI1_MAXPOS_R      = 0X95F;
  QEI0_LOAD_R        = 0xC3500;   // 0.1 seg
  QEI1_LOAD_R        = 0xC3500;   // 0.1 seg
}
void Timer0A_Init(void){
  SYSCTL_RCGCTIMER_R |= 0x01; // activate TIMER0
  TIMER0_CTL_R = 0x00;        // disable TIMER0A during setup
  TIMER0_CFG_R = 0x00;        // configure for 32-bit mode
  TIMER0_TAMR_R = 0x01;       // configure for one-shot mode  //down-count settings
  TIMER0_TAILR_R = 0x4C4B400; // reload value 5seg
  TIMER0_TAPR_R = 0x00;       // bus clock resolution
  TIMER0_IMR_R = 0x01;        // mask
  NVIC_PRI4_R = 0x60000000;   // priority 4
  NVIC_EN0_R |= 1<<19;
}
