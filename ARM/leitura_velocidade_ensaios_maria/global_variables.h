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


// Variáveis relacionadas ao encoder e à posição/velocidade angular
extern float32 ang_encoder;        // Ângulo fornecido pela DSP
extern float32 ang_encoder0;       // Ângulo fornecido pela DSP inicial
extern int LoopVel;     // Variável auxiliar para  Medição de Velocidade
extern float32 ang_encoder_ant;    // Ângulo anterior do encoder (usado para cálculo de velocidade)
extern float32 dif_ang_encoder;     // Diferença de ângulo do encoder entre amostras
extern float32 angulo_encoder;     // Ângulo atual medido pelo encoder
extern float32 angulo_encoder0;    // Ângulo inicial do encoder
extern float32 filtangulo_encoder; // Ângulo do encoder filtrado (após aplicação de algum filtro)
extern float32 NumPulsos;          // Número de pulsos do encoder (ou resolução)

extern unsigned int int_ang_encoder;  // Contagem atual do encoder


// Variáveis de velocidade mecânica
extern float32 wm;   // Velocidade angular mecânica (rad/s ou outra unidade)
extern float32 wmec; // Velocidade mecânica


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

