/*
 * File:   main.c
 * Author: Nilesh Mundphan
 *
 * Created on July 5, 2016, 12:17 AM
 */

#include "system.h"
#include "gpio.h"
#include "demo.h"

void main(void) {
    io_test();
    while(1);
    return;
}
