`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 04:26:13 PM
// Design Name: 
// Module Name: PISO
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


module PISO(
input [3:0] SW,
input clk,
input sel,
input clear,
output reg serial_out
    );
wire clock;
reg [3:0]temp;



always @(posedge clk) begin
    if(~clear)
        serial_out<=0;
    
    else if(sel==1) 
        temp=SW;
    
    else begin
        serial_out = temp[0];
        temp=temp>>1;
    end    
end
    
endmodule
