

/**
 * main.c
 */

#include "F28x_Project.h"
#include "stdbool.h"
#include "string.h"
#include <init_sys.h>
#include <gpio_config.h>
#include <time.h>
#include <global_variables.h>
#include <definicoes.h>
#include "stdint.h"
#include <stdlib.h>
#include <uartInit.h>

//variaveis do aquisicaoBuffer
int16 buffer[SIZE_BUFFER];
Uint16 contbuffer=0, indexbuffer=0;
Uint16 hab_aquisicao=0;
Uint32 contstep=0;
Uint16 dadoteste=0;

int LoopVel=0;
float32 ang_encoder_ant=0,dif_ang_encoder=0,angulo_encoder=0,angulo_encoder0=0;
float32 filtangulo_encoder=0,NumPulsos=0,ang_encoder=0,ang_encoder0=0;
unsigned int int_ang_encoder=0;
float32 wmec=0, wm=0;

unsigned char buffer_tx[] = {'a', 'b', 'c', 'd', 'e', 'f', '\n', '\r'};
Uint32 contuart;


int main(void)
{
    Inicializacao();

    EALLOW;
    CpuTimer0Regs.TCR.bit.TSS=0; //habilitar o timer
    EDIS;

    memset (buffer,0,sizeof(buffer)); // zerar buffer

    EINT;//Habilita interrupções globais
    ERTM;//Habilita interrupção para tempo real.

    while(1){
    }
}




