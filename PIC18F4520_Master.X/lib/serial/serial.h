/* 
 * File:   serial.h
 * Author: Nilesh
 *
 * Created on May 17, 2016, 11:12 PM
 */

#ifndef SERIAL_H
#define	SERIAL_H

#ifdef	__cplusplus
extern "C" {
#endif

void serial_init(unsigned int baud_rate);
void serial_write(char ch);
void serial_print(const char *str);
unsigned int serial_available(void);
char serial_read(void);
void serial_flush(void);
void serial_interrupt(void);
int serial_responce(unsigned char *str,int timeout);

#ifdef	__cplusplus
}
#endif

#endif	/* SERIAL_H */

