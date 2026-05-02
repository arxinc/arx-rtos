# ARX RTOS – RISC-V (RV32IMAFC) Binary Placeholder

🚧 This directory is reserved for **RISC-V RV32IMAFC ARX RTOS binaries**.

---

## 📦 Status

Binaries for RV32IMAFC targets are **not yet fully available**.
Initial support is being rolled out and will expand in upcoming releases.

---

## 🎯 What to Expect

Once available, this directory will include:

* `*.bin` → Bootable ARX RTOS images for RV32IMAFC platforms
* Execution scripts (e.g., `qemu.bat`) for quick start
* Minimal platform-specific notes

---

## ▶️ Expected Outcome

These binaries will allow you to:

* Run ARX RTOS in a RISC-V RV32IMAFC compatible environment
* Observe boot logs and runtime behavior
* Evaluate a sample workload consisting of **four RTOS tasks**, controlled by a test script

---

## ⚙️ Execution Environment

Initial support will focus on:

* RISC-V emulation using QEMU (`riscv32`, `virt` machine)
* Support for:

  * Integer + atomic instructions (I, M, A)
  * Floating-point operations (F extension)
  * Compressed instructions (C extension)
* Console-based execution (`-nographic`)

👉 Board-specific configurations will be introduced after validation.

---

## 🔄 Roadmap

* Expanded RV32IMAFC platform coverage
* Improved execution scripts and examples
* Validation on real hardware targets with FPU support
* Enhanced documentation for setup and usage

---

## 📌 Note

Initial releases prioritize **emulation (QEMU)** for accessibility and consistency.
Floating-point behavior in emulation may differ slightly from specific hardware implementations.

This placeholder maintains the repository structure and indicates ongoing RV32IMAFC support.
