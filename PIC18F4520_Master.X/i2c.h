/* 
 * File:   i2c.h
 * Author: Nilesh Mundphan
 *
 * Created on May 21, 2016, 9:50 AM
 */

#ifndef I2C_H
#define	I2C_H

#ifdef	__cplusplus
extern "C" {
#endif

void i2c_init(void);
void i2c_start(void);
void i2c_restart(void);
void i2c_device(void);
unsigned int i2c_read(void);
void i2c_write(unsigned int data);
void i2c_stop(void);

void i2c_device_write(unsigned char device_id,unsigned char addr,unsigned int data);
unsigned int i2c_device_read(unsigned char device_id,unsigned char addr);

#ifdef	__cplusplus
}
#endif

#endif	/* I2C_H */

