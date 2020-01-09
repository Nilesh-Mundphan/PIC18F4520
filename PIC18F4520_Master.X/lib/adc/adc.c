#include "system.h"
#include "adc.h"

uint16_t adc_read(uint8_t pin)
{
   if(pin > 13) 
       return 0;  //Invalid Channel
   
   ADCON2 = 0b10001010; 
   ADCON0 = 0x00;
   ADCON0 = (pin << 2);     //Select ADC Channel
   
   ADCON0bits.ADON=1;       //Enable ADC
   __delay_ms(10);
   ADCON0bits.GO = 1;       //Start conversion
   __delay_ms(1);
   while(ADCON0bits.DONE){} //wait for the conversion to finish
   __delay_ms(1);
   ADCON0bits.GO = 0;
   ADCON0bits.ADON=0;       //Disable ADC
   return ADRES;
}
