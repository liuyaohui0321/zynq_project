################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Ring-Buffer/ringbuffer_u32.c \
../src/Ring-Buffer/ringbuffer_u8.c 

OBJS += \
./src/Ring-Buffer/ringbuffer_u32.o \
./src/Ring-Buffer/ringbuffer_u8.o 

C_DEPS += \
./src/Ring-Buffer/ringbuffer_u32.d \
./src/Ring-Buffer/ringbuffer_u8.d 


# Each subdirectory must supply rules for building sources it contributes
src/Ring-Buffer/%.o: ../src/Ring-Buffer/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../uart_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


