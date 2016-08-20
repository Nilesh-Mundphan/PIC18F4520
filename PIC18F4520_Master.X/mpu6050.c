#include "system.h"
#include "mpu6050.h"
#include "i2c.h"
void mpu6050_init()
{
    i2c_init();    
    i2c_device_write(MUP_ADDR,0x6B,0);
}

void mpu6050_read(int16_t *str)
{
    str[0]=(i2c_device_read(MUP_ADDR,0x3B)<<8)|(i2c_device_read(MUP_ADDR,0x3C));
    str[1]=(i2c_device_read(MUP_ADDR,0x3D)<<8)|(i2c_device_read(MUP_ADDR,0x3E));
    str[2]=(i2c_device_read(MUP_ADDR,0x3F)<<8)|(i2c_device_read(MUP_ADDR,0x40));
    
    str[3]=(i2c_device_read(MUP_ADDR,0x41)<<8)|(i2c_device_read(MUP_ADDR,0x42));
    
    str[4]=(i2c_device_read(MUP_ADDR,0x43)<<8)|(i2c_device_read(MUP_ADDR,0x44));
    str[5]=(i2c_device_read(MUP_ADDR,0x45)<<8)|(i2c_device_read(MUP_ADDR,0x46));
    str[6]=(i2c_device_read(MUP_ADDR,0x47)<<8)|(i2c_device_read(MUP_ADDR,0x48));
    
}
