/* 
 * File:   hcsr04.h
 * Author: Nilesh
 *
 * Created on July 7, 2016, 10:09 PM
 */

#ifndef HCSR04_H
#define	HCSR04_H

#ifdef	__cplusplus
extern "C" {
#endif

#define US_TRIG_POS  PD0
#define US_ECHO_POS  PD1

#define US_ERROR     				-1
#define US_NO_OBSTACLE          	-2
    
void HCSR04_init();
void HCSR04_tsrigger();
int16_t get_pulse_width();

    
    
#ifdef	__cplusplus
}
#endif

#endif	/* HCSR04_H */

