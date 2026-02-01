`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/22 14:46:45
// Design Name: 
// Module Name: ctrl_tb
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


module ctrl_tb;
reg clk;
reg rst_n;
reg start;

wire [1:0] en_pe;
wire  valid_in;
wire [2:0] addr_a;
wire [3:0] addr_b;
wire done;

ctrl_kappa_mul uut(
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .done(done),
    .en_pe(en_pe),
    .valid_in(valid_in),
    .addr_a(addr_a),
    .addr_b(addr_b)
    );
// initial begin
//     $fsdbDumpfile("ctrl_kappa_rtl.fsdb");
//     $fsdbDumpvars;
// end

always #10 clk = ~clk;
initial begin
    clk = 0;
    rst_n = 0;
    start = 0;
    #100;
    rst_n = 1;
    start = 1;
    #20;
    start = 0;
    wait(done);
    #20;
    @(negedge clk);
    start = 1;
    #20;
    start = 0;
    #1000;
    $finish;

end
endmodule
