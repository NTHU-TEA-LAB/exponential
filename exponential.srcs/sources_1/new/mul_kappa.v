`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/22 15:29:05
// Design Name: 
// Module Name: mul_kappa
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mul_kappa(
    input clk,
    input rst_n,
    input start,
    input [23:0] a_din,
    input [15:0] b0_din, b1_din,
    input [2:0] addra,
    input [3:0] addrb0,
    input wea, web0,
    //output [23:0] mul_out_0, mul_out_1,
    
    output done,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT ADDR" *)
    output  wire  [3:0] bram_addr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT CLK" *)
    output  wire        bram_clk,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT DIN" *)
    output  wire  [31:0] bram_din,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT DOUT" *)
    input wire [31:0] bram_dout,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT RST" *)
    output  wire        bram_rst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT EN" *)
    output  wire        bram_en,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT WE" *)
    output  wire    bram_we
    
    
    
    );
wire [1:0] valid_out;
wire [31:0] mul_out_0, mul_out_1;
wire [23:0] a_mem_out;
wire [15:0] b0_mem_out, b1_mem_out;   // a_in b_in for mul
reg [15:0] b1_mem_out_d;
wire [1:0] en_pe;
wire valid_in;
wire [2:0] addra_temp, addra_out;
wire [3:0] addrb0_temp, addrb0_out;
reg [3:0] addr_out;
assign bram_clk = clk;
assign bram_rst = ~rst_n;
assign bram_en = 1'b1;
assign bram_we = |valid_out;
assign bram_addr = addr_out;
assign bram_din = (valid_out[1]) ? mul_out_1 : mul_out_0;
always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
    begin
        b1_mem_out_d <= 16'b0;
    end
    else begin
        b1_mem_out_d <= b1_mem_out;
    end
end
assign addra_out = wea ? addra : addra_temp;
assign addrb0_out = web0 ? addrb0 : addrb0_temp;

mat_mul MAT_MUL_INST (
    .clk(clk),
    .rst_n(rst_n),
    .a_in(a_mem_out),
    .b_in_0(b0_mem_out),
    .b_in_1(b1_mem_out_d),
    .en_pe(en_pe),
    .valid_in(valid_in),
    .mul_out_0(mul_out_0),
    .mul_out_1(mul_out_1),
    .valid_out(valid_out)
    );
ctrl_kappa_mul CTRL_INST(
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .done(done),
    .en_pe(en_pe),
    .valid_in(valid_in),
    .addr_a(addra_temp),
    .addr_b(addrb0_temp)
);
buf8 a_BUF_IN(
    .clk(clk),
    .din(a_din),
    .addr(addra_out),
    .we(wea),
    .dout(a_mem_out)
);
buf16 b0_BUF_IN(
    .clk(clk),
    .din(b0_din),
    .addr(addrb0_out),
    .we(web0),
    .dout(b0_mem_out)
);
buf16 b1_BUF_IN(
    .clk(clk),
    .din(b1_din),
    .addr(addrb0_out),
    .we(web0),
    .dout(b1_mem_out)
);
// save bram addr
always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
    begin
        addr_out <= 4'b0;
    end
    else if (|valid_out)begin
        addr_out <= addr_out + 1;
    end
    else if (done) begin
        addr_out <= 4'b0;
    end 
end

endmodule
