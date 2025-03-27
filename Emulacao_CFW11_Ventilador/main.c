// FILE:   main.c

#include "F28x_Project.h"     		// Device Header File and Examples Include File
#include <string.h> // memset
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "InicializacaoFuncoes.h"
#include "FuncoesGerais.h"
#include "Definicoes.h"
#include "Global.h"
#include "Interrupcoes.h"


/* 					Inicialização das Variáveis Globais					*/
int Waitflux=0;
/*************************    Buffers de Medição  **********************/
unsigned int hab_aquisicao=0,flag_aquisicao=0,flag_emulacao=0;
unsigned long int contstep=0;

int intDelta_Tel=0, intMITel=0;

/*                          Buffer Wmec                                 */
int16  buffer_wmec[7500];
int cont_buffwmec=0, indexbufwmec=0;

/*                          Buffer Wmec_Em                                 */
//int16  buffer_wmec_em[5000];
//int cont_buffwmec_em=0, indexbufwmec_em=0;

/*                          Buffer MSTel                                */
int16 buffer_MSTel[30000];
int cont_buffMSTel=0, indexbufMSTel=0;



/*************************   FUNÇÃO TORQUE REAL   **********************/
float32 Tel_ref0=0;
int inverso=1;
int direcao=1;

/*************************    Variaveis Gerais    **********************/
int LoopctrlVel=0, Loopctrl=0, LoopVel=0;

float32 ang_encoder_ant=0,difang_encoder=0,angulo_encoder=0,angulo_encoder0=0,filtangulo_encoder=0,NumPulsos=0,ang_encoder=0,ang_encoder0=0; //Posição do encoder, velocidade
unsigned int intang_encoder=0, TempoOffset=1, TempoOffset_fino=1;
float wmec=0, wm=0;

/*************************   Estimação do Torque do MS    **********************/
float32 MSTel=0, Delta_Tel=0, MITel=0, MITelf0=0, Delta_Telf0=0, MITel_offset=0, Delta_Tel_offset=0, MITel_offpass0=0, Delta_Tel_offpass0=0;
float32 Delta_Tel0=0,Delta_Tel00=0,Delta_Tel000=0,MITel0=0, MITel00=0, MITel000=0;
float32 abs_Delta_Tel=0, abs_MITel=0, abs_MSTel=0,k_torqu=1,k_Bem=50;


int MITel_Sentido=0,flag_MSTel_Zero=0;
float32 Delta_Tel_antigo=0, sinal_Delta_Tel=1, sinal_Delta_Tel_antigo=1, hister_delta=0.5, Delta_Tel_f2=0, Delta_Tel_f20=0;

/*************************   Controle do Dinamometro    **********************/

float32 wmecRef=0, MITel_Ref=0, MITel_Ref0=0;

/*						 Emulação de carga									*/

float32 wmecEm=0, wmecEm0=0,wmecEm_RPM=0;  //Modelo de Primeira Ordem
float32 Bem=2.5258e-04*50, Jem= 0.048923, Tf=0;

/*                      Parametros Controlador                              */
float32 erro_wmecEm0=0, wmecEm_Ref=0, wmecEm_Ref0=0, SaidaInv_AI1=0, test_ad=0, Kp=0.3, Ki=0.5; // Ki=1;

/*          filtro de sinal de entrada              */
float32 patamar = 0.03;
float32 derivf_ant = 0;
float32 novo_p_ant = 0;
float32 filtrado_anterior=0;
float32 filt_a=0, filt_b=0, filt_a3=0, filt_b3=0, filt_a2=0, filt_b2=0, sample_rate_filt=0, cutoff_frequency=0, cutoff_frequency2=0, cutoff_frequency3=0, dt_filt=0, w_c_filt=0, tau_filt=0, novo_p2=0;
float32 DeltaTel_anterior=0, DetltaTelDeriv_ant=0 , DeltaTelIntgrado_ant=0;
float32 MITel_anterior=0, MITelDeriv_ant=0, MITelIntgrado_ant=0;
//interrupt void adca1_isr(void);		// ADC interrupt service routine



void main(void)
{
	// Initialize System Control

    Inicializacao();
 //   memset (buffer_MITel,0,sizeof(buffer_MITel)); // zerar buffer

    memset (buffer_MSTel,0,sizeof(buffer_MSTel)); // zerar buffer
    memset (buffer_wmec,0,sizeof(buffer_wmec)); // zerar buffer
   // memset (buffer_wmec_em,0,sizeof(buffer_wmec_em)); // zerar buffer
    calcula_bessel();

	do
	{
	    /*DacaRegs.DACVALS.all = EPwm1Regs.TBCTR*0.4;     // Pino Amarelo
	    DacbRegs.DACVALS.all = EPwm2Regs.TBCTR*0.4*2;   // Pino Laranja*/
	}



	while(1);
} // Fim do Main


