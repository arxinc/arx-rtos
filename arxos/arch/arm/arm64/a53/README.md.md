# ARX RTOS – ARM32 (Cortex-M33) Binary Placeholder

This directory is reserved for **ARM32 (Cortex-M33) ARX RTOS binaries**.

---

## Status

Binaries for Cortex-M33 targets are **not yet uploaded**.
Support will be added in upcoming releases.

---

## What to Expect

Once available, this directory will include:

* `*.bin` → Flashable ARX RTOS images for Cortex-M33 platforms
* Execution notes for emulator-based testing (QEMU)
* Optional run/debug scripts

---

## Expected Outcome

These binaries will allow you to:

* Run ARX RTOS in a Cortex-M33 compatible emulation environment
* Observe boot logs and runtime behavior
* Evaluate a sample workload consisting of **four RTOS tasks**, controlled by a test script

---

## ⚙️ Execution Environment

Initial support will focus on:

* Generic ARM Cortex-M class emulation using QEMU
* Configurations aligned with Cortex-M33 architecture

👉 TrustZone (secure/non-secure execution) support will be introduced progressively.

---

## Roadmap

* Enhanced Cortex-M33 emulation configurations
* Gradual introduction of TrustZone-enabled scenarios
* Validation on real hardware platforms
* Improved tooling and execution scripts

---

## Note

Due to limited direct board support for Cortex-M33 in QEMU, initial releases will focus on **emulated environments rather than specific development boards**.

This placeholder maintains the repository structure and indicates upcoming Cortex-M33 support.
