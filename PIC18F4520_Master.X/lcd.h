/* 
 * File:   lcd.h
 * Author: Nilesh Mundphan
 *
 * Created on May 16, 2016, 9:21 AM
 */

#ifndef LCD_H
#define	LCD_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stdint.h>
    
uint8_t lcd_data_pins[4]={0,0,0,0};

uint8_t RS=0;
uint8_t EN=0;

void lcd_init(int d4,int d5,int d6,int d7,int rs,int en);
void lcd_clear(void);
void lcd_clk(void);
void lcd_goto_xy(unsigned char x,unsigned char y);
void lcd_send(uint8_t byte,uint8_t rs_pin);
void lcd_print(const char *str);
void lcd_print_xy(unsigned char x,unsigned char y,const char *str);
    
#ifdef	__cplusplus
}
#endif

#endif	/* LCD_H */

