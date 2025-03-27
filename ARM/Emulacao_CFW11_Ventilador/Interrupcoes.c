/*
 * Interrupcoes.c
 *
 *  Created on: 16/12/2016
 *      Author: Carlos Matheus - obs.: salvei alguma alteração - 18/03/2024-21:46
 */

#include "F28x_Project.h"     		// Device Header File and Examples Include File

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "InicializacaoFuncoes.h"
#include "FuncoesGerais.h"
#include "Definicoes.h"
#include "Global.h"
#include "Interrupcoes.h"
//#include "FuncoesTrigonometricas.h"

interrupt void adca1_isr(void)
{
    /****************************************************************************/
    /*                      Variáveis Locais                                    */
    /****************************************************************************/


    // Variáveis de Emulação
    //float32 Bem=5*Bancada_B, Jem=10*Bancada_J;

    // Variáveis de Emulação
     // Teste 5

    /*                       Emulação de carga Duas Massas                                 */

    /****************************************************************************/
    /*          MEDIÇÕES ANALOGICAS (FILTROS E CORREÇÃO DE OFFSET)              */
    /****************************************************************************/
    //v_cc = (AdcbResultRegs.ADCRESULT1);       // Tensão do Barramento CC


    intMITel = (AdcaResultRegs.ADCRESULT3);      // Pino 26 DSP (Torque Eletromagnético do MIT)
    intDelta_Tel = (AdcaResultRegs.ADCRESULT5);      // Pino 66 DSP (Variação do Torque Eletromagnético da Bancada - Sinal sensor de torque

    MITel = intMITel*0.0058974358974359;    // 8,05 Sinal Inversor (Torque motor de Indução * VALOR NEGATIVO POIS ESTE TORQUE SERÁ CONTRARIO AO DO MOTOR)
    Delta_Tel = intDelta_Tel*0.010534798534799; //

    // Cálculo do Offset
    if(TempoOffset < 15000)
        {

       // filtpbaixa(&MITel, &MITelf0, 0.003137, 0.9969);

        //filtpbaixa(&Delta_Tel, &Delta_Telf0, 0.003137, 0.9969);

       Filt_bessel(&Delta_Tel, &DeltaTel_anterior, &DetltaTelDeriv_ant , &DeltaTelIntgrado_ant);

        Filt_bessel(&MITel, &MITel_anterior, &MITelDeriv_ant, &MITelIntgrado_ant);

        if(TempoOffset >= 5000)
            {
            offset(&MITel, &MITel_offset, &MITel_offpass0);

            offset(&Delta_Tel, &Delta_Tel_offset, &Delta_Tel_offpass0);

            }

        TempoOffset++;
        }
    else
        {
        /****************************************************************************/
        /*            INICIO DOS LOOPS DE FREQUENCIAS MENORES                       */
        /****************************************************************************/
        /*                      Posição do encoder  (20 kHz)                       */
        //
       // sentido = EQep1Regs.QEPSTS.bit.QDF;  // Motor direction: 0=CCW/reverse, 1=CW/forward)
        intang_encoder = EQep1Regs.QPOSCNT;
        ang_encoder = intang_encoder;
        difang_encoder = ang_encoder - ang_encoder_ant;
        if(difang_encoder >=2048)
            difang_encoder-= 4096;
        else if(difang_encoder <= -2048)
            difang_encoder += 4096;
        ang_encoder_ant = ang_encoder;
        angulo_encoder = angulo_encoder0 + (M_2PI*difang_encoder/4096);
        angulo_encoder0 = angulo_encoder;
        angulo_encoder = -angulo_encoder;

        filtpbaixa(&angulo_encoder, &filtangulo_encoder, 0.1181, 0.8819);

        /*              Medição de Velocidade   (10 kHz/20 = 500Hz)                  */
        LoopVel++;
        if(LoopVel >= 20)   //Esta medindo a velocidade em um loop de 5Khz LoopVel = 4;
            {
            NumPulsos = ang_encoder - ang_encoder0;
            ang_encoder0 = ang_encoder;
                if(NumPulsos >= 2048)
                NumPulsos -= 4096;
            if(NumPulsos <= -2048)
                NumPulsos += 4096;
                                            // Wmec[RPM] = (60*NumPulsos)/(ppr*T0) --> ppr=4096, T0= 1/freq.
                                            // Wmec[RPM] -> Wmec[rad/s](Wmec[RPM]* (pi/30))

            wm = NumPulsos*7.32421875;
            wmec = wm*0.10472;
            LoopVel = 0;

            } // Fim do Loop de 1 kHz

        // ---------------------- FILTRAGEM E OFFSET TORQUE  --------------------------------------

          Filt_bessel(&Delta_Tel, &DeltaTel_anterior, &DetltaTelDeriv_ant , &DeltaTelIntgrado_ant);

          Filt_bessel(&MITel, &MITel_anterior, &MITelDeriv_ant, &MITelIntgrado_ant);

        //filtpbaixa(&MITel, &MITelf0, 0.003137, 0.9969);

        //filtpbaixa(&Delta_Tel, &Delta_Telf0, 0.003137, 0.9969);

        //filtpbaixa(&MITel, &MITelf0, 0.3141, 0.6859);

        //filtpbaixa(&Delta_Tel, &Delta_Telf0, 0.3141, 0.6859);

        MITel = (MITel-MITel_offset);
        Delta_Tel = (Delta_Tel-Delta_Tel_offset);
        abs_Delta_Tel = mod(Delta_Tel);
       // Delta_Tel = k_torqu*Delta_Tel*0.0127499998;

      // ---------------------- MODELO EMULAÇO  --------------------------------------
         //  MSTel = MITel + Delta_Tel;

        if(flag_MSTel_Zero==0)
        {
            MSTel = (MITel_Ref + Delta_Tel);
        }
        else
        {
            MSTel=0;
        }

        abs_MSTel = mod(MSTel);


        if(flag_emulacao==0)
        {
             // wmecEm=wmec; wmecEm0=wmec; MITel_Ref0=0;
        }
        else //if (flag_emulacao==1 && wmec>=6)
        {
            /*
            if(abs_MSTel<0.2)
            {
            MSTel=0.001*MSTel;
            }
            */
/*
            if(flag_MSTel_Zero==1 && wmecEm0>=1)
            {
                Tf = 0.062799787994141;
            }
            else if(flag_MSTel_Zero==1 && wmecEm0<=1 && wmecEm0>=0.2)
            {
                Tf = 0.62799787994141;
            }
            else if(flag_MSTel_Zero==1 && wmecEm0<=0.2)
            {
                Tf = 0;
            }
*/


            if(wmec<= 10)
            {
                Bem =    2.6450e-05*100;
            }
            else
            {
                Bem =   2.6450e-05*k_Bem;
            }

             wmecEm = wmecEm0 + (Toc/Jem)*(MSTel - Bem*wmecEm0 - Tf);
             wmecEm0=wmecEm;

             //flag_aquisicao=1;
        }


        if(wmec>=2 && flag_emulacao==0)
        {
            flag_emulacao=1;
          //  hab_aquisicao=1;
        }

        if(wmec>=50 && flag_MSTel_Zero==0)
        {
            hab_aquisicao=1;
        }


             wmecEm_RPM = wmecEm*60/M_2PI;

      // ---------------------- MALHAS DE CONTROLE DO MIT ---------------------------------
             //  MITel_Ref = 0;
                // Loop de Controle do MIT1 (10 kHz/10 = 1 kHz)
      //    if(LoopctrlVel >= 10)
       //   {
    //        PI(13.72, Kp, Ki, Toc, &MITel_Ref, &MITel_Ref0, wmecEm, wmec, &erro_wmecEm0); // PI  de M1Wmec
        // LoopctrlVel = 0;
      //    }
        //       LoopctrlVel++;





        if (MITel_Ref>=0)
        {
            EALLOW;
            GpioDataRegs.GPCDAT.bit.GPIO94 = 1;
            EDIS;
        }
        else
        {
            GpioDataRegs.GPCDAT.bit.GPIO94 = 0;
        }

        SaidaInv_AI1 = mod(MITel_Ref)/15;

        } // Fim do Loop de 10 kHz do MIT1



        SaidaInv_AI1 = 1.0257*SaidaInv_AI1 +  0.0045;

        if (SaidaInv_AI1 <0.015)
        {
            SaidaInv_AI1 = 0;
        }
        else if(SaidaInv_AI1>=1)
        {
            SaidaInv_AI1 = 1;
        }


        if(abs_Delta_Tel<=0.3)
            abs_Delta_Tel=0;




    DacaRegs.DACVALS.all = (SaidaInv_AI1)*4095;   // Pino 30 Amarelo

  //  DacbRegs.DACVALS.all = (wmecEm/200 + 0)*4095;   // Pino 70 Laranja

    //DacbRegs.DACVALS.all = ((-Delta_Tel+1)/15)*4095;   // Pino 70 Laranja

    DacbRegs.DACVALS.all = ((abs_Delta_Tel+1)/15)*4095;   // Pino 70 Laranja



    // Fim da Medição de Tempo
    MITel_Ref = 0;
    if(hab_aquisicao == 1)
    {
        //Obs: Definição do fator de conversão -> 65536/DeltaAmplitude = 1

        //              Duas Massas
        contstep++;
        /*if(contstep<=1000)
            wmecEm=100;
        else if(contstep>=1000 && contstep<15000)
            wmecEm=0;
        else if(contstep>=15000)
            wmecEm=20;*/

        aquisicaobuffer(buffer_wmec, sizeof(buffer_wmec),&indexbufwmec,&cont_buffwmec, 40, 100*wmec);
       // aquisicaobuffer(buffer_wmec_em, sizeof(buffer_wmec_em),&indexbufwmec_em,&cont_buffwmec_em, 40, 100*wmecEm);


        aquisicaobuffer(buffer_MSTel, sizeof(buffer_MSTel),&indexbufMSTel,&cont_buffMSTel, 10, 4000*MSTel);


        MITel_Ref = MITel_Ref0;

        if(contstep==20000) //192000
        {
            hab_aquisicao = 0;
            //wmecEm=0;
            contstep=0;
        }
        }
    else
    {
        contstep=0;
        //wmecEm=100;
}

    // Return from interrupt
    AdcaRegs.ADCINTFLGCLR.bit.ADCINT1 = 1;      // Clear ADC INT1 flag
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;     // Acknowledge PIE group 1 to enable further interrupts

    } // Fim do Loop de 20 kHz











