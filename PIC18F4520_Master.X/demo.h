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

void io_test(void);    
void gsm_test(void);
void mpu6050_test(void);
void lcd_test(void);
void adc_test(void); 
void eeprom_test(void);
void system_tick_test(void);
void mcp32_test(void);
void serial_test(void);
void i2c_eeprom_test(void);
void rtc_test(void);
void dht11_test(void);
void hcsr04_test(void);

#ifdef	__cplusplus
}
#endif

#endif	/* DEMO_H */
