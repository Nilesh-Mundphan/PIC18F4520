/* 
 * File:   gpio.h
 * Author: Nilesh Mundphan
 *
 * Created on May 14, 2016, 3:17 PM
 */

#ifndef GPIO_H
#define	GPIO_H

#ifdef	__cplusplus
extern "C" {
#endif
    
void gpio_pin_mode(unsigned char pin,unsigned char mode);
void gpio_pin_write(unsigned char pin,unsigned char bit_val);
unsigned char gpio_pin_read(unsigned char pin);


#ifdef	__cplusplus
}
#endif

#endif	/* GPIO_H */

