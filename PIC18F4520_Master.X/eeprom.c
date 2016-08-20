#include "system.h"
#include "eeprom.h"

void eeprom_write_byte(uint8_t addr,uint8_t data)
{
    EEADR=addr;
    EEDATA=data;
    EECON1bits.EEPGD=0;       //Point to EEPROM
    EECON1bits.CFGS=0;
    EECON1bits.WREN=1;         //Enable Write
    GIE=0;
    EECON2=0x55;
    EECON2=0xAA;
    EECON1bits.WR=1;
    GIE=1;
    while(!EEIF);
      EEIF=0;
}

unsigned char eeprom_read_byte(uint8_t addr)
{
    EEADR=addr;
    EECON1bits.RD=1;
    return(EEDATA);
}

void eeprom_print(uint8_t addr,uint8_t *str)
{
    while(*str)
        eeprom_write_byte(addr++,*str++);
    
    eeprom_write_byte(addr,'\0');
}
void eeprom_scan(uint8_t addr,uint8_t *str)
{
    while((*str++=eeprom_read_byte(addr++)));
}
