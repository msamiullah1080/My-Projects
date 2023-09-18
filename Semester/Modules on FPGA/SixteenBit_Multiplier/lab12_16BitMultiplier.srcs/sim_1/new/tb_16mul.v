`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2023 12:03:37 PM
// Design Name: 
// Module Name: tb_16mul
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


module tb_16mu;
reg [15:0] A;
reg [15:0] B;
reg clk;
wire [31:0] P;

SixteenMultiplier s1(A,B,clk,P);

always begin
clk=0; #5;
clk=1; #5;
end

initial begin
A=40000; B=60000; #50

$finish;
end


endmodule
