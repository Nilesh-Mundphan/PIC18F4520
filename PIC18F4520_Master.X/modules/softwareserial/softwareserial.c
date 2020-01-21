#include "system.h"
#include "delay.h"
#include "softwareserial.h"

#define TX_PIN      0 //PB0
#define DPORT       TRISB
#define SOPORT      PORTB
#define SIPORT      LATB

#define BAUD_DELAY  98

void softserial_init(void){
    DPORT &=~(1<<0);
}

void solfserial_write(char ch){
    
    int bit_pos=0;
    SOPORT = SIPORT & ~(1<<TX_PIN);                 //Start Bit
    __delay_us(BAUD_DELAY);                         //Delay 104us (1s/9600bps)
    
    for (bit_pos = 0; bit_pos < 8; bit_pos++){    //Create a loop fore every bit in the
        if (ch >> bit_pos & 0b1) 
            SOPORT = SIPORT | (1<<TX_PIN);
        else
            SOPORT = SIPORT & ~(1<<TX_PIN); 
        __delay_us(BAUD_DELAY);                     //Delay 104us (1s/9600bps)
    }
    
    //Send a stop bit
    SOPORT = SIPORT | (1<<TX_PIN);                  //Stop Bit
    __delay_us(BAUD_DELAY);
}

void softserial_print(char *str){
    while(*str){    
        solfserial_write(*str++);
    }
}
