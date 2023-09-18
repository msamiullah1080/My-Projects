`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 10:01:56 AM
// Design Name: 
// Module Name: MS_DFF
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


module MS_DFF(
input D,
input clk,
input reset,
output wire Q,
output wire Qn
    );
    
wire S,R;

//master
assign S = ~(~(D&clk) & R);  
assign R = ~(~(~D&clk) & S);

//slave
assign Q  = ~(~(S&~clk) & Qn);
assign Qn = ~(~(R&~clk) & Q);

endmodule
