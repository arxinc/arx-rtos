# ARX RTOS – RISC-V (RV64GC) Binary Placeholder

This directory is reserved for **RISC-V RV64GC ARX RTOS binaries**.

---

## Status
✓ RISC-V 64-bit (Shakti C-Class)  
✓ RISC-V 64-bit (QEMU VIRT SMP)

Support for additional boards and platforms will be added progressively.


---

## What to Expect

Each respective folder will contain binaries in the following format:

```text
[board]_[subsys]_arxos.bin
```

Example:

```text
shakti_c_fsigs_arxos.bin
```
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

## Note

Initial releases prioritize **emulation (QEMU)** for accessibility and consistency.
Behavior in emulation may differ slightly from specific hardware implementations.

This placeholder maintains the repository structure and indicates upcoming RV64GC support.
