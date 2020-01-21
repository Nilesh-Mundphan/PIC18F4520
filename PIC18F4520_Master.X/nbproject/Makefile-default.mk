#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=lib/delay/delay.c lib/spi/spi.c lib/adc/adc.c lib/eeprom/eeprom.c lib/gpio/gpio.c lib/i2c/i2c.c lib/serial/serial.c lib/nstring/Nstring.c lib/isr/isr.c lib/systick/systick.c modules/dht11/dht11.c modules/gsm/gsm.c modules/hcsr04/hcsr04.c modules/lcd/lcd.c modules/mcp320x/mcp320x.c modules/mpu6050/mpu6050.c modules/rtc/time.c demo.c main.c modules/softwareserial/softwareserial.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/lib/delay/delay.p1 ${OBJECTDIR}/lib/spi/spi.p1 ${OBJECTDIR}/lib/adc/adc.p1 ${OBJECTDIR}/lib/eeprom/eeprom.p1 ${OBJECTDIR}/lib/gpio/gpio.p1 ${OBJECTDIR}/lib/i2c/i2c.p1 ${OBJECTDIR}/lib/serial/serial.p1 ${OBJECTDIR}/lib/nstring/Nstring.p1 ${OBJECTDIR}/lib/isr/isr.p1 ${OBJECTDIR}/lib/systick/systick.p1 ${OBJECTDIR}/modules/dht11/dht11.p1 ${OBJECTDIR}/modules/gsm/gsm.p1 ${OBJECTDIR}/modules/hcsr04/hcsr04.p1 ${OBJECTDIR}/modules/lcd/lcd.p1 ${OBJECTDIR}/modules/mcp320x/mcp320x.p1 ${OBJECTDIR}/modules/mpu6050/mpu6050.p1 ${OBJECTDIR}/modules/rtc/time.p1 ${OBJECTDIR}/demo.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/modules/softwareserial/softwareserial.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/lib/delay/delay.p1.d ${OBJECTDIR}/lib/spi/spi.p1.d ${OBJECTDIR}/lib/adc/adc.p1.d ${OBJECTDIR}/lib/eeprom/eeprom.p1.d ${OBJECTDIR}/lib/gpio/gpio.p1.d ${OBJECTDIR}/lib/i2c/i2c.p1.d ${OBJECTDIR}/lib/serial/serial.p1.d ${OBJECTDIR}/lib/nstring/Nstring.p1.d ${OBJECTDIR}/lib/isr/isr.p1.d ${OBJECTDIR}/lib/systick/systick.p1.d ${OBJECTDIR}/modules/dht11/dht11.p1.d ${OBJECTDIR}/modules/gsm/gsm.p1.d ${OBJECTDIR}/modules/hcsr04/hcsr04.p1.d ${OBJECTDIR}/modules/lcd/lcd.p1.d ${OBJECTDIR}/modules/mcp320x/mcp320x.p1.d ${OBJECTDIR}/modules/mpu6050/mpu6050.p1.d ${OBJECTDIR}/modules/rtc/time.p1.d ${OBJECTDIR}/demo.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/modules/softwareserial/softwareserial.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/lib/delay/delay.p1 ${OBJECTDIR}/lib/spi/spi.p1 ${OBJECTDIR}/lib/adc/adc.p1 ${OBJECTDIR}/lib/eeprom/eeprom.p1 ${OBJECTDIR}/lib/gpio/gpio.p1 ${OBJECTDIR}/lib/i2c/i2c.p1 ${OBJECTDIR}/lib/serial/serial.p1 ${OBJECTDIR}/lib/nstring/Nstring.p1 ${OBJECTDIR}/lib/isr/isr.p1 ${OBJECTDIR}/lib/systick/systick.p1 ${OBJECTDIR}/modules/dht11/dht11.p1 ${OBJECTDIR}/modules/gsm/gsm.p1 ${OBJECTDIR}/modules/hcsr04/hcsr04.p1 ${OBJECTDIR}/modules/lcd/lcd.p1 ${OBJECTDIR}/modules/mcp320x/mcp320x.p1 ${OBJECTDIR}/modules/mpu6050/mpu6050.p1 ${OBJECTDIR}/modules/rtc/time.p1 ${OBJECTDIR}/demo.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/modules/softwareserial/softwareserial.p1

# Source Files
SOURCEFILES=lib/delay/delay.c lib/spi/spi.c lib/adc/adc.c lib/eeprom/eeprom.c lib/gpio/gpio.c lib/i2c/i2c.c lib/serial/serial.c lib/nstring/Nstring.c lib/isr/isr.c lib/systick/systick.c modules/dht11/dht11.c modules/gsm/gsm.c modules/hcsr04/hcsr04.c modules/lcd/lcd.c modules/mcp320x/mcp320x.c modules/mpu6050/mpu6050.c modules/rtc/time.c demo.c main.c modules/softwareserial/softwareserial.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4520
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lib/delay/delay.p1: lib/delay/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/delay" 
	@${RM} ${OBJECTDIR}/lib/delay/delay.p1.d 
	@${RM} ${OBJECTDIR}/lib/delay/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/delay/delay.p1 lib/delay/delay.c 
	@-${MV} ${OBJECTDIR}/lib/delay/delay.d ${OBJECTDIR}/lib/delay/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/delay/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/spi/spi.p1: lib/spi/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/spi" 
	@${RM} ${OBJECTDIR}/lib/spi/spi.p1.d 
	@${RM} ${OBJECTDIR}/lib/spi/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/spi/spi.p1 lib/spi/spi.c 
	@-${MV} ${OBJECTDIR}/lib/spi/spi.d ${OBJECTDIR}/lib/spi/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/spi/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/adc/adc.p1: lib/adc/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/adc" 
	@${RM} ${OBJECTDIR}/lib/adc/adc.p1.d 
	@${RM} ${OBJECTDIR}/lib/adc/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/adc/adc.p1 lib/adc/adc.c 
	@-${MV} ${OBJECTDIR}/lib/adc/adc.d ${OBJECTDIR}/lib/adc/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/adc/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/eeprom/eeprom.p1: lib/eeprom/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/eeprom" 
	@${RM} ${OBJECTDIR}/lib/eeprom/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/lib/eeprom/eeprom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/eeprom/eeprom.p1 lib/eeprom/eeprom.c 
	@-${MV} ${OBJECTDIR}/lib/eeprom/eeprom.d ${OBJECTDIR}/lib/eeprom/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/eeprom/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/gpio/gpio.p1: lib/gpio/gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/gpio" 
	@${RM} ${OBJECTDIR}/lib/gpio/gpio.p1.d 
	@${RM} ${OBJECTDIR}/lib/gpio/gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/gpio/gpio.p1 lib/gpio/gpio.c 
	@-${MV} ${OBJECTDIR}/lib/gpio/gpio.d ${OBJECTDIR}/lib/gpio/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/gpio/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/i2c/i2c.p1: lib/i2c/i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/i2c" 
	@${RM} ${OBJECTDIR}/lib/i2c/i2c.p1.d 
	@${RM} ${OBJECTDIR}/lib/i2c/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/i2c/i2c.p1 lib/i2c/i2c.c 
	@-${MV} ${OBJECTDIR}/lib/i2c/i2c.d ${OBJECTDIR}/lib/i2c/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/i2c/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/serial/serial.p1: lib/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/serial" 
	@${RM} ${OBJECTDIR}/lib/serial/serial.p1.d 
	@${RM} ${OBJECTDIR}/lib/serial/serial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/serial/serial.p1 lib/serial/serial.c 
	@-${MV} ${OBJECTDIR}/lib/serial/serial.d ${OBJECTDIR}/lib/serial/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/serial/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/nstring/Nstring.p1: lib/nstring/Nstring.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/nstring" 
	@${RM} ${OBJECTDIR}/lib/nstring/Nstring.p1.d 
	@${RM} ${OBJECTDIR}/lib/nstring/Nstring.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/nstring/Nstring.p1 lib/nstring/Nstring.c 
	@-${MV} ${OBJECTDIR}/lib/nstring/Nstring.d ${OBJECTDIR}/lib/nstring/Nstring.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/nstring/Nstring.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/isr/isr.p1: lib/isr/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/isr" 
	@${RM} ${OBJECTDIR}/lib/isr/isr.p1.d 
	@${RM} ${OBJECTDIR}/lib/isr/isr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/isr/isr.p1 lib/isr/isr.c 
	@-${MV} ${OBJECTDIR}/lib/isr/isr.d ${OBJECTDIR}/lib/isr/isr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/isr/isr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/systick/systick.p1: lib/systick/systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/systick" 
	@${RM} ${OBJECTDIR}/lib/systick/systick.p1.d 
	@${RM} ${OBJECTDIR}/lib/systick/systick.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/systick/systick.p1 lib/systick/systick.c 
	@-${MV} ${OBJECTDIR}/lib/systick/systick.d ${OBJECTDIR}/lib/systick/systick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/systick/systick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/dht11/dht11.p1: modules/dht11/dht11.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/dht11" 
	@${RM} ${OBJECTDIR}/modules/dht11/dht11.p1.d 
	@${RM} ${OBJECTDIR}/modules/dht11/dht11.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/dht11/dht11.p1 modules/dht11/dht11.c 
	@-${MV} ${OBJECTDIR}/modules/dht11/dht11.d ${OBJECTDIR}/modules/dht11/dht11.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/dht11/dht11.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/gsm/gsm.p1: modules/gsm/gsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/gsm" 
	@${RM} ${OBJECTDIR}/modules/gsm/gsm.p1.d 
	@${RM} ${OBJECTDIR}/modules/gsm/gsm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/gsm/gsm.p1 modules/gsm/gsm.c 
	@-${MV} ${OBJECTDIR}/modules/gsm/gsm.d ${OBJECTDIR}/modules/gsm/gsm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/gsm/gsm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/hcsr04/hcsr04.p1: modules/hcsr04/hcsr04.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/hcsr04" 
	@${RM} ${OBJECTDIR}/modules/hcsr04/hcsr04.p1.d 
	@${RM} ${OBJECTDIR}/modules/hcsr04/hcsr04.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/hcsr04/hcsr04.p1 modules/hcsr04/hcsr04.c 
	@-${MV} ${OBJECTDIR}/modules/hcsr04/hcsr04.d ${OBJECTDIR}/modules/hcsr04/hcsr04.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/hcsr04/hcsr04.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/lcd/lcd.p1: modules/lcd/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/lcd" 
	@${RM} ${OBJECTDIR}/modules/lcd/lcd.p1.d 
	@${RM} ${OBJECTDIR}/modules/lcd/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/lcd/lcd.p1 modules/lcd/lcd.c 
	@-${MV} ${OBJECTDIR}/modules/lcd/lcd.d ${OBJECTDIR}/modules/lcd/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/lcd/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/mcp320x/mcp320x.p1: modules/mcp320x/mcp320x.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/mcp320x" 
	@${RM} ${OBJECTDIR}/modules/mcp320x/mcp320x.p1.d 
	@${RM} ${OBJECTDIR}/modules/mcp320x/mcp320x.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/mcp320x/mcp320x.p1 modules/mcp320x/mcp320x.c 
	@-${MV} ${OBJECTDIR}/modules/mcp320x/mcp320x.d ${OBJECTDIR}/modules/mcp320x/mcp320x.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/mcp320x/mcp320x.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/mpu6050/mpu6050.p1: modules/mpu6050/mpu6050.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/mpu6050" 
	@${RM} ${OBJECTDIR}/modules/mpu6050/mpu6050.p1.d 
	@${RM} ${OBJECTDIR}/modules/mpu6050/mpu6050.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/mpu6050/mpu6050.p1 modules/mpu6050/mpu6050.c 
	@-${MV} ${OBJECTDIR}/modules/mpu6050/mpu6050.d ${OBJECTDIR}/modules/mpu6050/mpu6050.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/mpu6050/mpu6050.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/rtc/time.p1: modules/rtc/time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/rtc" 
	@${RM} ${OBJECTDIR}/modules/rtc/time.p1.d 
	@${RM} ${OBJECTDIR}/modules/rtc/time.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/rtc/time.p1 modules/rtc/time.c 
	@-${MV} ${OBJECTDIR}/modules/rtc/time.d ${OBJECTDIR}/modules/rtc/time.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/rtc/time.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/demo.p1: demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/demo.p1.d 
	@${RM} ${OBJECTDIR}/demo.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/demo.p1 demo.c 
	@-${MV} ${OBJECTDIR}/demo.d ${OBJECTDIR}/demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/softwareserial/softwareserial.p1: modules/softwareserial/softwareserial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/softwareserial" 
	@${RM} ${OBJECTDIR}/modules/softwareserial/softwareserial.p1.d 
	@${RM} ${OBJECTDIR}/modules/softwareserial/softwareserial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/softwareserial/softwareserial.p1 modules/softwareserial/softwareserial.c 
	@-${MV} ${OBJECTDIR}/modules/softwareserial/softwareserial.d ${OBJECTDIR}/modules/softwareserial/softwareserial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/softwareserial/softwareserial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/lib/delay/delay.p1: lib/delay/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/delay" 
	@${RM} ${OBJECTDIR}/lib/delay/delay.p1.d 
	@${RM} ${OBJECTDIR}/lib/delay/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/delay/delay.p1 lib/delay/delay.c 
	@-${MV} ${OBJECTDIR}/lib/delay/delay.d ${OBJECTDIR}/lib/delay/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/delay/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/spi/spi.p1: lib/spi/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/spi" 
	@${RM} ${OBJECTDIR}/lib/spi/spi.p1.d 
	@${RM} ${OBJECTDIR}/lib/spi/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/spi/spi.p1 lib/spi/spi.c 
	@-${MV} ${OBJECTDIR}/lib/spi/spi.d ${OBJECTDIR}/lib/spi/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/spi/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/adc/adc.p1: lib/adc/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/adc" 
	@${RM} ${OBJECTDIR}/lib/adc/adc.p1.d 
	@${RM} ${OBJECTDIR}/lib/adc/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/adc/adc.p1 lib/adc/adc.c 
	@-${MV} ${OBJECTDIR}/lib/adc/adc.d ${OBJECTDIR}/lib/adc/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/adc/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/eeprom/eeprom.p1: lib/eeprom/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/eeprom" 
	@${RM} ${OBJECTDIR}/lib/eeprom/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/lib/eeprom/eeprom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/eeprom/eeprom.p1 lib/eeprom/eeprom.c 
	@-${MV} ${OBJECTDIR}/lib/eeprom/eeprom.d ${OBJECTDIR}/lib/eeprom/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/eeprom/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/gpio/gpio.p1: lib/gpio/gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/gpio" 
	@${RM} ${OBJECTDIR}/lib/gpio/gpio.p1.d 
	@${RM} ${OBJECTDIR}/lib/gpio/gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/gpio/gpio.p1 lib/gpio/gpio.c 
	@-${MV} ${OBJECTDIR}/lib/gpio/gpio.d ${OBJECTDIR}/lib/gpio/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/gpio/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/i2c/i2c.p1: lib/i2c/i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/i2c" 
	@${RM} ${OBJECTDIR}/lib/i2c/i2c.p1.d 
	@${RM} ${OBJECTDIR}/lib/i2c/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/i2c/i2c.p1 lib/i2c/i2c.c 
	@-${MV} ${OBJECTDIR}/lib/i2c/i2c.d ${OBJECTDIR}/lib/i2c/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/i2c/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/serial/serial.p1: lib/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/serial" 
	@${RM} ${OBJECTDIR}/lib/serial/serial.p1.d 
	@${RM} ${OBJECTDIR}/lib/serial/serial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/serial/serial.p1 lib/serial/serial.c 
	@-${MV} ${OBJECTDIR}/lib/serial/serial.d ${OBJECTDIR}/lib/serial/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/serial/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/nstring/Nstring.p1: lib/nstring/Nstring.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/nstring" 
	@${RM} ${OBJECTDIR}/lib/nstring/Nstring.p1.d 
	@${RM} ${OBJECTDIR}/lib/nstring/Nstring.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/nstring/Nstring.p1 lib/nstring/Nstring.c 
	@-${MV} ${OBJECTDIR}/lib/nstring/Nstring.d ${OBJECTDIR}/lib/nstring/Nstring.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/nstring/Nstring.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/isr/isr.p1: lib/isr/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/isr" 
	@${RM} ${OBJECTDIR}/lib/isr/isr.p1.d 
	@${RM} ${OBJECTDIR}/lib/isr/isr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/isr/isr.p1 lib/isr/isr.c 
	@-${MV} ${OBJECTDIR}/lib/isr/isr.d ${OBJECTDIR}/lib/isr/isr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/isr/isr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lib/systick/systick.p1: lib/systick/systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lib/systick" 
	@${RM} ${OBJECTDIR}/lib/systick/systick.p1.d 
	@${RM} ${OBJECTDIR}/lib/systick/systick.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lib/systick/systick.p1 lib/systick/systick.c 
	@-${MV} ${OBJECTDIR}/lib/systick/systick.d ${OBJECTDIR}/lib/systick/systick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lib/systick/systick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/dht11/dht11.p1: modules/dht11/dht11.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/dht11" 
	@${RM} ${OBJECTDIR}/modules/dht11/dht11.p1.d 
	@${RM} ${OBJECTDIR}/modules/dht11/dht11.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/dht11/dht11.p1 modules/dht11/dht11.c 
	@-${MV} ${OBJECTDIR}/modules/dht11/dht11.d ${OBJECTDIR}/modules/dht11/dht11.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/dht11/dht11.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/gsm/gsm.p1: modules/gsm/gsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/gsm" 
	@${RM} ${OBJECTDIR}/modules/gsm/gsm.p1.d 
	@${RM} ${OBJECTDIR}/modules/gsm/gsm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/gsm/gsm.p1 modules/gsm/gsm.c 
	@-${MV} ${OBJECTDIR}/modules/gsm/gsm.d ${OBJECTDIR}/modules/gsm/gsm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/gsm/gsm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/hcsr04/hcsr04.p1: modules/hcsr04/hcsr04.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/hcsr04" 
	@${RM} ${OBJECTDIR}/modules/hcsr04/hcsr04.p1.d 
	@${RM} ${OBJECTDIR}/modules/hcsr04/hcsr04.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/hcsr04/hcsr04.p1 modules/hcsr04/hcsr04.c 
	@-${MV} ${OBJECTDIR}/modules/hcsr04/hcsr04.d ${OBJECTDIR}/modules/hcsr04/hcsr04.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/hcsr04/hcsr04.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/lcd/lcd.p1: modules/lcd/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/lcd" 
	@${RM} ${OBJECTDIR}/modules/lcd/lcd.p1.d 
	@${RM} ${OBJECTDIR}/modules/lcd/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/lcd/lcd.p1 modules/lcd/lcd.c 
	@-${MV} ${OBJECTDIR}/modules/lcd/lcd.d ${OBJECTDIR}/modules/lcd/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/lcd/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/mcp320x/mcp320x.p1: modules/mcp320x/mcp320x.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/mcp320x" 
	@${RM} ${OBJECTDIR}/modules/mcp320x/mcp320x.p1.d 
	@${RM} ${OBJECTDIR}/modules/mcp320x/mcp320x.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/mcp320x/mcp320x.p1 modules/mcp320x/mcp320x.c 
	@-${MV} ${OBJECTDIR}/modules/mcp320x/mcp320x.d ${OBJECTDIR}/modules/mcp320x/mcp320x.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/mcp320x/mcp320x.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/mpu6050/mpu6050.p1: modules/mpu6050/mpu6050.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/mpu6050" 
	@${RM} ${OBJECTDIR}/modules/mpu6050/mpu6050.p1.d 
	@${RM} ${OBJECTDIR}/modules/mpu6050/mpu6050.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/mpu6050/mpu6050.p1 modules/mpu6050/mpu6050.c 
	@-${MV} ${OBJECTDIR}/modules/mpu6050/mpu6050.d ${OBJECTDIR}/modules/mpu6050/mpu6050.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/mpu6050/mpu6050.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/rtc/time.p1: modules/rtc/time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/rtc" 
	@${RM} ${OBJECTDIR}/modules/rtc/time.p1.d 
	@${RM} ${OBJECTDIR}/modules/rtc/time.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/rtc/time.p1 modules/rtc/time.c 
	@-${MV} ${OBJECTDIR}/modules/rtc/time.d ${OBJECTDIR}/modules/rtc/time.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/rtc/time.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/demo.p1: demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/demo.p1.d 
	@${RM} ${OBJECTDIR}/demo.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/demo.p1 demo.c 
	@-${MV} ${OBJECTDIR}/demo.d ${OBJECTDIR}/demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/modules/softwareserial/softwareserial.p1: modules/softwareserial/softwareserial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/modules/softwareserial" 
	@${RM} ${OBJECTDIR}/modules/softwareserial/softwareserial.p1.d 
	@${RM} ${OBJECTDIR}/modules/softwareserial/softwareserial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/modules/softwareserial/softwareserial.p1 modules/softwareserial/softwareserial.c 
	@-${MV} ${OBJECTDIR}/modules/softwareserial/softwareserial.d ${OBJECTDIR}/modules/softwareserial/softwareserial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/modules/softwareserial/softwareserial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -mrom=default,-7dc0-7fff -mram=default,-5f4-5ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -fasmfile -maddrqual=ignore -D_XTAL_FREQ=20000000 -xassembler-with-cpp -I"lib/delay" -I"lib/system" -I"lib/adc" -I"lib/eeprom" -I"lib/gpio" -I"lib/i2c" -I"lib/serial" -I"lib/spi" -I"lib/nstring" -I"lib/isr" -I"lib/systick" -I"modules/dht11" -I"modules/gsm" -I"modules/hcsr04" -I"modules/lcd" -I"modules/mcp320x" -I"modules/mpu6050" -I"modules/rtc" -I"modules/softwareserial" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4520_Master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
