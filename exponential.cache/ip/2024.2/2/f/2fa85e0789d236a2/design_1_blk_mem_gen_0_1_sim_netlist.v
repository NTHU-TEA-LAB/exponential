// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Jan 27 16:58:06 2026
// Host        : LAPTOP-FM2553E0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [23:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [23:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [23:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [23:0]dina;
  wire [23:0]dinb;
  wire [23:0]douta;
  wire [23:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.885338 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_0_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 39376)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
