# ARX RTOS – ARM32 (Cortex-M4) Evaluation Binaries

This directory contains prebuilt **ARX RTOS ARM32 (Cortex-M4)** evaluation binaries for supported development boards.

---

## Available Binary

### stm32_pitest_arxos.bin

Target Platform:

* STM32F407VG (Cortex-M4)

Description:

* Demonstrates ARX RTOS task scheduling and PI (Priority Inheritance) handling.
* Intended for evaluation and validation of core RTOS functionality.

---

## Hardware Setup

### UART Connection

| STM32F407VG | USB-TTL Adapter |
| ----------- | --------------- |
| PD5 (TX)    | RX              |
| PD6 (RX)    | TX              |
| GND         | GND             |

A USB-to-TTL serial adapter is required to observe runtime output and test results.

---

## Validation Procedure

1. Program `stm32_pitest_arxos.bin` onto a compatible STM32F407VG board.
2. Connect a USB-to-TTL adapter using the UART wiring shown above.
3. Open a serial terminal on the host PC.
4. Reset the board and observe the UART output.

Expected behavior:

* Successful ARX RTOS startup.
* Task creation and scheduling messages.
* Priority Inheritance (PI) test execution logs.
* Runtime status information through the UART console.

---

## Roadmap

Additional Cortex-M4 evaluation binaries may be released for:

* STM32F407VG Discovery
* STM32 Nucleo-F401RE

---

## Note

These binaries are provided for demonstration and evaluation purposes only.

The ARX RTOS core source code is proprietary and maintained in a private repository. Source code is not included with binary releases.
