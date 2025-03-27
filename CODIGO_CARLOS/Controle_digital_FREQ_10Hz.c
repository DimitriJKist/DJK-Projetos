#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"


int FREQ_AD=10;
int FREQ_PWM=10;
float DUTY=50, duty=50;
float erroV1=0, erroV1_antigo=0, REF=1.65;
float V1=0, V2=0, Vsaida=0, Vsaida_antigo=0;
int delay=0, referencia=1, contador_referencia=0, alterar_referencias=1;

//P
float KP=1;

//PI
float a1=1.16705;
float b1=1.16635;

//Avf
float a2=0.72324796;
float b2=0.72266020;
float c2=0.99876716;
uint8_t Tipo_de_controlador=0;
uint8_t CONTROLE_ON=0;
uint32_t contador=0;

void Clock_Init(long SYSDIV_var);
void PortE_Init(void);
void PortF_Init(void);
void Timer0A_Init(uint32_t period);
void ADC_Init(void);
void StartCritical(void);
void EndCritical(void);
void PWM1_1_Init(uint32_t period, uint32_t duty);
void EnableInterrupts(void);

//PE2 AD0 V1
//PE3 AD1 V2
//PWM PE4 (PADRAO) E PE5 (COMPLEMENTAR)
//PF2 PULSO START
void main(void){
    StartCritical();
    Clock_Init(4); //80M
    PortE_Init();
    PortF_Init();
    PWM1_1_Init(5000000/FREQ_PWM,(50000/FREQ_PWM)*(DUTY)-1);
    Timer0A_Init(80000000/FREQ_AD);
    ADC_Init();
    EnableInterrupts();
    EndCritical();

    while((GPIO_PORTF_DATA_R & 0x01) == 0x01){}

    while(contador < 80001){
    GPIO_PORTF_DATA_R = 0x0C;
    contador++;
    }
    contador=0;

    GPIO_PORTF_DATA_R = 0x08; // LED GREEN

    PWM1_1_CTL_R  |= 0x01;           //  start PWM1_GEN1
    PWM1_ENABLE_R |= 0xC;
    TIMER0_CTL_R   = 0x01;

    while(1){

    while((GPIO_PORTF_DATA_R & 0x010) == 0x010){PWM1_1_CMPA_R = (50000/FREQ_PWM)*(DUTY)-1;} //esperando o botão de DESLIGAR ser apertado

    GPIO_PORTF_DATA_R = 0x02; //LED RED
    PWM1_ENABLE_R = 0x0;      //DISEABLE PWM
    CONTROLE_ON=0;
    Vsaida=0;
    Vsaida_antigo=0;
    erroV1=0;
    erroV1_antigo=0;


    while((GPIO_PORTF_DATA_R & 0x01) == 0x01){PWM1_1_CMPA_R = 0;} //esperando o botão de LIGAR ser apertado


    //PULSO PARA SABER O INICIO DA AÇÃO DE CONTROLE
    while(contador < 80001){
    GPIO_PORTF_DATA_R = 0x0C;
    contador++;
    }
    contador=0;
    CONTROLE_ON=Tipo_de_controlador;
    GPIO_PORTF_DATA_R = 0x08; // LED GREEN


    PWM1_ENABLE_R |= 0xC;     //ENEABLE PWM
  }

}

void Timer0A_Handler(void){
    ADC0_PSSI_R=0x8;
    ADC1_PSSI_R=0x8;

    while((ADC0_RIS_R==0) && (ADC1_RIS_R==0)){}

    V1=ADC0_SSFIFO3_R*((float)0.00080566);
    V2=ADC1_SSFIFO3_R*((float)0.00080566);

    //MALHA ABERTA
    if(CONTROLE_ON==0){
        DUTY=duty;
    }

    //PROPORCIONAL
    if(CONTROLE_ON==1){
        erroV1=REF-V1;
        Vsaida=erroV1*KP;
        DUTY=Vsaida*100/(float)3.3;
    }

    //PI
    if(CONTROLE_ON==2){
        erroV1=REF-V1;
        Vsaida = Vsaida_antigo + erroV1*a1 - erroV1_antigo*b1 ;
        DUTY=Vsaida*100/(float)3.3;
        erroV1_antigo=erroV1;
        Vsaida_antigo=Vsaida;
    }

    //Avf
    if(CONTROLE_ON==3){
        erroV1=REF-V1;
        Vsaida = Vsaida_antigo*c2 + erroV1*a2 - erroV1_antigo*b2 ;
        DUTY=Vsaida*100/(float)3.3;
        erroV1_antigo=erroV1;
        Vsaida_antigo=Vsaida;
    }


    if(DUTY > 99.99999){DUTY=99.99999;}  //saturador
    if(DUTY < 0.000001){DUTY=0.000001;}  //saturador


    if(alterar_referencias==1){                                                                 //variação de referencia
    contador_referencia++;                                                                      //variação de referencia
    if(contador_referencia >  0         && contador_referencia <  5*FREQ_AD ){referencia=1;}    //variação de referencia
    if(contador_referencia >  5*FREQ_AD && contador_referencia < 10*FREQ_AD ){referencia=2;}    //variação de referencia
    if(contador_referencia > 10*FREQ_AD && contador_referencia < 15*FREQ_AD ){referencia=3;}    //variação de referencia
    if(contador_referencia > 15*FREQ_AD){contador_referencia=0;}                                //variação de referencia
    }                                                                                           //variação de referencia

    TIMER0_ICR_R = 0x01;    //Sair da interrupcao
}


void ADC_Init(void){
    volatile unsigned long delay;
    SYSCTL_RCGC2_R |= 0x00000010; //  activate PORTE

    delay = SYSCTL_RCGC2_R;
    delay = SYSCTL_RCGC2_R;
    delay = SYSCTL_RCGC2_R;

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

void Timer0A_Init(uint32_t period){
    SYSCTL_RCGCTIMER_R |= 0x01;  //  activate TIMER0
    TIMER0_CTL_R = 0x00;         //  disable TIMER0A during setup
    TIMER0_CFG_R = 0x00;         //  configure for 32-bit mode
    TIMER0_TAMR_R = 0x02;        //  configure for one-shot mode, down-count settings
    TIMER0_TAILR_R = period-1;   //  reload value
    TIMER0_TAPR_R = 0;           //  bus clock resolution
    TIMER0_IMR_R = 0x01;         //  mask
    NVIC_PRI4_R = 0x60000000;    //  priority 4
    NVIC_EN0_R |= 1<<19;
}

void PWM1_1_Init(uint32_t period, uint32_t duty){ //PE4 PADRAO E PE5 INVERSO
    volatile unsigned long delay;
    SYSCTL_RCGCPWM_R |= 0x03;       //  activate PWM
    delay = SYSCTL_RCGC2_R;
    delay = SYSCTL_RCGC2_R;
    SYSCTL_RCC_R |= 0x00100000 ;    //  use PWM divider
    SYSCTL_RCC_R &=  0xFFF0FFFF;    //  CLEAR PWMDIV
    SYSCTL_RCC_R =   0x00060000;    //  configure for /16 divider
    PWM1_1_CTL_R = 0x00;            //  DOWN mode
    PWM1_1_LOAD_R = period - 1;     //  80M/PERIOD = FREQ PWM
    PWM1_1_GENA_R = 0xC8;           //  LOW LOAD | HIGTH COMP A DOWN PE4
    PWM1_1_GENB_R = 0x8C;           //  LOW LOAD | HIGTH COMP B DOWM PE5
    PWM1_1_CMPA_R = duty - 1;       //  COMP A
 // PWM1_ENABLE_R |= 0xC0;
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

 void PortF_Init(void){ volatile unsigned long delay;
     SYSCTL_RCGC2_R |= 0x00000020;     // F clock
     delay = SYSCTL_RCGC2_R;           // delay
     GPIO_PORTF_LOCK_R = 0x4C4F434B;   // unlock PortF PF0
     GPIO_PORTF_CR_R = 0x01;           // allow changes to PF0
     GPIO_PORTF_AMSEL_R = 0x00;        // disable analog function
     GPIO_PORTF_PCTL_R = 0x00000000;   // GPIO clear bit PCTL Port Control
     GPIO_PORTF_DIR_R = 0x0E;          // PF4,PF0 input, PF3,PF2,PF1 output
     GPIO_PORTF_AFSEL_R = 0x00;        // no alternate function
     GPIO_PORTF_PUR_R = 0x11;          // enable pullup resistors on PF4,PF0
     GPIO_PORTF_DEN_R = 0x1F;          // enable digital pins PF4-PF0
  }

