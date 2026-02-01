// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Jan 27 16:58:06 2026
// Host        : LAPTOP-FM2553E0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_2_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_2,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28784)
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
