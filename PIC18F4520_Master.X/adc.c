#include "system.h"
#include "adc.h"

uint16_t adc_read(uint8_t pin)
{
    if(pin > 13) 
       return 0;  //Invalid Channel
   ADCON2=0b10001010; 
   ADCON0 = 0x00;
   ADCON0 = (pin << 2);   //Select ADC Channel
   ADON=1;  //switch on the adc module
   GODONE = 1;//Start conversion
   while(GODONE); //wait for the conversion to finish
   ADON   = 0;  //switch off adc
   return ADRES;
}

