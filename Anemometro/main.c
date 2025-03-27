#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_memmap.h"
#include "inc/tm4c123gh6pm.h"
#include "driverlib/debug.h"
#include "driverlib/gpio.h"
#include "driverlib/rom.h"
#include "driverlib/sysctl.h"
#include "driverlib/qei.h"

#define RCGCQEI                 (*((volatile unsigned long *)0x400FE644))
#define RCGCGPIO                (*((volatile unsigned long *)0x400FE608))
#define GPIO_PORTF_AFSEL_R      (*((volatile unsigned long *)0x40025420))
#define GPIO_PORTC_AFSEL_R      (*((volatile unsigned long *)0x40006420))
#define GPIOPCTL_PORTF          (*((volatile unsigned long *)0x4002552c))//
#define GPIOPCTL_PORTC          (*((volatile unsigned long *)0x4000652c))//
#define QEICTL_0                (*((volatile unsigned long *)0x4002C000))//VELOCIDADE
#define QEICTL_1                (*((volatile unsigned long *)0x4002D000))//CARDEAIS
#define QEIMAXPOS_0             (*((volatile unsigned long *)0x4002C000))
#define QEIMAXPOS_1             (*((volatile unsigned long *)0x4002D000))
#define QEIPOS_0                (*((volatile unsigned long *)0x4002C008))
#define QEIPOS_1                (*((volatile unsigned long *)0x4002D008))
#define QEICOUNT                (*((volatile unsigned long *)0x4002C018))//VELOCITY COUNTER
#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define QEISPEED                (*((volatile unsigned long *)0x4002C01C))
#define GPIOPUR_PORTF           (*((volatile unsigned long *)0x40025510))//PULL UP
#define GPIOPUR_PORTC           (*((volatile unsigned long *)0x40006510))//PULL UP



int POSIVELOC=0;
int POSICARD=0;
int COUNT=0;
int velocidade=0;
volatile unsigned long angulo=0;

void QEI_INIT(void);

int main(void){


    RCGCQEI = 0x03; //ativa os 2 modulos QEI (envio clock para cada um)
    RCGCGPIO = 0x24; // clock para port F e C
    GPIO_PORTF_AFSEL_R = 0X02; //habilitando pinos para perifericos conforme tabela do datasheet  // A PIN 0 // B PIN 1
    GPIO_PORTC_AFSEL_R = 0x60;                                                                    //A PIN 5 // B PIN 6
    GPIOPCTL_PORTF = 0x40;
    GPIOPCTL_PORTC = 0x40;
    QEICTL_0 = 0x29;
    QEICTL_1 = 0x09;
    QEIMAXPOS_0 = 0x95f; //600*4-1 600ppr 4 da enquadratura
    QEIMAXPOS_1 = 0x95f;
    GPIOPUR_PORTF = 0X03;
    GPIOPUR_PORTC = 0X60;

    while(1){
     POSIVELOC = (QEIPOS_0);
     POSICARD = (QEIPOS_1);
     COUNT = (QEICOUNT);
     angulo = POSICARD*360/1200;
     velocidade = (QEISPEED);
     SysCtlDelay(SysCtlClockGet() / 1000);
    }
}

