`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/29 19:33:17
// Design Name: 
// Module Name: save_exp_out
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


module save_exp_out(
    input clk,
    input rst_n,
    input [31:0] cordic_exp_out,
    input en,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_REAL ADDR" *)
    output  wire  [12:0] bram_addr_a,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_REAL CLK" *)
    output  wire        bram_clk_a,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_REAL DIN" *)
    output  wire  [15:0] bram_din_a,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_REAL DOUT" *)
    input wire [15:0] bram_dout_a,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_REAL RST" *)
    output  wire        bram_rst_a,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_REAL EN" *)
    output  wire        bram_en_a,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_REAL WE" *)
    output  wire    bram_we_a,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IMAG ADDR" *)
    output  wire  [12:0] bram_addr_b,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IMAG CLK" *)
    output  wire        bram_clk_b,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IMAG DIN" *)
    output  wire  [15:0] bram_din_b,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IMAG DOUT" *)
    input wire [15:0] bram_dout_b,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IMAG RST" *)
    output  wire        bram_rst_b,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IMAG EN" *)
    output  wire        bram_en_b,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IMAG WE" *)
    output  wire    bram_we_b
    );

    assign bram_clk_a = clk;
    assign bram_rst_a = ~rst_n;
    assign bram_en_a = en;
    assign bram_we_a = en;
    assign bram_addr_a = addr_counter;
    assign bram_din_a = cordic_exp_out[15:0]; // Save lower 16 bits (real part)

    assign bram_clk_b = clk;
    assign bram_rst_b = ~rst_n;
    assign bram_en_b = en;
    assign bram_we_b = en;
    assign bram_addr_b = addr_counter;
    assign bram_din_b = cordic_exp_out[31:16]; // Save upper 16 bits (imaginary part)


    reg [12:0] addr_counter;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            addr_counter <= 13'b0;
        end else if (en) begin
            addr_counter <= addr_counter + 1'b1;
        end
        else begin
            addr_counter <= 13'b0;
        end
    end
 
endmodule
