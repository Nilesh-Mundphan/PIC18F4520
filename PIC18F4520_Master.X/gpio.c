#include "system.h"
#include "gpio.h"

void gpio_pin_mode(unsigned char pin,unsigned char mode)
{
    if (pin < 8)
	{
		if (mode==OUTPUT)
		{
			TRISB &=~(1<<pin);
		}
		else if (mode==INPUT)
		{
            TRISB |=(1<<pin);
		}
	}
    else if (pin<16)
	{
		pin-=8;
		if (mode==OUTPUT)
		{
			TRISD &=~(1<<pin);
		}
		else if (mode==INPUT)
		{
			TRISD|=(1<<pin);
		}
	}
    else if (pin<24)
	{
		pin-=16;
		if (mode==OUTPUT)
		{
			TRISC &=~(1<<pin);
		}
		else if (mode==INPUT)
		{
			TRISC|=(1<<pin);
		}
	}
    else if (pin<30)
	{
		pin-=24;
		if (mode==OUTPUT)
		{
			TRISA &=~(1<<pin);
		}
		else if (mode==INPUT)
		{
			TRISA|=(1<<pin);
		}
	}
    else if (pin<33)
	{
		pin-=30;
		if (mode==OUTPUT)
		{
			TRISE &=~(1<<pin);
		}
		else if (mode==INPUT)
		{
			TRISE|=(1<<pin);
		}
	}
    
}

void gpio_pin_write(unsigned char pin,unsigned char bit_val)
{
    if (pin<8)
	{
		if (bit_val==LOW)
		{
			PORTB = LATB & ~(1<<pin);
		}
		else if (bit_val==HIGH)
		{
			PORTB = LATB |(1<<pin);
		}
	}
    else if (pin<16)
	{
        pin-=8;
		if (bit_val==LOW)
		{
			PORTD = LATD & ~(1<<pin);
		}
		else if (bit_val==HIGH)
		{
			PORTD = LATD |(1<<pin);
		}
	}
    else if (pin<24)
	{
        pin-=16;
		if (bit_val==LOW)
		{
			PORTC = LATC & ~(1<<pin);
		}
		else if (bit_val==HIGH)
		{
			PORTC = LATC |(1<<pin);
		}
	}
    else if (pin<30)
	{
        pin-=24;
		if (bit_val==LOW)
		{
			PORTA = LATA & ~(1<<pin);
		}
		else if (bit_val==HIGH)
		{
			PORTA = LATA |(1<<pin);
		}
	}
    else if (pin<33)
	{
        pin-=30;
		if (bit_val==LOW)
		{
			PORTE = LATE & ~(1<<pin);
		}
		else if (bit_val==HIGH)
		{
			PORTE = LATE |(1<<pin);
		}
	}

}

unsigned char gpio_pin_read(unsigned char pin)
{
    if (pin<8)
	{
		return (((PORTB>>pin)&1));
	}
	else if (pin<16)
	{
		pin-=8;
		return (((PORTD>>pin)&1));
	}
	else if (pin<24)
	{
		pin-=16;
		return (((PORTC>>pin)&1));
	}
    else if (pin<30)
	{
		pin-=24;
		return (((PORTA>>pin)&1));
	}
	else if (pin<33)
	{
		pin-=30;
		return (((PORTE>>pin)&1));
	}
return 0;
}

