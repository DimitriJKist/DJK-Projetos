/*
 * init_sys.c
 *
 *  Created on: 2 de jan de 2025
 *      Author: Francisco
 */



#include "F28x_Project.h"
#include "gpio_config.h"
#include <timer_init.h>
#include <eqepInit.h>
#include <uartInit.h>
// Função de inicialização do sistema e periféricos
void Inicializacao(void){
    InitSysCtrl(); // Inicializa os controladores do sistema
    DINT;
    InitPieCtrl();//desabilita todas 16 colunas de cada linha
    IER=0x0000;//desabilita todas as 12 linhas
    IFR=0x0000;//desabilita todas as flags
    InitPieVectTable();
    uartInit();
    gpioInit();
    InitEQep1();
    timer0Init();
}



