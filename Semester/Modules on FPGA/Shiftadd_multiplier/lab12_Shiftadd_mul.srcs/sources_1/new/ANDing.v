`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2023 07:18:23 PM
// Design Name: 
// Module Name: ANDing
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


module ANDing(
input [3:0] A,
input [3:0] B,
output [3:0] out1,out2,out3,out4
    );

assign out1 = {(A[3]&B[0]),(A[2]&B[0]),(A[1]&B[0]),(A[0]&B[0])};
assign out2 = {(A[3]&B[1]),(A[2]&B[1]),(A[1]&B[1]),(A[0]&B[1])};
assign out3 = {(A[3]&B[2]),(A[2]&B[2]),(A[1]&B[2]),(A[0]&B[2])};
assign out4 = {(A[3]&B[3]),(A[2]&B[3]),(A[1]&B[3]),(A[0]&B[3])};

endmodule
