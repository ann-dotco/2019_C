cmake_minimum_required(VERSION 3.28)

# ------------------------------ Project Config -------------------------------- #
set(CMAKE_PROJECT_NAME "target")


include(cmake/toolchain.cmake)
include(cmake/stm32cubemx.cmake)
project(${CMAKE_PROJECT_NAME} LANGUAGES C CXX ASM)
add_executable(${CMAKE_PROJECT_NAME}.elf)

# ------------------------------ Directory Path ------------------------------ #
set(APP_PATH    "app")
set(BSP_PATH    "bsp")

# ------------------------------- Source Files ------------------------------- #
file(GLOB sources_file 
    "${APP_PATH}/src/*.c" 
    "${BSP_PATH}/src/*.c"
)

# ------------------------------ Target Build -------------------------------- #
target_include_directories(${CMAKE_PROJECT_NAME}.elf PRIVATE
    ${APP_PATH}/inc 
    ${BSP_PATH}/inc 
)

target_sources(${CMAKE_PROJECT_NAME}.elf PRIVATE
    ${sources_file}
)

target_link_libraries(${CMAKE_PROJECT_NAME}.elf PRIVATE
    stm32cubemx
    ${CMAKE_SOURCE_DIR}/mcu/Drivers/CMSIS/DSP/Lib/libarm_cortexM4lf_math.a
)

# -------------- Enable float point support in printf -------------- #
target_link_options(${CMAKE_PROJECT_NAME}.elf PRIVATE -u _printf_float)
target_link_options(${CMAKE_PROJECT_NAME}.elf PRIVATE -specs=nosys.specs)


# ------------------------------DSP Path ------------------------------ #
include_directories(
        mcu/Drivers/CMSIS/DSP/Inc/
    )
    add_compile_definitions(
        ARM_MATH_CM4
    )
 
# ------------------------------- After Build --------------------------------- #
set(hex_file ${CMAKE_PROJECT_NAME}.hex)
set(bin_file ${CMAKE_PROJECT_NAME}.bin)
set(asm_file ${CMAKE_PROJECT_NAME}.s)

add_custom_command(TARGET ${CMAKE_PROJECT_NAME}.elf POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -Oihex $<TARGET_FILE:${CMAKE_PROJECT_NAME}.elf> ${hex_file}
    COMMAND ${CMAKE_OBJCOPY} -Obinary $<TARGET_FILE:${CMAKE_PROJECT_NAME}.elf> ${bin_file}
    COMMAND ${CMAKE_OBJDUMP} -d $<TARGET_FILE:${CMAKE_PROJECT_NAME}.elf> >${asm_file}
    COMMAND ${CMAKE_SIZE} $<TARGET_FILE:${CMAKE_PROJECT_NAME}.elf>
)
