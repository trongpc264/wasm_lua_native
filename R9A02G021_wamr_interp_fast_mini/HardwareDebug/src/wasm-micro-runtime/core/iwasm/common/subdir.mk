################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/wasm-micro-runtime/core/iwasm/common/wasm_application.c \
../src/wasm-micro-runtime/core/iwasm/common/wasm_blocking_op.c \
../src/wasm-micro-runtime/core/iwasm/common/wasm_c_api.c \
../src/wasm-micro-runtime/core/iwasm/common/wasm_exec_env.c \
../src/wasm-micro-runtime/core/iwasm/common/wasm_loader_common.c \
../src/wasm-micro-runtime/core/iwasm/common/wasm_memory.c \
../src/wasm-micro-runtime/core/iwasm/common/wasm_native.c \
../src/wasm-micro-runtime/core/iwasm/common/wasm_runtime_common.c \
../src/wasm-micro-runtime/core/iwasm/common/wasm_shared_memory.c 

CREF += \
R9A02G021_wamr_interp_fast_mini.cref 

C_DEPS += \
./src/wasm-micro-runtime/core/iwasm/common/wasm_application.d \
./src/wasm-micro-runtime/core/iwasm/common/wasm_blocking_op.d \
./src/wasm-micro-runtime/core/iwasm/common/wasm_c_api.d \
./src/wasm-micro-runtime/core/iwasm/common/wasm_exec_env.d \
./src/wasm-micro-runtime/core/iwasm/common/wasm_loader_common.d \
./src/wasm-micro-runtime/core/iwasm/common/wasm_memory.d \
./src/wasm-micro-runtime/core/iwasm/common/wasm_native.d \
./src/wasm-micro-runtime/core/iwasm/common/wasm_runtime_common.d \
./src/wasm-micro-runtime/core/iwasm/common/wasm_shared_memory.d 

OBJS += \
./src/wasm-micro-runtime/core/iwasm/common/wasm_application.o \
./src/wasm-micro-runtime/core/iwasm/common/wasm_blocking_op.o \
./src/wasm-micro-runtime/core/iwasm/common/wasm_c_api.o \
./src/wasm-micro-runtime/core/iwasm/common/wasm_exec_env.o \
./src/wasm-micro-runtime/core/iwasm/common/wasm_loader_common.o \
./src/wasm-micro-runtime/core/iwasm/common/wasm_memory.o \
./src/wasm-micro-runtime/core/iwasm/common/wasm_native.o \
./src/wasm-micro-runtime/core/iwasm/common/wasm_runtime_common.o \
./src/wasm-micro-runtime/core/iwasm/common/wasm_shared_memory.o 

MAP += \
R9A02G021_wamr_interp_fast_mini.map 


# Each subdirectory must supply rules for building sources it contributes
src/wasm-micro-runtime/core/iwasm/common/%.o: ../src/wasm-micro-runtime/core/iwasm/common/%.c
	@echo 'Building file: $<'
	$(file > $@.in,--target=riscv32 -mabi=ilp32 -march=rv32imaczba_zbb_zbs -Oz -ffunction-sections -fdata-sections -flto -fdiagnostics-parseable-fixits -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Waggregate-return -g -std=gnu99 -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen/r_config" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen/r_bsp" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen/general" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/smc_gen/r_pincfg" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/mem-alloc/ems" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/include" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/libraries/libc-builtin" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/common" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/utils" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/platform/include" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/common/arch" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/interpreter" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/mem-alloc" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/iwasm/libraries" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/platform" -I"/home/tdn/wasm_lua_native/R9A02G021_wamr_interp_fast_mini/src/wasm-micro-runtime/core/shared/platform/renesasriscv" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" "$<" -c -o "$@")
	@clang @"$@.in"

