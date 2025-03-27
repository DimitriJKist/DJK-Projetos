/*
 * Global.h
 *
 *  Created on: 11/12/2016
 *      Author: CarlosMro
 */

#ifndef GLOBAL_H_
#define GLOBAL_H_
extern int Waitflux;



/*************************   FUNÇÃO TORQUE REAL   **********************/
extern float32 Tel_ref0;
extern int inverso;
extern int direcao;


/*                  Inicialização das Variáveis Globais                 */
extern int Waitflux;
/*************************    Buffers de Medição  **********************/
extern unsigned int hab_aquisicao,flag_aquisicao,flag_emulacao;
extern unsigned long int contstep;

extern int intDelta_Tel, intMITel;

/*                          Buffer Wmec                                 */
extern int16  buffer_wmec[7500];
extern int cont_buffwmec, indexbufwmec;

/*                          Buffer Wmec_Em                                 */
//extern int16  buffer_wmec_em[5000];
//extern int cont_buffwmec_em, indexbufwmec_em;

/*                          Buffer MITel                                */
//extern int16 buffer_MITel[20000];
//extern int cont_buffMITel, indexbufMITel;

/*                          Buffer MSTel                                */
extern int16 buffer_MSTel[30000];
extern int cont_buffMSTel, indexbufMSTel;



/*************************    Variaveis Gerais    **********************/
extern int LoopctrlVel, Loopctrl, LoopVel; // Laço p/ loops de 5kHz
extern float32 ang_encoder_ant, difang_encoder, angulo_encoder, angulo_encoder0, filtangulo_encoder, NumPulsos, ang_encoder, ang_encoder0; //Posição do encoder, velocidade
extern unsigned int intang_encoder, TempoOffset,TempoOffset_fino;
extern float wm, wmec;

/*************************   Estimação do Torque do MS    **********************/
extern float32 MSTel, Delta_Tel, MITel, MITelf0, Delta_Telf0, MITel_offset, Delta_Tel_offset, MITel_offpass0, Delta_Tel_offpass0;
extern float32 abs_Delta_Tel, abs_MITel, abs_MSTel,k_torqu,k_Bem;
extern float32 Delta_Tel0, Delta_Tel00, Delta_Tel000, MITel0, MITel00, MITel000;
extern int MITel_Sentido, flag_MSTel_Zero;
extern float32 Delta_Tel_antigo, sinal_Delta_Tel, sinal_Delta_Tel_antigo, hister_delta, Delta_Tel_f2, Delta_Tel_f20;

/*************************   Controle do Dinamometro    **********************/

extern float32 wmecRef, MITel_Ref, MITel_Ref0;

/*                       Emulação de carga                                  */

extern float32 wmecEm, wmecEm0,wmecEm_RPM,SaidaInv_AI1, test_ad;  //Modelo de Emulação 1º Ordem
extern float32 Bem, Jem, Tf;

/*                      Parametros Controlador                              */
extern float32 erro_wmecEm0, wmecEm_Ref, wmecEm_Ref0, Kp, Ki;


/*          filtro de sinal de entrada              */
extern float32 patamar, derivf_ant, novo_p_ant, novo_p2, filtrado_anterior, filt_a, filt_b, filt_a3, filt_b3, filt_a2, filt_b2, sample_rate_filt, cutoff_frequency, cutoff_frequency2, cutoff_frequency3, dt_filt, w_c_filt, tau_filt;
extern float32 DeltaTel_anterior, DetltaTelDeriv_ant, DeltaTelIntgrado_ant;
extern float32 MITel_anterior, MITelDeriv_ant, MITelIntgrado_ant;




#endif /* GLOBAL_H_ */
