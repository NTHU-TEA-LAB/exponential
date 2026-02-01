//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Feb  1 16:00:37 2026
//Host        : LAPTOP-FM2553E0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
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
  wire [2:0]cas2bufa_0_bufa_addr;
  wire [23:0]cas2bufa_0_bufa_din;
  wire cas2bufa_0_bufa_we;
  wire cas2bufa_0_done;
  wire clk;
  wire [31:0]cordic_0_m_axis_dout_tdata;
  wire [31:0]cordic_1_m_axis_dout_tdata;
  wire cordic_1_m_axis_dout_tvalid;
  wire [31:0]cordic_2_m_axis_dout_tdata;
  wire [31:0]cordic_3_m_axis_dout_tdata;
  wire [31:0]cordic_4_m_axis_dout_tdata;
  wire [3:0]dist_init_0_addrb;
  wire [15:0]dist_init_0_b0_din;
  wire [15:0]dist_init_0_b1_din;
  wire dist_init_0_web;
  wire [3:0]kappa_mul_k_0_BRAM_IN_ADDR;
  wire kappa_mul_k_0_BRAM_IN_CLK;
  wire [31:0]kappa_mul_k_0_BRAM_IN_DIN;
  wire [31:0]kappa_mul_k_0_BRAM_IN_DOUT;
  wire kappa_mul_k_0_BRAM_IN_EN;
  wire kappa_mul_k_0_BRAM_IN_RST;
  wire kappa_mul_k_0_BRAM_IN_WE;
  wire [8:0]kappa_mul_k_0_BRAM_K_ADDR;
  wire kappa_mul_k_0_BRAM_K_CLK;
  wire [23:0]kappa_mul_k_0_BRAM_K_DIN;
  wire [23:0]kappa_mul_k_0_BRAM_K_DOUT;
  wire kappa_mul_k_0_BRAM_K_EN;
  wire kappa_mul_k_0_BRAM_K_RST;
  wire kappa_mul_k_0_BRAM_K_WE;
  wire [23:0]kappa_mul_k_0_cordic_in;
  wire kappa_mul_k_0_valid_out;
  wire [3:0]mul_kappa_0_BRAM_OUT_ADDR;
  wire mul_kappa_0_BRAM_OUT_CLK;
  wire [31:0]mul_kappa_0_BRAM_OUT_DIN;
  wire [31:0]mul_kappa_0_BRAM_OUT_DOUT;
  wire mul_kappa_0_BRAM_OUT_EN;
  wire mul_kappa_0_BRAM_OUT_RST;
  wire mul_kappa_0_BRAM_OUT_WE;
  wire mul_kappa_0_done;
  wire [55:0]mul_result;
  wire [23:0]phi_0;
  wire [23:0]phi_1;
  wire rst_n;
  wire sph2cas_0_m_dout_tvalid;
  wire [23:0]sph2cas_0_x_0;
  wire [23:0]sph2cas_0_x_1;
  wire [23:0]sph2cas_0_y_0;
  wire [23:0]sph2cas_0_y_1;
  wire [23:0]sph2cas_0_z_0;
  wire [23:0]sph2cas_0_z_1;
  wire start;
  wire [23:0]theta_0;
  wire [23:0]theta_1;
  wire valid_out;

  design_1_blk_mem_gen_0_2 blk_mem_k
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .addrb(kappa_mul_k_0_BRAM_K_ADDR),
        .clka(1'b0),
        .clkb(kappa_mul_k_0_BRAM_K_CLK),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .dinb(kappa_mul_k_0_BRAM_K_DIN),
        .doutb(kappa_mul_k_0_BRAM_K_DOUT),
        .ena(1'b0),
        .enb(kappa_mul_k_0_BRAM_K_EN),
        .rsta(1'b0),
        .rstb(kappa_mul_k_0_BRAM_K_RST),
        .wea(1'b0),
        .web(kappa_mul_k_0_BRAM_K_WE));
  design_1_cas2bufa_0_0 cas2bufa_0
       (.bufa_addr(cas2bufa_0_bufa_addr),
        .bufa_din(cas2bufa_0_bufa_din),
        .bufa_we(cas2bufa_0_bufa_we),
        .clk(clk),
        .done(cas2bufa_0_done),
        .rst_n(rst_n),
        .start(sph2cas_0_m_dout_tvalid),
        .x_0(sph2cas_0_x_0),
        .x_1(sph2cas_0_x_1),
        .y_0(sph2cas_0_y_0),
        .y_1(sph2cas_0_y_1),
        .z_0(sph2cas_0_z_0),
        .z_1(sph2cas_0_z_1));
  design_1_cordic_0_1 cordic_0
       (.aclk(clk),
        .m_axis_dout_tdata(cordic_0_m_axis_dout_tdata),
        .m_axis_dout_tvalid(valid_out),
        .s_axis_phase_tdata(kappa_mul_k_0_cordic_in),
        .s_axis_phase_tvalid(kappa_mul_k_0_valid_out));
  design_1_cordic_1_0 cordic_1
       (.aclk(clk),
        .m_axis_dout_tdata(cordic_1_m_axis_dout_tdata),
        .m_axis_dout_tvalid(cordic_1_m_axis_dout_tvalid),
        .s_axis_phase_tdata(theta_0),
        .s_axis_phase_tvalid(start));
  design_1_cordic_2_0 cordic_2
       (.aclk(clk),
        .m_axis_dout_tdata(cordic_2_m_axis_dout_tdata),
        .s_axis_phase_tdata(theta_1),
        .s_axis_phase_tvalid(start));
  design_1_cordic_3_0 cordic_3
       (.aclk(clk),
        .m_axis_dout_tdata(cordic_3_m_axis_dout_tdata),
        .s_axis_phase_tdata(phi_0),
        .s_axis_phase_tvalid(start));
  design_1_cordic_4_0 cordic_4
       (.aclk(clk),
        .m_axis_dout_tdata(cordic_4_m_axis_dout_tdata),
        .s_axis_phase_tdata(phi_1),
        .s_axis_phase_tvalid(start));
  design_1_dist_init_0_0 dist_init_0
       (.addrb(dist_init_0_addrb),
        .b0_din(dist_init_0_b0_din),
        .b1_din(dist_init_0_b1_din),
        .clk(clk),
        .rst_n(rst_n),
        .web(dist_init_0_web));
  design_1_blk_mem_gen_0_1 kappa_mul_dis_bram
       (.addra(mul_kappa_0_BRAM_OUT_ADDR),
        .addrb(kappa_mul_k_0_BRAM_IN_ADDR),
        .clka(mul_kappa_0_BRAM_OUT_CLK),
        .clkb(kappa_mul_k_0_BRAM_IN_CLK),
        .dina(mul_kappa_0_BRAM_OUT_DIN),
        .dinb(kappa_mul_k_0_BRAM_IN_DIN),
        .douta(mul_kappa_0_BRAM_OUT_DOUT),
        .doutb(kappa_mul_k_0_BRAM_IN_DOUT),
        .ena(mul_kappa_0_BRAM_OUT_EN),
        .enb(kappa_mul_k_0_BRAM_IN_EN),
        .rsta(mul_kappa_0_BRAM_OUT_RST),
        .rstb(kappa_mul_k_0_BRAM_IN_RST),
        .wea(mul_kappa_0_BRAM_OUT_WE),
        .web(kappa_mul_k_0_BRAM_IN_WE));
  design_1_kappa_mul_k_0_0 kappa_mul_k_0
       (.bram_addr(kappa_mul_k_0_BRAM_IN_ADDR),
        .bram_addr_k(kappa_mul_k_0_BRAM_K_ADDR),
        .bram_clk(kappa_mul_k_0_BRAM_IN_CLK),
        .bram_clk_k(kappa_mul_k_0_BRAM_K_CLK),
        .bram_din(kappa_mul_k_0_BRAM_IN_DIN),
        .bram_din_k(kappa_mul_k_0_BRAM_K_DIN),
        .bram_dout(kappa_mul_k_0_BRAM_IN_DOUT),
        .bram_dout_k(kappa_mul_k_0_BRAM_K_DOUT),
        .bram_en(kappa_mul_k_0_BRAM_IN_EN),
        .bram_en_k(kappa_mul_k_0_BRAM_K_EN),
        .bram_rst(kappa_mul_k_0_BRAM_IN_RST),
        .bram_rst_k(kappa_mul_k_0_BRAM_K_RST),
        .bram_we(kappa_mul_k_0_BRAM_IN_WE),
        .bram_we_k(kappa_mul_k_0_BRAM_K_WE),
        .clk(clk),
        .cordic_in(kappa_mul_k_0_cordic_in),
        .mul_result(mul_result),
        .rst_n(rst_n),
        .start(mul_kappa_0_done),
        .valid_out(kappa_mul_k_0_valid_out));
  design_1_mul_kappa_0_0 mul_kappa_0
       (.a_din(cas2bufa_0_bufa_din),
        .addra(cas2bufa_0_bufa_addr),
        .addrb0(dist_init_0_addrb),
        .b0_din(dist_init_0_b0_din),
        .b1_din(dist_init_0_b1_din),
        .bram_addr(mul_kappa_0_BRAM_OUT_ADDR),
        .bram_clk(mul_kappa_0_BRAM_OUT_CLK),
        .bram_din(mul_kappa_0_BRAM_OUT_DIN),
        .bram_dout(mul_kappa_0_BRAM_OUT_DOUT),
        .bram_en(mul_kappa_0_BRAM_OUT_EN),
        .bram_rst(mul_kappa_0_BRAM_OUT_RST),
        .bram_we(mul_kappa_0_BRAM_OUT_WE),
        .clk(clk),
        .done(mul_kappa_0_done),
        .rst_n(rst_n),
        .start(cas2bufa_0_done),
        .wea(cas2bufa_0_bufa_we),
        .web0(dist_init_0_web));
  design_1_save_exp_out_0_0 save_exp_out_0
       (.bram_addr_a(bram_addr_a),
        .bram_din_a(bram_din_a),
        .bram_dout_a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .bram_dout_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .bram_we_a(bram_we_a),
        .clk(clk),
        .cordic_exp_out(cordic_0_m_axis_dout_tdata),
        .en(valid_out),
        .rst_n(rst_n));
  design_1_sph2cas_0_0 sph2cas_0
       (.clk(clk),
        .m_dout_tvalid(sph2cas_0_m_dout_tvalid),
        .phi_0(cordic_3_m_axis_dout_tdata),
        .phi_1(cordic_4_m_axis_dout_tdata),
        .rst_n(rst_n),
        .s_tvalid(cordic_1_m_axis_dout_tvalid),
        .theta_0(cordic_1_m_axis_dout_tdata),
        .theta_1(cordic_2_m_axis_dout_tdata),
        .x_0(sph2cas_0_x_0),
        .x_1(sph2cas_0_x_1),
        .y_0(sph2cas_0_y_0),
        .y_1(sph2cas_0_y_1),
        .z_0(sph2cas_0_z_0),
        .z_1(sph2cas_0_z_1));
  design_1_xlslice_0_0 xlslice_0
       (.Din(cordic_0_m_axis_dout_tdata),
        .Dout(Real_value));
  design_1_xlslice_0_1 xlslice_1
       (.Din(cordic_0_m_axis_dout_tdata),
        .Dout(Imag_value));
endmodule
