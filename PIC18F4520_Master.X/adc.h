/* 
 * File:   adc.h
 * Author: Nilesh
 *
 * Created on May 18, 2016, 8:32 AM
 */

#ifndef ADC_H
#define	ADC_H
#include <stdint.h>
#ifdef	__cplusplus
extern "C" {
#endif

uint16_t adc_read(uint8_t pin); 

#ifdef	__cplusplus
}
#endif

#endif	/* ADC_H */

