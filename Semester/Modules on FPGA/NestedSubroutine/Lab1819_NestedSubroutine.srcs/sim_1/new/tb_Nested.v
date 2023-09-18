`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2023 02:38:10 PM
// Design Name: 
// Module Name: tb_Nested
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


module tb_Nested;
reg reset;
reg clk;
wire [4:0] instruction;
wire [4:0] address;
wire [4:0] count;
wire [1:0] MuxSel;

TopModule T1(reset,clk, instruction, address,count, MuxSel);

always begin
clk=1; #5;
clk=0; #5;
end

initial begin
reset=1; #10;
reset=0; #200;


end
endmodule
