/*
 * File:   main.c
 * Author: Nilesh Mundphan
 *
 * Created on July 5, 2016, 12:17 AM
 */

#include "system.h"
#include "gpio.h"
#include "demo.h"
#include "lcd.h"

void main(void) {
    //lcd_test();
    lcd_init(PB3,PB2,PB1,PB0,PB5,PB4);
    lcd_clear();
    lcd_print_xy(0,0," Master");
    lcd_print_xy(0,1,"PIC Libraries");
    gpio_pin_mode(PD6,OUTPUT);
    gpio_pin_mode(PD5,OUTPUT);
    while(1){
        gpio_pin_write(PD6,LOW);
        gpio_pin_write(PD5,LOW);
        delay_ms(1000);
        gpio_pin_write(PD6,HIGH);
        gpio_pin_write(PD5,HIGH);
    delay_ms(1000);
    }
    return;
}
