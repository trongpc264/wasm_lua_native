################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/smc_gen/r_bsp/mcu/r9a02g021/mcu_clocks.c \
../src/smc_gen/r_bsp/mcu/r9a02g021/mcu_mapped_interrupts.c \
../src/smc_gen/r_bsp/mcu/r9a02g021/mcu_option_settings.c 

CREF += \
R9A02G021_wamr_interp_fast_mini.cref 

C_DEPS += \
./src/smc_gen/r_bsp/mcu/r9a02g021/mcu_clocks.d \
./src/smc_gen/r_bsp/mcu/r9a02g021/mcu_mapped_interrupts.d \
./src/smc_gen/r_bsp/mcu/r9a02g021/mcu_option_settings.d 

OBJS += \
./src/smc_gen/r_bsp/mcu/r9a02g021/mcu_clocks.o \
./src/smc_gen/r_bsp/mcu/r9a02g021/mcu_mapped_interrupts.o \
./src/smc_gen/r_bsp/mcu/r9a02g021/mcu_option_settings.o 

MAP += \
R9A02G021_wamr_interp_fast_mini.map 


# Each subdirectory must supply rules for building sources it contributes
src/smc_gen/r_bsp/mcu/r9a02g021/%.o: ../src/smc_gen/r_bsp/mcu/r9a02g021/%.c
	@echo 'Building file: $<'
	$(file > $@.in,--target=riscv32 -mabi=ilp32 -march=rv32imaczba_zbb_zbs -Oz -ffunction-sections -fdata-sections -flto -fdiagnostics-parseable-fixits -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Waggregate-return -g -std=gnu99 -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen/r_config" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen/r_bsp" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen/general" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen/r_pincfg" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/mem-alloc/ems" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/include" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/libraries/libc-builtin" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/common" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/utils" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/platform/include" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/common/arch" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/interpreter" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/mem-alloc" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/libraries" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/platform" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/platform/renesasriscv" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" "$<" -c -o "$@")
	@clang @"$@.in"

