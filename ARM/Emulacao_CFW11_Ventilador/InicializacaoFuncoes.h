/*
 * InicializacaoFuncoes.h
 *
 *  Created on: 24/11/2016
 *      Author: Usuario
 */

#ifndef INICIALIZACAOFUNCOES_H_
#define INICIALIZACAOFUNCOES_H_


#define M1contadorPWM 0x2710
#define M1_HSPCLKDIV 0x0
#define M1_CLKDIV 0x0
#define M1PHASE 0x0000 //0x1388
#define M1PHSEN 0x0 // 0x1


#define M2contadorPWM 0x2710
#define M2_HSPCLKDIV 0x0
#define M2_CLKDIV 0x0


void Inicializacao(void);

// Function Prototypes
void ConfigureADC(void);
void ConfigureEPWM(void);
void SetupADCEpwm(void);
void ConfigureDAC(void);
void InitEPwm1(void);				// Configure ePWM module 1 - Motor 1
void InitEPwm2(void);				// Configure ePWM module 2 - SOC
void InitEPwm3(void);				// Configure ePWM module 3 - Motor 1
void InitEPwm4(void);				// Configure ePWM module 4 - Motor 1
void InitEPwm5(void);				// Configure ePWM module 5 - Motor 2
void InitEPwm6(void);				// Configure ePWM module 6 - Motor 2
void InitEPwm7(void);				// Configure ePWM module 7 - Motor 2
void InitEPwm8(void);				// Configure ePWM module 8 - Filtro*/
void InitEQep1(void);				// Configure eQEP module 1
void ECAP(void);



#endif /* INICIALIZACAOFUNCOES_H_ */
