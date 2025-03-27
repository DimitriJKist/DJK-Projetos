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
uint32_t V=0;
uint32_t D=0;
char buffer[100];
int salvar=0;
int count=0;
int flag_e=0;
int min=0;

void QEI_INIT(void);
void PORTD_INIT(void);//RPM       QEI0
void PORTC_INIT(void);//POSIÇÃO   QEI1
void PORTF_INIT(void);
void Enviar_VEL(float volatile in);
void Enviar_DIR(float volatile in);
void StartCritical(void);
void EndCritical(void);
void EnableInterrupts(void);
void UART5_Init(void);
void UART5_InString(void);
void UART5_Handler(void);
void UART_OutString(char *pt);
void RESET_DIARIO(void);


int main(void){
  StartCritical();
  QEI_INIT();
  PORTD_INIT();
  PORTC_INIT();
  UART5_Init();
  PORTF_INIT();
  EnableInterrupts();
  EndCritical();
  while(1){
    if(QEI1_TIME_R < 8000000){ //menor que meio segundo (período total 1seg)
      if(flag1 == 0){
        angulo = QEI1_POS_R*360/2400;
        Enviar_DIR(angulo);
        flag1=1;
      }
    }
    else{flag1=0;}

    if(QEI0_TIME_R<16000000){ //1segundo (período é 10 seg)
      if(flag2 == 0){
        velocidade = (QEI0_SPEED_R/(2.4)); // para RPM colcoar (qei0*0.01)
        Enviar_VEL(velocidade);
        flag2 = 1;
      }
    }
    else{flag2=0;}

    if(salvar==2){
      GPIO_PORTF_DATA_R = 0x08;    //LED VERDE
      UART_OutString("AT+SEND=5:");
      UART_OutUDec(V);
      UART_OutChar(';');
      UART_OutUDec(D);
      UART_OutChar('\n');
      salvar=0;
      flag_e=0;
        UART5_InString(); //enche o buffer
        for(int h=0;h<50;h++){
            if(h==49){
                 count=0;
           }
            if(buffer[h]=='E'){
                flag_e=1;
            }
            if(flag_e==1){
                if(buffer[h]=='R'){
                   flag_e=2;
                }
            }
            if(flag_e==2){
                 if(buffer[h]=='R'){
                    flag_e=3;
                 }
            }
            if(flag_e==3){
                 if(buffer[h]=='O'){
                    flag_e=4;
                 }
            }
            if(flag_e==4){
                 if(buffer[h]=='R'){
                    flag_e=5;
                 }
            }
            if(flag_e==5){
                count++;
                h=50;
            }
        }
        RESET_DIARIO();
        if(count==5){
            UART_OutString("ATZ");
            UART_OutChar('\n');
            count=0;
        }
      GPIO_PORTF_DATA_R = 0x00;    //LED OFF
    }
  }
}

void Enviar_VEL(float volatile in){
  if(count1 < 6){
    LAST_VEL = (in/6) + LAST_VEL;  // FAZ A MÉDIA dos valores de velocidade que sao medidos a cada
    count1++;                      //10 seg para ser salva a cada 60seg (60 valores))
  }
  else{
    V=LAST_VEL;
    salvar++;
    count1 = 1;
    LAST_VEL=(in/6);
  }
}

void Enviar_DIR(float volatile in){
  if(count2 < 60){
    LAST_DIR = (in/60) + LAST_DIR;  // FAZ A MÉDIA dos valores de direção que sao medidos a cada
    count2++;                      //1 seg para ser salva a cada 60seg (60 valores))
  }
  else{
    D=LAST_DIR;
    salvar++;
    count2 = 1;
    LAST_DIR=(in/60);
  }
}

void UART5_Handler(void){
  int flag_e=0;
  UART5_InString(); //enche o buffer
  for(int h=0;h<50;h++){
      if(h==49){
           count=0;
     }
      if(buffer[h]=='E'){
          flag_e=1;
      }
      if(flag_e==1){
          if(buffer[h]=='R'){
             flag_e=2;
          }
      }
      if(flag_e==2){
           if(buffer[h]=='R'){
              flag_e=3;
           }
      }
      if(flag_e==3){
           if(buffer[h]=='O'){
              flag_e=4;
           }
      }
      if(flag_e==4){
           if(buffer[h]=='R'){
              flag_e=5;
           }
      }
      if(flag_e==5){
          count++;
          h=50;
      }
  }
  if(count==10){
      UART_OutString("ATZ");
      UART_OutChar('\n');
      count=0;
  }
  UART5_ICR_R=0x10;           //Reciver interrupt clear
}

void RESET_DIARIO(void){
    min++;
    if(min >= 720){    //1 dia tem 1440 minutos
        UART_OutString("ATZ");
        UART_OutChar('\n');
        min=0;
    }
}

void PORTD_INIT(void){
  SYSCTL_RCGC2_R    |= 0x08;
  GPIO_PORTD_LOCK_R  = 0x4C4F434B;
  GPIO_PORTD_CR_R    = 0x40;
  GPIO_PORTD_PCTL_R |= 0x66000000;  // GPIO clear bit PCTL Port Control
  GPIO_PORTD_DIR_R   = 0x00;        // ALLINPUT
  GPIO_PORTD_AFSEL_R = 0xc0;        // habilitando pinos para perifericos conforme tabela do datasheet  // A PIN 6 // B PIN 7
  GPIO_PORTD_PUR_R   = 0xc0;        // PULL-UP
  GPIO_PORTD_DEN_R   = 0xc0;        // DIGITAL ENEABLE
}

void PORTC_INIT(void){
  SYSCTL_RCGC2_R    |= 0x04;
  GPIO_PORTC_PCTL_R |= 0x6600000;   // GPIO clear bit PCTL Port Control
  GPIO_PORTC_DIR_R   = 0x00;        // ALLINPUT
  GPIO_PORTC_AFSEL_R = 0x60;        // A PIN 5 // B PIN 6  // habilitando pinos para perifericos conforme tabela do datasheet
  GPIO_PORTC_PUR_R   = 0x60;        // PULL-UP
  GPIO_PORTC_DEN_R   = 0x60;        // DIGITAL ENEABLE
}

void QEI_INIT(void){
  SYSCTL_RCGCQEI_R   = 0x03;        // ativa os 2 modulos QEI (envio clock para cada um)
  SYSCTL_RCGCGPIO_R  = 0x0c;        // clock para port D e C
  QEI0_CTL_R         = 0x2029;
  QEI1_CTL_R         = 0x2029;
  QEI0_MAXPOS_R      = 0X95F;       // 600*2-1 600ppr 4 da enquadratura
  QEI1_MAXPOS_R      = 0X95F;
  QEI0_LOAD_R        = 0x9896800;   // 10seg
  QEI1_LOAD_R        = 0xF42400;    // posição 1seg
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
//  GPIO_PORTF_IM_R    = 0x01;        // Mask PF0 (botão SW2)
//  GPIO_PORTF_IEV_R   = 0x00;        // Fallin\\g edge PF0
//  NVIC_PRI7_R        = 0x600000;    // Prioridade 3
//  NVIC_EN0_R         = 0x40000000;  // BIT 30
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



//startSSI3();
//SysTick_Wait50ms(40);
//    initialise_sd(SSI3);
//    cs_high(SSI3);
//    change_speed(SSI3);
//    cs_low(SSI3);
//
//    read_first_sector(SSI3);
//    read_disk_data(SSI3);
//    long next_cluster=get_root_dir_first_cluster();
//    do
//    {
//        next_cluster=get_files_and_dirs(next_cluster,LONG_NAME,GET_SUBDIRS,SSI3);
//    }while(next_cluster!=0x0FFFFFFF && next_cluster!=0xFFFFFFFF);
//    printf("\nDirs and files listed\n\n");
//    /*
//    next_cluster=get_first_cluster(1);
//    do
//    { next_cluster=open_file(next_cluster,SSI3);
//    }while(next_cluster!=0x0FFFFFFF && next_cluster!=0xFFFFFFFF);
//    */
//
//    //Alternative that allows opening a file by specifying a name. With this, get_first_cluster is not necessary
//
//     do
//     {
//         next_cluster = open_file_by_name("1 R\xe1pido.txt", SSI3);
//     }while(next_cluster!=0x0FFFFFFF && next_cluster!=0xFFFFFFFF);
