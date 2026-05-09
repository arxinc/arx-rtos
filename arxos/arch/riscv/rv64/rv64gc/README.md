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

👉 Board-specific configurations will be introduced after validation.

---

## Roadmap

* Expanded RV64GC platform coverage
* Additional board-specific binaries
* Validation on real hardware targets
* Improved execution scripts and examples
* Enhanced documentation for setup and usage

---

## Note

Initial releases prioritize **emulation (QEMU)** for accessibility and consistency.
Behavior in emulation may differ slightly from specific hardware implementations.

This placeholder maintains the repository structure and indicates upcoming RV64GC support.
