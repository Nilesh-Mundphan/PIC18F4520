#include "system.h"
#include "serial.h"
#include "systick.h"

void __interrupt() ISR(void)
{
    if (RCIE && RCIF) {
        serial_interrupt();
        return;
    }
    
    else if(TMR0IE && TMR0IF)
    {
        sys_interrupt();
        TMR0IF=0;
        return;
    }
}
