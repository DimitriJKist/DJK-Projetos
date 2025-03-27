#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"

int PWMGERAL=0;
int delay=0;


int FREQ_AD=60000;
int FREQ_PWM=20000;
float tensao_protecao=350;
float corrente_protecao=10;


int DUTY=50;   // 0 a 100
int x=0;
int aux = 0;
int trava = 0;
int protecaoi=0, protecaov=0, y=0;

float Imedio=0, Isoma=0, IFilt=0, Imedido_antigo=0, IFilt_antigo=0, Vmedido_antigo=0,VFilt_antigo=0, Vfilt=0, tensao_barramento_antigo=0;
float A1=0.2608, A2=190.9595, B1=-0.2588, B2=-190.5284, C1=1, C2=1;
float AD0=0, AD1=0, Imedido=0, Vmedido=0, EkV=0, EkI=0, Vref=80, Iref=0, Duty=0, tensao_barramento=0, Vmedio=0,Vsoma=0;
float z=0;

float EkVantigo=0, Iref_antigo=0, EkIantigo=0, Duty_antigo=0;

void Clock_Init(long SYSDIV_var);
void PortE_Init(void);
void PortF_Init(void);
void Timer0A_Init(uint32_t period);
void ADC_Init(void);
void Delay(void);
void StartCritical(void);
void EndCritical(void);
void PWM1_1_Init(uint16_t period, uint16_t duty);
void EnableInterrupts(void);

//PE2 AD0
//PE3 AD1
//PWM PF2 (PADRAO) E PF3 (COMPLEMENTAR)

void main(void){
    StartCritical();

    Clock_Init(4); //80M
    PortE_Init();
    PortF_Init();
    PWM1_1_Init(80000000/FREQ_PWM,(800000/FREQ_PWM)*(DUTY)-1);
    Timer0A_Init(80000000/FREQ_AD);
    ADC_Init();

    EnableInterrupts();
    EndCritical();

    PWM1_ENABLE_R |= 0xC;
    TIMER0_CTL_R = 0x01;

    while(1){
        PWM1_1_CMPA_R = DUTY-1; // malha fechada
    }
}

void Timer0A_Handler(void){
    GPIO_PORTF_DATA_R |= 0x02;
    ADC0_PSSI_R=0x8;
    ADC1_PSSI_R=0x8;

    while(ADC0_RIS_R==0 && ADC1_RIS_R==0){}

  //  AD0=(3.3*ADC0_SSFIFO3_R)/4095;//CORRENTE PE2
  //  AD1=(3.3*ADC1_SSFIFO3_R)/4095;//TENS.O PE3    quem . corrente e tensao medida, em baixo simplificado
  //  Imedido=(AD0-1.6865)/(0.1281);
  //  Vmedido=(AD1-1.696)/(0.008);

  //RESUMIDO
    Imedido=(ADC0_SSFIFO3_R*(float)0.0062908728)-(float)13.0635166538;
    Vmedido=(ADC1_SSFIFO3_R*(float)0.1007326)-(float)212;

    EkV=(Vref-Vmedido);
    Iref=EkV*A1 + EkVantigo*B1 + Iref_antigo*C1;
    if(Iref>5){Iref=5;}   //para achar corrente de ref
    if(Iref<-5){Iref=-5;}   // protecao

    IFilt=(float)0.01036*Imedido + (float)0.01036*Imedido_antigo + (float)0.9793*IFilt_antigo;    //filtro pra corrente 2khz
    IFilt_antigo=IFilt;
    Imedido_antigo=Imedido;

//    if(IFilt >= corrente_protecao){trava=1;}
//    else{trava=0;}

    if(trava==0){
        EkI=(Iref-Imedido);
        Duty=EkI*A2 + EkIantigo*B2 + Duty_antigo*C2;
        if(Duty>4000){Duty=4000;}
        if(Duty<1){Duty=1;}   //saturacao
    }
    if(trava==1){
        Duty=0;
        protecaoi=1;
        while(protecaoi==1){}
    }

    tensao_barramento=Vmedido*(float)4000/(Duty);

    Vfilt=(float)0.01036*tensao_barramento + (float)0.01036*tensao_barramento_antigo + (float)0.9793*VFilt_antigo;
    tensao_barramento_antigo=tensao_barramento;
    VFilt_antigo=Vfilt;

    EkVantigo=EkV;
    EkIantigo=EkI;
    Iref_antigo=Iref;
    Duty_antigo=Duty;  //atualizacao de var


//    if(Vfilt>tensao_protecao && x==200000){
//        z=Duty;
//        Duty=0;
//        protecaov=1;
//        while(protecaov==1){}
//    }

    if(x<200000){x++;}
    TIMER0_ICR_R = 0x01;    //Sair da interrupcao
    GPIO_PORTF_DATA_R &= ~0x02;
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
    TIMER0_CFG_R = 0x04;         //  configure for 16-bit mode
    TIMER0_TAMR_R = 0x02;        //  configure for one-shot mode, down-count settings
    TIMER0_TAILR_R = period-1;   //  reload value
    TIMER0_TAPR_R = 0;           //  bus clock resolution
    TIMER0_IMR_R = 0x01;         //  mask
    NVIC_PRI4_R = 0x60000000;    //  priority 4
    NVIC_EN0_R |= 1<<19;
}

void PWM1_1_Init(uint16_t period, uint16_t duty){ //PE4 PADRAO E PE5 INVERSO
    volatile unsigned long delay;
    SYSCTL_RCGCPWM_R |= 0x03;       //  activate PWM
    delay = SYSCTL_RCGC2_R;
    delay = SYSCTL_RCGC2_R;
    SYSCTL_RCC_R &= ~0x00100000 ;   //  use PWM divider
 // (SYSCTL_RCC_R & (~0x000E0000)); //  configure for /2 divider
    PWM1_1_CTL_R = 0x00;            //  DOWN mode
    PWM1_1_LOAD_R = period - 1;     //  80M/PERIOD = FREQ PWM
    PWM1_1_GENA_R = 0xC8;           //  LOW LOAD | HIGTH COMP A DOWN PE4
    PWM1_1_GENB_R = 0x8C;           //  LOW LOAD | HIGTH COMP B DOWM PE5
    PWM1_1_CMPA_R = duty - 1;       //  COMP A
    PWM1_1_CTL_R |= 0x01;           //  start PWM1_GEN1
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


