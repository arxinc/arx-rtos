# ARX RTOS – RISC-V (RV64GC) Binary Placeholder

This directory is reserved for **RISC-V RV64GC ARX RTOS binaries**.

---

## Status

Binaries for RV64GC targets are **not yet available**.
Support will be added in upcoming releases.

---

## What to Expect

Once available, this directory will include:

* `*.bin` / `*.elf` → Bootable ARX RTOS images for RV64GC platforms
* Execution scripts (e.g., `qemu.bat`) for quick start
* Minimal platform-specific notes

---

## Expected Outcome

These binaries will allow you to:

* Run ARX RTOS in a RISC-V RV64GC compatible environment
* Observe system boot and runtime behavior
* Evaluate a sample workload consisting of **four RTOS tasks**, controlled by a test script

---

## Execution Environment

Initial support will focus on:

* RISC-V 64-bit emulation using QEMU (`riscv64`, `virt` machine)
* Support for:

  * Base 64-bit integer + atomic instructions (I, M, A)
  * Floating-point (single + double precision: F, D)
  * Compressed instructions (C extension)
* Console-based execution (`-nographic`)

👉 Board-specific configurations will be introduced after validation.

---

## Roadmap

* Expanded RV64GC platform coverage
* Validation on real hardware targets
* Improved execution scripts and examples
* Enhanced documentation for setup and usage

---

## Note

Initial releases prioritize **emulation (QEMU)** for accessibility and consistency.
Behavior in emulation may differ slightly from specific hardware implementations.

This placeholder maintains the repository structure and indicates upcoming RV64GC support.
