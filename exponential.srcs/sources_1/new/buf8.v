`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/21 17:48:21
// Design Name: 
// Module Name: buf8
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


module buf8(
    input clk,
    input [23:0] din,
    input [2:0] addr,
    input we,
    output [23:0] dout
    );
    integer i;
    reg [23:0] mem [0:7];
    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            mem[i] = 24'b0;
        end
    end

    
    always @(posedge clk) begin
        if (we) begin
            mem[addr] <= din;
        end
    end
    assign dout = mem[addr];
endmodule
