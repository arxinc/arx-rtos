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

## 🎯 What You Can Do Now

You can:

* Run ARX RTOS binaries using an emulator (QEMU)
* Validate basic functionality
* Explore runtime behavior

You cannot yet:

* Build from source (documentation pending)
* Customize kernel configuration

---

## 🧰 Requirements

To run the provided `.bin` files, ensure the following:

### 1. QEMU (ARM/RISC-V support)

Install QEMU with ARM/RISC-V support.

#### Verify installation:

```bash
qemu-system-riscv32 --version
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
  -kernel arxos.bin
```

(Exact command may vary per release)

---

## ▶️ Running the Binary

### Option A: Using provided script (recommended)

```text
qemu.bat
```

* Double-click or run via terminal
* QEMU will start and load the binary

---

### Option B: Manual (Linux / advanced users)

1. Open terminal
2. Navigate to binary location
3. Run QEMU command (see above)

---

## 📂 Directory Layout (Binary only)

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
│   │   │   │   │   │   ├── bin_desc.md
│   │   │   │   │   │   │
│   │   │   │   │   ├── <Future Upload>/
│   │   │   │   ├── <Future ARCH>/
│   │   │   ├── arm64/
│   │   │       ├── a53/
│   │   │           ├── virt/
│   │   │           │   ├── arxos.bin
│   │   │           │   ├── bin_desc.md
│   │   │           │   
│   │   │           ├── <Future Upload>/
│   │   │                   
│   │   ├── riscv/
│   │   │   ├── rv32/
│   │       │   ├── rv32ima/
│   │       │   │   ├── sifivefe310/
│   │       │   │   │   ├── arxos.bin
│   │       │   │   │   ├── bin_desc.md
│   │       │   │   ├── <Future Upload>/
│   │       │   │
│   │       │   ├── rv32imac/
│   │       │   ├── rv32imafc/
│   │       │   ├── rv32imafdc/
│   │       │   
│   │       ├── rv64/
│   │       │   ├── rv64gc/
│   │       │   │   ├── sifiveu54/
│   │       │   │   │   ├── arxos.bin/
│   │       │   │   │   ├── bin_desc.md
│   │       │   │   ├── <Future Upload>/
│   │       │   │
│   │       │   ├── rv64imac/
│   │       │   │   ├── shakti-c/
│   │       │   │   │   ├── arxos.bin/
│   │       │   │   │   ├── bin_desc.md
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
├── RELEASE.md
```

---

## 🔄 Future Updates

* Additional architectures will be added progressively:

  * ARM Cortex variants
  * Other RISC-V platforms
* Improved execution scripts
* Full build and integration documentation

---

## ⚠️ Notes

* These binaries are **evaluation builds**
* Interfaces and behavior may change
* Performance in QEMU may differ from real hardware

---

## 🛠️ Troubleshooting

### QEMU not found

* Ensure QEMU is installed and added to PATH

### No output in terminal

* Check if `-nographic` is used
* Ensure correct binary is loaded

### Script not working (Windows)

* Run from Command Prompt instead of double-click
* Verify QEMU installation

---

## 📌 Summary

* No build setup required
* Use provided `.bin` + QEMU
* Start with RISC-V Shakti Class-C
* More platforms coming soon

---

More detailed documentation (build system, APIs, customization) will be added in upcoming releases.
