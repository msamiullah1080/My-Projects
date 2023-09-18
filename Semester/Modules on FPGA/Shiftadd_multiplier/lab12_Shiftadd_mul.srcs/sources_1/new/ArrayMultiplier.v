`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2023 06:55:21 PM
// Design Name: 
// Module Name: ArrayMultiplier
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


module ArrayMultiplier(
input [3:0] A,
input [3:0] B,
output [7:0] P
    );
  
wire [3:0] P1,P2,P3,P4; //ANDed results
wire [3:0] S1,S2,S3; //output of four bit adders
wire [2:0] cout; //output of four bit adders
    
ANDing A1(A,B,P1,P2,P3,P4);

Four_bit_Adder fa1({0,P1[3:1]},P2,0,cout[0],S1);
Four_bit_Adder fa2({cout[0],S1[3:1]},P3,0,cout[1],S2);
Four_bit_Adder fa3({cout[1],S2[3:1]},P4,0,cout[2],S3);

 assign P = {cout[2],S3,S2[0],S1[0],P1[0]};


endmodule
