/* 
 * File:   keypad.h
 * Author: Nilesh Mundphan
 *
 * Created on 4 February, 2020, 4:48 PM
 */

#ifndef KEYPAD_H
#define	KEYPAD_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "system.h"

uint8_t keypad_pins[8]={PB0,PB1,PB2,PB3,PB4,PB5,PB6,PB7};

#define ROWS    4
#define COLUMNS 4
uint8_t get_keypad_key(void);


#ifdef	__cplusplus
}
#endif

#endif	/* KEYPAD_H */

