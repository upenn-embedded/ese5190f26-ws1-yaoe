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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../main.c ../AVR_FreeRTOS/heap_3.c ../AVR_FreeRTOS/hooks.c ../AVR_FreeRTOS/list.c ../AVR_FreeRTOS/port.c ../AVR_FreeRTOS/queue.c ../AVR_FreeRTOS/tasks.c ../AVR_FreeRTOS/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1800924003/heap_3.o ${OBJECTDIR}/_ext/1800924003/hooks.o ${OBJECTDIR}/_ext/1800924003/list.o ${OBJECTDIR}/_ext/1800924003/port.o ${OBJECTDIR}/_ext/1800924003/queue.o ${OBJECTDIR}/_ext/1800924003/tasks.o ${OBJECTDIR}/_ext/1800924003/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1800924003/heap_3.o.d ${OBJECTDIR}/_ext/1800924003/hooks.o.d ${OBJECTDIR}/_ext/1800924003/list.o.d ${OBJECTDIR}/_ext/1800924003/port.o.d ${OBJECTDIR}/_ext/1800924003/queue.o.d ${OBJECTDIR}/_ext/1800924003/tasks.o.d ${OBJECTDIR}/_ext/1800924003/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1800924003/heap_3.o ${OBJECTDIR}/_ext/1800924003/hooks.o ${OBJECTDIR}/_ext/1800924003/list.o ${OBJECTDIR}/_ext/1800924003/port.o ${OBJECTDIR}/_ext/1800924003/queue.o ${OBJECTDIR}/_ext/1800924003/tasks.o ${OBJECTDIR}/_ext/1800924003/timers.o

# Source Files
SOURCEFILES=../main.c ../AVR_FreeRTOS/heap_3.c ../AVR_FreeRTOS/hooks.c ../AVR_FreeRTOS/list.c ../AVR_FreeRTOS/port.c ../AVR_FreeRTOS/queue.c ../AVR_FreeRTOS/tasks.c ../AVR_FreeRTOS/timers.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega328PB
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/flags/default/cbf2f1f63fb38398c8cf4b972c79133c505bf573 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main.o.d" -MT "${OBJECTDIR}/_ext/1472/main.o.d" -MT ${OBJECTDIR}/_ext/1472/main.o -o ${OBJECTDIR}/_ext/1472/main.o ../main.c 
	
${OBJECTDIR}/_ext/1800924003/heap_3.o: ../AVR_FreeRTOS/heap_3.c  .generated_files/flags/default/2df64d5479e72c2ced782f3f3fefde8e40c2c98b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/heap_3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/heap_3.o.d" -MT "${OBJECTDIR}/_ext/1800924003/heap_3.o.d" -MT ${OBJECTDIR}/_ext/1800924003/heap_3.o -o ${OBJECTDIR}/_ext/1800924003/heap_3.o ../AVR_FreeRTOS/heap_3.c 
	
${OBJECTDIR}/_ext/1800924003/hooks.o: ../AVR_FreeRTOS/hooks.c  .generated_files/flags/default/f4550d8fabc37509bd298d1f0cbbb3d5cbb61dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/hooks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/hooks.o.d" -MT "${OBJECTDIR}/_ext/1800924003/hooks.o.d" -MT ${OBJECTDIR}/_ext/1800924003/hooks.o -o ${OBJECTDIR}/_ext/1800924003/hooks.o ../AVR_FreeRTOS/hooks.c 
	
${OBJECTDIR}/_ext/1800924003/list.o: ../AVR_FreeRTOS/list.c  .generated_files/flags/default/4a8e7c443b976502e2e1b57a14cea7f649c19f5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/list.o.d" -MT "${OBJECTDIR}/_ext/1800924003/list.o.d" -MT ${OBJECTDIR}/_ext/1800924003/list.o -o ${OBJECTDIR}/_ext/1800924003/list.o ../AVR_FreeRTOS/list.c 
	
${OBJECTDIR}/_ext/1800924003/port.o: ../AVR_FreeRTOS/port.c  .generated_files/flags/default/dfce4e1a7869c7fd26e3b8bae50ea1dbc4c2e258 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/port.o.d" -MT "${OBJECTDIR}/_ext/1800924003/port.o.d" -MT ${OBJECTDIR}/_ext/1800924003/port.o -o ${OBJECTDIR}/_ext/1800924003/port.o ../AVR_FreeRTOS/port.c 
	
${OBJECTDIR}/_ext/1800924003/queue.o: ../AVR_FreeRTOS/queue.c  .generated_files/flags/default/7f8ead71b77c547f4518ad72efbc1550283050e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/queue.o.d" -MT "${OBJECTDIR}/_ext/1800924003/queue.o.d" -MT ${OBJECTDIR}/_ext/1800924003/queue.o -o ${OBJECTDIR}/_ext/1800924003/queue.o ../AVR_FreeRTOS/queue.c 
	
${OBJECTDIR}/_ext/1800924003/tasks.o: ../AVR_FreeRTOS/tasks.c  .generated_files/flags/default/705663954cfff6c160785a4fcf9f2bb8e86b6478 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/tasks.o.d" -MT "${OBJECTDIR}/_ext/1800924003/tasks.o.d" -MT ${OBJECTDIR}/_ext/1800924003/tasks.o -o ${OBJECTDIR}/_ext/1800924003/tasks.o ../AVR_FreeRTOS/tasks.c 
	
${OBJECTDIR}/_ext/1800924003/timers.o: ../AVR_FreeRTOS/timers.c  .generated_files/flags/default/7ea5beb6a778c0515c559f8d4fe6c5df7f43a656 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/timers.o.d" -MT "${OBJECTDIR}/_ext/1800924003/timers.o.d" -MT ${OBJECTDIR}/_ext/1800924003/timers.o -o ${OBJECTDIR}/_ext/1800924003/timers.o ../AVR_FreeRTOS/timers.c 
	
else
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/flags/default/58bc9c432a4ea7e8109c5440a5a0fe70584785b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main.o.d" -MT "${OBJECTDIR}/_ext/1472/main.o.d" -MT ${OBJECTDIR}/_ext/1472/main.o -o ${OBJECTDIR}/_ext/1472/main.o ../main.c 
	
${OBJECTDIR}/_ext/1800924003/heap_3.o: ../AVR_FreeRTOS/heap_3.c  .generated_files/flags/default/2239184221f72d2f42070bb82a4facf1810fb172 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/heap_3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/heap_3.o.d" -MT "${OBJECTDIR}/_ext/1800924003/heap_3.o.d" -MT ${OBJECTDIR}/_ext/1800924003/heap_3.o -o ${OBJECTDIR}/_ext/1800924003/heap_3.o ../AVR_FreeRTOS/heap_3.c 
	
${OBJECTDIR}/_ext/1800924003/hooks.o: ../AVR_FreeRTOS/hooks.c  .generated_files/flags/default/a10ea87e24553e17cee83831bfbf4ae793499f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/hooks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/hooks.o.d" -MT "${OBJECTDIR}/_ext/1800924003/hooks.o.d" -MT ${OBJECTDIR}/_ext/1800924003/hooks.o -o ${OBJECTDIR}/_ext/1800924003/hooks.o ../AVR_FreeRTOS/hooks.c 
	
${OBJECTDIR}/_ext/1800924003/list.o: ../AVR_FreeRTOS/list.c  .generated_files/flags/default/b1bc62fa19568d408ea9a61c6abe4c2abf8c5adc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/list.o.d" -MT "${OBJECTDIR}/_ext/1800924003/list.o.d" -MT ${OBJECTDIR}/_ext/1800924003/list.o -o ${OBJECTDIR}/_ext/1800924003/list.o ../AVR_FreeRTOS/list.c 
	
${OBJECTDIR}/_ext/1800924003/port.o: ../AVR_FreeRTOS/port.c  .generated_files/flags/default/f243e2009eca8a1e1110f40ad197223b1ce3d9f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/port.o.d" -MT "${OBJECTDIR}/_ext/1800924003/port.o.d" -MT ${OBJECTDIR}/_ext/1800924003/port.o -o ${OBJECTDIR}/_ext/1800924003/port.o ../AVR_FreeRTOS/port.c 
	
${OBJECTDIR}/_ext/1800924003/queue.o: ../AVR_FreeRTOS/queue.c  .generated_files/flags/default/970d15a967caa45e912342e2177bf20d65bb606 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/queue.o.d" -MT "${OBJECTDIR}/_ext/1800924003/queue.o.d" -MT ${OBJECTDIR}/_ext/1800924003/queue.o -o ${OBJECTDIR}/_ext/1800924003/queue.o ../AVR_FreeRTOS/queue.c 
	
${OBJECTDIR}/_ext/1800924003/tasks.o: ../AVR_FreeRTOS/tasks.c  .generated_files/flags/default/6a82ac65c4349a886c8873ae03d14f1352ea3499 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/tasks.o.d" -MT "${OBJECTDIR}/_ext/1800924003/tasks.o.d" -MT ${OBJECTDIR}/_ext/1800924003/tasks.o -o ${OBJECTDIR}/_ext/1800924003/tasks.o ../AVR_FreeRTOS/tasks.c 
	
${OBJECTDIR}/_ext/1800924003/timers.o: ../AVR_FreeRTOS/timers.c  .generated_files/flags/default/7ca468e8a028ec344fd204748ab540cca0733fd4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1800924003" 
	@${RM} ${OBJECTDIR}/_ext/1800924003/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1800924003/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1800924003/timers.o.d" -MT "${OBJECTDIR}/_ext/1800924003/timers.o.d" -MT ${OBJECTDIR}/_ext/1800924003/timers.o -o ${OBJECTDIR}/_ext/1800924003/timers.o ../AVR_FreeRTOS/timers.c 
	
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
${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DF_CPU=16000000UL -I"../AVR_FreeRTOS" -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/ws1RTOS.X.${IMAGE_TYPE}.hex"
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
