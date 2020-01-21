#include "system.h"
#include "delay.h"
#include "gsm.h"
#include "serial.h"
#include "lcd.h"
#include "Nstring.h"

void gsm_init(void)
{
    unsigned char gsm_resp[32];
    serial_init(9600);
    gsm_cmd("ATE0",gsm_resp,2000);
    debug(gsm_resp);
    gsm_cmd("AT",gsm_resp,2000);
    debug(gsm_resp);
    gsm_cmd("AT+CMGF=1",gsm_resp,2000);
    debug(gsm_resp);    
}

void gsm_pname(char *pname)
{ 
    char *start,*end;
    unsigned char gsm_resp[32];
    gsm_cmd("AT+CSPN?",gsm_resp,2000);

    start=str_chr((char *)gsm_resp,'"');
    start++;
    end=str_chr((char *)start,'"');
    *end='\0';

    str_cpy(pname,(char *)start);
}

void gsm_signal(char *sname)
{ 
    char *start,*end;
    unsigned char gsm_resp[32];;
    gsm_cmd("AT+CSQ",gsm_resp,2000);

    start=str_chr((char *)gsm_resp,':');
    start++;
    start++;
    end=str_chr((char *)start,',');
    *end='\0';

    str_cpy(sname,(char *)start);
}

void gsm_cmd(const char *cmd,unsigned char *Response,unsigned int timeout)
{
    serial_flush();
    serial_print(cmd);
    serial_print("\r");
    serial_responce(Response,timeout);	
}

void gsm_msg_send(const char *num,const char *msg)
{
    unsigned char gsm_resp[32];
    serial_print("AT+CMGS=");
    serial_write('"');
    serial_print(num);
    serial_write('"');
    serial_write('\r');
    delay_ms(2000); 
    serial_print(msg);
    serial_write(0x1A);
    delay_ms(3000);
    serial_responce(gsm_resp,1000);
    debug(gsm_resp);
}

unsigned int gsm_wait(char *mid)
{
    char *start;
    unsigned char gsm_resp[32];

    if(serial_available()==0)
    {
        return 0;
    }
    else
    {
        debug((unsigned char*)"New SMS !!");
        serial_responce(gsm_resp,1000);
        start=str_chr((char *)gsm_resp,',');
        start++;
        str_cpy((char *)mid,start);
        return 1;
    }
    //return 2;
}

void gsm_msg_read(char *num,char *msg,char *idn)
{
	char *start,*end,*start1;
    unsigned char gsm_resp[128];
	serial_print("AT+CMGR=");
	serial_print(idn);
	serial_write('\r');
	delay_ms(500);			
	serial_responce(gsm_resp,1000);

	start1=str_rchr((char *)gsm_resp,'"');
	start1+=3;
	end=str_str((char *)start1,"OK");
	*end='\0';
	str_cpy(msg,(char *)start1);

	start=str_chr((char *)gsm_resp,',');
	start++;
	start++;
	end=str_chr((char *)start,'"');
	*end='\0';
	str_cpy(num,(char *)start);
}

void debug(unsigned char *str)
{
    lcd_clear();
    lcd_print_xy(0,0,(char *)str);
    delay_ms(1000);
}
