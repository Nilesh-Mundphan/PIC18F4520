#include "system.h"
#include "serial.h"
#define RXBUFFERMAX 256

volatile char rxBuffer[RXBUFFERMAX];
volatile int rx_Buffer_Head=-1,rx_Buffer_Tail=-1;

void serial_init(unsigned int baud_rate)
{
    switch(baud_rate)
    {
         case 9600:
            SPBRG=129;
            break;
        
    }
            //TXSTA
            TXSTAbits.TX9=0;  //8 bit transmission
            TXSTAbits.TXEN=1; //Transmit enable
            TXSTAbits.SYNC=0; //Async mode
            TXSTAbits.BRGH=1; //High speed baud rate
            //RCSTA
            RCSTAbits.SPEN=1;   //Serial port enabled
            RCSTAbits.RX9=0;    //8 bit mode
            RCSTAbits.CREN=1;   //Enable receive
            RCSTAbits.ADDEN=0;  //Disable address detection
            //Receive interrupt
            RCIE=1;
            PEIE=1;
            ei();
}

void serial_write(char ch)
{
    while(!PIR1bits.TXIF);
          TXREG=ch;
}

void serial_print(const char *str)
{
    while(*str)
			serial_write(*str++);
}

unsigned int serial_available(void)
{
	if(rx_Buffer_Head==-1) 
			return 0;
	if(rx_Buffer_Head < rx_Buffer_Tail)
			return(rx_Buffer_Tail - rx_Buffer_Head + 1);
	else if(rx_Buffer_Head > rx_Buffer_Tail)
			return (RXBUFFERMAX - rx_Buffer_Head + rx_Buffer_Tail + 1);
	else
		return 1;
}
char serial_read(void)
{
    char ch;
		if(rx_Buffer_Head == -1)
		return 0;
	    ch=rxBuffer[rx_Buffer_Head];
	
		if(rx_Buffer_Head == rx_Buffer_Tail)
		{
				rx_Buffer_Head = rx_Buffer_Tail = -1;
		}
		else
		{
			rx_Buffer_Head++;
     	if(rx_Buffer_Head == RXBUFFERMAX)
			rx_Buffer_Head=0;
		}
	return ch;
}

void serial_flush(void)
{
		while(serial_available())
			serial_read();
}

void serial_interrupt(void) 
{
	char rxData=RCREG;
		if((rx_Buffer_Tail == RXBUFFERMAX-1 && (rx_Buffer_Head == 0)) || ((rx_Buffer_Tail + 1) == rx_Buffer_Head))
			{
				rx_Buffer_Head++;
			}
			
			if(rx_Buffer_Head == RXBUFFERMAX || rx_Buffer_Head == -1)
				rx_Buffer_Head=0;
			
			if(rx_Buffer_Tail == RXBUFFERMAX - 1) 
					rx_Buffer_Tail=0;
			else 
					rx_Buffer_Tail++;
			rxBuffer[rx_Buffer_Tail]=rxData;
	
}

void serial_responce(char *str,int timeout){
    int delay=0,i=0;
	while(timeout > delay)
	{
		while(serial_available() > 0)
		{
			char ch=serial_read();
			str[i++]=ch;
		}
		__delay_ms(1);
		delay++;
	}
	str[i]='\0';
 }