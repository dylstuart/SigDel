`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2017 14:54:45
// Design Name: 
// Module Name: DDC_1
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


module DDC_1(
    input wire IN,
    output reg [15:0] OUT
    );
    
    always @(IN) begin
        if(IN == 1'b1)
            OUT <= 16'b0111111111111111;
        else
            OUT <= 16'b1000000000000000;
    end
endmodule
