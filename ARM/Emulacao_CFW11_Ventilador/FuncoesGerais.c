/*
 * FuncoesGerais.c
 *
 *  Created on: 24/11/2016
 *      Author: Usuario
 */


#include "F28x_Project.h"     		// Device Header File and Examples Include File

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "FuncoesGerais.h"
#include "Definicoes.h"
#include "Global.h"



void TORQ_REAL(float32 *TORQ_Ref,float32 *TORQ, float32 *Tel_ref0){
float32 Tel_ref=0;


 Tel_ref = (*TORQ_Ref*0.0063)+(*Tel_ref0*0.9937);
 *Tel_ref0=Tel_ref;


 if (abs(Tel_ref)>0.1){
     if (Tel_ref<0){
          direcao=0;
     }
     if (Tel_ref>0){
          direcao=2;
     }
     if (Tel_ref==0){
          direcao=1;
     }
 }

    if (abs(*TORQ)<0.005){
        if(direcao==0){
           inverso=(-1);
        }
        if(direcao==2){
           inverso=1;
        }
    }


    *TORQ=*TORQ*inverso;


}



/* filtro de sinal de entrada*/
void Filt_bessel(float32 *medida , float32 *filtrado_anterior, float32 *derivfilt_ant , float32 *novo_p_ant)
{
    float32 deriv, derivf, novo_p, novo_p2;

    deriv = *medida - *filtrado_anterior;
    if( deriv > patamar ) { deriv = patamar; }
    if( deriv < -patamar ) { deriv = -patamar; }
    derivf = filt_a * deriv + filt_b * *derivfilt_ant;
    novo_p = filt_a2 * *medida + filt_b2 * (*novo_p_ant+derivf);
    novo_p2 = filt_a3 * novo_p + filt_b3 * *filtrado_anterior;
    *filtrado_anterior = novo_p2;
    *novo_p_ant=novo_p;
    *derivfilt_ant=derivf;
    *medida = novo_p2;
}

/*
void media_simples(float32 *novo_valor){
    *AUX=*AUX+ *novo_valor/5000;
    *contador_media_simples++;
    if(contador_media_simples >= 5000){
        contador_media_simples=0;
        medias ++;
        *AUX2=*AUX;}
}*/


void calcula_bessel(void)
{
    sample_rate_filt = 10000;
    cutoff_frequency = 80;
    dt_filt = 1.0 / sample_rate_filt;
    w_c_filt = 2 * M_PI * cutoff_frequency;
    tau_filt = 1.0 / w_c_filt;
    filt_a = dt_filt / (dt_filt + tau_filt);
    filt_b = tau_filt / (dt_filt + tau_filt);

    cutoff_frequency2 = 80;// % Hz
    w_c_filt = 2 * M_PI * cutoff_frequency2;
    tau_filt = 1.0 / w_c_filt;
    filt_a2 = dt_filt / (dt_filt + tau_filt);
    filt_b2 = tau_filt / (dt_filt + tau_filt);

    cutoff_frequency3 = 60;// % Hz
    w_c_filt = 2 * M_PI * cutoff_frequency3;
    tau_filt = 1.0 / w_c_filt;
    filt_a3 = dt_filt / (dt_filt + tau_filt);
    filt_b3 = tau_filt / (dt_filt + tau_filt);
}




/* Função modulo */
float32 mod(float32 x){
	float32 y=0;
	y = x;

	if (x<0)
	y= x*(-1);

    return(y);
}



/* Função sinal */
float32 sign(float32 x){
	float32 y=0;
    if (x > 1)
    y = 1;
    else if (x < -1)
    y = -1;
    else
    y = 0;
    return(y);
}
/* Função de chaveamento saturação */
float32 sat(float32 S,float32 K_sat){
	float32 sat=0;
    if (S >= K_sat)
    sat = 1;
    else if (S <= -K_sat)
    sat = -1;
    else
    sat = (1/K_sat)*S;
    return(sat);
}

/* Saturador limites max e min*/
void saturador(float32 *valor, float32 limite)
{
	if(*valor > limite)
	*valor = limite;
	if(*valor < - limite)
	*valor = - limite;
}

void PD(float32 limite, float32 kp, float32 kd, float32 N, float32 T0, float32 *u,float32 xref, float32 x, float32 *iderro0)
{
    float32 erro=0, derro=0, iderro=0;

    erro = xref-x;
    derro = (erro - *iderro0)* N;
    iderro = *iderro0 + T0*derro;
    *iderro0 = iderro;

    *u = kp*erro + kd*derro;

    if(*u > limite)
    *u = limite;
    if(*u < - limite)
    *u = - limite;
}

void PI(float32 limite, float32 kp, float32 ki,float32 T0, float32 *u,float32  *u0,float32 xref, float32 x, float32 *erro0)
{
	float32 erro=0;

	erro = xref-x;

	*u = *u0 + kp*(erro - *erro0) + ki*T0*erro;

	if(*u > limite)
	*u = limite;
	if(*u < - limite)
	*u = - limite;

	*u0 = *u;
	*erro0 = erro;
}
/*
void PID(float32 limite, float32 kp, float32 ki,float32 kd,float32 T0, float32 *u,float32  *u0,float32 xref, float32 x, float32 *erro0)
{
	float32 erro=0;

	erro = xref-x;

	*u = *u0 + kp*(erro - *erro0) + ki*T0*erro ;

	if(*u > limite)
	*u = limite;
	if(*u < - limite)
	*u = - limite;

	*u0 = *u;
	*erro0 = erro;
}*/

/* Transformação alfa/beta   */
void Trf_AlfaBeta(float32 *alfa,float32 *beta, float32 ia,float32 ib)
{
	*alfa = ia;
	*beta = (1.154700538)*(ib+0.5*ia);
}

/* Transformação alfa/beta--> dq   */
void Trf_AlfaBeta_dq(float32 *d,float32 *q, float32 alfa,float32 beta, float32 cos_ang, float32 sin_ang)
{
	*d =  cos_ang*alfa + sin_ang*beta;
	*q = -sin_ang*alfa + cos_ang*beta;
}

/* Transformação dq -->>  alfa/beta   */
void Trf_dq_AlfaBeta(float32 *alfa, float32 *beta, float32 d, float32 q,float32 cos_ang, float32 sin_ang)
{
	*alfa = d*cos_ang - q*sin_ang;
	*beta = d*sin_ang + q*cos_ang;
}


/* Função de SVPWM  */


void SVPWM(float32 *va, float32 *vb, float32 *vc, float32 u1norm_alpha, float32 u1norm_beta, Uint16 periodoPWM)
{
	float32 van=0,vbn=0,vcn=0,Vmax=0,Vmin=0,triang=0;

	// Normalização
	u1norm_alpha = u1norm_alpha/312;
	u1norm_beta = u1norm_beta/312;

	// Tensões Trifásicas Normalizadas
	van = u1norm_alpha;
	vbn = -0.5*u1norm_alpha + 0.8660*u1norm_beta;
	vcn = -0.5*u1norm_alpha - 0.8660*u1norm_beta;

	// SVPWM
	 if ((van>vbn) && (van>vcn))
	 {
	  Vmax = van;
	  }
	  else if ((vbn>vcn) && (vbn>van))
	  {
	  Vmax = vbn;
	  }
	  else if ((vcn>van) && (vcn>vbn)){
	  Vmax = vcn;
	  }

	  if ((van<vbn) && (van<vcn)){
	  Vmin = van;
	  }
	  else if ((vbn<vcn) && (vbn<van)){
	  Vmin = vbn;
	  }
	  else if ((vcn<van) && (vcn<vbn)){
	  Vmin = vcn;
	  }

	triang = (Vmax+Vmin)/2;
	*va = (((van - triang)*U_SQ3) + 0.5)*periodoPWM;
	*vb = (((vbn - triang)*U_SQ3) + 0.5)*periodoPWM;
	*vc = (((vcn - triang)*U_SQ3) + 0.5)*periodoPWM;
}


/*  Correção de Offset dos sensores  */

void offset(float32 *valor_atual, float32 *offset, float32 *offset0)
{
	float64 offset_aux=0;

	offset_aux = *valor_atual + *offset0;		// Corrente da Fase A do Motor 1
	*offset0 = offset_aux;
	*offset = offset_aux*0.0001;
}

/*  		Média Movel - 2 		*/
void mediamov2(float32 *x, float32 *x0)
{
	*x = (*x + *x0)*0.5;
	*x0 = *x;
}

/*  		Média Movel - 4		*/
void mediamov4(float32 *x, float32 *x0, float32 *x00, float32 *x000)
{
	*x = (*x + *x0 + *x00 + *x00)*0.25;
	*x0 = *x;
	*x00 = *x0;
	*x000 = *x00;
}

/*  		Filtro passa-baixa		*/
void filtpbaixa(float32 *x, float32 *x0, float32 K1, float32 K2)
{
	*x = *x *K1 + *x0 *K2;
	*x0 = *x;
}

/*			Aquisição de dados (Buffers)		*/
void aquisicaobuffer(int16 *buffer, int sizebuffer, int *indexbuffer, int *cont, int contmax, float32 variavel)
{
	*cont += 1;
	if(*cont==contmax)
	{
		if(*indexbuffer < sizebuffer)
		{
			buffer[*indexbuffer] = (int16) (variavel);
			*indexbuffer +=1;
		}
	*cont=0;
	}
}

/*			Aquisição de dados (Buffers)		*/
void aquisicaobuffer_unsigned(int16 *buffer, int sizebuffer, int *indexbuffer, int *cont, int contmax, float32 variavel)
{
	*cont += 1;
	if(*cont==contmax)
	{
		if(*indexbuffer < sizebuffer)
		{
			buffer[*indexbuffer] = (Uint16) (variavel);
			*indexbuffer +=1;
		}
	*cont=0;
	}
}

// Cálculo do Ângulo do Acionamento Senoidal
/*			// Cálculo do Ângulo do Acionamento Senoidal
			theta_senoidal += M_2PI*60*0.0002;
			if(theta_senoidal >= M_2PI)
				theta_senoidal -= M_2PI;
			if(theta_senoidal <= -M_2PI)
				theta_senoidal += M_2PI;

			// Cálculo das Senoides
			van_2 = (sin(theta_senoidal));
			vbn_2 = (sin(theta_senoidal-M_2PI3));
			vcn_2 = (sin(theta_senoidal+M_2PI3));

			// SVPWM
		     if ((van_2>vbn_2) && (van_2>vcn_2)){
		      V2max = van_2;
		      }
		      else if ((vbn_2>vcn_2) && (vbn_2>van_2)){
		      V2max = vbn_2;
		      }
		      else if ((vcn_2>van_2) && (vcn_2>vbn_2)){
		      V2max = vcn_2;
		      }

		      if ((van_2<vbn_2) && (van_2<vcn_2)){
		      V2min = van_2;
		      }
		      else if ((vbn_2<vcn_2) && (vbn_2<van_2)){
		      V2min = vbn_2;
		      }
		      else if ((vcn_2<van_2) && (vcn_2<vbn_2)){
		      V2min = vcn_2;
		      }

		    triang_2 = (V2max+V2min)/2;
		    M1va = (((van_2 - triang_2)*U_SQ3) + 0.5)*periodo;
		    M1vb = (((vbn_2 - triang_2)*U_SQ3) + 0.5)*periodo;
		    M1vc = (((vcn_2 - triang_2)*U_SQ3) + 0.5)*periodo;*/
