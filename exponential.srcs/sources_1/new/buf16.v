`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/21 17:47:06
// Design Name: 
// Module Name: buf16
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


module buf16#(
    parameter DATA_WIDTH = 16
)(
    input clk,
    input [DATA_WIDTH-1:0] din,
    input [3:0] addr,
    input we,
    output [DATA_WIDTH-1:0] dout
    );
    reg [DATA_WIDTH-1:0] mem [0:15];
    integer  i;
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            mem[i] = {DATA_WIDTH{1'b0}};
        end
    end
    always @(posedge clk) begin
        if (we) begin
            mem[addr] <= din;
        end
    end
    assign dout = mem[addr];
endmodule
