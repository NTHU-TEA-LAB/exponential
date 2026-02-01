// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  clk,
  rst_n,
  start,
  valid_out,
  Real_value,
  Imag_value,
  mul_result,
  theta_0,
  theta_1,
  phi_0,
  phi_1,
  bram_din_a,
  bram_we_a,
  bram_addr_a
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *)
  input clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input rst_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input start;
  (* X_INTERFACE_IGNORE = "true" *)
  output valid_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]Real_value;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]Imag_value;
  (* X_INTERFACE_IGNORE = "true" *)
  output [55:0]mul_result;
  (* X_INTERFACE_IGNORE = "true" *)
  input [23:0]theta_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [23:0]theta_1;
  (* X_INTERFACE_IGNORE = "true" *)
  input [23:0]phi_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [23:0]phi_1;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]bram_din_a;
  (* X_INTERFACE_IGNORE = "true" *)
  output bram_we_a;
  (* X_INTERFACE_IGNORE = "true" *)
  output [12:0]bram_addr_a;

  // stub module has no contents

endmodule
