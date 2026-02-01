`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/22 16:13:22
// Design Name: 
// Module Name: mul_kappa_tb
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


module mul_kappa_tb;
reg clk;
reg rst_n;
reg start;
reg [15:0] a_din, b0_din, b1_din;
reg [2:0] addra;
reg [3:0] addrb0;
reg wea, web;
wire done;

wire bram_clk;
wire bram_rst;
wire bram_en;
wire bram_we;
wire [3:0] bram_addr;
wire [31:0] bram_din;
//reg [23:0] bram_dout;

mul_kappa uut(
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .a_din(a_din),
    .b0_din(b0_din),
    .b1_din(b1_din),
    .addra(addra),
    .addrb0(addrb0),
    .wea(wea),
    .web0(web),
    .done(done),
    .bram_clk(bram_clk),
    .bram_rst(bram_rst),
    .bram_en(bram_en),
    .bram_we(bram_we),
    .bram_addr(bram_addr),
    .bram_din(bram_din),
    .bram_dout()
    
);
always #10 clk = ~clk;
initial begin
    clk = 0;
    rst_n = 0;
    start = 0;
    a_din = 16'd0;
    b0_din = 16'd0;
    b1_din = 16'd0;
    addra = 3'd0;
    addrb0 = 4'd0;
    wea = 1'b0;
    web = 1'b0;
    #100;
    rst_n = 1;
    #20;
    wea = 1'b1;
    web = 1'b1;
    a_din = 16'd0; 
    b0_din = 16'd0; 
    b1_din = -2699; 
    addra = 3'd0;
    addrb0 = 4'd0;
    #20;
    wea = 1'b1;
    web = 1'b1;
    a_din = 1317; 
    b0_din = 16'd0; 
    b1_din = 6517; 
    addra = 3'd1;
    addrb0 = 4'd1;
    #20;
    wea = 1'b1;
    web = 1'b1;
    a_din = 3875; 
    b0_din = 16'd0; 
    b1_din = 16'b0; 
    addra = 3'd2;
    addrb0 = 4'd2;
    #20;
    wea = 1'b1;
    web = 1'b1;
    a_din = 0; 
    b0_din = -9216; 
    b1_din = -15733; 
    addra = 3'd3;
    addrb0 = 4'd3;
    #20;
    wea = 1'b1;
    web = 1'b1;
    a_din = -1493; 
    b0_din = 9216; 
    b1_din = 6517; 
    addra = 3'd4;
    addrb0 = 4'd4;
    #20;
    wea = 1'b1;
    web = 1'b1;
    a_din = 3813; 
    b0_din = 0; 
    b1_din = 0; 
    addra = 3'd5;
    addrb0 = 4'd5;
    #20;
    wea = 1'b0;
    web = 1'b1;
    a_din = 0; 
    b0_din = -18432; 
    b1_din = -15733; 
    addra = 3'd0;
    addrb0 = 4'd6;
    #20;
    wea = 1'b0;
    web = 1'b1;
    a_din = 0; 
    b0_din = 0; 
    b1_din = -6517; 
    addra = 3'd0;
    addrb0 = 4'd7;
    #20;
    wea = 1'b0;
    web = 1'b1;
    a_din = 0; 
    b0_din = 0; 
    b1_din = 0; 
    addra = 3'd0;
    addrb0 = 4'd8;
    #20;
    wea = 1'b0;
    web = 1'b1;
    a_din = 0; 
    b0_din = -9216; 
    b1_din = -2699; 
    addra = 3'd0;
    addrb0 = 4'd9;
    #20;
    wea = 1'b0;
    web = 1'b1;
    a_din = 0; 
    b0_din = -9216; 
    b1_din = -6517; 
    addra = 3'd0;
    addrb0 = 4'd10;
    #20;
    wea = 1'b0;
    web = 1'b1;
    a_din = 0; 
    b0_din = 0; 
    b1_din = 0; 
    addra = 3'd0;
    addrb0 = 4'd11;
    #20;
    web = 1'b0;
    start = 1;
    #20;
    start = 0;
    #1000;
    $finish;
end
endmodule
