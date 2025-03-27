#include <stdint.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"

int PWMGERAL=0;
int delay=0;

int FREQ_AD=60000;
int FREQ_PWM=20000;

int DUTY=2000;
int trava = 0;
float velocidade=0;

float IFilt=0, Imedido_antigo=0, IFilt_antigo=0;
float AD0=0, AD1=0, Imedido=0, Vmedido=0, Err_RPM=0, EkI=0, Iref=0, Duty=2000;
float vet1[2500],vet2[2500],vet3[2500];
float Err_RPM_antigo=0, Iref_antigo=0, EkIantigo=0, Duty_antigo=0, velocidade_antiga=0, VFilt=0;
int x=0, i=0, teste=0, tipo_teste=4;
float var1, var2, var3, var1soma=0, var2soma=0, var3soma=0;
int novas_constantes=0, dir = 0, filtrodir=0, direcaocorreta=0;
int num_separado[6];
float a1=0, b1=0, a2=0, b2=0, Ta=1.666666666666667e-5;
uint8_t controleON=0;

float RPM_ref=100; //REFERENCIA RPM
//RPM (MALHA EXTERNA)
float KpRPM=0.0009; // 0.05 originalmente
float KiRPM=0.004; // 2 originalmente

// CORRENTE (MALHA INTERNA)
float Kpcorrente=0.1; // 50 originalmente 10x mais rapida que a malha externa
float Kicorrente=800;// 800 originalmente

float A1=0.050023333333333, B1=-0.049976666666667, A2=90.011666666666670, B2=-89.988333333333330, C1=1, C2=1;

void Clock_Init(long SYSDIV_var);
void PortE_Init(void);
void PortF_Init(void);
void Timer0A_Init(uint32_t period);
void ADC_Init(void);
void StartCritical(void);
void EndCritical(void);
void PWM1_1_Init(uint16_t period, uint16_t duty);
void QEI_INIT(void);
void EnableInterrupts(void);


//PE2 AD0 corrente
//PE3 AD1 tensao
//PWM PE4 (PADRAO) E PE5 (COMPLEMENTAR)
//PC5 e PC6 encoder

void main(void){

    a1=(2*KpRPM+Ta*KiRPM)/2;
    b1=(Ta*KiRPM-2*KpRPM)/(2*KpRPM+Ta*KiRPM);
    a2=(2*Kpcorrente+Ta*Kicorrente)/2;
    b2=(Ta*Kicorrente-2*Kpcorrente)/(2*Kpcorrente+Ta*Kicorrente);
    A1=a1;
    A2=a2;
    B1=a1*b1;
    B2=a2*b2;

    StartCritical();

    Clock_Init(4); //80M
    QEI_INIT();
    PortE_Init();
    PortF_Init();
    PWM1_1_Init(80000000/FREQ_PWM,(800000/FREQ_PWM)*(DUTY)-1);
    Timer0A_Init(80000000/FREQ_AD);
    ADC_Init();


    EnableInterrupts();
    EndCritical();

    PWM1_1_CTL_R  |= 0x01;           //  start PWM1_GEN1
    PWM1_ENABLE_R |= 0xC;
    TIMER0_CTL_R   = 0x01;

    while(1){
        if(RPM_ref > 5000){RPM_ref=5000;}

        if((QEI1_STAT_R & 0x02) == 0x02){dir=-1;}
        else{dir=1;}
        if(dir==1){filtrodir++; if(filtrodir>500){filtrodir=500;}}
        if(dir==-1){filtrodir=filtrodir-1;; if(filtrodir<-500){filtrodir=-500;}}
        if(filtrodir>0){direcaocorreta=1;}
        else{direcaocorreta=-1;}
        velocidade = (QEI1_SPEED_R*(float)7.32*direcaocorreta);//7.45

    }

}

void Timer0A_Handler(void){
    ADC0_PSSI_R=0x8;
    ADC1_PSSI_R=0x8;

    while(ADC0_RIS_R==0 && ADC1_RIS_R==0){}

    Imedido=(ADC0_SSFIFO3_R*(float)0.0062908728)-(float)12.3435166538;
    Vmedido=(ADC1_SSFIFO3_R*(float)0.1007326)-(int)207;


    switch(controleON){
    case 0:
        PWM1_1_CMPA_R = DUTY-1 ;//(DUTY*(int)40)-(int)1; // malha aberta
        break;

    case 1:

        Err_RPM=(RPM_ref-velocidade);
        Iref=Err_RPM*A1 + Err_RPM_antigo*B1 + Iref_antigo*C1;
        if(Iref>9){Iref=9;}   //limite superior para proteção da planta
        if(Iref<-9){Iref=-9;}   // limite inferior para proteção da planta

        IFilt=(float)0.03046*Imedido + (float)0.03046*Imedido_antigo + (float)0.9391*IFilt_antigo;    //filtro pra corrente 2khz  <-- apenas para visualizaçao melhor dos dados coletados
        IFilt_antigo=IFilt;
        Imedido_antigo=Imedido;

        EkI=(Iref-Imedido);
        Duty=EkI*A2 + EkIantigo*B2 + Duty_antigo*C2 ;//+ (float)2000; <-- half briedge
        if(Duty>3200){Duty=3200;} // correto é 4k
        if(Duty<800){Duty=800;}   //saturacao
        // if(Duty<1){Duty=1;}   //saturacao

        Err_RPM_antigo=Err_RPM;
        EkIantigo=EkI;
        Iref_antigo=Iref;
        Duty_antigo=Duty;  //atualizacao de var

        PWM1_1_CMPA_R = Duty-1; // malha fechada

        break;
    }


    if(novas_constantes==1){
        a1=(2*KpRPM+Ta*KiRPM)/2;
        b1=(Ta*KiRPM-2*KpRPM)/(2*KpRPM+Ta*KiRPM);
        a2=(2*Kpcorrente+Ta*Kicorrente)/2;
        b2=(Ta*Kicorrente-2*Kpcorrente)/(2*Kpcorrente+Ta*Kicorrente);
        A1=a1;
        A2=a2;
        B1=a1*b1;
        B2=a2*b2;
        novas_constantes=0;
    }


    switch (teste){
    case 1:
        switch(tipo_teste){
        case 1:
            if(i==0){RPM_ref=3000;}
            //  if(i==2000){RPM_ref=1000;}
            var1=velocidade;
            var2=Imedido;
            var3=Duty;
            break;
        case 2:
            if(i==0){RPM_ref=3000;}
            //  if(i==2000){RPM_ref=1000;}
            var1=Iref;
            var2=velocidade;
            var3=Duty;
            break;
        case 3:
            if(i==0){RPM_ref=3000;}
            //  if(i==2000){RPM_ref=2000;}
            var1=Imedido;
            var2=IFilt;
            var3=Iref;
            break;
        case 4:
            if(i==0){RPM_ref=3000;}
            //    if(i==2000){RPM_ref=2000;}
            var1=IFilt;
            var2=Iref;
            var3=Duty;
            break;
        }

        x++;
        var1soma=var1soma+var1/240;//soma para realziar a média do intervalo
        var2soma=var2soma+var2/240;
        var3soma=var3soma+var3/240;
        if(x==240){// para 1k colocar 60 | para 500Hz colocar 120  | 250Hz --> 240 | controle e aquisição esta em 60k
            vet1[i]= var1soma;
            vet2[i]= var2soma;
            vet3[i]= var3soma;
            i++;
            x=0;
            var1soma=0;
            var2soma=0;
            var3soma=0;
        }
        if(i==2500){ //i=2500 = 10seg
            RPM_ref=500;
            teste=0;
            i=0;
        }
        break;

        case 2:
            switch(tipo_teste){
            case 1:
                var1=Iref;
                var2=velocidade;
                var3=Duty;
                break;
            case 2:
                var1=velocidade;
                var2=RPM_ref;
                var3=Duty;
                break;
            case 3:
                var1=Imedido;
                var2=IFilt;
                var3=Iref;
                break;
            case 4:
                var1=IFilt;
                var2=Iref;
                var3=Duty;
                break;
            }
            x++;
            var1soma=var1soma+var1/240;//soma para realziar a média do intervalo
            var2soma=var2soma+var2/240;
            var3soma=var3soma+var3/240;
            if(x==240){
                vet1[i]= var1soma;
                vet2[i]= var2soma;
                vet3[i]= var3soma;
                i++;
                x=0;
                var1soma=0;
                var2soma=0;
                var3soma=0;
            }
            if(i==2500){
                i=0;
            }
            break;

            case 3:
                if(i>0 && i<100) RPM_ref=1000;
                if(i>100 && i<200) RPM_ref=2000;
                if(i>200 && i<300) RPM_ref=3000;
                if(i>300 && i<400) RPM_ref=4000;
                if(i>400 && i<500) RPM_ref=5000;
                x++;
                if(x==240){
                    i++;
                    x=0;
                }
                if(i >= 3000){
                    RPM_ref=1000;
                    teste=0;
                    i=0;
                }
                break;

    }
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
    TIMER0_CFG_R = 0x04;         //  configure for 16-bit mode
    TIMER0_TAMR_R = 0x02;



    //  configure for one-shot mode, down-count settings
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
    SYSCTL_RCC_R &= ~0x00100000 ;   //  NOT use PWM divider
    // (SYSCTL_RCC_R & (~0x000E0000)); //  configure for /2 divider
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

void QEI_INIT(void){
    SYSCTL_RCGC2_R    |= 0x04;
    GPIO_PORTC_PCTL_R |= 0x6600000;   // GPIO clear bit PCTL Port Control
    GPIO_PORTC_DIR_R   = 0x00;        // ALLINPUT
    GPIO_PORTC_AFSEL_R = 0x60;        // A PIN 5 // B PIN 6  // habilitando pinos para perifericos conforme tabela do datasheet
    GPIO_PORTC_PUR_R   = 0x60;        // PULL-UP
    GPIO_PORTC_DEN_R   = 0x60;        // DIGITAL ENEABLE
    SYSCTL_RCGCQEI_R  |= 0x02;       // ativa o modulos QEI1
    SYSCTL_RCGCGPIO_R |= 0x08;       // clock para port  C
    QEI1_CTL_R         = 0x2028;
    QEI1_MAXPOS_R      = (4*1024)-1;        // 4*600
    QEI1_LOAD_R        = 160000-1;    // 500Hz
    QEI1_CTL_R        |= 0x01;
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


