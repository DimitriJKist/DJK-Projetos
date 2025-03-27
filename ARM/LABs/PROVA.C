#include <stdint.h>

#include <stdlib.h>

#include "tm4c123gh6pm.h"



int i=0;

int x=0;

uint16_t vet[10000];

void ADC_Init(void);

void StartCritical(void);

void EnableInterrupts(void);

void Timer0A_Init(uint32_t period);

void EndCritical(void);

void Delay(void);

void PortF_Init(void);

void PWM1_3_B_Init(uint16_t period, uint16_t duty);
void UART_Init(void);
uint32_t UART_InUDec(void);
void UART_OutString(char *pt);
int flag=0;

void main(void){

    StartCritical();

    ADC_Init();

    Timer0A_Init(16);

    PortF_Init();

    UART_Init();

    PWM1_3_B_Init(2500,i);

    EnableInterrupts();

    EndCritical();

    UART_InUDec();

    ADC0_PSSI_R=0x8;

    TIMER0_CTL_R = 0x01;

    while(1){

        if(flag==1){PWM1_3_CMPB_R = i;}

        if(flag==0){PWM1_3_CMPB_R = 0;}

       if(x>10000) {

           x=0;

       }

    }

}

void UART0_Handler(void){

  flag=UART_InUDec();

  UART_OutChar('\n');

  UART_OutChar('\r');

  UART_OutString("Insira 1 para ligado e 0 para desligado\r \n");

  UART0_ICR_R=0x10;      //Reciver interrupt clear

}



//gerador de função 5hz

//acquisition 10000

//data tipe 16bit unsignet integer

//sample rate 3200

//display data size 10000

//time display ms





void Timer0A_Handler(void){

    i=ADC0_SSFIFO3_R;

    vet[x]=i;

    ADC0_PSSI_R=0x8;

    x++;

    TIMER0_CTL_R = 0x01;

    TIMER0_ICR_R = 0x01;

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



void ADC_Init(void){

volatile unsigned long delay;

SYSCTL_RCGC2_R |= 0x00000010; // 1) activate PORTE

delay = SYSCTL_RCGC2_R;

GPIO_PORTE_DIR_R &= ~0x04; // 2) make PE2 input

GPIO_PORTE_AFSEL_R |= 0x04; // 3) enable alternate function on PE2

GPIO_PORTE_DEN_R &= ~0x04; // 4) disable digital I/O on PE2

GPIO_PORTE_AMSEL_R |= 0x04; // 5) enable analog functionality on PE2

SYSCTL_RCGC0_R |= 0x010000; // 6) activate ADC0

delay = SYSCTL_RCGCADC_R;

ADC0_PC_R = 0x07;         // 7) configure for 1M samples/sec

ADC0_SSPRI_R |= 0x3210;    // 8) sequencer 0 is highest, sequencer 3 is lowest

ADC0_ACTSS_R &= ~0x08;    // 9) disable sample sequencer 3

ADC0_SAC_R = 0x04;        // 10) hardware average

ADC0_EMUX_R = (ADC0_EMUX_R&0xFFFF0FFF)+0x0000; // 11) activate software trigger event

ADC0_SSMUX3_R = 1;        // 12) Sample Input Select

ADC0_ACTSS_R |= 0x08;     // 13) enable sample sequencer 3

ADC0_SSCTL3_R = 0x06;     // 14) set flag and end

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

void UART_Init(void){

  SYSCTL_RCGCUART_R |= 0x01;            // activate UART0

  SYSCTL_RCGCGPIO_R |= 0x01;            // activate port A

  while((SYSCTL_PRGPIO_R&0x01) == 0){};

  UART0_CTL_R &= ~UART_CTL_UARTEN;      // disable UART

  UART0_IBRD_R = 8;                   // IBRD = int(16,000,000 / (16 * 115,200)) = int(8.68)

  UART0_FBRD_R = 26;                    // FBRD = int(0.4028 * 64 + 0.5) = 26

                                        // 8 bit word length (no parity bits, one stop bit, FIFOs)

  UART0_LCRH_R = (UART_LCRH_WLEN_8|UART_LCRH_FEN);

  UART0_CTL_R |= UART_CTL_UARTEN;       // enable UART

  GPIO_PORTA_AFSEL_R |= 0x03;           // enable alt funct on PA1-0

  GPIO_PORTA_DEN_R |= 0x03;             // enable digital I/O on PA1-0

                                        // configure PA1-0 as UART

  GPIO_PORTA_PCTL_R = (GPIO_PORTA_PCTL_R&0xFFFFFF00)+0x00000011;

  GPIO_PORTA_AMSEL_R &= ~0x03;          // disable analog functionality on PA

  UART0_IFLS_R        = 0x00;           // ira ativar o interrupt quando a fifo estiver: 1/4(0x08) cheia (0x0 para 1/8)

  UART0_IM_R          = 0x010;          // recive interrupt mask

  NVIC_PRI5_R        = 0x8000;          // Priority 4 (vector number:21)

  NVIC_EN0_R          = 0x20;           // interrupt number:5

}
