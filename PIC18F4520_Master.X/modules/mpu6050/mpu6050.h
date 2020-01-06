/* 
 * File:   mpu6050.h
 * Author: Nilesh
 *
 * Created on July 9, 2016, 10:45 AM
 */

#ifndef MPU6050_H
#define	MPU6050_H

#ifdef	__cplusplus
extern "C" {
#endif

#define MUP_ADDR 0xD0   
    
void mpu6050_init(void);
void mpu6050_read(int16_t *);


#ifdef	__cplusplus
}
#endif

#endif	/* MPU6050_H */

