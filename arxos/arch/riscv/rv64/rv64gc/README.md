# ARX RTOS – RISC-V (RV64GC) Binary Placeholder

This directory is reserved for **RISC-V RV64GC ARX RTOS binaries**.

---

## Status

- Shakti-C support is currently available
- Other binaries will be added progressively in upcoming releases


---

## What to Expect

Each respective folder will contain binaries in the following format:  
board_subsys_arxos.bin

Example:
shakti_c_kernel_arxos.bin

The directory may also include:
qemu.bat → QEMU execution helper script  
Platform-specific execution notes  
Supporting configuration files(If Any)    


---

## Expected Outcome

These binaries will allow you to:

* Run ARX RTOS in a RISC-V RV64GC compatible environment
* Observe system boot and runtime behavior
* Evaluate a sample workload consisting of **four RTOS tasks**, controlled by a test script
* Validate task scheduling and ISR-triggered forced system signals

---

## Execution Environment

Initial support will focus on:

* RISC-V 64-bit emulation using QEMU (`riscv64`, `Shakti-C`, `virt` machine)
* Shakti-C compatible configurations
* Console-based execution (`-nographic`)

---

## Roadmap
Prebuilt demonstration binaries are being added progressively to help users quickly evaluate ARX RTOS features, platform bring-up, and kernel capabilities.
Current planned demonstration coverage includes:
### System and Kernel

* ARX boot process
* Kernel bring-up
* New task creation
* Scheduling behavior
* Task state transition test
* Stack overflow test
* Cluster formation
* CMD execution infrastructure
* Realtime FSM
* ARX Background processing

### Signals and Communication

* ARX Forced signal-Shutdown
* ARX Forced signal-Standby(Idle)
* ARX Forced signal-Reset
* ARX Forced signal-Cancellation
* Task private signals
* FEV demonstration
* Task software fault handling
* IPC (Interprocess Communication)
* ICC (Inter-Core Communication)
* Wait for event

### Synchronization Mechanisms

* Exclusive lock
* Mutex
* Semaphore
* Reader-Writer lock

### Memory and Protection

* MPU configuration and usage
* FPU configuration and usage

### Hardware and BSP

* ARX HAL
* BSP development
* Interrupt handling
* Network bring-up

### Power and Performance

* ARX power management
* PI test

---

## Note

Initial releases prioritize **emulation (QEMU)** for accessibility and consistency.
Behavior in emulation may differ slightly from specific hardware implementations.

This placeholder maintains the repository structure and indicates upcoming RV64GC support.
