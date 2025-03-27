#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"

#define PWM_INPUT_PIN_MASK (1U << 0)
#define PWM_INPUT_PIN_BIT 0
#define PWM_TIMER_BASE TIMER0_BASE

void Clock_Init(long SYSDIV_var);
void initPWMInputCapture(void);
void TIMER0A_Handler(void);
void TIMER0B_Handler(void);
void jorjin(uint16_t load);
void PortF_Init(void);
volatile int LEITURA=0;
volatile int diff=0;
volatile int DIFF2=0;
int VALOR_NOVOA=0, VALOR_ANTIGOA=0, DEF=0;
int VALOR_NOVOB=0, VALOR_ANTIGOB=0;
int cafe=19361;
int main(void) {
    // Inicialização do sistema
    // Configurar o clock do sistema conforme necessário

    // Inicialização do PWM Input Capture
    Clock_Init(9); //40M clock
    //initPWMInputCapture();
    jorjin(cafe);
    PortF_Init();



    // Habilitar interrupção global
   // __enable_irq();

    while(1) {

       // while(TIMER0_TAR_R == VALOR_ANTIGO){ }
        VALOR_NOVOA=TIMER0_TAR_R;
        VALOR_NOVOB=TIMER0_TBR_R;
        DIFF2=VALOR_NOVOA-VALOR_NOVOB;
        if(VALOR_NOVOA > VALOR_NOVOB){
        DEF=VALOR_NOVOA-VALOR_NOVOB;
        }

        if(VALOR_NOVOB > VALOR_NOVOA){
            DEF=cafe-(VALOR_NOVOB-VALOR_NOVOA);
        }
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

void jorjin(uint16_t load){
    SYSCTL_RCGCTIMER_R |= 0x01; //  activate TIMER0
      TIMER0_CTL_R = 0x00;  // disable TIMER0A during setup
      TIMER0_CFG_R = 0x04;  //  configure for 16-bit mode
      TIMER0_TAMR_R = 0x07; // configure for capture and edge-time mode
      TIMER0_TBMR_R = 0X07; // configure for edge time mode and one-shot mode

      TIMER0_CTL_R |= 0x400; // enable TIMER0A and TIMER0B set timer-event to positive edge and negative edge
        //down-count settings
      TIMER0_TAPR_R = 0;
      TIMER0_TBPR_R = 0;


      TIMER0_TAILR_R = load-1 ;  // reload value
      TIMER0_TBILR_R = load-1 ;
      TIMER0_CTL_R |= 0x101;        // bus clock resolution


}
void PortF_Init(void){ volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x00000020;    // F clock R5
  GPIO_PORTF_LOCK_R = 0x4C4F434B;   // 2) unlock PortF PF0
  GPIO_PORTF_CR_R = 0x1F;           // allow changes to PF4-0
  GPIO_PORTF_AMSEL_R = 0x00;       // disable analog function
  //GPIO_PORTF_PCTL_R = 0x0;       // GPIO clear bit PCTL Port Control
  GPIO_PORTF_AFSEL_R = 0x3;       // alternate function to PF0 AND PF1
  GPIO_PORTF_PCTL_R = 0x77;       // Port Mux Control 7
  GPIO_PORTF_DIR_R = 0x00;         // all ports as input
  GPIO_PORTF_DEN_R = 0x03;        // enable digital pins PF1 and PF0
}
