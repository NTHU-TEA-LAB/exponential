`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/25 20:44:05
// Design Name: 
// Module Name: design1_tb
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


module design1_tb;
reg clk;
reg rst_n;
reg start;
reg [23:0] theta_0;
reg [23:0] theta_1;
reg [23:0] phi_0;
reg [23:0] phi_1;
wire valid_out;
wire [55:0] mul_result;
wire [15:0] Real_value;
wire [15:0] Imag_value;
wire [15:0] bram_din_a;
wire [12:0] bram_addr_a;
wire bram_we_a;


design_1_wrapper uut (
    .clk(clk),
    .mul_result(mul_result),
    .rst_n(rst_n),
    .start(start),
    .theta_0(theta_0),
    .theta_1(theta_1),
    .phi_0(phi_0),
    .phi_1(phi_1),
    .valid_out(valid_out),
    .Real_value(Real_value),
    .Imag_value(Imag_value),
    .bram_din_a(bram_din_a),
    .bram_addr_a(bram_addr_a),
    .bram_we_a(bram_we_a)
    );

always #5 clk = ~clk;
initial begin
    clk = 0;
    rst_n = 0;
    start = 0;
    theta_0 = 16'd0; // 1.0
    theta_1 = 16'd0; // 2.0
    phi_0 = 16'd0; // 1.5
    phi_1 = 16'd0; // 0.25
    #200;
    rst_n = 1;
    #200;
    start = 1;
    theta_0 = 24'd3294199; // 0.5
    theta_1 = -24'd3294199; // 1.0
    phi_0 = 24'd686443; // 0.25
    phi_1 = 24'd782566; // 0.75
    #10;
    start = 0;
    #50000;
    $finish;
end
endmodule