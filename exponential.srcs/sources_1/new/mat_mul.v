`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/21 15:12:11
// Design Name: 
// Module Name: mat_mul
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


module mat_mul(   //  matrix multiplication  A * B. A is 2*3, B is 3*8
    input clk,
    input rst_n,
    input [23:0] a_in,
    input [15:0] b_in_0, b_in_1,
    input [1:0] en_pe,
    input valid_in,
    output [31:0] mul_out_0,
    output [31:0] mul_out_1,
    output [23:0] a_out,
    output [1:0] valid_out
    );
    wire [23:0] a_temp;
    wire valid_temp;

    assign valid_out[0] = valid_temp;
    pe_2way PE0 (
        .clk(clk),
        .rst_n(rst_n),
        .a_in(a_in),
        .b_in(b_in_0),
        .valid_in(valid_in),
        .en(en_pe[0]),
        .mul_out(mul_out_0),
        .a_out(a_temp),
        .valid_out(valid_temp)
    );
    pe_2way PE1 (
        .clk(clk),
        .rst_n(rst_n),
        .a_in(a_temp),
        .b_in(b_in_1),
        .valid_in(valid_temp),
        .en(en_pe[1]),
        .mul_out(mul_out_1),
        .a_out(a_out),
        .valid_out(valid_out[1])
    );


endmodule
