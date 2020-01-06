/* 
 * File:   systick.h
 * Author: Nilesh
 *
 * Created on May 18, 2016, 8:53 PM
 */

#ifndef SYSTICK_H
#define	SYSTICK_H

#ifdef	__cplusplus
extern "C" {
#endif

void systick_init(void);
volatile unsigned char timer_count=0;
volatile unsigned int system_tick=0;  
void sys_interrupt(void);
#ifdef	__cplusplus
}
#endif

#endif	/* SYSTICK_H */

