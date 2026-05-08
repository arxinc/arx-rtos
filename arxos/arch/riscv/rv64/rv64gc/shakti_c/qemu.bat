::===================================================================================
::
::                 A R X    R E A L    T I M E    M A N A G E M E N T
::
:: FILE:        qemu.bat
::
:: DESCRIPTION: QEMU execution script for ARX RTOS.
::              Provides a command-line wrapper for launching ARX RTOS images
::              within a QEMU-based virtual environment.
::
::              This script enables:
::              - Execution of ARX kernel and application images in emulation
::              - Selection of target architecture and machine configuration
::              - Passing of kernel images, binaries, or disk images to QEMU
::              - Setup of virtual peripherals such as serial console output
::
::              It is intended for development, testing, and debugging of ARX
::              without requiring physical hardware.
::
::              The script may be customized to support different architectures
::              (e.g., ARM, RISC-V) and runtime configurations as needed.
::
::              This file serves as a convenience wrapper and does not modify
::              the build process or system configuration.
::
:: TARGET:      Host development environment (QEMU emulation layer)
::
::===================================================================================

@echo off

:: Set executable path here as  set ARXIMAGE="../../arx_test/arxos.bin"
set ARXIMAGE=

:: Set QEMU path here as set QEMU_PATH_RISCV=C:/Users/Yours/AppData/Roaming/xPacks/@xpack-dev-tools/qemu-riscv/7.0.0-1.1/.content/bin
set QEMU_PATH_RISCV=
set QEMU_PATH_ARM=

set QEMU_RV32=%QEMU_PATH_RISCV%/qemu-system-riscv32.exe
set QEMU_RV64=%QEMU_PATH_RISCV%/qemu-system-riscv64.exe
set QEMU_ARM32=%QEMU_PATH_ARM%/qemu-system-gnuarmeclipse.exe
set QEMU_ARM64=%QEMU_PATH_ARM%/qemu-system-gnuarmeclipse.exe

set ARCH=%1
set BOARD=%2

if "%ARCH%"=="" goto usagehelp
if "%BOARD%"=="" goto usagehelp

echo [QEMU] ARCH=%ARCH% BOARD=%BOARD%

REM -------------------------------------------------------------------------------
REM RISC-V 32
REM -------------------------------------------------------------------------------


REM -------------------------------------------------------------------------------
REM RISC-V 64
REM Please use -s -S  and pause to start debug with debugger.
REM -------------------------------------------------------------------------------
if "%ARCH%"=="riscv64" (
    if "%BOARD%"=="virt" (
        %QEMU_RV64% ^
        -machine virt ^
        -smp 4 ^
        -cpu rv64 ^
        -nographic ^
        -bios none ^
        -kernel "%ARXIMAGE%" ^
	    
        goto endofbat
    )

    if "%BOARD%"=="shakti_c" (
        %QEMU_RV64% ^
        -machine shakti_c ^
        -smp 1 ^
        -cpu shakti-c ^
        -nographic ^
        -bios "%ARXIMAGE%" ^
        -kernel "%ARXIMAGE%" ^
	    
        goto endofbat
    )
)

REM -------------------------------------------------------------------------------
REM ARM 32
REM -------------------------------------------------------------------------------

REM -------------------------------------------------------------------------------
REM ARM 64
REM -------------------------------------------------------------------------------

echo [ERROR] Unsupported ARCH/BOARD
goto usagehelp


:usagehelp
echo Usage: qemu.bat ^<arch^> ^<board^>
echo Example:
echo   qemu.bat riscv32 virt
echo   qemu.bat arm cortex-m4
exit /b 1

:endofbat
echo [QEMU] Done
