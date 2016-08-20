#include "system.h"
#include "hcsr04.h"
#include "gpio.h"
#include "delay.h"

void HCSR04_init()
{
    gpio_pin_mode(US_TRIG_POS,OUTPUT);
    gpio_pin_mode(US_ECHO_POS,INPUT);
}

void HCSR04_trigger()
{
    gpio_pin_write(US_TRIG_POS,HIGH);
    delay_us(15);
    gpio_pin_write(US_TRIG_POS,LOW);
}

int16_t get_pulse_width()
{
   uint32_t i,result;
    //Wait for the rising edge
   for(i=0;i<600000;i++)
   {
      if(!(gpio_pin_read(US_ECHO_POS)))
                    continue; //Line is still low, so wait
      else
                    break; //High edge detected, so break.
   }
  if(i==600000)
            return US_ERROR;  //Indicates time out
   //Rising Edge Found
   //Setup Timer1
   T1CKPS0=1;  //Prescaller = 1:2
   TMR1=0x00;  //Init counter
   TMR1ON=1;   //Stat timer
   //Now wait for the falling edge
   for(i=0;i<600000;i++)
   {
      if((gpio_pin_read(US_ECHO_POS)))
      {
         if(TMR1 > 60000) break; else continue;
      }
      else
                    break;
   }
   if(i==600000)
            return US_NO_OBSTACLE;  //Indicates time out
   //Falling edge found
   result=TMR1;
   //Stop Timer
   TMR1ON=0;
   if(result > 60000)
            return US_NO_OBSTACLE;  //No obstacle
   else
            return (int16_t)(result * 0.4);  // since period of timer is 0.4uS
}