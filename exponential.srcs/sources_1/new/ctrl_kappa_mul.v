`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/21 23:26:39
// Design Name: 
// Module Name: ctrl_kappa_mul
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


module ctrl_kappa_mul(
    input clk,
    input rst_n,
    input start,
    output reg done,
    output reg [1:0] en_pe,
    output reg valid_in,
    output [2:0] addr_a,
    output [3:0] addr_b

    );
    reg [2:0] count;
    reg [2:0] count_a;
    reg [3:0] count_b;
    reg [2:0] a_reuse_flag;
    reg [3:0] state, next_state;
    wire done_delay;
    localparam IDLE = 4'd0,
               MUL_0 = 4'd1,
               MUL_1 = 4'd2,
               MUL_2 = 4'd3,
               MUL_3 = 4'd4,
               MUL_0_1 = 4'd5,
               FIN = 4'd6;
    assign addr_a = count_a;
    assign addr_b = count_b;
    assign done_delay = (state == FIN);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            done <= 1'b0;
        else
            done<= done_delay;
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= IDLE;
        else
            state <= next_state; 
    end

    always @(*) begin
        case (state)
            IDLE: 
                next_state = (start) ? MUL_0 : IDLE;
            MUL_0: begin
                next_state = MUL_1;
            end
            MUL_0_1: begin
                next_state = MUL_1;
            end
            MUL_1: begin
                next_state = MUL_2;
            end
            MUL_2: begin
                next_state = MUL_3;
            end
            MUL_3: begin
                next_state = (count == 7) ? FIN : MUL_0_1;
            end
            FIN: begin
                next_state = IDLE;
            end
            default: next_state = IDLE;
        endcase
    end
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            en_pe <= 2'b00;
            valid_in <= 1'b0;
            a_reuse_flag <= 3'b0;
            count_a <= 3'd0;
            count_b <= 4'd0;
            count <= 3'd0;
        end
        else if (state == IDLE)begin
            en_pe <= 2'b00;
            valid_in <= 1'b0;
            count_a <= 3'd0;
            count_b <= 4'd0;
            count <= 3'd0;
            a_reuse_flag <= 3'b0;
        end
        else if (state == MUL_0) begin
            en_pe <= 2'b01;
            valid_in <= 1'b0;
            count_a <= a_reuse_flag[2] ? 3'd3 : 3'd0;
            //count_b <= count_b + 1;
        end
        else if (state == MUL_0_1) begin
            en_pe <= 2'b01;
            valid_in <= 1'b0;
            count_a <= a_reuse_flag[2] ? 3'd3 : 3'd0;
            count_b <= count_b + 1;
        end
        else if (state == MUL_1) begin
            en_pe <= 2'b11;
            valid_in <= 1'b0;
            count_a <= a_reuse_flag[2] ? 3'd4 : 3'd1;
            count_b <= count_b + 1;
        end
        else if (state == MUL_2) begin
            en_pe <= 2'b11;
            valid_in <= 1'b1;
            count_a <= a_reuse_flag[2] ? 3'd5 : 3'd2;
            count_b <= count_b + 1;
            
        end
        else if (state == MUL_3) begin
            en_pe <= 2'b10;
            valid_in <= 1'b0;
            a_reuse_flag <= a_reuse_flag + 1;

            count <= count + 1;
            //count_b <= count_b + 1;
            if (count_b == 4'd11) begin
                count_b <= 4'd15;    // -1
            end

        end
        else begin
            en_pe <= 2'b00;
            valid_in <= 1'b0;
            a_reuse_flag <= 3'b0;
        end
    end

endmodule
