#include "system.h"
#include "delay.h"
#include "lcd.h"
#include "serial.h"
#include "adc.h"
#include "eeprom.h"
#include "systick.h"
#include "mcp320x.h"
#include "time.h"
#include "i2c.h"
#include "spi.h"
#include "dht11.h"
#include "hcsr04.h"
#include "mpu6050.h"
#include "gsm.h"
#include "softwareserial.h"
#include <stdio.h>

void io_test()
{
    gpio_pin_mode(PB0,OUTPUT);
    gpio_pin_mode(PB1,INPUT);

    while(1){
    if((gpio_pin_read(PB1)))
    {
        gpio_pin_write(PB0,LOW);
    }
    else{
        gpio_pin_write(PB0,HIGH);
    }
}
}


void gsm_test()
{
    char msg[30],no[15],id[2];
    char pname[10];
    lcd_init(PC1,PC0,PE1,PE0,PC3,PC2);
    lcd_clear();
	lcd_print_xy(0,0,"GSM Init");
	gsm_init();
    gsm_pname(pname);
    lcd_clear();
    lcd_print_xy(0,0,"SIM Is");
    lcd_print_xy(0,1,pname);
    delay_ms(2000);

    //gsm_msg_send("+919960226605","GSM Testing");
    lcd_clear();	
    while(1)
	{
		while(gsm_wait(id)==0)
		{
			lcd_print_xy(0,0,"Waiting For Msg");
            delay_ms(200);
		}
        
        gsm_msg_read(no,msg,id);
		lcd_clear();
		lcd_print_xy(0,0,msg);
        lcd_print_xy(0,1,no);
		delay_ms(5000);
        lcd_clear();
	}
}

void mpu6050_test()
{
    int16_t mpu_data[7];
    int temp=0;
    char str[64];
    serial_init(9600);
    serial_print("MPU6050 Test\r\n");
    mpu6050_init();
    while(1)
    {
        mpu6050_read(mpu_data);
        temp=(int)(mpu_data[3]/340.00+36.53);
        sprintf(str,"AcX =%d | AcY =%d | AcZ =%d | Temp =%d ",mpu_data[0],mpu_data[1],mpu_data[2],temp);
        serial_print(str);
        serial_print("\r\n");
        delay_ms(1000);
    }
}

void hcsr04_test()
{
    uint16_t d=0;
    char line1[16];    
    lcd_init(PC1,PC0,PE1,PE0,PC3,PC2);
    lcd_clear();
    lcd_print_xy(0,0,"HC-SR04");
    
   HCSR04_init();
   while(1)
    {
        HCSR04_tsrigger();
        d=(get_pulse_width()/58);
        
        sprintf(line1,"Distance :%d",d);
        lcd_print_xy(0,0,"HC-SR04");
        lcd_print_xy(0,1,line1);
        delay_ms(500);
        lcd_clear();
    }
}

void lcd_test()
{
    lcd_init(PC1,PC0,PE1,PE0,PC3,PC2);//D4,D5,D4,D5,RS,EN
    lcd_clear();
    lcd_print_xy(0,0,"PIC18F4520 Libs");
    lcd_print_xy(0,1,"By N!lesh ");
}

void adc_test()
{
    char line1[16]={0};
    lcd_init(PC1,PC0,PE1,PE0,PC3,PC2);
    lcd_clear();
    lcd_print_xy(0,0,"ADC Test ....");
    while(1)
    {
        sprintf(line1,"ADC 0: %d", adc_read(0));
        lcd_print_xy(0,1,line1);
        delay_ms(1000);
        lcd_clear();
    }
}

void eeprom_test()
{
 char d[64]; 
    serial_init(9600);
    serial_print("EEPROM Testing\r\n");
    serial_print("Writing the data\r\n");
    eeprom_print(0x00,(uint8_t*)"PIC18F EEPROM");
    serial_print("Reading the data\r\n");
    eeprom_scan(0x00,(uint8_t*)d);
    serial_print("Data :");
    serial_print(d);
}

void system_tick_test()
{
    char x1[16]={0};
    lcd_init(PC1,PC0,PE1,PE0,PC3,PC2);
    lcd_clear();
    lcd_print_xy(0,0,"ADC Test ....");
    systick_init();
    while(1)
    {
       sprintf(x1,"TICK: %d", system_tick);
       lcd_print_xy(0,1,x1);
       delay_ms(500);
    }

}

void mcp32_test()
{
    char val[32];
    spi_init();
    serial_init(9600);
    serial_print("External SPI Test\r\n");
    uint16_t result;

	while(1)
	{
		result=read_mcp320x(0);
		sprintf(val,"Channel 0 :%5.0d",result);
		serial_print("----------------------");
        serial_print(val);
        serial_print("\r\n");
		result=read_mcp320x(1);
		sprintf(val,"Channel 1 :%5.0d",result);
		serial_print(val);
        serial_print("\r\n");
		
        delay_ms(1000);
	}
}

void serial_test()
{
    serial_init(9600);
    serial_print("PIC18F Serial Test\r\n");
    while(1)
    {
        if(serial_available() > 0)
        {
            serial_write(serial_read());
        }
    }
}

void i2c_eeprom_test()
{
    char read_byte;
    serial_init(9600);
    serial_print("I2C EEPROM \r\n");
    i2c_init();
    
    i2c_device_write(0xA0,0x00,'N');
    serial_print("Write Done \r\n");
    delay_ms(1000);
    read_byte=i2c_device_read(0xA0,0x00);
    serial_print("Read \r\n");
    serial_write(read_byte);
}

void rtc_test()
{
    char time_str[12],date_str[10],hi[]="nil";
    lcd_init(PC1,PC0,PE1,PE0,PC3,PC2);
    lcd_clear();
    lcd_print_xy(0,0,"I2C RTC");
    serial_init(9600);
    serial_print("I2C RTC \r\n");
    delay_ms(2000);
    lcd_clear();
    i2c_init();
    //set_time(0x11,0x29,00);
    //set_date(0x06,0x07,0x15);
    while(1)
    {
        get_time(time_str);
        serial_print("Time :");
        serial_print(time_str);
        lcd_print_xy(0,0,"hi");
        serial_print("\r\n");
        get_date(date_str);
        serial_print("Date :");
        serial_print(date_str);
        serial_print("\r\n");
        serial_print("------------------\r\n");
        delay_ms(1000);
        lcd_clear();
    }
    
}

void dht11_test()
{
    char disp[20];
    serial_init(9600);
    serial_print("Hello PIC\r\n");
    while(1)
    {
        dht_read11(DHT_PIN);
        serial_print("--------------------\r\n");
	    sprintf(disp,"Temperature :%d",temperature);
		serial_print(disp);
        serial_print("\r\n");
        sprintf(disp,"Humidity :%d",humidity);
		serial_print(disp);
        serial_print("\r\n");
        serial_print("--------------------\r\n");
        
        delay_ms(1000);
    }
}

void soft_serial(void){
    softserial_init();
    while(1){
        softserial_print("Hello N!lesh !!!\n");
    }
}
