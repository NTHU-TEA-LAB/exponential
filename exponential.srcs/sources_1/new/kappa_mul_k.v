`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/24 20:04:26
// Design Name: 
// Module Name: kappa_mul_k
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


module kappa_mul_k(
    input clk,
    input rst_n,
    input start,

    output valid_out,
    output [55:0] mul_result,
    output [23:0]cordic_in,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN ADDR" *)
    output  wire  [3:0] bram_addr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN CLK" *)
    output  wire        bram_clk,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN DIN" *)
    output  wire  [31:0] bram_din,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN DOUT" *)
    input wire [31:0] bram_dout,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN RST" *)
    output  wire        bram_rst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN EN" *)
    output  wire        bram_en,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN WE" *)
    output  wire    bram_we,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_K ADDR" *)
    output  wire  [8:0] bram_addr_k,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_K CLK" *)
    output  wire        bram_clk_k,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_K DIN" *)
    output  wire  [23:0] bram_din_k,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_K DOUT" *)
    input wire [23:0] bram_dout_k,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_K RST" *)
    output  wire        bram_rst_k,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_K EN" *)
    output  wire        bram_en_k,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_K WE" *)
    output  wire    bram_we_k
    );

    reg [3:0] count_a;  // count for input kappa @ distance
    reg [8:0] count;    // count for multiplication times 0 to 257

    wire valid;
    reg [1:0] valid_delay;
    localparam IDLE = 4'd0,
               MUL = 4'd1,
               FIN = 4'd2;
    reg [3:0] state, next_state;
    // reg [23:0] bram_dout_delay [0:1];
    // reg [15:0] bram_dout_k_delay[0:1];
    assign bram_clk = clk;
    assign bram_rst = ~rst_n;
    assign bram_en = (state == MUL || state == FIN) ? 1'b1 : 1'b0;
    assign bram_we = 1'b0;
    assign bram_addr = count_a;
    assign bram_din = 24'd0;

    assign bram_clk_k = clk;
    assign bram_rst_k = ~rst_n;
    assign bram_en_k = (state == MUL || state == FIN) ? 1'b1 : 1'b0;
    assign bram_we_k = 1'b0;
    assign bram_addr_k = count;
    assign bram_din_k = 24'd0;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= IDLE;
        else
            state <= next_state; 
    end
    always @(*) begin
        case (state)
            IDLE: 
                next_state = (start) ? MUL : IDLE;
            MUL: begin
                next_state = (count == 9'd256 && count_a == 4'd15) ? FIN : MUL;
            end
            FIN: begin
                next_state = IDLE;
            end
            default: next_state = IDLE;
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
        begin
            count_a <= 4'd0;
            count <= 9'd0;
        end
        else if (state == IDLE) begin
            count_a <= 4'd0;
            count <= 9'd0;
        end
        else if (state == MUL) begin
            count_a <= count_a + 4'd1;
            if (count_a == 4'd15)
            begin
                count <= count + 9'd1;
            end
        end
        // else begin
        //     valid <= 1'b0;
        // end
    end
assign valid = (state == MUL) ? 1'b1 : 1'b0;

// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//         bram_dout_delay[0] <= 24'd0;
//         bram_dout_delay[1] <= 24'd0;
//         bram_dout_k_delay[0] <= 24'd0;
//         bram_dout_k_delay[1] <= 24'd0;
//     end
//     else begin
//         bram_dout_delay[0] <= bram_dout;
//         bram_dout_delay[1] <= bram_dout_delay[0];
//         bram_dout_k_delay[0] <= bram_dout_k;
//         bram_dout_k_delay[1] <= bram_dout_k_delay[0];
//     end
    // else begin
    //     bram_dout_delay[0] <= 24'd0;
    //     bram_dout_delay[1] <= 24'd0;
    //     bram_dout_k_delay[0] <= 16'd0;
    //     bram_dout_k_delay[1] <= 16'd0;
    // end
// end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        // mul_result <= 40'd0;
        valid_delay <= 2'b0;
    end
    else begin
        // signed multiplication
        // mul_result <= $signed(bram_dout_delay[1]) * $signed(bram_dout_k_delay[1]); // 24 bits * 16 bits = 40 bits
        valid_delay[0] <= valid;
        valid_delay[1] <= valid_delay[0]; 
    end
end
assign valid_out = valid_delay[1];
assign mul_result = $signed(bram_dout) * $signed(bram_dout_k); // 32 bits * 24 bits = 56 bits
assign cordic_in = {mul_result[55], mul_result[55], mul_result[55], mul_result[39:19]};// take the 24 bits for cordic input

endmodule
