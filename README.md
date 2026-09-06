# 🚀 CUDA Learning Notes

> My personal CUDA programming learning journey — from C basics to GPU parallel computing, following the book *"CUDA 编程：基础与实践"* by 樊哲勇.

[![CUDA](https://img.shields.io/badge/CUDA-C%2FC%2B%2B-76B900?logo=nvidia&logoColor=white)](https://developer.nvidia.com/cuda-toolkit)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](#license)

---

## 📖 About

This repository documents my hands-on learning path through CUDA parallel programming. It contains my own practice code, experiments, and notes organized chapter-by-chapter alongside the reference material from the book's [official repository](https://github.com/brucefan1983/CUDA-Programming).

## 📂 Repository Structure

```
CUDA/
├── 2.1/                          # Chapter 2 — Thread Organization (my practice code)
│   ├── hello-world.cpp           # C++ Hello World baseline
│   ├── hello-world.cu            # Same program compiled as CUDA
│   ├── gpu-hello-world.cu        # First GPU kernel — Hello World from GPU
│   ├── gpu-hello-world-2.cu      # Printing block & thread indices
│   └── hello5.cu                 # 2D thread blocks with dim3
│
├── test/                         # C programming exercises & warm-up
│   ├── clock.c                   # Time difference calculator
│   ├── compare.c                 # Comparison operators demo
│   └── takechange.c              # Digit counter algorithm
│
├── my_md/                        # Custom experiments & projects
│   └── cpp-version/
│       ├── main.cu               # (WIP) CUDA project
│       └── makefile.makefile      # (WIP) Build configuration
│
├── CUDA-Programming-master/      # 📚 Reference: book's official source code
│   └── src/
│       ├── 01-introduction/
│       ├── 02-thread-organization/
│       ├── 03-basic-framework/
│       ├── 04-error-check/
│       ├── 05-prerequisites-for-speedup/
│       ├── 06-memory/
│       ├── 07-global-memory/
│       ├── 08-shared-memory/
│       ├── 09-atomic/
│       ├── 10-warp/
│       ├── 11-stream/
│       ├── 12-unified-memory/
│       ├── 13-md/
│       └── 14-libraries/
│
└── CUDA 编程：基础与实践_樊哲勇.pdf  # 📕 Reference book (PDF)
```

## 🧠 Topics Covered

| Chapter | Topic | Key Concepts |
|:-------:|:------|:-------------|
| 1 | GPU Hardware & CUDA Tools | GPU architecture, CUDA toolkit, `nvcc` compiler |
| 2 | Thread Organization | Grids, blocks, threads, `dim3`, `blockIdx`, `threadIdx` |
| 3 | Basic Framework | Host ↔ Device data transfer, `cudaMemcpy`, kernel launch |
| 4 | Error Checking | Runtime API error handling, `cuda-memcheck` |
| 5 | Prerequisites for Speedup | Timing kernels, arithmetic intensity, GPU vs CPU benchmarks |
| 6 | Memory Organization | Static global memory, device query |
| 7 | Global Memory | Coalesced vs. non-coalesced memory access patterns |
| 8 | Shared Memory | Reduction algorithms, matrix transpose, bank conflicts |
| 9 | Atomic Functions | `atomicAdd`, neighbor list construction |
| 10 | Warp-Level Functions | Warp shuffle, cooperative groups, thread utilization |
| 11 | CUDA Streams | Overlapping computation & data transfer, concurrency |
| 12 | Unified Memory | `cudaMallocManaged`, prefetching, oversubscription |
| 13 | Molecular Dynamics (MD) | Real-world application — porting an MD simulation to CUDA |
| 14 | CUDA Libraries | Thrust, cuBLAS, cuSolver, cuRAND |

## 🛠️ Getting Started

### Prerequisites

- NVIDIA GPU with CUDA support
- [CUDA Toolkit](https://developer.nvidia.com/cuda-toolkit) (9.0 – 12.x)
- C/C++ compiler (`cl` on Windows, `g++` on Linux)

### Compile & Run

```bash
# Compile a CUDA source file
nvcc -o hello gpu-hello-world.cu

# Run
./hello
```

On **Windows** with Visual Studio's `cl`:
```cmd
nvcc -o hello.exe gpu-hello-world.cu
hello.exe
```

## 📌 Learning Progress

- [x] Chapter 2 — Thread Organization (basic kernel launch, `blockIdx`, `threadIdx`, `dim3`)
- [x] Chapter 3 — Basic Framework
- [x] Chapter 4 — Error Checking
- [x] Chapter 5 — Prerequisites for Speedup
- [x] Chapter 6–14 — Advanced Topics

## 🙏 Acknowledgements

- **Book**: *CUDA 编程：基础与实践* by 樊哲勇 (清华大学出版社, 2020)
- **Official Source Code**: [brucefan1983/CUDA-Programming](https://github.com/brucefan1983/CUDA-Programming)

## 📄 License

This project is for personal learning purposes. The reference code under `CUDA-Programming-master/` retains its [original license (GPL-3.0)](CUDA-Programming-master/LICENSE).

