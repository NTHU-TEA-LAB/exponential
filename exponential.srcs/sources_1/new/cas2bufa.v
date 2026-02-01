`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/27 16:18:33
// Design Name: 
// Module Name: cas2bufa
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


module cas2bufa(
    input clk,
    input rst_n,
    input start,
    input [23:0] x_0,   // input fixed-point S4.12
    input [23:0] x_1,
    input [23:0] y_0,
    input [23:0] y_1,
    input [23:0] z_0,
    input [23:0] z_1,
    output reg [23:0] bufa_din,
    output bufa_we,
    output [2:0] bufa_addr,
    output done
    );
    reg [2:0] state, next_state;
    reg [23:0] x_0_reg, x_1_reg, y_0_reg, y_1_reg, z_0_reg, z_1_reg;
    localparam IDLE = 3'd0,
               WRITE = 3'd1,
                FIN = 3'd2;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)

            state <= IDLE;
        else
            state <= next_state;

    end
    assign done = (state == FIN);
    always @(*) begin
        case (state)
            IDLE: begin
                if (start)
                    next_state = WRITE;
                else
                    next_state = IDLE;
            end
            WRITE: begin
                if (bufa_addr == 3'd5)
                    next_state = FIN;
                else
                    next_state = WRITE;
            end
            FIN: begin
                next_state = IDLE;
            end
            default: next_state = IDLE;
        endcase
    end

    reg [2:0] count;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= 3'd0;
        end 
        else if (state == IDLE) begin
            count <= 3'd0;
        end
        else if (state == WRITE) begin
            count <= count + 3'd1;
        end
    end
    assign bufa_addr = count;
    assign bufa_we = (state == WRITE) && (count < 3'd6);
    always @(*)
    begin
        case (count)
            0: bufa_din = x_0_reg;
            1: bufa_din = y_0_reg;
            2: bufa_din = z_0_reg;
            3: bufa_din = x_1_reg;
            4: bufa_din = y_1_reg;
            5: bufa_din = z_1_reg;
            default: bufa_din = 24'd0;
        endcase
    end
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            x_0_reg <= 24'd0;
            x_1_reg <= 24'd0;
            y_0_reg <= 24'd0;
            y_1_reg <= 24'd0;
            z_0_reg <= 24'd0;
            z_1_reg <= 24'd0;
        end
        else if (state == IDLE && start) begin
            x_0_reg <= x_0;
            x_1_reg <= x_1;
            y_0_reg <= y_0;
            y_1_reg <= y_1;
            z_0_reg <= z_0;
            z_1_reg <= z_1;
        end
    end
    

endmodule
