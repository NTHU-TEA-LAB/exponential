//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Feb  1 16:00:37 2026
//Host        : LAPTOP-FM2553E0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Imag_value,
    Real_value,
    bram_addr_a,
    bram_din_a,
    bram_we_a,
    clk,
    mul_result,
    phi_0,
    phi_1,
    rst_n,
    start,
    theta_0,
    theta_1,
    valid_out);
  output [15:0]Imag_value;
  output [15:0]Real_value;
  output [12:0]bram_addr_a;
  output [15:0]bram_din_a;
  output bram_we_a;
  input clk;
  output [55:0]mul_result;
  input [23:0]phi_0;
  input [23:0]phi_1;
  input rst_n;
  input start;
  input [23:0]theta_0;
  input [23:0]theta_1;
  output valid_out;

  wire [15:0]Imag_value;
  wire [15:0]Real_value;
  wire [12:0]bram_addr_a;
  wire [15:0]bram_din_a;
  wire bram_we_a;
  wire clk;
  wire [55:0]mul_result;
  wire [23:0]phi_0;
  wire [23:0]phi_1;
  wire rst_n;
  wire start;
  wire [23:0]theta_0;
  wire [23:0]theta_1;
  wire valid_out;

  design_1 design_1_i
       (.Imag_value(Imag_value),
        .Real_value(Real_value),
        .bram_addr_a(bram_addr_a),
        .bram_din_a(bram_din_a),
        .bram_we_a(bram_we_a),
        .clk(clk),
        .mul_result(mul_result),
        .phi_0(phi_0),
        .phi_1(phi_1),
        .rst_n(rst_n),
        .start(start),
        .theta_0(theta_0),
        .theta_1(theta_1),
        .valid_out(valid_out));
endmodule
