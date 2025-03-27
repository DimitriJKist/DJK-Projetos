/*
 * uartInit.c
 *
 *  Created on: 4 de jan de 2025
 *      Author: Francisco
 */


#include <definicoes.h>
#include "F28x_Project.h"
#include <global_variables.h>


void uartInit(void) {

    // Configura��o de Controle do SCI
    SciaRegs.SCICCR.all = 0x0007;  // 1 stop bit, no loopback, sem paridade, 8 bits por caractere.

    // Controle de Transmiss�o
    SciaRegs.SCICTL1.all = 0x0003;  // Habilita TX, desabilita RX, sem modo sleep ou RX ERR.

    // Desabilita interrup��es
    SciaRegs.SCICTL2.bit.TXINTENA = 0;  // Desabilita interrup��o de transmiss�o.
    SciaRegs.SCICTL2.bit.RXBKINTENA = 0;  // Desabilita interrup��o de recep��o/backspace.

    // Configura��o do Baud Rate
    SciaRegs.SCIHBAUD.all = 0x0000;  // Parte alta do divisor de baud rate.
    SciaRegs.SCILBAUD.all = SCI_PRD; // Parte baixa do divisor de baud rate (defina SCI_PRD conforme desejado).

    // Configura��o do FIFO de Transmiss�o
    SciaRegs.SCIFFTX.all = 0xC022;  // FIFO habilitado, TXFIFO Reset, TX FIFO n�vel de interrup��o = 0.

    // Configura��o do FIFO de Recep��o (n�o necess�rio para TX apenas)
    SciaRegs.SCIFFRX.all = 0x0000;  // Desabilita RXFIFO.

    // Configura��o do FIFO Control
    SciaRegs.SCIFFCT.all = 0x00;  // Sem delay entre FIFO RX/TX.

    // Libera o m�dulo SCI do reset e habilita o transmissor
    SciaRegs.SCICTL1.all = 0x0023;  // Libera o SCI do reset e habilita TX.

    // Inicializa os FIFOs
    SciaRegs.SCIFFTX.bit.TXFIFORESET = 1;  // Reinicia FIFO de transmiss�o.
}


void send_buffer_tx(void){
    unsigned char i;
    for(i = 0; i < 8; i++){
        //while (SciaRegs.SCIFFTX.bit.TXFFST != 0){}
        while(!SciaRegs.SCICTL2.bit.TXRDY){
        }
        SciaRegs.SCITXBUF.all = buffer_tx[i];
    }
}

#include <stdio.h>  // Para usar sprintf()

void send_int16_uart(int16_t number) {
    char buffer[8];  // Buffer para armazenar o n�mero convertido para string
    unsigned char i;

    // Converte o n�mero int16_t para uma string de caracteres
    sprintf(buffer, "%d", number);

    // Envia cada caractere da string pela UART
    for (i = 0; buffer[i] != '\0'; i++) {
        // Aguarda at� que o transmissor esteja pronto
        while (!SciaRegs.SCICTL2.bit.TXRDY) {
        }
        // Envia o caractere atual
        SciaRegs.SCITXBUF.all = buffer[i];
    }

    // Envia um caractere de nova linha ('\n') e retorno de carro ('\r') para formatar no terminal
    while (!SciaRegs.SCICTL2.bit.TXRDY) {
    }
    SciaRegs.SCITXBUF.all = '\r';
    while (!SciaRegs.SCICTL2.bit.TXRDY) {
    }
    SciaRegs.SCITXBUF.all = '\n';
}

