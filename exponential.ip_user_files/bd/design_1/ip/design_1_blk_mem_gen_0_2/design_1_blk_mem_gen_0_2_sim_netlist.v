// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Jan 27 16:58:07 2026
// Host        : LAPTOP-FM2553E0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/guan/Desktop/pynq_project/exponential/exponential.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_2/design_1_blk_mem_gen_0_2_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_2,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_2
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.751852 mW" *) 
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_0_2.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "258" *) 
  (* C_READ_DEPTH_B = "258" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "258" *) 
  (* C_WRITE_DEPTH_B = "258" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_2_blk_mem_gen_v8_4_9 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28880)
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
