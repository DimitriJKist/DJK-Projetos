#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"
#include "math.h"
#include "UART.h"


#define CR   0x0D// .
#define LF   0x0A//
#define BS   0x08//
#define ESC  0x1B//
#define SP   0x20//
#define DEL  0x7F//

int INTENSIDADE=1, LED=0,aux=0;

int i=240;
int j=480;
int k=720;
int flagi=3;
int flagj=3;
int flagk=3;


void Clock_Init(long SYSDIV_var);
void PortF_Init(void);
void Delay(void);
void Timer0A_Init(uint32_t period);
void PWM1_3_B_Init(uint16_t period, uint16_t duty); //PF3 LED GREEN
void PWM1_3_A_Init(uint16_t duty);                  //PF2 LED BLUE
void PWM1_2_B_Init(uint16_t period, uint16_t duty); //PF1 LED RED
void UART_Init(void);
char UART_InChar(void);
void UART_OutChar(char data);
void UART_OutString(char *pt);
uint32_t UART_InUDec(void);
void UART_OutUDec(uint32_t n);


void main(void){
    Clock_Init(4);
    PortF_Init();
    PWM1_3_B_Init(10000,INTENSIDADE);
    PWM1_3_A_Init(INTENSIDADE);
    PWM1_2_B_Init(10000,INTENSIDADE);
    Timer0A_Init(60000);
    UART_Init();
    EnableInterrupts();
    TIMER0_CTL_R   = 0x01;
    UART_OutString("Insira um valor de 1 a 99 para mudar a claridade do led");
    UART_OutString("\n\r Valor escolhido:");
    while(1){

        PWM1_3_CMPB_R = INTENSIDADE;
        PWM1_3_CMPA_R = INTENSIDADE;
        PWM1_2_CMPB_R = INTENSIDADE;

    }
}



void Timer0A_Handler(void){

LED++;


if(LED<3000){

    PWM1_ENABLE_R |= 0x80;
    PWM1_ENABLE_R &= ~0x40;
    PWM1_ENABLE_R &= ~0x20;
}

if(LED<6000 && LED>3000){

    PWM1_ENABLE_R |= 0x40;
    PWM1_ENABLE_R &= ~0x80;
    PWM1_ENABLE_R &= ~0x20;
}

if(LED<9000 && LED>6000){

    PWM1_ENABLE_R |= 0x20;
    PWM1_ENABLE_R &= ~0x80;
    PWM1_ENABLE_R &= ~0x40;
}



if(LED>9000){LED=0;}
TIMER0_ICR_R = 0x01;    //Sair da interrupcao
}

void UART0_Handler(void){

    aux=UART_InUDec();  // 1 posicao // 2 corrente // 3 acao controle
    INTENSIDADE=aux*100;
    UART_OutString("\n\r Novo valor:  ");
    UART0_ICR_R=0x10;      //Reciver interrupt clear
}


void UART_Init(void){
    SYSCTL_RCGCUART_R |= 0x01;            // activate UART0
    SYSCTL_RCGCGPIO_R |= 0x01;            // activate port A
    while((SYSCTL_PRGPIO_R&0x01) == 0){};
    UART0_CTL_R &= ~UART_CTL_UARTEN;      // disable UART
    UART0_IBRD_R = 43;                    // IBRD = int(80M / (16 * 115,200)) = int(43.4027778)
    UART0_FBRD_R = 26;                    // FBRD = int(4027778 * 64 + 0.5) = 26
    // 8 bit word length (no parity bits, one stop bit, FIFOs)
    UART0_LCRH_R = (UART_LCRH_WLEN_8|UART_LCRH_FEN);
    UART0_CTL_R |= UART_CTL_UARTEN;       // enable UART
    GPIO_PORTA_AFSEL_R |= 0x03;           // enable alt funct on PA 1-0
    GPIO_PORTA_DEN_R |= 0x03;             // enable digital I/O on PA 1-0
    // configure PA1-0 as UART
    GPIO_PORTA_PCTL_R = (GPIO_PORTA_PCTL_R&0xFFFFFF00)+0x00000011;
    GPIO_PORTA_AMSEL_R &= ~0x03;          // disable analog functionality on PA
    UART0_IFLS_R        = 0x00;           // ira ativar o interrupt quando a fifo estiver: 1/4(0x08) cheia (0x0 para 1/8)
    UART0_IM_R          = 0x010;          // recive interrupt mask
    NVIC_PRI5_R         = 0x6000;         // Priority 3 (vector number:21)
    NVIC_EN0_R          = 0x20;           // interrupt number:5

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


 void Timer0A_Init(uint32_t period){
     SYSCTL_RCGCTIMER_R |= 0x01;  //  activate TIMER0
     TIMER0_CTL_R = 0x00;         //  disable TIMER0A during setup
     TIMER0_CFG_R = 0x04;         //  configure for 16-bit mode
     TIMER0_TAMR_R = 0x02;
     TIMER0_TAILR_R = period-1;   //  reload value
     TIMER0_TAPR_R = 0;           //  bus clock resolution
     TIMER0_IMR_R = 0x01;         //  mask
     NVIC_PRI4_R = 0x60000000;    //  priority 4
     NVIC_EN0_R |= 1<<19;
 }

 uint32_t UART_InUDec(void){
 uint32_t number=0, length=0;
 char character;
   character = UART_InChar();
   while(character != CR){ // accepts until <enter> is typed
 // The next line checks that the input is a digit, 0-9.
 // If the character is not 0-9, it is ignored and not echoed
     if((character>='0') && (character<='9')) {
       number = 10*number+(character-'0');   // this line overflows if above 4294967295
       length++;
       UART_OutChar(character);
     }
 // If the input is a backspace, then the return number is
 // changed and a backspace is outputted to the screen
     else if((character==BS) && length){
       number /= 10;
       length--;
       UART_OutChar(character);
     }
     character = UART_InChar();
   }
   return number;
 }

 char UART_InChar(void){
   while((UART0_FR_R&UART_FR_RXFE) != 0);//
  // comando = ((char)(UART0_DR_R&0xFF));
   return((char)(UART0_DR_R&0xFF));
 }

 void UART_OutChar(char data){  while((UART0_FR_R&UART_FR_TXFF) != 0);//MUDADO DE UART0 PARA UART5
   UART0_DR_R = data;
 }

 //------------UART_OutString------------
 // Output String (NULL termination)
 // Input: pointer to a NULL-terminated string to be transferred
 // Output: none

 void UART_OutString(char *pt){
   while(*pt){
     UART_OutChar(*pt);
     pt++;
   }
 }

 //-----------------------UART_OutUDec-----------------------
 // Output a 32-bit number in unsigned decimal format
 // Input: 32-bit number to be transferred
 // Output: none
 // Variable format 1-10 digits with no space before or after
 void UART_OutUDec(uint32_t n){
 // This function uses recursion to convert decimal number
 //   of unspecified length as an ASCII string
   if(n >= 10){
     UART_OutUDec(n/10);
     n = n%10;
   }
   UART_OutChar(n+'0'); /* n is between 0 and 9 */
 }


