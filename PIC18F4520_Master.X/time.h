/* 
 * File:   time.h
 * Author: Nilesh Mundphan
 *
 * Created on May 21, 2016, 11:13 AM
 */

#ifndef TIME_H
#define	TIME_H

#ifdef	__cplusplus
extern "C" {
#endif

void get_time(char *time_str);
void set_time(unsigned char h,unsigned char m,unsigned char s);

void get_date(char *date_str);
void set_date(unsigned char d,unsigned char m,unsigned char y);


#ifdef	__cplusplus
}
#endif

#endif	/* TIME_H */

