/* 
 * File:   spi.h
 * Author: Nilesh Mundphan
 *
 * Created on May 24, 2016, 9:46 PM
 */

#ifndef SPI_H
#define	SPI_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stdint.h>
void spi_slave_init(void);
void spi_slave(uint8_t state);
void spi_init(void);
uint8_t spi_data(uint8_t tx_data);

#ifdef	__cplusplus
}
#endif

#endif	/* SPI_H */

