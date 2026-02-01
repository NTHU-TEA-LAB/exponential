`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/21 19:46:09
// Design Name: 
// Module Name: mat_mul_tb
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


module mat_mul_tb;
reg clk;
reg rst_n;
reg [15:0] a_in;
reg [15:0] b_in_0;
reg [15:0] b_in_1;
reg [1:0] en_pe;
reg valid_in;
wire [23:0] mul_out_0;
wire [23:0] mul_out_1;
wire [15:0] a_out;
wire [1:0] valid_out;

mat_mul MAT_MUL_INST (
    .clk(clk),
    .rst_n(rst_n),
    .a_in(a_in),
    .b_in_0(b_in_0),
    .b_in_1(b_in_1),
    .en_pe(en_pe),
    .valid_in(valid_in),
    .mul_out_0(mul_out_0),
    .mul_out_1(mul_out_1),
    .a_out(a_out),
    .valid_out(valid_out)
    
    );

always #10 clk = ~clk;

initial begin
    clk = 0;
    rst_n = 0;
    a_in = 16'd0;
    b_in_0 = 16'd0;
    b_in_1 = 16'd0;
    en_pe = 2'b00;
    valid_in = 1'b0;
    #100;
    rst_n = 1;
    #20;
    en_pe = 2'b01;
    a_in = 16'd4096; // 1.0 in S4.12
    b_in_0 = 16'd2048; // 1.0 in S5.11
    #20;
    valid_in = 1'b0;
    en_pe = 2'b11;
    a_in = 16'd8192; // 2.0 in S4.12
    b_in_0 = 16'd4096; // 2.0 in S5.11
    b_in_1 = 16'd8192; // 4.0 in S5.11
    #20;
    valid_in = 1'b1;
    en_pe = 2'b11;
    a_in = 16'd12288; // 3.0 in S4.12
    b_in_0 = 16'd6144; // 3.0 in S5.11
    b_in_1 = 16'd10240; // 5.0 in S5.11
    #20;
    valid_in = 1'b0;
    en_pe = 2'b10;
    a_in = 16'd0;
    b_in_0 = 16'd0;
    b_in_1 = 16'd12288; // 6.0 in S5.11
    #20;
    // en_pe = 2'b00;
    // #20;
    valid_in = 1'b0;
    en_pe = 2'b01;
    a_in = 16'd4096; // 1.0 in S4.12
    b_in_0 = 16'd14336; // 7.0 in S5.11
    #20;
    valid_in = 1'b0;
    en_pe = 2'b11;
    a_in = 16'd8192; // 2.0 in S4.12
    b_in_0 = 16'd16384; // 8.0 in S5.11
    b_in_1 = 16'd20480; // 10.0 in S5.11
    #20;
    valid_in = 1'b1;
    en_pe = 2'b11;
    a_in = 16'd12288; // 3.0 in S4.12
    b_in_0 = 16'd18432; // 9.0 in S5.11
    b_in_1 = 16'd22528; // 11.0 in S5.11
    #20;
    valid_in = 1'b0;
    en_pe = 2'b10;
    a_in = 16'd0;
    b_in_0 = 16'd0;
    b_in_1 = 16'd24576; // 12.0 in S5.11
    #20;
    en_pe = 2'b10;
    a_in = 16'd16384; // 4.0 in S4.12
    b_in_0 = 16'd2048; // 1.0 in S5.11
    b_in_1 = 0;
    #20;
    en_pe = 2'b11;
    a_in = 16'd20480; // 5.0 in S4.12
    b_in_0 = 16'd4096; // 2.0 in S5.11
    b_in_1 = 16'd8192; // 4.0 in S5.11
    #20;
    valid_in = 1'b1;
    en_pe = 2'b11;
    a_in = 16'd24576; // 6.0 in S4.12
    b_in_0 = 16'd6144; // 3.0 in S5.11
    b_in_1 = 16'd10240; // 5.0 in S5.11
    #20;
    valid_in = 1'b0;
    en_pe = 2'b10;
    a_in = 16'd4096;
    b_in_0 = 16'd0;
    b_in_1 = 16'd12288; // 6.0 in S5.11
    #20;
    en_pe = 2'b00;
    #100;
    $finish;
end
endmodule
