# ARX RTOS – RISC-V (RV32IMAFDC) Binary Placeholder

🚧 This directory is reserved for **RISC-V RV32IMAFDC ARX RTOS binaries**.

---

## 📦 Status

Binaries for RV32IMAFDC targets are **not yet fully available**.
Initial support is being rolled out and will expand in upcoming releases.

---

## 🎯 What to Expect

Once available, this directory will include:

* `*.bin` → Bootable ARX RTOS images for RV32IMAFDC platforms
* Execution scripts (e.g., `qemu.bat`) for quick start
* Minimal platform-specific notes

---

## ▶️ Expected Outcome

These binaries will allow you to:

* Run ARX RTOS in a RISC-V RV32IMAFDC compatible environment
* Observe boot logs and runtime behavior
* Evaluate a sample workload consisting of **four RTOS tasks**, controlled by a test script

---

## ⚙️ Execution Environment

Initial support will focus on:

* RISC-V emulation using QEMU (`riscv32`, `virt` machine)
* Support for:

  * Integer and atomic instructions (I, M, A)
  * Single and double-precision floating point (F, D extensions)
  * Compressed instructions (C extension)
* Console-based execution (`-nographic`)

👉 Board-specific configurations will be introduced after validation.

---

## 🔄 Roadmap

* Expanded RV32IMAFDC platform coverage
* Improved execution scripts and examples
* Validation on hardware targets with FPU (single + double precision)
* Enhanced documentation for setup and usage

---

## 📌 Note

Initial releases prioritize **emulation (QEMU)** for accessibility and consistency.
Floating-point behavior (especially double precision) may vary slightly between emulation and hardware implementations.

This placeholder maintains the repository structure and indicates ongoing RV32IMAFDC support.
