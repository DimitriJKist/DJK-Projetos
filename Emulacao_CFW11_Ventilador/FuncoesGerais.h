/*
 * FuncoesGerais.h
 *
 *  Created on: 24/11/2016
 *      Author: Usuario
 */

#ifndef FUNCOESGERAIS_H_
#define FUNCOESGERAIS_H_


/*************************   FUNÇÃO TORQUE REAL   **********************/
void TORQ_REAL(float32 *TORQ_Ref,float32 *TORQ, float32 *Tel_ref0);

/* filtro de sinal de entrada*/

void Filt_bessel(float32 *medida, float32 *filtrado_anterior, float32 *derivfilt_ant , float32 *novo_p_ant);

void calcula_bessel(void);

/*          Funções de uso controle		*/
float32 mod(float32 x);

float32 sign(float32 x);

float32 sat(float32 S,float32 K_sat);

void PD(float32 limite, float32 kp, float32 kd, float32 N, float32 T0, float32 *u,float32 xref, float32 x, float32 *iderro0);

void PI(float32 limite, float32 kp, float32 ki,float32 T0, float32 *u,float32  *u0,float32 xref, float32 x, float32 *erro0);

void saturador(float32 *valor, float32 limite);

/*     Funções de transformação de coordenadas		*/
void Trf_AlfaBeta(float32 *alfa,float32 *beta, float32 ia,float32 ib);

void Trf_AlfaBeta_dq(float32 *d,float32 *q, float32 alfa,float32 beta, float32 cos_ang, float32 sin_ang);

void Trf_dq_AlfaBeta(float32 *alfa, float32 *beta, float32 d, float32 q,float32 cos_ang, float32 sin_ang);

/*     			Funções de PWM			*/
void SVPWM(float32 *va, float32 *vb, float32 *vc, float32 u1norm_alpha, float32 u1norm_beta, Uint16 periodoPWM);

/*     			Medição e Filtragem 			*/

void offset(float32 *valor_atual, float32 *offset, float32 *offset0);

void mediamov2(float32 *x, float32 *x0);

void mediamov4(float32 *x, float32 *x0, float32 *x00, float32 *x000);

void filtpbaixa(float32 *x, float32 *x0, float32 K1, float32 K2);

void aquisicaobuffer(int16 *buffer, int sizebuffer, int *indexbuffer, int *cont, int contmax, float32 variavel);

void aquisicaobuffer_unsigned(int16 *buffer, int sizebuffer, int *indexbuffer, int *cont, int contmax, float32 variavel);


#endif /* FUNCOESGERAIS_H_ */
