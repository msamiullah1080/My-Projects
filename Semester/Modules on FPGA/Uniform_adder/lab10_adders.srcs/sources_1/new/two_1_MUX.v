`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2023 02:54:43 PM
// Design Name: 
// Module Name: two_1_MUX
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


module two_1_MUX(
input [8:0] in_1,
input [8:0] in_2,
input sel,
output reg [8:0] out
);

always@(*) begin
    if(sel)
        out = in_2;
    else
        out = in_1;
end


endmodule
