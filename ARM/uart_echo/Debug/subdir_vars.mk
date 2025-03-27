################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../uart_echo_ccs.cmd 

S_SRCS += \
../epi_workaround_ccs.s 

C_SRCS += \
../adc.c \
../aes.c \
../can.c \
../cmdline.c \
../comp.c \
../cpu.c \
../cpu_usage.c \
../crc.c \
../des.c \
../eeprom.c \
../eeprom_pb.c \
../emac.c \
../epi.c \
../flash.c \
../flash_pb.c \
../fpu.c \
../fswrapper.c \
../gpio.c \
../hibernate.c \
../i2c.c \
../interrupt.c \
../isqrt.c \
../lcd.c \
../locator.c \
../lwiplib.c \
../mpu.c \
../onewire.c \
../ptpdlib.c \
../pwm.c \
../qei.c \
../random.c \
../ringbuf.c \
../scheduler.c \
../shamd5.c \
../sine.c \
../slave_receive_int.c \
../smbus.c \
../softi2c.c \
../softssi.c \
../softuart.c \
../speexlib.c \
../spi_flash.c \
../ssi.c \
../startup_ccs.c \
../sw_crc.c \
../swupdate.c \
../sysctl.c \
../sysexc.c \
../systick.c \
../tftp.c \
../timer.c \
../uart.c \
../uartstdio.c \
../udma.c \
../usb.c \
../ustdlib.c \
../watchdog.c \
../wavfile.c 

S_DEPS += \
./epi_workaround_ccs.d 

C_DEPS += \
./adc.d \
./aes.d \
./can.d \
./cmdline.d \
./comp.d \
./cpu.d \
./cpu_usage.d \
./crc.d \
./des.d \
./eeprom.d \
./eeprom_pb.d \
./emac.d \
./epi.d \
./flash.d \
./flash_pb.d \
./fpu.d \
./fswrapper.d \
./gpio.d \
./hibernate.d \
./i2c.d \
./interrupt.d \
./isqrt.d \
./lcd.d \
./locator.d \
./lwiplib.d \
./mpu.d \
./onewire.d \
./ptpdlib.d \
./pwm.d \
./qei.d \
./random.d \
./ringbuf.d \
./scheduler.d \
./shamd5.d \
./sine.d \
./slave_receive_int.d \
./smbus.d \
./softi2c.d \
./softssi.d \
./softuart.d \
./speexlib.d \
./spi_flash.d \
./ssi.d \
./startup_ccs.d \
./sw_crc.d \
./swupdate.d \
./sysctl.d \
./sysexc.d \
./systick.d \
./tftp.d \
./timer.d \
./uart.d \
./uartstdio.d \
./udma.d \
./usb.d \
./ustdlib.d \
./watchdog.d \
./wavfile.d 

OBJS += \
./adc.obj \
./aes.obj \
./can.obj \
./cmdline.obj \
./comp.obj \
./cpu.obj \
./cpu_usage.obj \
./crc.obj \
./des.obj \
./eeprom.obj \
./eeprom_pb.obj \
./emac.obj \
./epi.obj \
./epi_workaround_ccs.obj \
./flash.obj \
./flash_pb.obj \
./fpu.obj \
./fswrapper.obj \
./gpio.obj \
./hibernate.obj \
./i2c.obj \
./interrupt.obj \
./isqrt.obj \
./lcd.obj \
./locator.obj \
./lwiplib.obj \
./mpu.obj \
./onewire.obj \
./ptpdlib.obj \
./pwm.obj \
./qei.obj \
./random.obj \
./ringbuf.obj \
./scheduler.obj \
./shamd5.obj \
./sine.obj \
./slave_receive_int.obj \
./smbus.obj \
./softi2c.obj \
./softssi.obj \
./softuart.obj \
./speexlib.obj \
./spi_flash.obj \
./ssi.obj \
./startup_ccs.obj \
./sw_crc.obj \
./swupdate.obj \
./sysctl.obj \
./sysexc.obj \
./systick.obj \
./tftp.obj \
./timer.obj \
./uart.obj \
./uartstdio.obj \
./udma.obj \
./usb.obj \
./ustdlib.obj \
./watchdog.obj \
./wavfile.obj 

OBJS__QUOTED += \
"adc.obj" \
"aes.obj" \
"can.obj" \
"cmdline.obj" \
"comp.obj" \
"cpu.obj" \
"cpu_usage.obj" \
"crc.obj" \
"des.obj" \
"eeprom.obj" \
"eeprom_pb.obj" \
"emac.obj" \
"epi.obj" \
"epi_workaround_ccs.obj" \
"flash.obj" \
"flash_pb.obj" \
"fpu.obj" \
"fswrapper.obj" \
"gpio.obj" \
"hibernate.obj" \
"i2c.obj" \
"interrupt.obj" \
"isqrt.obj" \
"lcd.obj" \
"locator.obj" \
"lwiplib.obj" \
"mpu.obj" \
"onewire.obj" \
"ptpdlib.obj" \
"pwm.obj" \
"qei.obj" \
"random.obj" \
"ringbuf.obj" \
"scheduler.obj" \
"shamd5.obj" \
"sine.obj" \
"slave_receive_int.obj" \
"smbus.obj" \
"softi2c.obj" \
"softssi.obj" \
"softuart.obj" \
"speexlib.obj" \
"spi_flash.obj" \
"ssi.obj" \
"startup_ccs.obj" \
"sw_crc.obj" \
"swupdate.obj" \
"sysctl.obj" \
"sysexc.obj" \
"systick.obj" \
"tftp.obj" \
"timer.obj" \
"uart.obj" \
"uartstdio.obj" \
"udma.obj" \
"usb.obj" \
"ustdlib.obj" \
"watchdog.obj" \
"wavfile.obj" 

C_DEPS__QUOTED += \
"adc.d" \
"aes.d" \
"can.d" \
"cmdline.d" \
"comp.d" \
"cpu.d" \
"cpu_usage.d" \
"crc.d" \
"des.d" \
"eeprom.d" \
"eeprom_pb.d" \
"emac.d" \
"epi.d" \
"flash.d" \
"flash_pb.d" \
"fpu.d" \
"fswrapper.d" \
"gpio.d" \
"hibernate.d" \
"i2c.d" \
"interrupt.d" \
"isqrt.d" \
"lcd.d" \
"locator.d" \
"lwiplib.d" \
"mpu.d" \
"onewire.d" \
"ptpdlib.d" \
"pwm.d" \
"qei.d" \
"random.d" \
"ringbuf.d" \
"scheduler.d" \
"shamd5.d" \
"sine.d" \
"slave_receive_int.d" \
"smbus.d" \
"softi2c.d" \
"softssi.d" \
"softuart.d" \
"speexlib.d" \
"spi_flash.d" \
"ssi.d" \
"startup_ccs.d" \
"sw_crc.d" \
"swupdate.d" \
"sysctl.d" \
"sysexc.d" \
"systick.d" \
"tftp.d" \
"timer.d" \
"uart.d" \
"uartstdio.d" \
"udma.d" \
"usb.d" \
"ustdlib.d" \
"watchdog.d" \
"wavfile.d" 

S_DEPS__QUOTED += \
"epi_workaround_ccs.d" 

C_SRCS__QUOTED += \
"../adc.c" \
"../aes.c" \
"../can.c" \
"../cmdline.c" \
"../comp.c" \
"../cpu.c" \
"../cpu_usage.c" \
"../crc.c" \
"../des.c" \
"../eeprom.c" \
"../eeprom_pb.c" \
"../emac.c" \
"../epi.c" \
"../flash.c" \
"../flash_pb.c" \
"../fpu.c" \
"../fswrapper.c" \
"../gpio.c" \
"../hibernate.c" \
"../i2c.c" \
"../interrupt.c" \
"../isqrt.c" \
"../lcd.c" \
"../locator.c" \
"../lwiplib.c" \
"../mpu.c" \
"../onewire.c" \
"../ptpdlib.c" \
"../pwm.c" \
"../qei.c" \
"../random.c" \
"../ringbuf.c" \
"../scheduler.c" \
"../shamd5.c" \
"../sine.c" \
"../slave_receive_int.c" \
"../smbus.c" \
"../softi2c.c" \
"../softssi.c" \
"../softuart.c" \
"../speexlib.c" \
"../spi_flash.c" \
"../ssi.c" \
"../startup_ccs.c" \
"../sw_crc.c" \
"../swupdate.c" \
"../sysctl.c" \
"../sysexc.c" \
"../systick.c" \
"../tftp.c" \
"../timer.c" \
"../uart.c" \
"../uartstdio.c" \
"../udma.c" \
"../usb.c" \
"../ustdlib.c" \
"../watchdog.c" \
"../wavfile.c" 

S_SRCS__QUOTED += \
"../epi_workaround_ccs.s" 


