#include "i2c.h"

void get_time(char *time_str)
{
    char read_byte;
    read_byte=i2c_device_read(0xD0,0x00);
    time_str[8]=' ';
    time_str[7]=48+(read_byte & 0x0f);
    time_str[6]=48+((read_byte & 0x70)>>4);
    time_str[5]=':';

    read_byte=i2c_device_read(0xD0,0x01);

    time_str[4]=48+(read_byte & 0x0f);
    time_str[3]=48+((read_byte & 0x70)>>4);
    time_str[2]=':';

    read_byte=i2c_device_read(0xD0,0x02);

    if(read_byte > 0x12)
    {
        time_str[9]='P';
        time_str[10]='M';
    }
    else
    {
        time_str[9]='A';
        time_str[10]='M';
    }
    read_byte = read_byte % 0x12;
    time_str[1]=48+(read_byte & 0x0f);
    time_str[0]=48+((read_byte & 0x70)>>4);


    time_str[11]='\0';
}

void set_time(unsigned char h,unsigned char m,unsigned char s)
{
        i2c_device_write(0xD0,0x00,s);
		i2c_device_write(0xD0,0x01,m);
		i2c_device_write(0xD0,0x02,h);
}

void get_date(char *date_str)
{
    char read_byte;
    read_byte=i2c_device_read(0xD0,0x06);
    date_str[8]=' ';
    date_str[7]=48+(read_byte & 0x0f);
    date_str[6]=48+((read_byte & 0x70)>>4);
    date_str[5]='/';

    read_byte=i2c_device_read(0xD0,0x05);

    date_str[4]=48+(read_byte & 0x0f);
    date_str[3]=48+((read_byte & 0x70)>>4);
    date_str[2]='/';

    read_byte=i2c_device_read(0xD0,0x04);
    date_str[1]=48+(read_byte & 0x0f);
    date_str[0]=48+((read_byte & 0x70)>>4);
    
    date_str[9]='\0';
}

void set_date(unsigned char d,unsigned char m,unsigned char y)
{
        i2c_device_write(0xD0,0x04,d);
		i2c_device_write(0xD0,0x05,m);
		i2c_device_write(0xD0,0x06,y);
}