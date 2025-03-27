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

    // Configuração de Controle do SCI
    SciaRegs.SCICCR.all = 0x0007;  // 1 stop bit, no loopback, sem paridade, 8 bits por caractere.

    // Controle de Transmissão
    SciaRegs.SCICTL1.all = 0x0003;  // Habilita TX, desabilita RX, sem modo sleep ou RX ERR.

    // Desabilita interrupções
    SciaRegs.SCICTL2.bit.TXINTENA = 0;  // Desabilita interrupção de transmissão.
    SciaRegs.SCICTL2.bit.RXBKINTENA = 0;  // Desabilita interrupção de recepção/backspace.

    // Configuração do Baud Rate
    SciaRegs.SCIHBAUD.all = 0x0000;  // Parte alta do divisor de baud rate.
    SciaRegs.SCILBAUD.all = SCI_PRD; // Parte baixa do divisor de baud rate (defina SCI_PRD conforme desejado).

    // Configuração do FIFO de Transmissão
    SciaRegs.SCIFFTX.all = 0xC022;  // FIFO habilitado, TXFIFO Reset, TX FIFO nível de interrupção = 0.

    // Configuração do FIFO de Recepção (não necessário para TX apenas)
    SciaRegs.SCIFFRX.all = 0x0000;  // Desabilita RXFIFO.

    // Configuração do FIFO Control
    SciaRegs.SCIFFCT.all = 0x00;  // Sem delay entre FIFO RX/TX.

    // Libera o módulo SCI do reset e habilita o transmissor
    SciaRegs.SCICTL1.all = 0x0023;  // Libera o SCI do reset e habilita TX.

    // Inicializa os FIFOs
    SciaRegs.SCIFFTX.bit.TXFIFORESET = 1;  // Reinicia FIFO de transmissão.
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
    char buffer[8];  // Buffer para armazenar o número convertido para string
    unsigned char i;

    // Converte o número int16_t para uma string de caracteres
    sprintf(buffer, "%d", number);

    // Envia cada caractere da string pela UART
    for (i = 0; buffer[i] != '\0'; i++) {
        // Aguarda até que o transmissor esteja pronto
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

