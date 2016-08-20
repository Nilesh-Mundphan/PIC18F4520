#include "system.h"
#include "systick.h"

void systick_init(void)
{
    T0PS0=1;     //Prescaler is divide by 256
    T0PS1=1;
    T0PS2=1;

    PSA=0;       //Timer Clock Source is from Prescaler
    T0CS=0;      //Prescaler gets clock from FCPU (5MHz)
    
    T08BIT=1;    //8 BIT MODE
    TMR0IE=1;    //Enable TIMER0 Interrupt
    PEIE=1;      //Enable Peripheral Interrupt
    GIE=1;       //Enable INTs globally
    TMR0ON=1;    //Now start the timer!
}

void sys_interrupt(void)
{
        timer_count++;
        if(timer_count == 76 )
        {
            timer_count=0;
            system_tick++;
        }
        
}