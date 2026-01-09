# 4-bit ALU – Digital Logic Design

## Objective
To design and implement a **4-bit Arithmetic Logic Unit (ALU)** using **standard TTL ICs** that performs arithmetic and logical operations on two 4-bit inputs **A** and **B**, and to verify correct functionality through **hardware implementation, Proteus simulation, and Verilog HDL simulation**.

## Project Overview
This project presents a complete **4-bit ALU design** realized using **TTL-based digital logic** and validated using **HDL simulation**. The ALU supports multiple arithmetic and logical operations selected through a **single select line or small control bus**, with status outputs indicating **carry and overflow** where applicable.

## Features
- **Arithmetic Operations**
  - Addition
  - Subtraction
  - Increment
  - Decrement
  - 1’s Complement
  - 2’s Complement
- **Logical Operations**
  - Bitwise AND
  - Bitwise OR
  - Bitwise XOR
- **Comparison**
  - A = B, A > B, A < B
- **Status Flags**
  - Carry
  - Overflow (for relevant operations)

### Select-Line Encoding Table

| Select Line         | Operation          |
|---------------------|---------------------|
| 0000                | Addition            |
| 0001                | Subtraction         |
| 0010                | 1's Complement of B |
| 0011                | 2's Complement of B |
| 0100                | 1's Complement of A |
| 0101                | 2’s Complement of A |
| 0110                | B Increment         |
| 0111                | B Decrement         |
| 1000                | A Increment         |
| 1001                | A Decrement         |
| 1010                | Bitwise OR          |
| 1011                | Bitwise AND         |
| 1100                | Bitwise XOR         |
| 1101                | Load A              |
| 1110                | Counter             |
| 1111                | DON'T CARE          |

## Implementation
- **Hardware:** Breadboard implementation using standard TTL ICs  
  - 7483 (4-bit Adder)
  - 7485 (Magnitude Comparator)
  - 74163 (4-bit Counter)
  - 74157 (Multiplexer)
  - 7404 (NOT Gate)
- **Simulation:**  
  - **Proteus** for circuit-level verification  
  - **Verilog** with testbench for functional validation and waveform analysis

## Tools Used
- TTL ICs, LED's & Breadboard
- Proteus Design Suite
- Verilog / ModelSim
- GTKWave

