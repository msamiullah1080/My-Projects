`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2023 11:22:45 PM
// Design Name: 
// Module Name: tb_4
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


module tb_4;

reg clk;
reg start;
reg [3:0] multiplicand;
reg [3:0] multiplier;
wire [7:0] product;
wire done;

FourBitMul t1(start,clk,multiplicand,multiplier,product,done);

always begin
clk=0; #5;
clk=1; #5;
end

initial begin

multiplicand=6;
multiplier=4;
start=1; #15;

start=0;
#100;

$finish;


end

endmodule

