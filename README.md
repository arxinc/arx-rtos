# ARX™ - Advanced Realtime Xecutables

**ARX™** is a proprietary, deterministic real-time operating system (RTOS) designed for embedded systems and performance-critical systems.  
It is built from first principles with a focus on predictability, low overhead, and architectural clarity.

## Supported Architectures  
* **ARM**
    * **ARM32:** Support for legacy and deterministic M/R-profile cores.
    * **ARM64:** High-performance 64-bit support (v8-A/R architectures).
* **RISC-V**
    * **RISC-V 32:** Optimized for resource-constrained microcontrollers and IoT devices.
    * **RISC-V 64:** Support for a wide range of RISC-V 64-bit cores.
    - Validated on **SHAKTI C-Class** (Indian Indigenous SoC) and QEMU Virtual platforms.
    - Portable and extensible for custom RISC-V implementations.
    
## Key Features
* **Deterministic Scheduler:** Priority-based preemptive scheduling.
* **Dual-License Model:** GPLv3 for community use; Commercial for proprietary products.
* **Lightweight:** Designed for memory-constrained environments (MPU-ready).
* **Developer Efficiency:** Engineered for simplicity—lowering effort, cost, and time-to-market.

## ARX Status
- Active development (core implementation is private).

## SDK & Distribution
- The SDK implementation is maintained in a private repository.
- This public repository provides documentation, architecture insights, and project overview .
- Demo-ready binaries will be released here soon.  

## Roadmap
Prebuilt demonstration binaries are being added progressively to help users quickly evaluate ARX RTOS features,  
platform bring-up, and kernel capabilities.  
Current planned demonstration coverage includes:
### System and Kernel

* ARX boot process
* Kernel bring-up
* New task creation
* Scheduling behavior
* Task state transition
* Stack overflow
* Cluster formation
* CMD execution infrastructure
* Realtime FSM infrastructure
* ARX Background processing
* Temporal and Spatial isolation

### Signals and Communication

* ARX Forced signal-Shutdown, Standby(Idle), Reset
* ARX Forced signal-Resume(Cancellation forced condition)
* Task private signals
* FEV demonstration
* Task software fault handling
* IPC (Interprocess Communication)
* ICC (Inter-Core Communication)
* Wait for event
* Fault handling

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

## Documentation
(currently in setup phase)  
Please refer to the following documents for detailed explanations:  

- [📖 ARXOS Overview](https://arxos.in/documents/arxos.pdf)  
  Introduction to ARXOS architecture, design principles, and real-time capabilities.  

- [📦 ARX Release Package](https://arxos.in/documents/arx_rlz_pkg.pdf)  
  Detailed explanation of each directory, file, and build component in the ARX source tree.  
  
- [⚙️ Environment Setup Guide](https://arxos.in/documents/arx_env_setup.pdf)  
  Toolchains, IDE setup, and QEMU configuration for getting started with ARXOS.  

- [🛠 Build & Configuration Guide](https://arxos.in/documents/arx_build_cfg.pdf)  
  Instructions for building ARX, configuring targets, and enabling kernel features.  

- [📘 ARXOS API Reference](https://arxos.in/documents/arxapis.pdf)  
  Detailed documentation of ARX system calls, services, and real-time APIs.  

- [🔌 ARX HAL Guide](https://arxos.in/documents/arxhal.pdf)  
  Hardware Abstraction Layer details — drivers, board bring-up, and hardware access.  

- [🔄 Porting Guide](https://arxos.in/documents/arxport.pdf)  
  Steps and best practices to port ARXOS to new boards and architectures.  

- [🐞 Debugging Guide](https://arxos.in/documents/arxdbg.pdf)  
  Techniques for debugging with GDB, QEMU, and logging tools.  

- [📝 ARX Coding Guidelines](https://arxos.in/documents/arxcoding.pdf)  
  Coding style, conventions, and contribution standards for ARX development.   

## Licensing
ARX is dual-licensed by **ARX Software System**. 

---
© 2026 ARX Software System. All rights reserved.
