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
### 1.0 ARX Boot Process
#### Overview
This demo validates the ARX boot sequence from platform reset to kernel startup and scheduler activation.  
Executable: [platform]_[boot]_[arxos.bin  ]  
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

### 2.0 Kernel bring-up
#### Overview
This demo validates ARX kernel initialization, subsystem setup, and runtime service activation.  
Executable: [platform]_[kernel]_[arxos.bin  ]  
#### Demonstrated Features
* Kernel initialization
* Core service registration
* Timer initialization
* Scheduler initialization
* Runtime environment setup
#### 1.0 Expected Behavior
The kernel initializes all required subsystems and enters deterministic realtime execution.

---

### 3.0 New task creation
#### Overview
This demo validates ARX task creation, initialization, and scheduler integration.  
Executable: [platform]_[newp]_[arxos.bin  ]  
#### Demonstrated Features
* Static task creation
* Stack allocation
* Priority assignment
* Scheduler insertion
* Task startup
#### Expected Behavior
New tasks are created successfully and scheduled according to assigned priorities.

---

### 4.0 Scheduling behavior
#### Overview
This demo validates ARX deterministic priority-based scheduling behavior under concurrent execution.  
Executable: [platform]_[schd]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* Priority scheduling
* Task preemption
* Realtime execution
* Deterministic scheduling
* Runtime task management
#### Expected Behavior
Higher-priority tasks preempt lower-priority tasks while maintaining deterministic execution order.

---

### 5.0 Task state transition
#### Overview
This demo validates ARX task lifecycle management and scheduler-driven state transitions.  
Executable: [platform]_[state]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* Ready state
* Running state
* Blocked state
* Suspended(Limited Period) state
* Suspended(Unlimited Period) state
* Sleep(Unlimited Period) state
* WAITING transition handling
* Termination state
#### Expected Behavior
Tasks transition correctly between scheduler-managed runtime states.

---

### 6.0 Stack overflow
#### Overview
This demo validates ARX stack overflow detection and runtime protection mechanisms.  
Executable: [platform]_[spovf]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* Stack monitoring
* Overflow detection
* Overflow reporting
#### Expected Behavior
ARX detects stack corruption safely and prevents uncontrolled system behavior.

---
 
### 7.0 Cluster formation
#### Overview
This demo validates ARX: TODO  
Executable: [platform]_[clust]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* TODO
#### Expected Behavior

---

### 8.0 CMD execution infrastructure
#### Overview
This demo validates ARX: TODO  
Executable: [platform]_[cmdinfa]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* TODO
#### Expected Behavior
  
---

### 9.0 Realtime FSM infrastructure
#### Overview
This demo validates ARX: TODO  
Executable: [platform]_[fsminfa]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* TODO
#### Expected Behavior

---

### 10.0 ARX Background processing
#### Overview
This demo validates ARX: TODO  
Executable: [platform]_[bgnd]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* TODO
#### Expected Behavior

---

### 11.0 Temporal and Spatial isolation
#### Overview
This demo validates ARX temporal and spatial isolation mechanisms for protected realtime execution.  
Executable: [platform]_[isolat]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* Temporal isolation
* Spatial isolation
* Memory protection
* Execution partitioning
* Fault containment
#### Expected Behavior
Tasks remain isolated in both execution time and memory space without interfering with other partitions.

---
  
### 12.0 ARX Forced signal-Shutdown, Standby(Idle), Reset
#### Overview
This demo validates ARX: TODO  
Executable: [platform]_[bsirc]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* TODO
#### Expected Behavior
  
---

### 13.0 ARX Forced signal-Resume(Cancellation forced condition)
#### Overview
This demo validates ARX: TODO  
Executable: [platform]_[fcncle]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* TODO
#### Expected Behavior
  
---

### 14.0 Task private signals
#### Overview
This demo validates ARX: TODO  
Executable: [platform]_[pvts]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* TODO
#### Expected Behavior
 
---

### 15.0 FEV demonstration
#### Overview
This demo validates ARX: TODO  
Executable: [platform]_[fevs]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* TODO
#### Expected Behavior
  
---

### 16.0 Task software fault handling
#### Overview
This demo validates ARX task software fault detection and recovery during task execution.  
Executable: [platform]_[tswflt]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Fault reporting to ARX process management
* Initial recovery attempt by associated fault handler(If available)
* Last attempt by error task handler(If available)
* Runtime protection from software logical/hardware faults
#### Expected Behavior
Faulty tasks are detected and isolated without impacting overall system stability.

---

### 17.0 IPC (Interprocess Communication
#### Overview
This demo validates ARX interprocess communication mechanisms between concurrent tasks.  
Executable: [platform]_[ipc]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Message passing
* Task synchronization
* Event signaling
* Communication channels
* Deterministic IPC behavior
#### Expected Behavior
Tasks exchange data safely and deterministically through ARX IPC services.

---

### 18.0 ICC (Inter-Core Communication)
#### Overview
This demo validates ARX communication and synchronization between processor cores.  
Executable: [platform]_[icc]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* Inter-core messaging
* Core synchronization
* Shared resource handling
* Multicore communication
* SMP coordination
#### Expected Behavior
Processor cores exchange data reliably while maintaining synchronization integrity.

---

### 19.0 Wait for event
#### Overview
This demo validates ARX event-driven task synchronization and wake-up handling.  
Executable: [platform]_[wfevt]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Event waiting
* Event signaling
* Task blocking
* Wake-up scheduling
* Synchronization handling
#### Expected Behavior
Tasks block efficiently while waiting for events and resume execution deterministically.

---

### 20.0 Fault handling
#### Overview
This demo validates ARX runtime fault handling and system protection mechanisms.  
Executable: [platform]_[fault]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Fault detection
* Exception processing
* Runtime recovery
* System protection
* Error reporting
#### Expected Behavior
ARX safely detects and handles runtime faults without uncontrolled failures.

---

### 21.0 Exclusive lock
#### Overview
This demo validates ARX exclusive locking mechanisms for protected resource access.  
Executable: [platform]_[excllk]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Exclusive locking to protect resource
* Return immediately if lock not available
#### Expected Behavior
safe to use for Interrupt and Task context, return immediately if lock not available.

---

### 22.0 Mutex Synchronization
#### Overview
Executable: [platform]_[mutex]_[arxos.bin  ]  
This demo validates ARX mutex synchronization using four concurrent tasks and shared critical sections, where each task uses two mutexes to form a protected critical section.

#### Task Configuration
`[Task, Mutex] : [T0, (M0,M1)] [T1, (M2,M3)] [T2, (M3,M4)] [T3, (M1,M4)]`
#### Demonstrated Features
* Mutex lock/unlock
* Critical section protection
* Deadlock avoidance
* Task preemption handling
* Deterministic scheduling
#### Expected Behavior
Tasks compete for shared mutexes while ARX safely synchronizes access to resources without deadlocks or starvation.
  
---

### 23.0 Priority Inversion Handling

#### Overview
Executable: [platform]_[pitest]_[arxos.bin  ]  
This demo validates ARX Priority Inheritance (PI) handling using nine concurrent tasks across High, Medium, and Low priority groups.
High-priority and low-priority tasks share a common mutex, while middle-priority tasks execute without using the shared lock.

#### Priority Configuration
| Priority | Tasks      | Order        |
| -------- | ---------- | ------------ |
| High     | H0, H1, H2 | H0 > H1 > H2 |
| Medium   | M0, M1, M2 | M0 > M1 > M2 |
| Low      | L0, L1, L2 | L0 > L1 > L2 |

#### Shared Resource Configuration
`[Shared Mutex] : [H0,H1,H2,L0,L1,L2]`
`[No Mutex Access] : [M0,M1,M2]`
#### Demonstrated Features
* Priority inversion handling
* Priority inheritance
* Mutex synchronization
* Task preemption control
* Deterministic scheduling
#### Expected Behavior
Medium-priority tasks normally preempt low-priority tasks.
When a high-priority task blocks on a mutex owned by a low-priority task, ARX temporarily boosts the lock owner priority and prevents middle-priority tasks from interfering until the mutex is released.
  
---

### 24.0 Semaphore
#### Overview
This demo validates ARX semaphore-based synchronization between concurrent tasks.  
Executable: [platform]_[sema]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Binary semaphore
* Counting semaphore
* Task synchronization
* Resource coordination
#### Expected Behavior
Tasks synchronize efficiently using semaphore-based coordination mechanisms.

---

### 25.0 Reader-Writer lock
#### Overview
This demo validates ARX reader-writer lock synchronization for shared resource access.  
Executable: [platform]_[rwlk]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Shared read access
* Exclusive write access
* Lock arbitration
* Resource protection
* Concurrent access handling
#### Expected Behavior
Multiple readers execute concurrently while writers maintain exclusive resource ownership.

---

### 26.0 MPU configuration and usage
#### Overview
This demo validates ARX Memory Protection Unit (MPU) configuration and runtime enforcement.  
Executable: [platform]_[mputst]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* MPU region configuration
* Memory isolation
* Access protection
* Fault generation
* Runtime enforcement
#### Expected Behavior
Unauthorized memory accesses are detected and blocked by MPU protection mechanisms.

---

### 27.0 FPU configuration and usage
#### Overview
This demo validates ARX Floating Point Unit (FPU) initialization and runtime usage.  
Executable: [platform]_[fputst]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* FPU initialization
* Floating-point context handling
* Task FPU usage
* Context switching
* Runtime computation
#### Expected Behavior
Floating-point operations execute correctly across multiple concurrent tasks.

---

### 28.0 ARX HAL
#### Overview
This demo validates the ARX Hardware Abstraction Layer (HAL) interface and platform services.  
Executable: [platform]_[hal]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Hardware abstraction
* Peripheral access
* Platform portability
* Driver interface
* System services
#### Expected Behavior
ARX provides consistent hardware-independent runtime services across supported platforms.

---

### 29.0 BSP development
#### Overview
This demo validates Board Support Package (BSP) initialization and platform integration.  
Executable: [platform]_[bspdev]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Board initialization
* Clock setup
* Memory initialization
* Peripheral configuration
* Platform bring-up
#### Expected Behavior
The BSP initializes platform hardware correctly and enables ARX runtime operation.

---

### 30.0 Interrupt handling
#### Overview
This demo validates ARX interrupt processing and realtime interrupt response behavior.  
Executable: [platform]_[isr]_[arxos.bin  ]  
> Status: Planned / Upload Pending
#### Demonstrated Features
* ISR execution
* Interrupt dispatch
* Nested interrupts
* Interrupt latency
* Scheduler interaction
#### Expected Behavior
Interrupts are handled deterministically with minimal latency and correct task synchronization.

---

### 31.0 Network bring-up
#### Overview
This demo validates ARX network stack initialization and runtime connectivity.  
Executable: [platform]_[net]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Network initialization
* Interface configuration
* Packet handling
* Driver integration
* Runtime communication
#### Expected Behavior
ARX initializes networking services and establishes stable communication successfully.
  
---

### 32.0 ARX power management
#### Overview
This demo validates ARX runtime power management and low-power state transitions.  
Executable: [platform]_[pwm]_[arxos.bin  ]  
> Status: Planned / Upload Pending  
#### Demonstrated Features
* Idle management
* Sleep states
* Wake-up handling
* Power optimization
* Runtime power control
#### Expected Behavior
ARX transitions efficiently between active and low-power states while maintaining system stability.

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
