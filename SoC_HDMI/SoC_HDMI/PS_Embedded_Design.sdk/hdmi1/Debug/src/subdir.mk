################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/cf_hdmi.c \
../src/main.c \
../src/transmitter.c 

OBJS += \
./src/cf_hdmi.o \
./src/main.o \
./src/transmitter.o 

C_DEPS += \
./src/cf_hdmi.d \
./src/main.d \
./src/transmitter.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I"D:\BaiduNetdiskDownload\crz01\SoC_HDMI\SoC_HDMI\PS_Embedded_Design.sdk\hdmi1" -I"D:\BaiduNetdiskDownload\crz01\SoC_HDMI\SoC_HDMI\PS_Embedded_Design.sdk\hdmi1\inc" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=softfp -I"D:\BaiduNetdiskDownload\crz01\SoC_HDMI\SoC_HDMI\PS_Embedded_Design.sdk\hdmi1_bsp\ps7_cortexa9_0\include" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


