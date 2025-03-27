#include <stdint.h>
#include <stdlib.h>
#include "inc/tm4c123gh6pm.h"
#include "math.h"
#include <string.h>

//PB2 CHIP SELECT
//PB4 CLK
//PB5 FSS
//PB6  RX
//PB7  TX


#define CMD0     0x40       /* GO_IDLE_STATE */
#define CMD1     0x41       /* SEND_OP_COND */
#define CMD8     0x48       /* SEND_IF_COND */
#define CMD9     0x49       /* SEND_CSD */
#define CMD10    0x4A       /* SEND_CID */
#define CMD12    0x4C       /* STOP_TRANSMISSION */
#define CMD16    0x50       /* SET_BLOCKLEN */
#define CMD17    0x51       /* READ_SINGLE_BLOCK */
#define CMD18    0x52       /* READ_MULTIPLE_BLOCK */
#define CMD23    0x57       /* SET_BLOCK_COUNT */
#define CMD24    0x58       /* WRITE_BLOCK */
#define CMD25    0x59       /* WRITE_MULTIPLE_BLOCK */
#define CMD41    0x69       /* SEND_OP_COND (ACMD) */
#define CMD55    0x77       /* APP_CMD */
#define CMD58    0x7A       /* READ_OCR */

unsigned char Timer1,Timer2;
unsigned long lba_begin_address,number_of_sectors,lba_addr,cluster_start,file_size,fat_begin_lba,sectors_per_fat,root_dir_first_cluster;
unsigned long previous_cluster=0;
unsigned long cluster_dir=0;
long volatile file_next_cluster = 0;
unsigned char volatile sectors_per_cluster;
unsigned long volatile cluster_begin_lba;
char fd_count=0,current_count=0;
char finish=0;
int row=0,column=0,number=0;
int ISFAT32=0;
unsigned short volatile rcvdata;
int falhasd=0;

typedef struct
{
    char hour;
    char minute;
    unsigned int year;
    char month;
    char day;
    long size;
    long first_cluster;
}tfile_info;

typedef struct
{
    tfile_info info;
    unsigned char file_dir_name[255];
}tfile_name;

typedef struct
{
    tfile_name name;
    enum type_of_file
    {
        IS_NONE,
        IS_DIR,
        IS_FILE
    }type;
}tfile_dir;

tfile_dir file_dir[40];


void initialise_sd2(void);
void start_SSI2(void);
void cs2_high(void);
void cs2_low(void);
void SysTick_Wait50ms(int vezes);
void change_speed2(void);
void dummy2_clock(void);
void tx2_high(void);
void sd2_write(char message);
void tx2_SSI(void);
unsigned char send2_command(unsigned char command, unsigned long argument);
unsigned char sd_read(void);
long open_file_by_name_s2(char *filename);
void read_disk_data(void);
unsigned int rcvr2_datablock(unsigned char *buff,unsigned int btr);
void rcvr2_spi_m(unsigned char *dst);
unsigned char sd2_read(void);
void read_first_sector(void);
long get_root_dir_first_cluster2(void);
long open_file_s2(long next_cluster);
unsigned char is_ready2(void);


int time=0;
char dados;
int main(void){
        start_SSI2();
        //Before initialising the SD card, check the CD (Card Detection) pin if available
        /*GPIO_PORTD_DIR_R &= ~0x40; //Set PD6 as input
        uint8_t continue_prog=0;
        while(continue_prog == 0)
        {
            char read = GPIO_PORTD_DATA_R&0x40;
            if(read == 0x00)
            {
                continue_prog=1;
            }
        };*/

        SysTick_Wait50ms(40);
        initialise_sd2();
        cs2_high();
        change_speed2();
        cs2_low();
        read_first_sector();
        read_disk_data();
        long next_cluster=get_root_dir_first_cluster2();
//        do{
//            next_cluster=get_files_and_dirs(next_cluster,LONG_NAME,GET_SUBDIRS,SSI3);
//        }while(next_cluster!=0x0FFFFFFF && next_cluster!=0xFFFFFFFF);
       // printf("\nDirs and files listed\n\n");
        /*
        next_cluster=get_first_cluster(1);
        do
        {
            next_cluster=open_file(next_cluster,SSI3);
        }while(next_cluster!=0x0FFFFFFF && next_cluster!=0xFFFFFFFF);
        */
        //Alternative that allows opening a file by specifying a name. With this, get_first_cluster is not necessary
  //       do{
         // next_cluster = open_file_by_name_s2("1 R\xe1pido.txt");
  //       next_cluster = open_file_by_name_s2("dados.txt");
  //       }while(next_cluster!=0x0FFFFFFF && next_cluster!=0xFFFFFFFF);

        //setor 29890 512 bytes por setor
        // SSI2_SR_R    status
        // SSI2_CR0_R   control 0
        // SSI2_CR1_R   control 1
        // SSI2_DR_R    data


        //CMD55
        // CMD24
        // Data
        //CMD12


        int Address=30000;
        cs2_low();
        SSI2_DR_R =(CMD55);
        SSI2_DR_R =(CMD24);
        SSI2_DR_R =(Address>>24);
        SSI2_DR_R =(Address>>16);
        SSI2_DR_R =(Address>>8);
        SSI2_DR_R =(Address);
       // SSI2_DR_R =(0x87);        //Checksum
       // SSI2_DR_R =(0xFF);        //Command Response Time (NCR).
       // send2_command(CMD24, 29891);
        cs2_high();
        cs2_low();
//        sd2_write("T");
//        sd2_write("E");
//        sd2_write("S");
//        sd2_write("T");
//        sd2_write("E");
        SSI2_DR_R = 0x54;
        SSI2_DR_R = 0x45;
        SSI2_DR_R = 0x53;
        SSI2_DR_R = 0x54;
        SSI2_DR_R = 0x45;
        SSI2_DR_R =(CMD24);
        cs2_high();
 while(1){
     time++;
if(time==500000){time=0;}
 }
}
void start_SSI2(void){
    volatile unsigned long delay;
    SYSCTL_RCGC2_R |= 0x00000002;         //  activate clock for Port B
    SYSCTL_RCGCSSI_R|=SYSCTL_RCGCSSI_R2;  // activate clock for SSI2
    delay = SYSCTL_RCGC2_R;               //    allow time for clock to stabilize
    GPIO_PORTB_LOCK_R=0x4C4F434B;
    GPIO_PORTB_CR_R=0x0C;
    GPIO_PORTB_DIR_R |= 0x20;             // make PB5 out
    GPIO_PORTB_AFSEL_R |= 0xD0;           // enable alt funct on PB4,PB6 and PB7
    GPIO_PORTB_DEN_R |= 0xF0;             // enable digital I/O on PB4,PB5,PB6 and PB7
    GPIO_PORTB_PCTL_R = (GPIO_PORTB_PCTL_R&0x00F0FFFF)+0x22020000;// configure PB4,PB6 and PB7 as SSI
    GPIO_PORTB_PCTL_R = (GPIO_PORTB_PCTL_R&0xFF0FFFFF)+0x00000000;// configure PB5 as GPIO
    GPIO_PORTB_AMSEL_R &= ~0xFC;          // disable analog functionality from PB2 to PB7
    SSI2_CR1_R&=~SSI_CR1_SSE;             // Disable SSI while configuring it
    SSI2_CR1_R&=~SSI_CR1_MS;              //  Set as Master
    SSI2_CC_R|=SSI_CC_CS_M;               //  Configure clock source
    SSI2_CC_R|=SSI_CC_CS_SYSPLL;          //  Configure clock source
    SSI2_CC_R|=SSI_CPSR_CPSDVSR_M;        //  Configure prescale divisor
    SSI2_CPSR_R = (SSI2_CPSR_R&~SSI_CPSR_CPSDVSR_M)+10; // must be even number
    SSI2_CR0_R |=0x0300;
    SSI2_CR0_R &= ~(SSI_CR0_SPH | SSI_CR0_SPO);
    SSI2_CR0_R = (SSI2_CR0_R&~SSI_CR0_FRF_M)+SSI_CR0_FRF_MOTO;// DSS = 8-bit data
    SSI2_CR0_R = (SSI2_CR0_R&~SSI_CR0_DSS_M)+SSI_CR0_DSS_8;
    SSI2_CR1_R|=SSI_CR1_SSE;              // 3)Enable SSI
}

 void initialise_sd2(void){
     unsigned char i;
     unsigned char ocr[4];
     unsigned char sd_type;
     //Sends a 1 through CS and MOSI lines for at least 74 clock cycles
     cs2_high();
     dummy2_clock();
     cs2_low();
     i=0;
     /* Give the card some time to complete initialisation */
     while(i<10 && send2_command(CMD0, 0) != 1)
     {
         SysTick_Wait50ms(4);
         i++;
     }
     i=0;
     /*Checks if SD card is in IDLE mode. If so, response will be 1*/
     if(send2_command(CMD0, 0) == 1){
         Timer1 = 100; /* Initialization timeout of 1000 msec */
         if(send2_command(CMD8, 0x1AA) == 1){
             /* SDC Ver2+ */
             for(i=0;i<4;i++){
                 ocr[i]=sd2_read();
             }
             if(ocr[2]==0x01&&ocr[3]==0xAA){
                 //sends ACMD41, which is a command sequence of CMD55 and CMD41
                 do{
                     if(send2_command(CMD55, 0) <= 1 && send2_command(CMD41, 1UL << 30) == 0){
                         break; //R1 response is 0x00
                     }
                 }while(Timer1);
                 if(Timer1 && send2_command(CMD58, 0) == 0){
                     for(i=0;i<4;i++){
                         ocr[i]=sd2_read();
                         sd_type = (ocr[0] & 0x40) ? 6 : 2;
                     }
                 }
             }
         }
         else{
             /*It is not SD version 2 or upper*/
             sd_type=(send2_command(CMD55, 0)<=1 &&send2_command(CMD41, 0) <= 1) ? 2 : 1;    /*Check if SD or MMC*/
             do{
                 if(sd_type==2){
                     if(send2_command(CMD55, 0)<=1&&send2_command(CMD41, 0)==0) /*ACMD41*/{
                         break;
                     }
                 }
                 else{
                     if (send2_command(CMD1, 0) == 0) /*CMD1*/{
                         break;
                     }
                 }
             }while(Timer1);
             if(!Timer1 || send2_command(CMD16, 512) != 0)    /*Select R/W block length if timeput not reached*/{
                 sd_type=0;
             }
         }
     }
     else{
       falhasd=1;
     }
 }

     void cs2_high(void){GPIO_PORTB_DATA_R|=0x4;}
     void cs2_low(void){GPIO_PORTB_DATA_R &=~0x4;}
     void SysTick_Wait50ms(int vezes){
         int tempo=800000; //50ms
         while(vezes != 0){
             while(tempo != 0){tempo--;}
           vezes=vezes-1;
           tempo=800000;
         }
     }
     void change_speed2(void){
         SSI2_CC_R|=SSI_CPSR_CPSDVSR_M;// Configure prescale divisor
         SSI2_CPSR_R = (SSI2_CPSR_R&~SSI_CPSR_CPSDVSR_M)+2; // must be even number
         SSI2_CR0_R |=0x0000;
     }
     void dummy2_clock(void){
         unsigned int i;
         //In order to initialize and set SPI mode, there should be at least 74 clock cycles with MOSI and CS set to 1
         for ( i = 0; i < 2; i++);
         //CS set high
         cs2_high();
         //Disables SSI on TX/MOSI pin to send a 1
         tx2_high();
         for ( i = 0; i < 10; i++){
             sd2_write(0xFF);
         }
         tx2_SSI();
     }
     void tx2_high(void){
         GPIO_PORTB_AFSEL_R &= ~0x80;           // disable alt funct on PB7
         GPIO_PORTB_PCTL_R = (GPIO_PORTB_PCTL_R&0x0FFFFFFF);
         GPIO_PORTB_DATA_R |= 0x80;            // PB7 high
     }

     void sd2_write(char message){
         while((SSI2_SR_R&SSI_SR_TNF)==0){};
         SSI2_DR_R = message;
         while((SSI2_SR_R&SSI_SR_RNE)==0){};
         rcvdata = SSI2_DR_R;
     }

     void tx2_SSI(void){
         GPIO_PORTB_AFSEL_R |= 0x80;           // enable alt funct on PB7
         GPIO_PORTB_PCTL_R = (GPIO_PORTB_PCTL_R&0x0FFFFFFF)+0x20000000;
     }
     unsigned char send2_command(unsigned char command, unsigned long argument){
         /* Argument */
         unsigned char crc, response,n;
         if (is_ready2() != 0xFF) return 0xFF;

         /* Send command packet */
         sd2_write(command);                        /* Command */
         sd2_write((unsigned char)(argument >> 24));        /* Argument[31..24] */
         sd2_write((unsigned char)(argument >> 16));        /* Argument[23..16] */
         sd2_write((unsigned char)(argument >> 8));            /* Argument[15..8] */
         sd2_write((unsigned char)argument);                /* Argument[7..0] */
         crc = 0;
         if (command == CMD0){
             crc = 0x95;            /* CRC for CMD0(0) */
         }
         if (command == CMD8){
             crc = 0x87;            /* CRC for CMD8(0x1AA) */
         }
         sd2_write(crc);

         /* Receive command response */
         if (command == CMD12) sd2_write(0xFF);        /* Skip a stuff byte when stop reading */
         n = 10;                                /* Wait for a valid response in timeout of 10 attempts */
         do{
             response = sd2_read();
         }while ((response & 0x80) && --n);
         return response;
     }
     unsigned char sd_read(void){
     while((SSI3_SR_R&SSI_SR_TNF)==0){};    // wait until room in FIFO
     SSI3_DR_R = 0xFF;                      // data out, garbage
     while((SSI3_SR_R&SSI_SR_RNE)==0){};    // wait until response
     return (unsigned char) SSI3_DR_R;      // read received data
     }

     long open_file_by_name_s2(char *filename){
         uint8_t index = 0;
         if(file_next_cluster == 0x00000000){
             while(index < 40 && strcmp(filename, file_dir[index].name.file_dir_name) != 0){
                 index++;
             }
             if(index < 40){
                 file_next_cluster = open_file_s2(file_dir[index].name.info.first_cluster);
             }
         }
         else{
             file_next_cluster = open_file_s2(file_next_cluster);
         }
         return file_next_cluster;
     }
     void read_disk_data(void){
         unsigned char buffer[512];
         if (send2_command(CMD17, lba_begin_address) == 0){
             rcvr2_datablock(buffer, 512);
         }
         fat_begin_lba = lba_begin_address + (unsigned long)buffer[14] + (((unsigned long)buffer[15])<<8); //Partition_LBA_BEGIN + Number of reserved sectors
         sectors_per_fat=((unsigned long)buffer[36]+(((unsigned long)buffer[37])<<8)+(((unsigned long)buffer[38])<<16)+(((unsigned long)buffer[39])<<24));
         cluster_begin_lba = fat_begin_lba + ((unsigned long)buffer[16] * ((unsigned long)buffer[36]+(((unsigned long)buffer[37])<<8)+(((unsigned long)buffer[38])<<16)+(((unsigned long)buffer[39])<<24)));//Partition_LBA_Begin + Number_of_Reserved_Sectors + (Number_of_FATs * Sectors_Per_FAT);
         sectors_per_cluster = (unsigned char) buffer[13];//BPB_SecPerClus;
         root_dir_first_cluster = (unsigned long)buffer[44]+(((unsigned long)buffer[45])<<8)+(((unsigned long)buffer[46])<<16)+(((unsigned long)buffer[47])<<24);//BPB_RootClus;
         lba_addr = cluster_begin_lba + ((root_dir_first_cluster/*cluster_number*/ - 2) * (unsigned long)sectors_per_cluster);
     }
     unsigned int rcvr2_datablock(unsigned char *buff,/* Data buffer to store received data */unsigned int btr)/* Byte count (must be even number) */{
       unsigned char token;
       Timer1 = 10;
       do {                            /* Wait for data packet in timeout of 100ms */
         token = sd2_read();
       } while ((token == 0xFF) && Timer1);
       if(token != 0xFE) return 0;    /* If not valid data token, retutn with error */
       do {                            /* Receive the data block into buffer */
         rcvr2_spi_m(buff++);
         rcvr2_spi_m(buff++);
       }
       while (btr -= 2);
       sd2_write(0xFF);                        /* Discard CRC */
       sd2_write(0xFF);

       return 1;                    /* Return with success */
     }
     void rcvr2_spi_m(unsigned char *dst){
       *dst = sd2_read();
     }

     unsigned char is_ready2(void){
       unsigned char response;
       Timer2 = 50;    /* Wait for ready in timeout of 500ms */
       do{
           response = sd2_read();
       }
       while ((response != 0xFF) && Timer2);
       return response;
     }
     unsigned char sd2_read(void){
        while((SSI2_SR_R&SSI_SR_TNF)==0){};    // wait until room in FIFO
        SSI2_DR_R = 0xFF;                      // data out, garbage
        while((SSI2_SR_R&SSI_SR_RNE)==0){};    // wait until response
        return (unsigned char) SSI2_DR_R;      // read received data
     }
     void read_first_sector(void){
         unsigned char buffer[512];
         if (send2_command(CMD17, 0x00000000) == 0) {
             rcvr2_datablock(buffer, 512);
         }
         if((buffer[450] == 0x0B || buffer[450] == 0x0C) && buffer[510] == 0x55 && buffer[511] == 0xAA){
             ISFAT32=1;
         }
         else{
             ISFAT32=0;
         }
         lba_begin_address=(unsigned long)buffer[454]+(((unsigned long)buffer[455])<<8)+(((unsigned long)buffer[456])<<16)+(((unsigned long)buffer[457])<<24);
         number_of_sectors=(unsigned long)buffer[458]+(((unsigned long)buffer[459])<<8)+(((unsigned long)buffer[460])<<16)+(((unsigned long)buffer[461])<<24);
     }

     long get_root_dir_first_cluster2(void){
         return root_dir_first_cluster;
     }

     long open_file_s2(long next_cluster){
         unsigned char buffer[512];
         long sector=0;
         long sectors_to_be_read=sectors_per_cluster;
         long address=cluster_begin_lba + ((next_cluster - 2) * (unsigned long)sectors_per_cluster);
         if(send2_command(CMD18,address)==0){
             do{
                 rcvr2_datablock(buffer, 512);
                 int c=0;
                 for(c=0;c<512;c++){
                     if(buffer[c]!=0x00){
                        // printf("%c", buffer[c]);
                     }
                     else{
                         c=512;
                         finish=1;
                     }
                 }
                 sectors_to_be_read--;
             }while(sectors_to_be_read>0 && finish!=1);
         }
         send2_command(CMD12,0);
         sectors_to_be_read=(next_cluster*4)/512;
         if(send2_command(CMD18,fat_begin_lba)==0){
             do{
                 sector++;
                 rcvr2_datablock(buffer, 512);
             }
             while(sectors_to_be_read>0);
             sector--;
         }
         send2_command(CMD12,0);
         next_cluster=(((long)(buffer[((next_cluster*4)-(sector*512))+3]))<<24)+(((long)(buffer[((next_cluster*4)-(sector*512))+2]))<<16)+(((long)(buffer[((next_cluster*4)-(sector*512))+1]))<<8)+(long)(buffer[((next_cluster*4)-(sector*512))]);
         if(next_cluster==0x0FFFFFFF || next_cluster==0x0FFFFFFF){
             finish=0;
         }
         return next_cluster;
     }


