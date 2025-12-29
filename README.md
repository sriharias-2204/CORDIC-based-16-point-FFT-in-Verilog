# CORDIC-based-16-point-FFT-in-Verilog
This contains the Verilog modules for implementing Radix-2 16-point FFT using CORDIC algorithm
# SRI HARI A S

-> Overview

This repository contains a complete Verilog implementation of a 16-point Radix-2 Decimation-in-Time (DIT) FFT using a CORDIC-based twiddle factor generator.
The design eliminates hardware multipliers by using shift-add arithmetic, making it highly suitable for FPGA and ASIC implementations.
The FFT processes complex inputs (real + imaginary) in fixed-point format and produces frequency-domain outputs using a fully pipelined butterfly network.

-> Key Features

Multiplier-free FFT
CORDIC-based complex rotation
Fixed-point arithmetic
Gain-compensated rotation
4-stage Radix-2 FFT
Optimized butterfly units
Accurate spectral peaks with low numerical error

-> Architecture

The FFT uses a 4-stage radix-2 pipeline:

Stage	Description
Stage 1	W₀ butterflies (pure add/sub)
Stage 2	W₀ and W₄ butterflies (sign swap)
Stage 3	General twiddle multiplication (CORDIC)
Stage 4	Final CORDIC-based butterflies

Each stage increases bit-width to avoid overflow and maintain accuracy.

-> CORDIC Engine

The CORDIC module performs vector rotation:
(𝑥′,𝑦′)=(𝑥cos⁡𝜃−𝑦sin⁡𝜃,  𝑥sin⁡𝜃+𝑦cos⁡𝜃)(x′,y′)=(xcosθ−ysinθ,xsinθ+ycosθ)

Features:
16 iterations
Angle LUT (atan table)
Quadrant correction
Fully shift-add based
No multipliers

-> Accuracy

Small numerical errors occur due to:
Fixed-point arithmetic
CORDIC approximation
Shift-based gain compensation
However, spectral peaks and FFT bins are correct, validating the FFT architecture.

-> Project Structure

/rtl
   fft1.v
   butterfly.v
   butterfly1.v
   butterfly2.v
   cordic.v

/tb
   fft_testbench.v

/docs
   FFT_Report.docx

-> How to Simulate

Open ModelSim / Questa / Vivado
Compile all RTL files
Compile testbench
Run:
vsim fft_test
run -all
View FFT outputs in waveform or console

-> License

This project is provided for academic and research use.
You are free to modify and extend it.
