`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2017 15:18:03
// Design Name: 
// Module Name: sigma_delta_tb
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


module sigma_delta_tb();

    reg [15:0] data_in;
    reg clock;
    reg reset;
    wire data_out;
    reg [15:0] data [255:0];
    integer i;
    integer index;
    
    initial begin
        i = 0;
        index = 0;
        $readmemh("C:/Users/13400002/Documents/SigDel/data.txt", data);
        clock <= 1'b1;
        reset <= 1'b1;
        data_in <= 16'h0000;
        
        #5 reset <= 1'b0;
        #5 reset <= 1'b1;
    end
    
    always #5
        clock <= ~clock;
    
    always @(posedge clock) begin
        if(i%64 == 0) begin
            data_in <= data[index];
            index = index + 1; 
        end
        i = i + 1;
        if(i == 16384)
            $finish;
    end
    
    sigma_delta my_SD(.DATA(data_in), .CLK(clock), .RST(reset), .OUT(data_out));
endmodule
