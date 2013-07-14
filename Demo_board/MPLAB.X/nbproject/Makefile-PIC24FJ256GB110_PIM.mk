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
ifeq "$(wildcard nbproject/Makefile-local-PIC24FJ256GB110_PIM.mk)" "nbproject/Makefile-local-PIC24FJ256GB110_PIM.mk"
include nbproject/Makefile-local-PIC24FJ256GB110_PIM.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC24FJ256GB110_PIM
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1541859643/croutine.o ${OBJECTDIR}/_ext/1541859643/tasks.o ${OBJECTDIR}/_ext/1958861273/port.o ${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o ${OBJECTDIR}/_ext/32238328/heap_1.o ${OBJECTDIR}/_ext/1541859643/list.o ${OBJECTDIR}/_ext/1541859643/queue.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/usb_config.o ${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/1991243579/usb_host_android.o ${OBJECTDIR}/_ext/1472/i2c_func.o ${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o ${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o ${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o ${OBJECTDIR}/_ext/1472/sonar_hcsr04.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1541859643/croutine.o.d ${OBJECTDIR}/_ext/1541859643/tasks.o.d ${OBJECTDIR}/_ext/1958861273/port.o.d ${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.d ${OBJECTDIR}/_ext/32238328/heap_1.o.d ${OBJECTDIR}/_ext/1541859643/list.o.d ${OBJECTDIR}/_ext/1541859643/queue.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/usb_config.o.d ${OBJECTDIR}/_ext/926206843/usb_host.o.d ${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d ${OBJECTDIR}/_ext/1472/i2c_func.o.d ${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o.d ${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o.d ${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o.d ${OBJECTDIR}/_ext/1472/sonar_hcsr04.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1541859643/croutine.o ${OBJECTDIR}/_ext/1541859643/tasks.o ${OBJECTDIR}/_ext/1958861273/port.o ${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o ${OBJECTDIR}/_ext/32238328/heap_1.o ${OBJECTDIR}/_ext/1541859643/list.o ${OBJECTDIR}/_ext/1541859643/queue.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/usb_config.o ${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/1991243579/usb_host_android.o ${OBJECTDIR}/_ext/1472/i2c_func.o ${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o ${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o ${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o ${OBJECTDIR}/_ext/1472/sonar_hcsr04.o


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
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-PIC24FJ256GB110_PIM.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB110
MP_LINKER_FILE_OPTION=,--script=p24FJ256GB110.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1541859643/croutine.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1541859643 
	@${RM} ${OBJECTDIR}/_ext/1541859643/croutine.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/croutine.c  -o ${OBJECTDIR}/_ext/1541859643/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541859643/croutine.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541859643/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541859643/tasks.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1541859643 
	@${RM} ${OBJECTDIR}/_ext/1541859643/tasks.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/tasks.c  -o ${OBJECTDIR}/_ext/1541859643/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541859643/tasks.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541859643/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1958861273/port.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1958861273 
	@${RM} ${OBJECTDIR}/_ext/1958861273/port.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/1958861273/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1958861273/port.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1958861273/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/32238328/heap_1.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/32238328 
	@${RM} ${OBJECTDIR}/_ext/32238328/heap_1.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/32238328/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/32238328/heap_1.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/32238328/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541859643/list.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1541859643 
	@${RM} ${OBJECTDIR}/_ext/1541859643/list.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/list.c  -o ${OBJECTDIR}/_ext/1541859643/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541859643/list.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541859643/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541859643/queue.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1541859643 
	@${RM} ${OBJECTDIR}/_ext/1541859643/queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/queue.c  -o ${OBJECTDIR}/_ext/1541859643/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541859643/queue.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541859643/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usb_config.c  -o ${OBJECTDIR}/_ext/1472/usb_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/usb_config.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../Microchip/USB/usb_host.c  -o ${OBJECTDIR}/_ext/926206843/usb_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_host.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1991243579/usb_host_android.o: ../../../../Microchip/USB/Android\ Host\ Driver/usb_host_android.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1991243579 
	@${RM} ${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../Microchip/USB/Android Host Driver/usb_host_android.c"  -o ${OBJECTDIR}/_ext/1991243579/usb_host_android.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/i2c_func.o: ../i2c_func.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_func.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../i2c_func.c  -o ${OBJECTDIR}/_ext/1472/i2c_func.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/i2c_func.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/i2c_func.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o: C:/microchip_solutions_v2013-02-15/Android\ Accessories/FreeRTOS\ Demo+ADK/Firmware/gyro_mpu6050.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1661980509 
	@${RM} ${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "C:/microchip_solutions_v2013-02-15/Android Accessories/FreeRTOS Demo+ADK/Firmware/gyro_mpu6050.c"  -o ${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o: ../lcd_i2c_1602.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lcd_i2c_1602.c  -o ${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o: ../stepmoter_28byj48.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../stepmoter_28byj48.c  -o ${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/sonar_hcsr04.o: ../sonar_hcsr04.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sonar_hcsr04.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sonar_hcsr04.c  -o ${OBJECTDIR}/_ext/1472/sonar_hcsr04.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/sonar_hcsr04.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sonar_hcsr04.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1541859643/croutine.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1541859643 
	@${RM} ${OBJECTDIR}/_ext/1541859643/croutine.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/croutine.c  -o ${OBJECTDIR}/_ext/1541859643/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541859643/croutine.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541859643/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541859643/tasks.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1541859643 
	@${RM} ${OBJECTDIR}/_ext/1541859643/tasks.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/tasks.c  -o ${OBJECTDIR}/_ext/1541859643/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541859643/tasks.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541859643/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1958861273/port.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1958861273 
	@${RM} ${OBJECTDIR}/_ext/1958861273/port.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/1958861273/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1958861273/port.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1958861273/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/32238328/heap_1.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/32238328 
	@${RM} ${OBJECTDIR}/_ext/32238328/heap_1.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/32238328/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/32238328/heap_1.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/32238328/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541859643/list.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1541859643 
	@${RM} ${OBJECTDIR}/_ext/1541859643/list.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/list.c  -o ${OBJECTDIR}/_ext/1541859643/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541859643/list.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541859643/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541859643/queue.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1541859643 
	@${RM} ${OBJECTDIR}/_ext/1541859643/queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/queue.c  -o ${OBJECTDIR}/_ext/1541859643/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541859643/queue.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541859643/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usb_config.c  -o ${OBJECTDIR}/_ext/1472/usb_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/usb_config.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../Microchip/USB/usb_host.c  -o ${OBJECTDIR}/_ext/926206843/usb_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_host.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1991243579/usb_host_android.o: ../../../../Microchip/USB/Android\ Host\ Driver/usb_host_android.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1991243579 
	@${RM} ${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../Microchip/USB/Android Host Driver/usb_host_android.c"  -o ${OBJECTDIR}/_ext/1991243579/usb_host_android.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/i2c_func.o: ../i2c_func.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_func.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../i2c_func.c  -o ${OBJECTDIR}/_ext/1472/i2c_func.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/i2c_func.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/i2c_func.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o: C:/microchip_solutions_v2013-02-15/Android\ Accessories/FreeRTOS\ Demo+ADK/Firmware/gyro_mpu6050.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1661980509 
	@${RM} ${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "C:/microchip_solutions_v2013-02-15/Android Accessories/FreeRTOS Demo+ADK/Firmware/gyro_mpu6050.c"  -o ${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1661980509/gyro_mpu6050.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o: ../lcd_i2c_1602.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lcd_i2c_1602.c  -o ${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd_i2c_1602.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o: ../stepmoter_28byj48.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../stepmoter_28byj48.c  -o ${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/stepmoter_28byj48.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/sonar_hcsr04.o: ../sonar_hcsr04.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sonar_hcsr04.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sonar_hcsr04.c  -o ${OBJECTDIR}/_ext/1472/sonar_hcsr04.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/sonar_hcsr04.o.d"        -g -omf=elf -O0 -I".." -I"../../../../Microchip/Include" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sonar_hcsr04.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1958861273 
	@${RM} ${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -o ${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.d" "${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o: ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1958861273 
	@${RM} ${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../../../FreeRTOSV7.4.1/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -o ${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.d"  -omf=elf -Wa,-MD,"${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.d" "${OBJECTDIR}/_ext/1958861273/portasm_PIC24.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--heap=3000,--no-check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=3000,--no-check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC24FJ256GB110_PIM
	${RM} -r dist/PIC24FJ256GB110_PIM

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
