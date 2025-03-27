/*
 * timerInit.c
 *
 *  Created on: 2 de jan de 2025
 *      Author: Francisco
 */
#include "F28x_Project.h"
#include "global_variables.h"
#include "definicoes.h"
#include "aquisicaoBuffer.h"
#include <stdio.h>
#include <stdlib.h>
#include <uartInit.h>
#include <math.h>
__interrupt void isr_cpu_timer0(void);

void timer0Init(void)
{
    EALLOW;
    // Associa a interrupção do Timer 0 à função de serviço isr_cpu_timer0.
    PieVectTable.TIMER0_INT = &isr_cpu_timer0;
    //Habilita a interrupção da linha 7 da coluna 1 do PIE (Peripheral Interrupt Expansion).
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;
    EDIS;

    // Inicializa os temporizadores da CPU com valores padrão.
    InitCpuTimers();
    // Configura o Timer 0:
    // - Frequência do clock da CPU: 200 MHz (argumento 200Mhz).
    // - Período do timer: se for 1000000us , sera equivalente a 0.5 segundo
    ConfigCpuTimer(&CpuTimer0, 200, 100); //100microseg
    EALLOW;
    // Configura o registrador de controle do Timer 0:
    CpuTimer0Regs.TCR.bit.TSS = 1;  // Habilita o timer
    CpuTimer0Regs.TCR.bit.TRB = 0;  // Recarrega o timer imediatamente
    CpuTimer0Regs.TCR.bit.SOFT = 0; //  SOFT (Soft Reset Enable)  Normal
    CpuTimer0Regs.TCR.bit.FREE = 0; // Pausa no modo de emulação
    CpuTimer0Regs.TCR.bit.TIE = 1; // Habilita a interrupção
    CpuTimer0Regs.TCR.bit.TIF = 0; //flag de interrupção
    IER |= M_INT1;
    EDIS;
    // Habilita as interrupções da linha 1 no registrador principal de interrupções (IER).
}

__interrupt void isr_cpu_timer0(void){

          int_ang_encoder = EQep1Regs.QPOSCNT;//QPOSCNT eQEP Position Counter
          ang_encoder = int_ang_encoder;
          dif_ang_encoder = ang_encoder - ang_encoder_ant;
          if(dif_ang_encoder >=1200)
              dif_ang_encoder-= 2400;
          else if(dif_ang_encoder <= -1200)
              dif_ang_encoder += 2400;
          ang_encoder_ant = ang_encoder;
          angulo_encoder = angulo_encoder0 + (6.28318530717958647692*dif_ang_encoder/2400);
          angulo_encoder0 = angulo_encoder;
          angulo_encoder = -angulo_encoder;
          LoopVel++;
          if(LoopVel >= 20)   //Esta medindo a velocidade em um loop de 500hz LoopVel = 20;
              {
              contuart++;
              NumPulsos = ang_encoder - ang_encoder0;
              ang_encoder0 = ang_encoder;
                  if(NumPulsos >= 1200)
                  NumPulsos -= 2400;
              if(NumPulsos <= -1200)
                  NumPulsos += 2400;
                                              // Wmec[RPM] = (60*NumPulsos)/(ppr*T0) --> ppr=600, T0= 1/freq.
                                             // Wmec[RPM] -> Wmec[rad/s](Wmec[RPM]* (pi/30))
              wm = NumPulsos*12.5;
              wmec = wm*0.10472;
              LoopVel = 0;


              //send_int16_uart(wm);

              }


          if(hab_aquisicao == 1)
          {
              //Obs: Definição do fator de conversão -> 65536/DeltaAmplitude = 1

              contstep=contstep + 1;
              // frequencia de amostragem -> freqTimer/125 para esse caso 80Hz
              aquisicaobuffer(buffer, sizeof(buffer), &indexbuffer, &contbuffer, 125, wm);
                  if(contstep==6875000){ //5 minutos em termos da interrupcao do timer  5*60*10Khz por exemplo
                      hab_aquisicao = 0;
                      contstep=0;
                  }
          }
          else
              {
                  contstep=0;

              }
   EALLOW;
   CpuTimer0Regs.TCR.bit.TIF = 0; //flag de interrupção
   EDIS;


   // Insira aqui o código que será executado na interrupção
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Limpa a flag de interrupção
}
