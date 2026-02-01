`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/20 22:07:12
// Design Name: 
// Module Name: sph2cas
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


module sph2cas(
    input [31:0] theta_0,  // input fixed-point S2.14   {sin, cos}
    input [31:0] theta_1,
    input [31:0] phi_0,
    input [31:0] phi_1,
    input clk,  
    input rst_n,
    input s_tvalid,
    output reg [23:0] x_0,   // output fixed-point S4.12
    output reg [23:0] x_1,
    output reg [23:0] y_0,
    output reg [23:0] y_1,
    output reg [23:0] z_0,
    output reg [23:0] z_1,
    output reg m_dout_tvalid
    );
    wire signed [31:0] x_0_temp;
    wire signed [31:0] x_1_temp;
    wire signed [31:0] y_0_temp;
    wire signed [31:0] y_1_temp;
    wire signed [23:0] z_0_temp;
    wire signed [23:0] z_1_temp;
    assign x_0_temp = $signed(theta_0[15:0]) * $signed(phi_0[31:16]); // Placeholder logic cos\theta * sin \phi
    assign x_1_temp = $signed(theta_1[15:0]) * $signed(phi_1[31:16]);
    assign y_0_temp = $signed(theta_0[31:16]) * $signed(phi_0[31:16]);  // Placeholder logic sin\theta * sin \phi
    assign y_1_temp = $signed(theta_1[31:16]) * $signed(phi_1[31:16]);  // Placeholder logic sin\theta * sin \phi
    assign z_0_temp = {phi_0[15], phi_0[15], phi_0[15:0], {6{1'b0}}};                     // Placeholder logic cos \phi S2.14 -> S4.20
    assign z_1_temp = {phi_1[15], phi_1[15], phi_1[15:0], {6{1'b0}}};                      // Placeholder logic cos \phi S2.14 -> S4.20
    // truncate to 24 bits
    // S2.14 * S2.14 = S4.28 -> truncate to S4.20
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            x_0 <= 24'd0;
            x_1 <= 24'd0;
            y_0 <= 24'd0;
            y_1 <= 24'd0;
            z_0 <= 24'd0;
            z_1 <= 24'd0;
        end
        else begin
            x_0 <= x_0_temp[31:8];
            x_1 <= x_1_temp[31:8];
            y_0 <= y_0_temp[31:8];
            y_1 <= y_1_temp[31:8];
            z_0 <= z_0_temp;
            z_1 <= z_1_temp;
        end
    end
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            m_dout_tvalid <= 1'b0;
        end
        else begin
            m_dout_tvalid <= s_tvalid;
        end
    end
endmodule
