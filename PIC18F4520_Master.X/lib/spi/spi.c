#include "system.h"
#include "spi.h"

void spi_slave_init(void)
{
    TRISD &= 0xFE;          // Clearing 0th pin of PORTD as output ( SS for the slave )
    PORTD |= 0x01;          // Setting 0th pin of PORTD ( Slave not selected )
}

void spi_slave(uint8_t state)
{
    if(state==0)
        	PORTD &= 0xFE;
    else
            PORTD |= 0x01;

}

void spi_init(void)
{
    SSPSTAT = 0x00;
    SSPCON1 = 0x22;
    TRISC = 0b00010000;
    spi_slave_init();
}    

uint8_t spi_data(uint8_t tx_data)
{
    uint8_t data_read;
    SSPBUF = tx_data;                   // put the data in the SSPBUF register which going to be send
    while ( !SSPSTATbits.BF );          // wait until the all bits received
    data_read = SSPBUF;                 // read the received data from the buffer
    return data_read;
}
