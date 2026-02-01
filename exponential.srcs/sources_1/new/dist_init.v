`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/27 15:51:04
// Design Name: 
// Module Name: dist_init
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


module dist_init(
    input clk,
    input rst_n,
    
    output reg signed[15:0] b0_din, b1_din,
    output web,
    output [3:0] addrb
    );
    reg [3:0] count;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            count <= 4'd0;
        end
        else if (count < 4'd12) begin
            count <= count + 4'd1;
        end
    end
    assign web = (rst_n) && (count < 4'd12);
    assign addrb = count;
    always @(*)
    begin
        case (count)
            0: begin
                b0_din = 16'd0; // 1.0
                b1_din = -2699;
            end
            1: begin
                b0_din = 16'd0; // 0.9
                b1_din = 6517;
            end
            2: begin
                b0_din = 16'd0; // 0.8
                b1_din = 16'd0;
            end
            3: begin
                b0_din = -9216; // 0.7
                b1_din = -15733;
            end
            4: begin
                b0_din = 9216; // 0.6
                b1_din = 6517;
            end
            5: begin
                b0_din = 16'd0; // 0.5
                b1_din = 16'd0;
            end
            6: begin
                b0_din = -18432; // 0.4
                b1_din = -15733;
            end
            7: begin
                b0_din = 16'd0; // 0.3
                b1_din = -6517;
            end
            8: begin
                b0_din = 16'd0; // 0.2
                b1_din = 16'd0;
            end
            9: begin
                b0_din = -9216; // 0.1
                b1_din = -2699;
            end
            10: begin
                b0_din = -9216; // 0.0
                b1_din = -6517;
            end
            11: begin
                b0_din = 16'd0; // padding
                b1_din = 16'd0;
            end
            default: begin
                b0_din = 16'd0;
                b1_din = 16'd0;
            end
        endcase
    end
endmodule
