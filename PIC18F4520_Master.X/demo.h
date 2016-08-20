/* 
 * File:   demo.h
 * Author: Nilesh Mundphan
 *
 * Created on July 9, 2016, 10:59 AM
 */

#ifndef DEMO_H
#define	DEMO_H

#ifdef	__cplusplus
extern "C" {
#endif

void io_test();    
void gsm_test();
void mpu6050_test();
void lcd_test();
void adc_test(); 
void eeprom_test();
void system_tick_test();
void mcp32_test();
void serial_test();
void i2c_eeprom_test();
void rtc_test();
void dht11_test();
void hcsr04_test();

#ifdef	__cplusplus
}
#endif

#endif	/* DEMO_H */
