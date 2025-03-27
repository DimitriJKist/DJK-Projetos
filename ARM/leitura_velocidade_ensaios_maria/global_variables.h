/*
 * global_variables.h
 *
 *  Created on: 5 de set de 2024
 *      Author: Francisco
 */
#include "F28x_Project.h"
#include "definicoes.h"

#ifndef GLOBAL_VARIABLES_H_
#define GLOBAL_VARIABLES_H_


extern Uint16 i;


// Vari�veis relacionadas ao encoder e � posi��o/velocidade angular
extern float32 ang_encoder;        // �ngulo fornecido pela DSP
extern float32 ang_encoder0;       // �ngulo fornecido pela DSP inicial
extern int LoopVel;     // Vari�vel auxiliar para  Medi��o de Velocidade
extern float32 ang_encoder_ant;    // �ngulo anterior do encoder (usado para c�lculo de velocidade)
extern float32 dif_ang_encoder;     // Diferen�a de �ngulo do encoder entre amostras
extern float32 angulo_encoder;     // �ngulo atual medido pelo encoder
extern float32 angulo_encoder0;    // �ngulo inicial do encoder
extern float32 filtangulo_encoder; // �ngulo do encoder filtrado (ap�s aplica��o de algum filtro)
extern float32 NumPulsos;          // N�mero de pulsos do encoder (ou resolu��o)

extern unsigned int int_ang_encoder;  // Contagem atual do encoder


// Vari�veis de velocidade mec�nica
extern float32 wm;   // Velocidade angular mec�nica (rad/s ou outra unidade)
extern float32 wmec; // Velocidade mec�nica


//variaveis do aquisicaoBuffer
extern int16 buffer[SIZE_BUFFER];
extern Uint16 contbuffer;
extern Uint16 indexbuffer;
extern Uint16 hab_aquisicao;
extern  Uint32 contstep;
extern Uint16 dadoteste;


//variaveis da UART

extern unsigned char buffer_tx[];
extern Uint32 contuart;
#endif /* GLOBAL_VARIABLES_H_ */

