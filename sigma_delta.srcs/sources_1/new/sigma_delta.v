`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Rico Co
// Engineer: Dylan Malone Stuart, Enrico Marugliano, Ciaran Bannon
// 
// Create Date: 10.04.2017 14:26:14
// Design Name: Sigma Delta Modulator
// Module Name: sigma_delta
// Project Name: sigma_delta

// Description: 
// 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sigma_delta(
    input wire [15:0] DATA,
    input wire CLK,
    input wire RST,
    output reg OUT
    );
    
    reg [15:0] delayed_input;
    wire [15:0] extended_output;
    
    DDC_1 SignExtend_DDC(.IN(OUT), .OUT(extended_output));
    
    always @(posedge CLK or negedge RST) begin
    
        if(RST == 1'b0) begin //If a reset has occurred
            delayed_input <= 16'h0000; //Clear the internal register
            OUT <= 1'b0; //Clear the output
        end else begin
            delayed_input <= DATA - extended_output + delayed_input;
            OUT <= delayed_input[15];
        end
    
    end
    
endmodule
