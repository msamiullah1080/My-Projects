`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 04:00:32 PM
// Design Name: 
// Module Name: DFF
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


module DFF(
    input D,
    input clk,
    input reset,
    output reg Q,
    output reg Qn
    );
 
always @(posedge clk) begin
    if(~reset) 
        Q<=0;
   
    else begin
        Q<=D;
        Qn<=~D;
        end
 end
 
endmodule
