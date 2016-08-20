/* 
 * File:   system.h
 * Author: Nilesh Mundphan
 *
 * Created on May 17, 2016, 8:31 AM
 */

#ifndef SYSTEM_H
#define	SYSTEM_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include "delay.h"

#include <stdint.h>    

#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config BOREN = ON        // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF         // Low-Voltage (Single-Supply)
#pragma config PBADEN = OFF
#pragma warning disable 520
#pragma warning disable 752

/*Micros*/
#define INPUT 1
#define OUTPUT 0
    
#define HIGH 1
#define LOW 0

#define SET 1
#define CLR 0
    
/*PIN */    
#define PB0 0
#define PB1 1
#define PB2 2
#define PB3 3
#define PB4 4
#define PB5 5
#define PB6 6
#define PB7 7

#define PD0 8
#define PD1 9
#define PD2 10
#define PD3 11
#define PD4 12
#define PD5 13
#define PD6 14
#define PD7 15

#define PC0 16
#define PC1 17
#define PC2 18
#define PC3 19
#define PC4 20
#define PC5 21
#define PC6 22
#define PC7 23    

#define PA0 24
#define PA1 25
#define PA2 26
#define PA3 27
#define PA4 28
#define PA5 29

#define PE0 30
#define PE1 31    
#define PE2 32    

#ifdef	__cplusplus
}
#endif

#endif	/* SYSTEM_H */

