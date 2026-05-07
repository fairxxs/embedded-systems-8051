# 🔧 Embedded Systems — 8051 Microcontroller Projects
**Gaukhar Assyrzhanova** | IIoT-2401 | Astana IT University

A collection of embedded systems lab projects developed using **Assembly** and **C** for the AT89S52 (8051-family) microcontroller. All circuits were designed and simulated in **NI Multisim**, with code compiled and debugged in **Keil µVision IDE**.

---

## 🛠 Tools & Technologies
| Tool | Purpose |
|------|---------|
| Keil µVision | IDE — code writing, compilation, debugging |
| NI Multisim | Circuit design & hardware simulation |
| AT89S52 (8051) | Target microcontroller |
| Assembly (8051) | Low-level programming (Labs 1–3) |
| C (reg51.h) | High-level embedded programming (Lab 4) |

---

## 📁 Projects

---

### Lab 1 - Basic Assembly & Memory Operations
**File:** `Lab1.asm`

**What it does:**
- Loads two hex values into registers and performs arithmetic operations
- Stores the result in the Accumulator and Register R7
- Compiled to `Lab1.hex` and loaded into AT89S52 simulation in Multisim
- Verified via Keil debugger (register watch) and Multisim MCU Memory View

**Key instructions used:** `MOV`, `ADD`, `SJMP`

**Circuit components:** AT89S52 · 11 MHz crystal · 33pF capacitors · 5V VCC

---

### Lab 2 - LED Control & Switch Input (I/O Port Programming)
**Files:** `Lab2Ex1.asm`, `Lab2Ex2.asm`

**Exercise 1 - LED Blinking:**
- Toggles P2.7 between HIGH and LOW to blink an LED
- Implements a software delay subroutine using `DJNZ` instruction
- Delay calculated for 11.0592 MHz crystal: ~0.557 ms per call
- Verified with Keil port window + Multisim oscilloscope (square wave observed)

**Exercise 2 - Switch-Controlled LED:**
- Reads input from a pushbutton switch on P1.0
- Transfers switch state to LED output on P2.7
- Demonstrates basic real-time I/O interaction on 8051

**Key instructions:** `SETB`, `CLR`, `LCALL`, `DJNZ`, `SJMP`

**Circuit:** AT89S52 · LED (pull-up, 200Ω) · Pushbutton switch · Oscilloscope (XSC1)

---

### Lab 3 - 8-Bit Binary Up-Counter with LED Array
**Files:** `Lab3.asm`, `Lab3.hex`
**Demo:** `Lab3_Vid_Multisim.mp4` ← simulation video

**What it does:**
- Continuously counts from `0x00` to `0xFF` (0–255) and wraps back to 0
- Outputs each count value to Port 2, driving 8 LEDs in binary representation
- LEDs wired in active-HIGH topology (200Ω resistors, anodes to Port 2 pins)
- Software delay between increments makes counting visible

**Key instructions:** `MOV`, `INC`, `ACALL`, `DJNZ`, `SJMP`

**Circuit:** AT89S52 · 8× LED (active-HIGH) · 8× 200Ω resistors · 12 MHz crystal

---

### Lab 4 - 7-Segment Display Decoder in C
**File:** `Lab4Ex1_Gaukhar.c`, `Lab4Ex1_Gaukhar.hex`

**What it does:**
- Written in **C** (not Assembly) using `reg51.h` for 8051 register definitions
- Reads a 4-bit binary value from DIP switches connected to Port 1 (P1.0–P1.3)
- Decodes the value (0–15 / 0x0–0xF) using a `switch-case` statement
- Drives a **Common Anode 7-segment display** on Port 2 (P2.0–P2.7)
- Displays all hex digits: **0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F**

**Port 2 wiring (segment mapping):**
```
P2.7 → Segment A (top)
P2.6 → Segment B (top-right)
P2.5 → Segment C (bottom-right)
P2.4 → Segment D (bottom)
P2.3 → Segment E (bottom-left)
P2.2 → Segment F (top-left)
P2.1 → Segment G (middle)
P2.0 → Segment DP (unused)
```

**Circuit:** AT89S52 · Common Anode 7-seg display · DIP switch array · 200Ω resistors

---

## 📊 Skills Demonstrated
- Low-level **Assembly programming** for 8051 architecture
- **C programming** for embedded systems (`reg51.h`, port I/O, switch-case)
- **Circuit design** and hardware-software co-simulation
- **Timing calculations** (crystal frequency → machine cycles → delay)
- **Debugging** with Keil register watch, port window, and Multisim oscilloscope
- **HEX file generation** and loading into simulated microcontroller

---

## 👩‍💻 About
**Gaukhar Assyrzhanova**
Industrial Engineering (IIoT) Student — Astana IT University
Academic Mobility: Hochschule Schmalkalden, Germany (2025)

📧 gokass111@gmail.com
