/* 
 * File:   gsm.h
 * Author: Nilesh Mundphan 
 *
 * Created on July 10, 2016, 10:32 AM
 */

#ifndef GSM_H
#define	GSM_H

#ifdef	__cplusplus
extern "C" {
#endif

void gsm_cmd(const char *cmd,char *Response,unsigned int timeout);
void gsm_init(void);
void gsm_pname(char *pname);
void gsm_msg_send(const char *num,const char *msg);
unsigned int gsm_wait(char *mid);
void gsm_msg_read(char *num,char *msg,char *idn);

void debug(char *str);

#ifdef	__cplusplus
}
#endif

#endif	/* GSM_H */

