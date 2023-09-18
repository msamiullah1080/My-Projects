`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 04:45:27 PM
// Design Name: 
// Module Name: PISO_tb
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


module PISO_tb;
reg [7:0] par_in;
reg clk;
reg sel;
reg clear;
wire serial_out;

PISO p1(par_in,clk,sel,clear,serial_out);

always begin
clk=0; #5;
clk=1; #5;
end

initial begin
par_in=8'b01010101; clear=1; sel=1; #10;
par_in=8'b01010101; clear=1; sel=0; #100;
$finish;
end
endmodule
