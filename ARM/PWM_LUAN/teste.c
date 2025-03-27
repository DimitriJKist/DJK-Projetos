



int duty_pwm1=0;
int duty_pwm2=0;
uint64_t TEMPO_NOVO=0;
uint64_t TEMPO_ANTIGO=0;
uint64_t DIF=0;



void PWM_Init(uint16_t period, uint16_t duty1, uint16_t duty2);


PWM1_3_CMPA_R = duty_pwm1;  //PF2(PADRAO) E PF3(COMPLEMENTAR)
PWM1_2_CMPA_R = duty_pwm2;  //PF0(PADRAO) E PF1(COMPLEMENTAR)



void PWM_Init(uint16_t period, uint16_t duty1, uint16_t duty2){ //PF3
  SYSCTL_RCGCPWM_R |= 0x03;       //  activate PWM1
  delay = SYSCTL_RCGC2_R;
  delay = SYSCTL_RCGC2_R;
  //SYSCTL_RCC_R = 0x00100000 |   //  use PWM divider
//(SYSCTL_RCC_R & (~0x000E0000)); //  configure for /2 divider
  PWM1_3_CTL_R = 0;               //  re-loading down-counting mode

  PWM1_3_GENB_R = 0x8C;          //  HIGTH on LOAD, LOW on CMPA down      PF3
  PWM1_3_GENA_R = 0xC8;          //  low on LOAD, high on CMPA down       PF2

  PWM1_2_GENB_R = 0x8C;          //  HIGTH on LOAD, LOW on CMPA down      PF1
  PWM1_2_GENA_R = 0xC8;          //  low on LOAD, high on CMPA down       PF0

  PWM1_3_LOAD_R = period - 1;     //  cycles needed to count down to 0
  PWM1_3_LOAD_R = period - 1;     //  cycles needed to count down to 0

  PWM1_3_CMPA_R = duty1 - 1;       //  count value when output rises
  PWM1_2_CMPA_R = duty2 - 1;       //  count value when output rises

  PWM1_3_CTL_R |= 0x03;           //  start PWM1_GEN3 AND GEN2
  PWM1_ENABLE_R |= 0xC0;
}



void WTimer0A_Init(uint64_t period){
  SYSCTL_RCGCWTIMER_R |= 0x01; // 0) activate WTIMER0
  WTIMER0_CTL_R = 0x00;  // 1) disable WTIMER0A during setup AND POSITIVE EDGE FOR CAPTURE MODE
  WTIMER0_CFG_R = 0x00;  // 2) configure for 64-bit mode
  WTIMER0_TAMR_R = 0x06; // 3) configure for capture edge-time mode | Periodic | down counting
  WTIMER0_TAILR_R = period-1;  // 4) reload value
  WTIMER0_TAPR_R = 0;        // 5) bus clock resolution
  WTIMER0_IMR_R = 0x02; // event match interrupt mask
  NVIC_PRI23_R = 0x600000; //priority 4
  NVIC_EN2_R |= 1<<31;   //VECTOR NUMEBER 94
  WTIMER0_CTL_R |= 0x01;
}


void WideTimer0A_Handler(void){

if(TEMPO_ANTIGO>TEMPO NOVO){

    TEMPO_NOVO=WTIMER0_TAR_R;
    DIF=TEMPO_NOVO-TEMPO_ANTIGO;
    TEMPO_ANTIGO=TEMPO_NOVO;
}

if(TEMPO_ANTIGO<TEMPO NOVO){
    TEMPO_NOVO=WTIMER0_TAR_R;
    DIF=TEMPO_ANTIGO-TEMPO_NOVO;
    TEMPO_ANTIGO=TEMPO_NOVO;
}

WTIMER0_ICR_R = 0x01;
}







