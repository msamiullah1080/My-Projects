`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2023 03:28:46 PM
// Design Name: 
// Module Name: 2x4_Decoder
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


module two_four_Decoder(
input [1:0] in,
output wire [3:0] out
);

wire not1,not2;

not n1(not1,in[0]);
not n2(not2,in[1]);

and a1(out[0],not1,not2);
and a2(out[1],in[0],not2);
and a3(out[2],in[1],not1);
and a4(out[3],in[0],in[1]);


endmodule
