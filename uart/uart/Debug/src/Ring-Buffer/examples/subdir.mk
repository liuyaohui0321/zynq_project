################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Ring-Buffer/examples/simple.c 

OBJS += \
./src/Ring-Buffer/examples/simple.o 

C_DEPS += \
./src/Ring-Buffer/examples/simple.d 


# Each subdirectory must supply rules for building sources it contributes
src/Ring-Buffer/examples/%.o: ../src/Ring-Buffer/examples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../uart_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


