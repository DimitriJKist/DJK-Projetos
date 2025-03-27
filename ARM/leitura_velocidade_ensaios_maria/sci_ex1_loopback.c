/*
//###########################################################################
//
// ARQUIVO: sci_ex1_loopback.c
//
// TÍTULO: SCI FIFO Digital Loop Back.
//
//! \addtogroup driver_example_list
//! <h1>SCI FIFO Digital Loop Back</h1>
//!
//! Este programa utiliza o modo de teste de loopback interno do periférico.
//! Além da configuração dos pinos para o modo de boot, nenhuma outra
//! configuração de hardware é necessária. O pinmux e os módulos SCI são
//! configurados através do arquivo sysconfig.
//!
//! Este teste utiliza o modo de teste de loopback do módulo SCI para enviar
//! caracteres começando de 0x00 até 0xFF. O teste enviará um caractere e,
//! em seguida, verificará o buffer de recepção para garantir que o caractere
//! recebido seja o correto.
//!
//! \b Variáveis \b Monitoradas \n
//! - \b loopCount - Número de caracteres enviados
//! - \b errorCount - Número de erros detectados
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
// A redistribuição e uso em formas de código-fonte e binário, com ou sem
// modificações, são permitidos desde que as seguintes condições sejam
// atendidas:
// 
//   Redistribuições de código-fonte devem manter o aviso de copyright acima,
//   esta lista de condições e o seguinte aviso de isenção.
// 
//   Redistribuições em forma binária devem incluir o aviso de copyright acima,
//   esta lista de condições e o seguinte aviso de isenção na documentação
//   e/ou outros materiais fornecidos com a distribuição.
// 
//   Nem o nome da Texas Instruments Incorporated nem os nomes de seus
//   contribuidores podem ser utilizados para endossar ou promover produtos
//   derivados deste software sem permissão prévia por escrito.
// 
// ESTE SOFTWARE É FORNECIDO PELOS DETENTORES DO COPYRIGHT E CONTRIBUIDORES
// "COMO ESTÁ" E QUAISQUER GARANTIAS EXPRESSAS OU IMPLÍCITAS, INCLUINDO, MAS
// NÃO SE LIMITANDO, ÀS GARANTIAS IMPLÍCITAS DE COMERCIABILIDADE E ADEQUAÇÃO
// A UM PROPÓSITO ESPECÍFICO SÃO REJEITADAS. EM NENHUM CASO O PROPRIETÁRIO DO
// COPYRIGHT OU OS CONTRIBUIDORES SERÃO RESPONSÁVEIS POR QUAISQUER DANOS
// DIRETOS, INDIRETOS, INCIDENTAIS, ESPECIAIS, EXEMPLARES OU CONSEQUENCIAIS
// (INCLUINDO, MAS NÃO SE LIMITANDO, À AQUISIÇÃO DE BENS OU SERVIÇOS
// SUBSTITUTOS; PERDA DE USO, DADOS OU LUCROS; OU INTERRUPÇÃO DE NEGÓCIOS)
// CAUSADOS POR QUALQUER TEORIA DE RESPONSABILIDADE, SEJA EM CONTRATO,
// RESPONSABILIDADE ESTRITA OU DELITO (INCLUINDO NEGLIGÊNCIA OU OUTROS)
// DECORRENTES DE QUALQUER MANEIRA DO USO DESTE SOFTWARE, MESMO SE AVISADO
// DA POSSIBILIDADE DE TAIS DANOS.
// $
//#############################################################################

//
// Arquivos Incluídos
//
#include "driverlib.h"
#include "device.h"

//
// Variáveis Globais
//
uint16_t loopCount;
uint16_t errorCount;

//
// Prototipação de Funções
//
void error();

//
// Função Principal
//
void main(void)
{
    uint16_t sendChar;
    uint16_t receivedChar;

    //
    // Inicializa o clock do dispositivo e os periféricos
    //
    Device_init();

    //
    // Configura o GPIO desabilitando travas e habilitando pull-ups
    //
    Device_initGPIO();

    //
    // Inicializa o módulo PIE e limpa os registros PIE. Desabilita interrupções da CPU.
    //
    Interrupt_initModule();

    // Inicializa a tabela de vetores PIE com ponteiros para as ISRs (rotinas de serviço de interrupção).
    //
    Interrupt_initVectorTable();

    //
    // Inicialização da placa
    //

    //
    // Habilita interrupções da CPU
    //
    Interrupt_enableMaster();

    //
    // Inicializa os contadores
    //
    loopCount = 0;
    errorCount = 0;

    //
    // Envia um caractere começando de 0
    //
    sendChar = 0;

    //
    // Envia caracteres continuamente começando de 0x00 até 0xFF.
    // Após enviar cada caractere, verifica o buffer de recepção para confirmar o valor correto.
    //
    for(;;)
    {
        SCI_writeCharNonBlocking(mySCI0_BASE, sendChar);

        //
        // Aguarda até que RRDY/RXFFST = 1, indicando 1 dado disponível no FIFO
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
        // Passa para o próximo caractere e repete o teste
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
