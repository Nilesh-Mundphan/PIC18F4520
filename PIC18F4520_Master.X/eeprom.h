/* 
 * File:   eeprom.h
 * Author: Nilesh Mundphan
 *
 * Created on May 21, 2016, 12:52 AM
 */

#ifndef EEPROM_H
#define	EEPROM_H

#ifdef	__cplusplus
extern "C" {
#endif
void eeprom_write_byte(uint8_t addr,uint8_t data);
unsigned char eeprom_read_byte(uint8_t addr);

void eeprom_print(uint8_t addr,uint8_t *str);
void eeprom_scan(uint8_t addr,uint8_t *str);

#ifdef	__cplusplus
}
#endif

#endif	/* EEPROM_H */

