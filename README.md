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

---
### ARX Boot Process
#### Overview
Executable: [platform]_[boot]_[arxos.bin  ]  
This demo validates the ARX boot sequence from platform reset to kernel startup and scheduler activation.

#### Demonstrated Features
* Early platform/BSP initialization
* Memory initialization
* Kernel startup sequence
* Device driver initialization
* User task creation
* Scheduler activation
* System bring-up flow

#### Expected Behavior
ARX initializes core platform services, starts the kernel, and transitions cleanly into multitasking operation.

---

### Kernel bring-up
#### Overview
Executable: [platform]_[kernel]_[arxos.bin  ]  
This demo validates ARX kernel initialization, subsystem setup, and runtime service activation.

#### Demonstrated Features
* Kernel initialization
* Core service registration
* Timer initialization
* Scheduler initialization
* Runtime environment setup

#### Expected Behavior
The kernel initializes all required subsystems and enters deterministic realtime execution.

---

### New task creation
#### Overview

This demo validates ARX task creation, initialization, and scheduler integration.

#### Demonstrated Features
* Static task creation
* Stack allocation
* Priority assignment
* Scheduler insertion
* Task startup
#### Expected Behavior
New tasks are created successfully and scheduled according to assigned priorities.

---

### Scheduling behavior
  
---

### Task state transition
  
---

### Stack overflow
  
---
 
### Cluster formation
  
---


### CMD execution infrastructure
  
---

### Realtime FSM infrastructure
  
---


### ARX Background processing
  
---

### Temporal and Spatial isolation
  
---
  
### ARX Forced signal-Shutdown, Standby(Idle), Reset
  
---

### ARX Forced signal-Resume(Cancellation forced condition)
  
---

### Task private signals
  
---

### FEV demonstration
  
---

### Task software fault handling
  
---

### IPC (Interprocess Communication
  
---

### ICC (Inter-Core Communication)

---

### Wait for event
  
---

### Fault handling
  
---

### Exclusive lock
  
---


## Mutex Synchronization
### Overview

This demo validates ARX mutex synchronization using four concurrent tasks and shared critical sections, where each task uses two mutexes to form a protected critical section.

### Task Configuration
`[Task, Mutex] : [T0, (M0,M1)] [T1, (M2,M3)] [T2, (M3,M4)] [T3, (M1,M4)]`


### Demonstrated Features

* Mutex lock/unlock
* Critical section protection
* Deadlock avoidance
* Task preemption handling
* Deterministic scheduling

### Expected Behavior

Tasks compete for shared mutexes while ARX safely synchronizes access to resources without deadlocks or starvation.
  
---

## Priority Inversion Handling

### Overview

This demo validates ARX Priority Inheritance (PI) handling using nine concurrent tasks across High, Medium, and Low priority groups.
High-priority and low-priority tasks share a common mutex, while middle-priority tasks execute without using the shared lock.

### Priority Configuration

### Priority Configuration

| Priority | Tasks      | Order        |
| -------- | ---------- | ------------ |
| High     | H0, H1, H2 | H0 > H1 > H2 |
| Medium   | M0, M1, M2 | M0 > M1 > M2 |
| Low      | L0, L1, L2 | L0 > L1 > L2 |

### Shared Resource Configuration

`[Shared Mutex] : [H0,H1,H2,L0,L1,L2]`

`[No Mutex Access] : [M0,M1,M2]`

### Demonstrated Features

* Priority inversion handling
* Priority inheritance
* Mutex synchronization
* Task preemption control
* Deterministic scheduling

### Expected Behavior

Medium-priority tasks normally preempt low-priority tasks.
When a high-priority task blocks on a mutex owned by a low-priority task, ARX temporarily boosts the lock owner priority and prevents middle-priority tasks from interfering until the mutex is released.
  
---

### Semaphore
  
---

### Reader-Writer lock
  
---


### MPU configuration and usage
  
---

### FPU configuration and usage
  
---

### ARX HAL
  
---

### BSP development
  
---

### Interrupt handling
  
---

### Network bring-up
  
---

### ARX power management

---

## Documentation
(Currently in setup phase)  
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
