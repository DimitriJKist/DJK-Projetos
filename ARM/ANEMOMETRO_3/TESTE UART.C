#include <stdint.h>
#include <stdlib.h>
#include "inc/tm4c123gh6pm.h"
#include "math.h"
#include "UART.h"


// PE4-Rx PE5-Tx
// PD6 e PD7 velocidade do vento
// PC5 E PC6 posição
// verde  =  A (CLK) PD6 E PC5
// branco =  B (DIR) PD7 E PC6

int velocidade=0;
int angulo=0;
int count1=0;
int count2=0;
int flag1=0;
int flag2=0;
int length=0;
float LAST_DIR = 0;
float LAST_VEL = 0;
uint32_t V=10000;
uint32_t D=90;
char buffer[100];
int salvar=0;
int count=0;

void StartCritical(void);
void EndCritical(void);
void EnableInterrupts(void);
void UART5_Init(void);
void UART5_InString(void);
void UART5_Handler(void);
void delay(int segundos);

int main(void){
  StartCritical();
  UART5_Init();
  EnableInterrupts();
  EndCritical();
//  UART_OutString("AT+NJS=?");
//  UART_OutChar('\n');
  UART_OutString("AT");
  UART_OutChar('\n');
  while(1){
      delay(60);
      UART_OutString("AT+SEND=5:");
      UART_OutUDec(V);
      UART_OutChar(';');
      UART_OutUDec(D);
      UART_OutChar('\n');
    }
}

void UART5_Handler(void){
  UART5_InString();
  count++;
  UART5_ICR_R=0x10;           //Reciver interrupt clear
}

void UART5_Init(void){
  SYSCTL_RCGCUART_R  |= 0x20;        // activate UART
  SYSCTL_RCGC2_R     |= 0x010;       // activate port E
  while((SYSCTL_PRGPIO_R&0x010) == 0){};
  UART5_CTL_R &= ~UART_CTL_UARTEN;   // disable UART
  UART5_IBRD_R        = 104;         // IBRD = int(16,000,000 / (16 * 9600)) = int(104.1666)
  UART5_FBRD_R        = 11;          // FBRD = int(0.1666 * 64 + 0.5) = 11,11111
  UART5_LCRH_R = (UART_LCRH_WLEN_8|UART_LCRH_FEN);// 8 bit word length (no parity bits, one stop bit, FIFOs)
  UART5_CTL_R |= UART_CTL_UARTEN;    // enable UART
  GPIO_PORTE_AFSEL_R |= 0x030;       // enable alt funct on PE5 and PE4
  GPIO_PORTE_DEN_R   |= 0x030;       // enable digital I/O on PE5 and PE4
  GPIO_PORTE_PCTL_R   = 0x0110000;    // configure PE5(Tx) PE4(Rx) as UART
  GPIO_PORTE_AMSEL_R  = 0x30;        // disable analog functionality on PE5 and PE4
  UART5_IFLS_R        = 0x00;        // ira ativar o interrupt quando a fifo estiver 1/4(0x08) cheia (0x0 para 1/8)
  UART5_IM_R          = 0x010;       // recive interrupt mask
  NVIC_PRI19_R        = 0x8000;      // Priority 4 (vector number:77)
  NVIC_EN1_R          = 0x20000000;  // interrupt number:61
}

void UART5_InString(void) {//o tamanho do comando inserido é guardado na variavel length
  length=0;
  char character;
  int max=100;
  int ii=0;
  character = UART_InChar();
  while(character != CR){
    if(character == BS){
      if(length){
        ii--;
        length--;
      }
    }
    else if(length < max){
       buffer[ii] = character;
       ii++;
       length++;
    }
    character = UART_InChar();
  }
  ii = length;
}

void delay(int segundos){
    int tempo=0;
    tempo=segundos*16000000;
    while(tempo != 0){tempo--;}
    return;
}

