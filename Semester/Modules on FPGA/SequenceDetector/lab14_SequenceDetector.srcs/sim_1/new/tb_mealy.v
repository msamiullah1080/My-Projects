`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2023 04:06:11 PM
// Design Name: 
// Module Name: tb_mealy
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


module tb_mealy;
reg clk;
reg reset;
reg ain;
wire yout;
wire [3:0] count;
wire [1:0] state;

MealyMachine m1(ain,reset,clk,yout,count, state);

always begin
clk=0; #5;
clk=1; #5;
end

initial begin
reset=1; ain=0; #20
reset=0; #20

ain=1; reset=0; #20

ain=0; #60;


ain=1; #40;
ain=0; #20;
ain=1; #10;
reset=1;#10;
//ain=0; #10;
//ain=1; #10;

$finish;
end

endmodule
