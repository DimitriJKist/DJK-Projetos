#include <stdint.h>
#include <stdlib.h>
#include "inc/tm4c123gh6pm.h"
#include "math.h"
#include "UART.h"

///////////////////////////////////
//-------------------------------//
//  PINO |        FUNÇÃO         //
//-------------------------------//
//  PD3  NUtil|   QEI 0 IDX      //
//  PF0  |      QEI 0 BCO        //
//  PF1  |      QEI 0 VRD        //
//  PF4  |   Botão do encoder    //
//-------------------------------//
//  PC4  |      QEI 1 IDX        //
//  PC5  |      QEI 1 BCO        //
//  PC6  |      QEI 1 VRD        //
//-------------------------------//
//  PB0  |    Decodificador A    //
//  PB1  |    Decodificador B    //
//  PB4  |    Decodificador C    //
//  PB5  |    Decodificador D    //
//  PB6  | 7 segmentos digito 1  //
//  PB7  | 7 segmentos digito 2  //
//  PF2  | 7 segmentos digito 3  //
//  PF3  |     negativo LED      //
//-------------------------------//
//  PA0 (USB) |     UART 0       //
//  PA1 (USB) |     UART 0       //
//-------------------------------//
//  PE4  |     PWM Padrão        //
//  PE5  |   PWM Complementar    //
//  PE1  |       Eneable         //
//-------------------------------//
//  PE2  |    AD0 (Corrente)     //
//  PE3  |    AD1 (Disponível)   //
//-------------------------------//
///////////////////////////////////

///////////////////////// ENCODERS ////////////////////////////////
//---------------------------------------------------------------//
//  IDX, AMRL | VRD, A, CLK | BCO, B, DIR |       MÓDULO         //
//---------------------------------------------------------------//
//     PD3    |     PF0     |     PF1     |  QEI 1 --> CONTROLE  //
//     PC4    |     PC5     |     PC6     |  QEI 0 --> USUARIO   //
//---------------------------------------------------------------//
///////////////////////////////////////////////////////////////////


int CONTROLE_ON=0, count_display=0, angulo0=0, angulo1_aux=0,dado_escolhido=0,INICIO=0;
int acao_controle=0, buffer[100], length=0, numero_de_pontos_acao_controle=0;
float REF=0, REF_controle=0, V0=0, V1=0, Vsaida_antigo=0, angulo1_normalizado=0, Vsaida=0, angulo0_normalizado=0, zerar_var=0,RPM=0,  DADOOO=0;
int angulo0aux=0, angulo1aux=0, primeira=1, i=0, ii=0, dado_a_ser_enviado=0,dado_a_ser_enviado2=0,comando_decimal=0, Vsaida_ant=0;
float vet1[4000];
int auxiliar=0;
//float Kp=0.85;  // Ganho proporcional
//float Ti=0.3;//0.7234
//float Td=0.11;//0.1555

float Kp=0.85;  // Ganho proporcional
float Ti=0.3;//0.7234
float Td=0.11;//0.1555



float N =25;
float e_aw=0;

float A=0, B=0, a=0, wc=0, pi=3.14159265359;

float Ud_ant=0, Ud=0, Ui=0, Ui_ant=0, angulo1_ant=0, Up=0, angulo1=0, erro=0, erro_ant=0,angulo1_ant_2=0, e_filtro=0, u_filtro=0, u_filtro_ant=0, e_filtro_ant=0;

float DUTY=50;
float Dado=0;
int FREQ_AD=10000;
int FREQ_PWM=20000;
uint8_t ENEABLE=1, novas_constantes=0;
float Ts = 0.0001;

void Clock_Init(long SYSDIV_var);
void QEI_INIT(void);
void PORTD_INIT(void);//RPM       QEI0
void PORTC_INIT(void);//POSIÇÃO   QEI1
void PORTF_INIT(void);
void PORTB_INIT(void);
void PortE_Init(void);
void StartCritical(void);
void EndCritical(void);
void EnableInterrupts(void);
void UART_OutString(char *pt);
void UART_Init(void);
void Timer0A_Init(uint32_t period);
void Timer0A_Handler(void);
void PWM1_1_Init(uint16_t period, uint16_t duty);
void UART0_Handler(void);
void ADC_Init(void);
uint32_t UART_InUDec(void);
void UART_OutChar(char data);
void UART_OutUDec(uint32_t n);

void update_display(int angle);
const uint8_t digit_to_binary[10] = {
                                     0b0000, // 0
                                     0b0001, // 1
                                     0b0010, // 2
                                     0b0011, // 3
                                     0b0100, // 4
                                     0b0101, // 5
                                     0b0110, // 6
                                     0b0111, // 7
                                     0b1000, // 8
                                     0b1001  // 9
};

// Definições para os pinos do decodificador
#define DECODE_A 0x01  // PB0
#define DECODE_B 0x02  // PB1
#define DECODE_C 0x10  // PB4
#define DECODE_D 0x20  // PB5

// Definições para os pinos de seleção dos dígitos
#define DIGIT1 0x40  // PB6
#define DIGIT2 0x80  // PB7
#define DIGIT3 0x04  // PF2



int main(void){

    StartCritical();

    Clock_Init(4); //80M
    SYSCTL_RCGCQEI_R   = 0x03;            // ativa os 2 modulos QEI (envio clock para cada um)
    SYSCTL_RCGCGPIO_R  = 0x0E;            // clock para port D e C e B
    PORTB_INIT();
    QEI_INIT();
    PORTC_INIT();
    PORTD_INIT();
    PortE_Init();
    PORTF_INIT();
    UART_Init();
    ADC_Init();
    PWM1_1_Init(80000000/FREQ_PWM,(800000/FREQ_PWM)*(DUTY)-1);
    Timer0A_Init(80000000/FREQ_AD);

    comando='0';
    PWM1_1_CTL_R  |= 0x01;           //  start PWM1_GEN1
    TIMER0_CTL_R   = 0x01;
    QEI0_CTL_R    |= 0x1;
    QEI1_CTL_R    |= 0x1;
    QEI1_POS_R     = 32000;       // 1seg
    QEI0_POS_R     =(80-1)*4.5*3;
    PWM1_ENABLE_R |= 0xC;


    EnableInterrupts();
    EndCritical();


    wc=400;
    a = wc*Ts*0.5;
    A = a/(1+a);
    B = (a-1)/(1+a);



    while(1){
        angulo0 = ((QEI0_POS_R)-((80-1)*4.5*3)); // graus
        PWM1_1_CMPA_R = (800000/FREQ_PWM)*(DUTY)-1;
        // REF=angulo0;
        REF=180;
        if(ENEABLE == 1){GPIO_PORTE_DATA_R |= 0x02;}
        if(ENEABLE == 0){GPIO_PORTE_DATA_R &= ~0x02;}
        //RPM=QEI1_SPEED_R*1.5;
    }
}

void Timer0A_Handler(void){
    ADC0_PSSI_R=0x8;
    // ADC1_PSSI_R=0x8;

    while(ADC0_RIS_R==0 && ADC1_RIS_R==0){}
    V0=(ADC0_SSFIFO3_R*(float)0.001)-2;
    // V1=ADC1_SSFIFO3_R;//)*3.3/4096;

    angulo1aux = (QEI1_POS_R-32000);  // graus
    angulo1 = (angulo1aux*0.045);  // graus


    switch(CONTROLE_ON){
    case 0:
        GPIO_PORTE_DATA_R &= ~0x02;
        PWM1_ENABLE_R &= ~0xC;
        primeira=1;
        ii=0;
        i=0;
        REF_controle=0;
        INICIO=0;
        DUTY=50;
        angulo1_ant=angulo1;

        break;

    case 1:

        if(primeira==1){
            GPIO_PORTE_DATA_R |= 0x02;
            PWM1_ENABLE_R |= 0xC;
            Ui=0;
            Ud=0;
            Up=0;
            Ui_ant = 0;
            Ud_ant = 0;
            erro_ant=0;
            primeira=0;
            Vsaida_ant=0;
            e_aw=0;
            erro=0;
            DUTY=50;
            Vsaida=0;
        }

        REF_controle=REF;
        erro=REF-angulo1;

        if (Vsaida_ant >= 12 || Vsaida_ant <= -12){e_aw = 0;}
        else{e_aw = erro;}

        Up = Kp * e_aw;
        Ui = Ui_ant + (Kp*Ts/Ti)*e_aw;
        Ud = (Td / (Td + N * Ts)) * Ud_ant-(Kp*Td*N) / ((Td + N * Ts)) * (angulo1-angulo1_ant);

        e_filtro = Ud;
        u_filtro = e_filtro_ant*A + e_filtro*A - B*u_filtro_ant;
        e_filtro_ant = e_filtro;
        u_filtro_ant = u_filtro;


        Vsaida = Up+Ui+u_filtro;
        // Vsaida=erro;

        Ui_ant = Ui;
        Ud_ant = Ud;
        Vsaida_ant=Vsaida;
        erro_ant=erro;
        angulo1_ant=angulo1;

        if(Vsaida > 12){Vsaida=12;}  //saturador
        if(Vsaida < -12){Vsaida= -12;}  //saturador

        DUTY=(Vsaida*(float)4.1666666666666666666)+50; //4.1666 = 50/12

        switch(dado_escolhido){
        case 1:
            DADOOO=angulo1;
            break;
        case 2:
            DADOOO=Vsaida;
            break;
        case 3:
            DADOOO=e_aw;
            break;
        case 4:
            DADOOO=Up;
            break;
        case 5:
            DADOOO=Ud;
            break;
        case 6:
            DADOOO=Ui;
            break;
        case 7:
            DADOOO=V0;
            break;
        case 8:
            DADOOO=u_filtro;
            break;
        }
        if(i==10 & ii<4001){
            vet1[ii]=DADOOO;
            ii++;
            i=0;
        }
        i++;

        break;

        case 2:
            angulo1_ant=angulo1;
            if(INICIO>800 && DUTY < 92){
                DUTY++;
                INICIO=0;
            }
            INICIO++;
            if(angulo1>160){CONTROLE_ON=1;}

            break;

    }

    if(DUTY > 99){DUTY=99;}  //saturador
    if(DUTY < 1){DUTY=1;}  //saturador

    //    if(comando == '0'){comando_decimal=0;}
    //    if(comando == '1'){comando_decimal=1;}
    //    if(comando == '2'){comando_decimal=2;}
    //    if(comando == '3'){comando_decimal=3;}
    //    if(comando == '4'){comando_decimal=4;}
    //
    //    switch(comando_decimal){
    //    case 0:
    //        dado_a_ser_enviado=(angulo1+500)*(100);
    //        dado_a_ser_enviado2=(REF_controle+500)*(100);
    //    break;
    //    case 1:
    //        dado_a_ser_enviado=(DUTY+500)*(100);
    //        dado_a_ser_enviado2=(REF_controle+500)*(100);
    //    break;
    //
    //    case 2:
    //       dado_a_ser_enviado=(erro+500)*(100);
    //       dado_a_ser_enviado2=(REF_controle+500)*(100);
    //    break;
    //    case 3:
    //        dado_a_ser_enviado=(V0+500)*(100);
    //        dado_a_ser_enviado2=(REF_controle+500)*(100);
    //    case 4:
    //        if(CONTROLE_ON == 0){CONTROLE_ON=1;}
    //        else{CONTROLE_ON=0;}
    //        comando='0';
    //
    //    break;
    //    }
    //
    //    UART_OutUDec(dado_a_ser_enviado);
    //    UART_OutChar(':');
    //    UART_OutUDec(dado_a_ser_enviado2);
    //    UART_OutChar(';');

    if(count_display==4){
        angulo1_aux=angulo1;
        update_display(angulo1_aux);
        count_display=0;
    }
    count_display++;

    TIMER0_ICR_R = 0x01;    //Sair da interrupcao
}

void UART0_Handler(void){
    // comando=UART_InChar();  // 1 posicao // 2 corrente // 3 acao controle
    UART0_ICR_R=0x10;      //Reciver interrupt clear
}

void GPIOPortF_Handler(void){
    int delay=0; //delay para nao entrar nessa interrupçao toda hora
    if(CONTROLE_ON == 0){CONTROLE_ON=2;PWM1_ENABLE_R |= 0xC;}
    else{CONTROLE_ON=0; PWM1_ENABLE_R &= ~0xC;}
    while(delay<12e4){delay++;}
    GPIO_PORTF_ICR_R=0x0FF;
}

void PORTD_INIT(void){
    SYSCTL_RCGC2_R    |= 0x08;
    GPIO_PORTD_LOCK_R  = 0x4C4F434B;
    GPIO_PORTD_CR_R    = 0xC0;
    GPIO_PORTD_PCTL_R |= 0x00006000;  // PD 3 6 7 To QEI0
    GPIO_PORTD_DIR_R   = 0x00;        // ALLINPUT
    GPIO_PORTD_AFSEL_R = 0x08;        // habilitando pinos para perifericos conforme tabela do datasheet  // A PIN 6 // B PIN 7 // IDX PIN 3
    GPIO_PORTD_PUR_R   = 0x08;        // PULL-UP
    GPIO_PORTD_DEN_R   = 0x08;        // DIGITAL ENEABLE
}
void PORTC_INIT(void){
    SYSCTL_RCGC2_R    |= 0x04;
    GPIO_PORTC_PCTL_R |= 0x6660000;   // PC 4 5 6 TO QEI 1
    GPIO_PORTC_DIR_R   = 0x00;        // ALLINPUT
    GPIO_PORTC_AFSEL_R = 0x70;        // A PIN 5 // B PIN 6  // IDX PIN 4 // habilitando pinos para perifericos conforme tabela do datasheet
    GPIO_PORTC_PUR_R   = 0x70;        // PULL-UP
    GPIO_PORTC_DEN_R   = 0x70;        // DIGITAL ENEABLE
}
void QEI_INIT(void){
    QEI0_CTL_R         = 0x0008;          // USUARIO
    QEI1_CTL_R         = 0x0028;          // CONTROLE   (ANTERIORMENTE 0X008)
    QEI0_MAXPOS_R      = (80-1)*4.5*6;          // 2000*4-1 2000ppr 4 da enquadratura e 5000 voltas para os 2 lados
    QEI1_MAXPOS_R      = (70000-1);       // 20*4-1
    QEI0_LOAD_R        = 400000;       //
    QEI1_LOAD_R        = 400000;       //

}
void PORTB_INIT(void){
    SYSCTL_RCGC2_R    |= 0x02;
    GPIO_PORTB_PCTL_R  = 0x00;
    GPIO_PORTB_DIR_R   = 0xF3;        // PB 0 1 4 5 6 7 OUTPUT
    GPIO_PORTB_AFSEL_R = 0x00;
    GPIO_PORTB_PUR_R   = 0x00;        // PULL-UP PRECISA?
    GPIO_PORTB_DEN_R   = 0xF3;        // DIGITAL ENEABLE PB 0 1 4 5 6 7 (PB2 E 3 FUNÇAO ESPECIAL, MEDO DE ESTRAGAR A PLACA :D)
}
void PORTF_INIT(void){
    SYSCTL_RCGC2_R    |= 0x020;       // F clock
    GPIO_PORTF_LOCK_R  = 0x4C4F434B;  // unlock PortF PF0
    GPIO_PORTF_CR_R    = 0x01;        // allow changes to PF0
    GPIO_PORTF_PCTL_R  = 0x66;        // GPIO clear bit PCTL Port Control
    GPIO_PORTF_DIR_R   = 0x0D;        //
    GPIO_PORTF_AFSEL_R = 0x03;        //
    GPIO_PORTF_PUR_R   = 0x13;        // enable pullup resistors on PF4,PF0
    GPIO_PORTF_DEN_R   = 0x01F;       // enable digital pins PF4-PF0
    GPIO_PORTF_IM_R    = 0x010;       // Mask PF4 (botão SW2)
    GPIO_PORTF_IEV_R   = 0x00;        // Fallin\\g edge PF0
    NVIC_PRI7_R        = 0x600000;    // Prioridade 3
    NVIC_EN0_R         = 0x40000000;  // BIT 30
}

void PortE_Init(void){
    volatile unsigned long delay;
    SYSCTL_RCGC2_R |= 0x00000010;      //  activate PORTE
    delay = SYSCTL_RCGC2_R;
    delay = SYSCTL_RCGC2_R;
    delay = SYSCTL_RCGC2_R;
    GPIO_PORTE_DIR_R = 0x0F3;          //  make PE2, PE3 input and PE4,PE5 output
    GPIO_PORTE_AFSEL_R = 0x3C;         //  enable alternate function on PE2, PE3, PE4, PE5
    GPIO_PORTE_DEN_R  = 0x0F3;         //  disable digital I/O on PE2 and PE3
    GPIO_PORTE_AMSEL_R |= 0x0C;        //  enable analog functionality on PE2 and PE3
    GPIO_PORTE_PCTL_R = 0x550000;      //  PWM function to PE4 and PE5
}

void Clock_Init(long SYSDIV_var){
    SYSCTL_RCC2_R |= 0x80000000;
    SYSCTL_RCC2_R |= 0x00000800;
    SYSCTL_RCC_R &= ~0x00400000;
    SYSCTL_RCC_R &= ~0x000007C0;
    SYSCTL_RCC_R += 0x00000540;
    SYSCTL_RCC2_R &= ~0x00000070;
    SYSCTL_RCC2_R += 0x00000000;
    SYSCTL_RCC2_R &= ~0x00002000;
    SYSCTL_RCC2_R |= 0x40000000;
    SYSCTL_RCC2_R  = (SYSCTL_RCC2_R&~0x1FC00000)+ (SYSDIV_var<<22);
    SYSCTL_RCC_R  |= 0x00400000;
    while((SYSCTL_RIS_R&0x00000040)==0){};
    SYSCTL_RCC2_R &= ~0x00000800;
}

void PWM1_1_Init(uint16_t period, uint16_t duty){ //PE4 PADRAO E PE5 INVERSO
    volatile unsigned long delay;
    SYSCTL_RCGCPWM_R |= 0x03;       //  activate PWM
    delay = SYSCTL_RCGC2_R;
    delay = SYSCTL_RCGC2_R;
    SYSCTL_RCC_R &= ~0x00100000 ;   //  NOT use PWM divider
    // (SYSCTL_RCC_R & (~0x000E0000)); //  configure for /2 divider
    PWM1_1_CTL_R = 0x00;            //  DOWN mode
    PWM1_1_LOAD_R = period - 1;     //  80M/PERIOD = FREQ PWM
    PWM1_1_GENA_R = 0xC8;           //  LOW LOAD | HIGTH COMP A DOWN PE4
    PWM1_1_GENB_R = 0x8C;           //  LOW LOAD | HIGTH COMP B DOWM PE5
    PWM1_1_CMPA_R = duty - 1;       //  COMP A
    // PWM1_ENABLE_R |= 0xC0;
}


void Timer0A_Init(uint32_t period){
    SYSCTL_RCGCTIMER_R |= 0x01;  //  activate TIMER0
    TIMER0_CTL_R = 0x00;         //  disable TIMER0A during setup
    TIMER0_CFG_R = 0x04;         //  configure for 16-bit mode
    TIMER0_TAMR_R = 0x02;



    //  configure for one-shot mode, down-count settings
    TIMER0_TAILR_R = period-1;   //  reload value
    TIMER0_TAPR_R = 0;           //  bus clock resolution
    TIMER0_IMR_R = 0x01;         //  mask
    NVIC_PRI4_R = 0x60000000;    //  priority 4
    NVIC_EN0_R |= 1<<19;
}


void ADC_Init(void){
    volatile unsigned long delay;

    SYSCTL_RCGC0_R |= 0x030000; //  activate ADC0

    delay = SYSCTL_RCGCADC_R;
    delay = SYSCTL_RCGCADC_R;
    delay = SYSCTL_RCGCADC_R;

    ADC0_PC_R = 0x07;         //  configure for 1M samples/sec
    ADC1_PC_R = 0x07;         //  configure for 1M samples/sec
    ADC0_SSPRI_R |= 0x3210;   //  sequencer 0 is highest, sequencer 3 is lowest
    ADC1_SSPRI_R |= 0x3210;   //  sequencer 0 is highest, sequencer 3 is lowest
    ADC0_ACTSS_R &= ~0x08;    //  disable sample sequencer 3
    ADC1_ACTSS_R &= ~0x08;    //  disable sample sequencer 3
    ADC0_SAC_R = 0x04;        //  hardware average
    ADC1_SAC_R = 0x04;        //  hardware average
    ADC0_EMUX_R = (ADC0_EMUX_R&0xFFFF0FFF)+0x0000; //  activate software trigger event
    ADC1_EMUX_R = (ADC0_EMUX_R&0xFFFF0FFF)+0x0000; //  activate software trigger event
    ADC0_SSMUX3_R = 1;        //  Sample Input Select PE2
    ADC1_SSMUX3_R = 0;        //  Sample Input Select PE3
    ADC0_ACTSS_R |= 0x08;     //  enable sample sequencer 3
    ADC1_ACTSS_R |= 0x08;     //  enable sample sequencer 3
    ADC0_SSCTL3_R = 0x06;     //  set flag and end
    ADC1_SSCTL3_R = 0x06;     //  set flag and end
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

//    void UART_OutChar(char data){
//      while((UART0_FR_R&UART_FR_TXFF) != 0);
//      UART0_DR_R = data;
//    }
//    void UART_OutUDec(uint32_t n){
//        // This function uses recursion to convert decimal number
//        //   of unspecified length as an ASCII string
//          if(n >= 10){
//            UART_OutUDec(n/10);
//            n = n%10;
//          }
//          UART_OutChar(n+'0'); /* n is between 0 and 9 */
//        }

void update_display(int angle) {
    static uint8_t current_digit = 0;
    uint8_t digits[3];
    if(angle<0){
        angle=angle*(-1);
        GPIO_PORTF_DATA_R = 0x08;
    }
    else{
        GPIO_PORTF_DATA_R &= ~0x08;
    }

    // Separa o número em três dígitos
    digits[0] = (angle / 100) % 10; // Centenas
    digits[1] = (angle / 10) % 10;  // Dezenas
    digits[2] = angle % 10;         // Unidades

    // Desabilita todos os dígitos antes de mudar
    GPIO_PORTB_DATA_R &= ~(DIGIT1 | DIGIT2);
    GPIO_PORTF_DATA_R &= ~DIGIT3;

    // Obtém o valor binário correspondente ao dígito atual
    uint8_t binary_value = digit_to_binary[digits[current_digit]];

    // Configura os pinos do decodificador
    GPIO_PORTB_DATA_R = (GPIO_PORTB_DATA_R & ~(DECODE_A | DECODE_B | DECODE_C | DECODE_D)) |
            ((binary_value & 0x01) ? DECODE_A : 0) |
            ((binary_value & 0x02) ? DECODE_B : 0) |
            ((binary_value & 0x04) ? DECODE_C : 0) |
            ((binary_value & 0x08) ? DECODE_D : 0);

    // Ativa o dígito correspondente
    switch (current_digit) {
    case 0:
        if(angle>=100){GPIO_PORTB_DATA_R |= DIGIT1;}
        break;
    case 1:
        if(angle>=10){GPIO_PORTB_DATA_R |= DIGIT2;}
        break;
    case 2:
        GPIO_PORTF_DATA_R |= DIGIT3;
        break;
    }

    // Avança para o próximo dígito
    current_digit = (current_digit + 1) % 3;
}
