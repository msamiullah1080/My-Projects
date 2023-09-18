`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 03:27:37 PM
// Design Name: 
// Module Name: SIPO
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


module SIPO(
input serial_in,
input clk,
input clear,
output reg [3:0] par_out
    );

reg [3:0] temp;
 
always @(posedge clk)
begin
    if(~clear)
        par_out<=0;
    else
        begin
        temp <= par_out>>1;
        par_out <= {serial_in,temp[2:0]};
        
        end
 end   
endmodule
