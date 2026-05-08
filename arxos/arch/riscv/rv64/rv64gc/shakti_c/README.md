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
- Provide the full path of the bin folder to the the QEMU executable `qemu-system-riscv64.exe`

Example:
```text
set QEMU_PATH_RISCV=C:/< Yours PC >/qemu-riscv/7.0.0-1.1/.content/bin
```

---

## Step 2: Update Binary Path

Update the ARX RTOS binary path
```text
arxos.bin
```
Example:
```text
set ARXIMAGE=C:\arx_test\arxos.bin
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
## Demo Task Configuration

### Global Configuration

| Parameter          | Value                 |
|--------------------|-----------------------|
| Minimum Stack Size | `4096 Bytes`          |

---

### Task Details

| Task   | WCET | Release Period | Deadline | Priority | Task Class |
|--------|------|----------------|----------|----------|------------|
| Task-1 | `2`  | `5`            | `3`      | `0`      | Event      |
| Task-2 | `2`  | `10`           | `5`      | `0`      | Periodic   |
| Task-3 | `2`  | `20`           | `7`      | `0`      | Front-End  |
| Task-4 | `2`  | `40`           | `9`      | `0`      | Background |

---

### Parameter Description

| Parameter      | Description                     |
|----------------|---------------------------------|
| WCET           | Worst Case Execution Time       |
| Release Period | Periodicity of task activation  |
| Deadline       | Maximum allowed completion time |
| Priority       | Static scheduling priority      |
# Expected Console Observation

Typical console activity may include:

```console
+------------------------------------------------------------------------------+
| Welcome to ARX™.                                                             |
| Copyright © 2026 by ARX Software System NITK STEP Surathkal.                 |
| ARX (Advanced Realtime Xecutables), A Preemptive RTOS.                       |
| Lightweight | Deterministic | Scalable                                       |
+------------------------------------------------------------------------------+
:
:
[ DONE ] Kernel Initialization.
[ KERN ] Entering scheduler...

[     0.064s][C0][USR][PID: 1][INFO]: Event CLS
[     0.066s][C0][USR][PID: 2][INFO]: Periodic
[     0.068s][C0][USR][PID: 3][INFO]: Front-end
[     0.070s][C0][USR][PID: 4][INFO]: Background
```

The exact output may vary depending on build configuration.

---
