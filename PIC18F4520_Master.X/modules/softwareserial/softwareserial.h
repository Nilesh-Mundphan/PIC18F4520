/* 
 * File:   softwareserial.h
 * Author: nilesh_m
 *
 * Created on 21 January, 2020, 10:00 AM
 */

#ifndef SOFTWARESERIAL_H
#define	SOFTWARESERIAL_H

#ifdef	__cplusplus
extern "C" {
#endif

void softserial_init(void);
void solfserial_write(char ch);
void softserial_print(char *str);


#ifdef	__cplusplus
}
#endif

#endif	/* SOFTWARESERIAL_H */

