`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/25 01:29:05
// Design Name: 
// Module Name: kappa_mul_k_tb
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


module kappa_mul_k_tb;
reg clk;
reg rst_n;
reg start;
wire valid_out;
wire [3:0] bram_addr;
wire bram_clk;
wire [23:0] bram_din;
wire bram_rst;
wire bram_en;
wire bram_we;
wire [8:0] bram_addr_k;
wire [15:0] cordic_in;
kappa_mul_k uut(
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .valid_out(valid_out),
    .bram_addr(bram_addr),
    .bram_clk(bram_clk),
    .bram_din(bram_din),
    .bram_rst(bram_rst),
    .bram_en(bram_en),
    .bram_we(bram_we),
    .bram_addr_k(bram_addr_k),
    .cordic_in(cordic_in)
    );

always #10 clk = ~clk;
initial
begin
    clk = 0;
    rst_n = 0;
    start = 0;
    #200;
    rst_n = 1;
    #20;
    start = 1;
    #20;
    start = 0;
    #100000;
    $finish;
end
endmodule
