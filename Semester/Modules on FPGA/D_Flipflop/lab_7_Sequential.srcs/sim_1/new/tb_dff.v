`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 04:28:23 PM
// Design Name: 
// Module Name: tb_dff
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


module tb_dff;
reg D;
reg reset;
reg clk;
wire Q;
wire Qn;

MS_DFF d1(D,clk,reset,Q,Qn);
 
 always begin
 clk=0; #5;
 clk=1; #5;
 end
 
initial begin
D=1; reset=1; #7;
D=1; reset=0; #12;
D=0; reset=1; #17;
$finish;
end

endmodule
