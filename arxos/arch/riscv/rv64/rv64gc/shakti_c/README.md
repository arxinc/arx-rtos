# ARX RTOS – RV64 Shakti Class-C Binary Testing Procedure on QEMU

---

## Overview

This document describes the procedure to execute and test the ARX RTOS RV64 Shakti Class-C binary using QEMU.
The provided binary includes:

* 4 ARX tasks, Each class 1 task is built with executable
* System-level forced signals(Shutdown and Forced Idle) are asserted randomly from Interrupt Context.
* Periodic class task released every 10 ms.

---

# Prerequisite

Ensure the following files are available in the same folder:

* `arxos.bin`
* `qemu.bat`

Also ensure that:

* QEMU for RISC-V is installed

---

# Configuration Steps

## Step 1: Update QEMU Path

Open the file:

```text
qemu.bat
```
- Update the QEMU executable path
- Provide the full path to the QEMU executable.

Example:
```text
set QEMU_PATH=C:\qemu\qemu-system-riscv64.exe
```

---

## Step 2: Update Binary Path

Update the ARX RTOS binary path
```text
arxos.bin
```
Example:
```text
set ARX_BIN=C:\arx_test\arxos.bin
```

---

# Execution Procedure

## Step 3: Open Command Prompt with Administrator Privileges

* Open Windows Start Menu
* Search for:

```text
cmd
```

* Right-click Command Prompt
* Select:

```text
Run as Administrator
```

---

## Step 4: Change Directory

Navigate to the folder containing:

* `arxos.bin`
* `qemu.bat`

Example:

```text
cd C:\arx_test
```

---

## Step 5: Execute QEMU Launch Command

Run the following command:

```text
C:\Users\yours\Desktop\arx_test>qemu.bat riscv64 shakti_c
```

---

# Expected Behavior

After execution:

* QEMU will start the RV64 Shakti Class C platform
* ARX RTOS boot logs will appear on the console
* Task scheduling activity should be visible
* ISR-triggered system calls and assertions will execute
* Console output should indicate successful initialization and task execution

---

# Notes

* Ensure no other application is using the configured QEMU ports/resources
* Administrator privilege is mandatory for proper execution
* Any boot failure or assertion output should be captured and shared for analysis

---

# Expected Console Observation

Typical console activity may include:

```text
ARX boot banner
[ DONE ] Kernel Initialization.
[ KERN ] Entering scheduler...
```

The exact output may vary depending on build configuration.
---

This placeholder maintains the repository structure and indicates upcoming RV64GC support.
