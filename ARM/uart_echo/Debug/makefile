################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./adc.obj" \
"./aes.obj" \
"./can.obj" \
"./cmdline.obj" \
"./comp.obj" \
"./cpu.obj" \
"./cpu_usage.obj" \
"./crc.obj" \
"./des.obj" \
"./eeprom.obj" \
"./eeprom_pb.obj" \
"./emac.obj" \
"./epi.obj" \
"./epi_workaround_ccs.obj" \
"./flash.obj" \
"./flash_pb.obj" \
"./fpu.obj" \
"./fswrapper.obj" \
"./gpio.obj" \
"./hibernate.obj" \
"./i2c.obj" \
"./interrupt.obj" \
"./isqrt.obj" \
"./lcd.obj" \
"./locator.obj" \
"./lwiplib.obj" \
"./mpu.obj" \
"./onewire.obj" \
"./ptpdlib.obj" \
"./pwm.obj" \
"./qei.obj" \
"./random.obj" \
"./ringbuf.obj" \
"./scheduler.obj" \
"./shamd5.obj" \
"./sine.obj" \
"./slave_receive_int.obj" \
"./smbus.obj" \
"./softi2c.obj" \
"./softssi.obj" \
"./softuart.obj" \
"./speexlib.obj" \
"./spi_flash.obj" \
"./ssi.obj" \
"./startup_ccs.obj" \
"./sw_crc.obj" \
"./swupdate.obj" \
"./sysctl.obj" \
"./sysexc.obj" \
"./systick.obj" \
"./tftp.obj" \
"./timer.obj" \
"./uart.obj" \
"./uartstdio.obj" \
"./udma.obj" \
"./usb.obj" \
"./ustdlib.obj" \
"./watchdog.obj" \
"./wavfile.obj" \
"../uart_echo_ccs.cmd" \
"../ccs/Debug/driverlib.lib" \
"../rvmdk/driverlib.lib" \
$(GEN_CMDS__FLAG) \
-l"C:/ti/TivaWare_C_Series-2.2.0.295/driverlib/ccs/Debug/driverlib.lib" \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include ccs/Debug/subdir_vars.mk
-include ewarm/Exe/subdir_vars.mk
-include gcc/subdir_vars.mk
-include rvmdk/subdir_vars.mk
-include subdir_rules.mk
-include ccs/Debug/subdir_rules.mk
-include ewarm/Exe/subdir_rules.mk
-include gcc/subdir_rules.mk
-include rvmdk/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
uart_echo.out 

EXE_OUTPUTS__QUOTED += \
"uart_echo.out" 


# All Target
all: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(A_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "uart_echo.out"

# Tool invocations
uart_echo.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(A_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: ARM Linker'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O2 --define=ccs="ccs" --define=PART_TM4C123GH6PM --define=TARGET_IS_TM4C123_RB1 -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --ual -z -m"uart_echo_ccs.map" --heap_size=0 --stack_size=256 -i"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/lib" -i"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --reread_libs --diag_wrap=off --display_error_number --warn_sections --xml_link_info="uart_echo_linkInfo.xml" --rom_model -o "uart_echo.out" $(ORDERED_OBJS) $(A_SRCS)
	@echo 'Finished building target: "$@"'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "adc.obj" "aes.obj" "can.obj" "cmdline.obj" "comp.obj" "cpu.obj" "cpu_usage.obj" "crc.obj" "des.obj" "eeprom.obj" "eeprom_pb.obj" "emac.obj" "epi.obj" "epi_workaround_ccs.obj" "flash.obj" "flash_pb.obj" "fpu.obj" "fswrapper.obj" "gpio.obj" "hibernate.obj" "i2c.obj" "interrupt.obj" "isqrt.obj" "lcd.obj" "locator.obj" "lwiplib.obj" "mpu.obj" "onewire.obj" "ptpdlib.obj" "pwm.obj" "qei.obj" "random.obj" "ringbuf.obj" "scheduler.obj" "shamd5.obj" "sine.obj" "slave_receive_int.obj" "smbus.obj" "softi2c.obj" "softssi.obj" "softuart.obj" "speexlib.obj" "spi_flash.obj" "ssi.obj" "startup_ccs.obj" "sw_crc.obj" "swupdate.obj" "sysctl.obj" "sysexc.obj" "systick.obj" "tftp.obj" "timer.obj" "uart.obj" "uartstdio.obj" "udma.obj" "usb.obj" "ustdlib.obj" "watchdog.obj" "wavfile.obj" 
	-$(RM) "adc.d" "aes.d" "can.d" "cmdline.d" "comp.d" "cpu.d" "cpu_usage.d" "crc.d" "des.d" "eeprom.d" "eeprom_pb.d" "emac.d" "epi.d" "flash.d" "flash_pb.d" "fpu.d" "fswrapper.d" "gpio.d" "hibernate.d" "i2c.d" "interrupt.d" "isqrt.d" "lcd.d" "locator.d" "lwiplib.d" "mpu.d" "onewire.d" "ptpdlib.d" "pwm.d" "qei.d" "random.d" "ringbuf.d" "scheduler.d" "shamd5.d" "sine.d" "slave_receive_int.d" "smbus.d" "softi2c.d" "softssi.d" "softuart.d" "speexlib.d" "spi_flash.d" "ssi.d" "startup_ccs.d" "sw_crc.d" "swupdate.d" "sysctl.d" "sysexc.d" "systick.d" "tftp.d" "timer.d" "uart.d" "uartstdio.d" "udma.d" "usb.d" "ustdlib.d" "watchdog.d" "wavfile.d" 
	-$(RM) "epi_workaround_ccs.d" 
	-@echo 'Finished clean'
	-@echo ' '

post-build:
	-"C:/ti/ccs2010/ccs//utils/tiobj2bin/tiobj2bin" "uart_echo.out" "uart_echo.bin" "C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armofd" "C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armhex" "C:/ti/ccs2010/ccs//utils/tiobj2bin/mkhex4bin"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

