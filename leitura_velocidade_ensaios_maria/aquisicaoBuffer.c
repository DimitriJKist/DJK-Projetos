/*
 * aquisicaoBuffer.c
 *
 *  Created on: 7 de jan de 2025
 *      Author: Francisco
 */

#include "F28x_Project.h"
#include "global_variables.h"
#include "definicoes.h"


void aquisicaobuffer(int16 *buffer, int sizebuffer, Uint16 *indexbuffer, Uint16 *cont, Uint16 contmax, float32 variavel)
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
