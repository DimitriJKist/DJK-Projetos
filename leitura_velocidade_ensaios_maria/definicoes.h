/*
 * definicoes.h
 *
 *  Created on: 8 de set de 2024
 *      Author: Francisco
 */

#ifndef DEFINICOES_H_
#define DEFINICOES_H_

//Tamanho do buffer do aquisicaoBuffer
#define SIZE_BUFFER 55000
#define FREQ_TIMER 1000

/* Definições de Constante */
#define M_PII 3.14159265358979323846f
#define M_PI30 0.10471975511965977462f
#define M_2PI 6.28318530717958647692f
#define M_2PI3 2.09439510239319549231f
#define SQ_3 1.73205080756887729353f
#define U_SQ3 0.57735026918962576451f
#define CLOCK_SYSTEM 200000000  // 200 MHz
#define ADC_SAMPLE_PERIOD 4999 // 1999 = 50 kHz sampling w/ 100 MHz ePWM clock
#define ADC_BUF_LEN 1024;


#define BUFFER_CIRC 16;

//UART
#define CPU_FREQ        200E6
#define LSPCLK_FREQ     CPU_FREQ/4
#define SCI_FREQ        115200
#define SCI_PRD         (LSPCLK_FREQ/(SCI_FREQ*8))-1



#endif /* DEFINICOES_H_ */
