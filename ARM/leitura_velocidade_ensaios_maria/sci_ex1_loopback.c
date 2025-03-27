/*
//###########################################################################
//
// ARQUIVO: sci_ex1_loopback.c
//
// T�TULO: SCI FIFO Digital Loop Back.
//
//! \addtogroup driver_example_list
//! <h1>SCI FIFO Digital Loop Back</h1>
//!
//! Este programa utiliza o modo de teste de loopback interno do perif�rico.
//! Al�m da configura��o dos pinos para o modo de boot, nenhuma outra
//! configura��o de hardware � necess�ria. O pinmux e os m�dulos SCI s�o
//! configurados atrav�s do arquivo sysconfig.
//!
//! Este teste utiliza o modo de teste de loopback do m�dulo SCI para enviar
//! caracteres come�ando de 0x00 at� 0xFF. O teste enviar� um caractere e,
//! em seguida, verificar� o buffer de recep��o para garantir que o caractere
//! recebido seja o correto.
//!
//! \b Vari�veis \b Monitoradas \n
//! - \b loopCount - N�mero de caracteres enviados
//! - \b errorCount - N�mero de erros detectados
//! - \b sendChar - Caractere enviado
//! - \b receivedChar - Caractere recebido
//!
//
//#############################################################################
//
// 
// $Copyright:
// Copyright (C) 2013-2024 Texas Instruments Incorporated - http://www.ti.com/
//
// A redistribui��o e uso em formas de c�digo-fonte e bin�rio, com ou sem
// modifica��es, s�o permitidos desde que as seguintes condi��es sejam
// atendidas:
// 
//   Redistribui��es de c�digo-fonte devem manter o aviso de copyright acima,
//   esta lista de condi��es e o seguinte aviso de isen��o.
// 
//   Redistribui��es em forma bin�ria devem incluir o aviso de copyright acima,
//   esta lista de condi��es e o seguinte aviso de isen��o na documenta��o
//   e/ou outros materiais fornecidos com a distribui��o.
// 
//   Nem o nome da Texas Instruments Incorporated nem os nomes de seus
//   contribuidores podem ser utilizados para endossar ou promover produtos
//   derivados deste software sem permiss�o pr�via por escrito.
// 
// ESTE SOFTWARE � FORNECIDO PELOS DETENTORES DO COPYRIGHT E CONTRIBUIDORES
// "COMO EST�" E QUAISQUER GARANTIAS EXPRESSAS OU IMPL�CITAS, INCLUINDO, MAS
// N�O SE LIMITANDO, �S GARANTIAS IMPL�CITAS DE COMERCIABILIDADE E ADEQUA��O
// A UM PROP�SITO ESPEC�FICO S�O REJEITADAS. EM NENHUM CASO O PROPRIET�RIO DO
// COPYRIGHT OU OS CONTRIBUIDORES SER�O RESPONS�VEIS POR QUAISQUER DANOS
// DIRETOS, INDIRETOS, INCIDENTAIS, ESPECIAIS, EXEMPLARES OU CONSEQUENCIAIS
// (INCLUINDO, MAS N�O SE LIMITANDO, � AQUISI��O DE BENS OU SERVI�OS
// SUBSTITUTOS; PERDA DE USO, DADOS OU LUCROS; OU INTERRUP��O DE NEG�CIOS)
// CAUSADOS POR QUALQUER TEORIA DE RESPONSABILIDADE, SEJA EM CONTRATO,
// RESPONSABILIDADE ESTRITA OU DELITO (INCLUINDO NEGLIG�NCIA OU OUTROS)
// DECORRENTES DE QUALQUER MANEIRA DO USO DESTE SOFTWARE, MESMO SE AVISADO
// DA POSSIBILIDADE DE TAIS DANOS.
// $
//#############################################################################

//
// Arquivos Inclu�dos
//
#include "driverlib.h"
#include "device.h"

//
// Vari�veis Globais
//
uint16_t loopCount;
uint16_t errorCount;

//
// Prototipa��o de Fun��es
//
void error();

//
// Fun��o Principal
//
void main(void)
{
    uint16_t sendChar;
    uint16_t receivedChar;

    //
    // Inicializa o clock do dispositivo e os perif�ricos
    //
    Device_init();

    //
    // Configura o GPIO desabilitando travas e habilitando pull-ups
    //
    Device_initGPIO();

    //
    // Inicializa o m�dulo PIE e limpa os registros PIE. Desabilita interrup��es da CPU.
    //
    Interrupt_initModule();

    // Inicializa a tabela de vetores PIE com ponteiros para as ISRs (rotinas de servi�o de interrup��o).
    //
    Interrupt_initVectorTable();

    //
    // Inicializa��o da placa
    //

    //
    // Habilita interrup��es da CPU
    //
    Interrupt_enableMaster();

    //
    // Inicializa os contadores
    //
    loopCount = 0;
    errorCount = 0;

    //
    // Envia um caractere come�ando de 0
    //
    sendChar = 0;

    //
    // Envia caracteres continuamente come�ando de 0x00 at� 0xFF.
    // Ap�s enviar cada caractere, verifica o buffer de recep��o para confirmar o valor correto.
    //
    for(;;)
    {
        SCI_writeCharNonBlocking(mySCI0_BASE, sendChar);

        //
        // Aguarda at� que RRDY/RXFFST = 1, indicando 1 dado dispon�vel no FIFO
        //
        while(SCI_getRxFIFOStatus(mySCI0_BASE) == SCI_FIFO_RX0)
        {
            ;
        }

        //
        // Verifica o caractere recebido
        //
        receivedChar = SCI_readCharBlockingFIFO(mySCI0_BASE);

        //
        // Caso o caractere recebido esteja incorreto
        //
        if(receivedChar != sendChar)
        {
            errorCount++;
            // asm("     ESTOP0");  // Descomente para parar o teste aqui
            for (;;);
        }

        //
        // Passa para o pr�ximo caractere e repete o teste
        //
        sendChar++;

        //
        // Limita o caractere a 8 bits
        //
        sendChar &= 0x00FF;
        loopCount++;
    }
}

//
// Fim do Arquivo
//
*/
