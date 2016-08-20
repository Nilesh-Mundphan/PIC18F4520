#include "system.h"
#include "delay.h"

void delay_ms(unsigned int d)
{
        int i;
        for(i=0;i<d;i++)
          __delay_ms(1);
}

void delay_us(unsigned int d)
{
        int i;
        for(i=0;i<d;i++)
          __delay_us(1);
}

