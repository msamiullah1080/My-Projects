`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2023 04:34:23 PM
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
input clk,
input sel,
input reset, // reset is active low
input [3:0] A,  
input [3:0] B,
output wire [3:0] Sum
);

//clk_div c1(clk,clock);    

wire sout_1,sout_2, temp;  //sout=serial_out of PISO, temp=sum of adder
wire carry,Q;   // Q is output of DFF,
wire [3:0] temp1;   // temp1 is output of SIPO

PISO p1(A,clk,sel,reset,sout_1);
PISO p2(B,clk,sel,reset,sout_2);

full_adder fa(sout_1,sout_2,Q,carry,temp);

DFF d1(carry,clk,reset,Q);

SIPO s1(temp,clk,reset,temp1);

PIPO r1(temp1,clk,reset,Sum);  //why we need this PIPO, why dont we output directly




endmodule
