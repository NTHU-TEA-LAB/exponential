`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/21 15:13:58
// Design Name: 
// Module Name: pe_2way
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


module pe_2way(
    input clk,
    input rst_n,
    input [23:0] a_in,    // for kappa S4.12
    input [15:0] b_in,    // for dMic  S5.11
    input en,
    input valid_in,
    output signed [31:0] mul_out,  // S9.23
    output reg [23:0] a_out,
    output reg [15:0] b_out,
    output reg valid_out
    );
    wire signed [39:0] mul_temp;
    reg signed [39:0] sum;
    assign mul_temp = $signed(a_in) * $signed(b_in); // S4.12 * S5.11 = S9.23
    assign mul_out = sum[39:8];
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            sum <= 40'd0;
            a_out <= 24'd0;
            b_out <= 16'd0;
            valid_out <= 1'b0;
        end
        else if (en) begin
            sum <= mul_temp + sum; // S9.23
            a_out <= a_in;
            b_out <= b_in;
            valid_out <= valid_in;
        end
        else begin
            sum <= 40'd0;
            a_out <= a_in;
            b_out <= b_in;
            valid_out <= 1'b0;
        end
    end
endmodule
