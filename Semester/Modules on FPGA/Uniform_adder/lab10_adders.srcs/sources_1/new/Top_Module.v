`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2023 03:04:17 PM
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
input [7:0] A,
input [7:0] B,
input cin,  //select of sum with or without carry
output [7:0] Sum,
output cout
    );
    
wire c0;
//wire c1;

uniform_adder ua1( A[3:0],B[3:0],cin, Sum[3:0],c0);
uniform_adder ua2( A[7:4],B[7:4],c0, Sum[7:4],cout);
//uniform_adder ua3( A[11:8],B[11:8],c1, Sum[11:8],cout);



endmodule
