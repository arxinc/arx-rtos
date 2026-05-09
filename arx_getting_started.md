# ARX RTOS – Getting Started

This guide explains how to **run prebuilt ARX RTOS binaries**.  
⚠️ This version does **not cover build environment setup**.

---

## Current Status

* ARX RTOS is being released in stages
* Prebuilt binaries (`*.bin`) will be uploaded progressively for multiple architectures / SoCs
* ✅ **Currently available**:

  * RISC-V 64 bits (Shakti Class-C)

---

## What You Can Do Now

You can:

* Run ARX RTOS binaries using an emulator (QEMU)
* Validate basic functionality
* Explore runtime behavior

You cannot yet:

* Build from source
* Customize kernel configuration

---

## Requirements

To run the provided `.bin` files, ensure the following:

### 1. QEMU (ARM/RISC-V support)

Install QEMU with ARM/RISC-V support.

#### Verify installation:

```bash
qemu-system-arm --version
qemu-system-aarch64 --version
qemu-system-riscv32 --version
qemu-system-riscv64 --version
```

---

### 2. Windows Users

A helper script will be provided:

```text
qemu.bat
```

This script:

* Launches QEMU with correct parameters
* Loads the ARX binary automatically

👉 No manual command setup required

---

### 3. Linux Users (manual execution)

You can run binaries using:

```bash
qemu-system-riscv32 \
  -machine virt \
  -nographic \
  -bios none \
  -serial mon:stdio \
  -kernel arxos.bin

qemu-system-riscv64 \
  -machine virt \
  -nographic \
  -bios none \
  -serial mon:stdio \
  -kernel arxos.bin
```

(Exact command may vary per release, please check the compatibilty)

---

## Running the Binary

### Option A: Using provided script (recommended)
The repository includes a helper script:
```text
qemu.bat
```
This script automatically launches QEMU and loads the ARX RTOS binary.

---

### Step 1: Configure `qemu.bat`

Before executing the script, update the following paths inside `qemu.bat`:

- QEMU installation path
- ARX RTOS binary path (`arxos.bin`)

Example configuration:

```bat
set QEMU_PATH_RISCV=C:\path\to\qemu\bin
set ARXIMAGE=C:\path\to\arxos.bin
```

---

### Step 2: Open Command Prompt with Administrator Privileges

- Open the Windows Start Menu
- Search for:

```text
cmd
```

- Right-click **Command Prompt**
- Select:

```text
Run as Administrator
```
### Step 3: Change Directory

Navigate to the directory containing:

- `qemu.bat`
- `arxos.bin`

Example:

```cmd
cd C:\path\arx-rtos\arxos\arch\riscv\rv64\rv64gc\shakti_c
```

---

### Step 4: Execute the Binary

Run the following command:

```cmd
qemu.bat riscv64 shakti_c
```

---

### Option B: Manual (Linux / advanced users)

1. Open terminal
2. Navigate to binary location
3. Run QEMU command (see above)

---

## Directory Layout (Binary only)

```text
```text
ARX_SDK_A2026.04.30/  
├── arxos/
│   ├── arch/
│   │   ├── arm/
│   │   │   ├── arm32/
│   │   │   │   ├── cm4/
│   │   │   │   |   ├── stm32f407vg/
│   │   │   │   │   │   ├── arxos.bin
│   │   │   │   │   │   ├── README.md
│   │   │   │   │   │   │
│   │   │   │   │   ├── <Future Upload>/
│   │   │   │   ├── <Future ARCH>/
│   │   │   ├── arm64/
│   │   │       ├── a53/
│   │   │           ├── virt/
│   │   │           │   ├── arxos.bin
│   │   │           │   ├── README.md
│   │   │           │   
│   │   │           ├── <Future Upload>/
│   │   │                   
│   │   ├── riscv/
│   │   │   ├── rv32/
│   │       │   ├── rv32ima/
│   │       │   │   ├── sifivefe310/
│   │       │   │   │   ├── arxos.bin
│   │       │   │   │   ├── README.md
│   │       │   │   ├── <Future Upload>/
│   │       │   │
│   │       │   ├── rv32imac/
│   │       │   ├── rv32imafc/
│   │       │   ├── rv32imafdc/
│   │       │   
│   │       ├── rv64/
│   │       │   ├── rv64gc/
│   │       │   │   ├── shakti-c/
│   │       │   │   │   ├── shakti_c_kernel_arxos.bin
│   │       │   │   │   ├── qemu.bat
│   │       │   │   │   ├── README.md
│   │       │   │   ├── <Future Upload>/
│   │       │   │
│   │       │   ├── rv64imac/
│   │       │   │   ├── virt/
│   │       │   │   │   ├── arxos.bin/
│   │       │   │   │   ├── README.md
│   │       │   │   ├── <Future Upload>/
│   │
│   ├── tools/
│
├── docs/
│   ├── arx_documents.md
│   ├── arx_getting_started.md
│    
├── legal/
│   ├── COPYING
│   ├── LICENSE
│   ├── LICENSE_COMMERCIAL
│   ├── NOTICE
│   
├── README.md
```

---

## Future Updates

* Additional architectures will be added progressively:

  * ARM Cortex variants
  * Other RISC-V platforms
* Improved execution scripts
* Full build and integration documentation

---

## Notes

* These binaries are **evaluation builds**
* Interfaces and behavior may change
* Performance in QEMU may differ from real hardware

---

## Troubleshooting

### QEMU not found

* Ensure QEMU is installed and added to PATH

### No output in terminal

* Check if `-nographic` is used
* Ensure correct binary is loaded

### Script not working (Windows)

* Run from Command Prompt instead of double-click
* Verify QEMU installation

---

## Summary

* No build setup required
* Use provided `.bin` + QEMU
* Start with RISC-V Shakti Class-C
* More platforms coming soon

---

More detailed documentation (build system, APIs, customization) will be added in upcoming releases.
