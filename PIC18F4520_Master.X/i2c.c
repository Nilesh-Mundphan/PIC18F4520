#include "system.h"
#include "i2c.h"

void i2c_init(void)
{
    SSPADD=49;          //set i2c clock
    SSPCON1=0b00101000; //set i2c master
    SSPSTATbits.SMP=1;  //select mode...standard selected
    ADCON1 = 0x0F;
}
void i2c_start(void)    // Initiate a Start sequence
{
    TRISCbits.TRISC3=1;
    TRISCbits.TRISC4=1;
    PIR1bits.SSPIF=0;
    SSPCON2bits.SEN=1;
    while(PIR1bits.SSPIF==0);
    return;
}


void i2c_restart(void)  // Initiate a Restart sequence
{
    PIR1bits.SSPIF=0;
    SSPCON2bits.RSEN=1;
    while(PIR1bits.SSPIF==0);
    return;
}

void i2c_device(void)   // device specification
{
    PIR1bits.SSPIF=0;
    SSPBUF=0b11010000;
    while(PIR1bits.SSPIF==0);
    while(SSPCON2bits.ACKSTAT==1);
    return;
}


void i2c_write(unsigned int data)      // Write data to slave.
{
    PIR1bits.SSPIF=0;
    SSPBUF=data;
    while(PIR1bits.SSPIF==0);
    return;
}

void i2c_stop(void)     //Initiate a Stop sequence.
{
    PIR1bits.SSPIF=0;
    SSPCON2bits.PEN=1;
    
    while(PIR1bits.SSPIF==0);
    TRISCbits.TRISC3=0;
    TRISCbits.TRISC4=0;
    return;
}

unsigned int i2c_read(void)     //Read data from I2C bus.
{
    unsigned int r;
    PIR1bits.SSPIF=0;
    SSPCON2bits.RCEN=1;

    while(PIR1bits.SSPIF==0);
    
    r=SSPBUF;
    PIR1bits.SSPIF=0;
    SSPCON2bits.ACKEN=1;
    
    while(PIR1bits.SSPIF==0);
    return r;
}

void i2c_device_write(unsigned char device_id,unsigned char addr,unsigned int data)
{
    i2c_start();
    i2c_write(device_id);
    i2c_write(addr);
    i2c_write(data);
    i2c_stop();
    return;
}

unsigned int i2c_device_read(unsigned char device_id,unsigned char addr)
{
    unsigned int data;
    i2c_start();
    i2c_write(device_id);
    i2c_write(addr);
    i2c_restart();
    i2c_write(device_id|1);
    SSPCON2bits.ACKDT=1;
    data=i2c_read();
    i2c_stop();
    return (data);
}

