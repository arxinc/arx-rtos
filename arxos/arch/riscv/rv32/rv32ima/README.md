# ARX RTOS – RISC-V (RV32IMA) Binary Placeholder

This directory is reserved for **RISC-V RV32IMA ARX RTOS binaries**.

---

## Status

Binaries for RV32IMA targets are **not yet fully available**.
Initial support is being rolled out and will expand in upcoming releases.

---

## What to Expect

Once available, this directory will include:

* `*.bin` → Bootable ARX RTOS images for RV32IMA platforms
* Execution scripts (e.g., `qemu.bat`) for quick start
* Minimal platform-specific notes

---

## Expected Outcome

These binaries will allow you to:

* Run ARX RTOS in a RISC-V RV32IMA compatible environment
* Observe boot logs and runtime behavior
* Evaluate a sample workload consisting of **four RTOS tasks**, controlled by a test script

---

## Execution Environment

Initial support will focus on:

* RISC-V emulation using QEMU (`riscv32`, `virt` machine)
* Console-based execution (`-nographic`)

👉 Board-specific configurations will be introduced after validation.

---

## Roadmap

* Expanded RV32IMA platform coverage
* Improved execution scripts and examples
* Validation on real hardware targets
* Enhanced documentation for setup and usage

---

## Note

Initial releases prioritize **emulation (QEMU)** for accessibility and consistency.
Hardware-specific support will be added progressively.

This placeholder maintains the repository structure and indicates ongoing RV32IMA support.
