// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Jan 27 16:58:07 2026
// Host        : LAPTOP-FM2553E0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/guan/Desktop/pynq_project/exponential/exponential.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_1/design_1_blk_mem_gen_0_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_1
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
  design_1_blk_mem_gen_0_1_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 39488)
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
