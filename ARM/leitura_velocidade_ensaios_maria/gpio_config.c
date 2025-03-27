/*
 * gpio_config.c
 *
 *  Created on: 2 de jan de 2025
 *      Author: Francisco
 */

#include "F28x_Project.h"
#include "stdbool.h"
#include "string.h"

void gpioInit(void){

    InitGpio();
    InitEQep1Gpio();

    EALLOW;
    //GPIO 42 e 43 USCI-A
    GpioCtrlRegs.GPBGMUX1.bit.GPIO42 = 3;
    GpioCtrlRegs.GPBMUX1.bit.GPIO42 = 3;
    GpioCtrlRegs.GPBPUD.bit.GPIO42 = 1;
    GpioCtrlRegs.GPBDIR.bit.GPIO42 = 1;
    GpioCtrlRegs.GPBCSEL2.bit.GPIO42 = GPIO_MUX_CPU1;
    EDIS;
}

