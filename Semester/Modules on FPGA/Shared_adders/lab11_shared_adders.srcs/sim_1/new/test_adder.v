`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2023 08:21:32 PM
// Design Name: 
// Module Name: test_adder
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

//adder test bench
module test_adder;
reg clk;
reg sel;
reg reset; // reset is active low
reg [3:0] A;  
reg [3:0] B;
wire[3:0] Sum;

Top_Module uut(clk,sel,reset,A,B,Sum);

always begin
clk=0; #5;
clk=1; #5;
end

initial begin
reset=0; #10;

sel=1; A=12; B=5; reset=1; #10;
sel=0; A=12; B=5; reset=1; #200;

$finish;

end
endmodule

//test PISO
//module test_adder;
//reg clk;
////reg sel;
//reg reset; // reset is active low
//reg [3:0] A;  
//wire [3:0] Sum;

//PIPO uut(A,clk,reset,Sum);

//always begin
//clk=0; #5;
//clk=1; #5;
//end

//initial begin
//reset=0; #10;

//A=4'b0101; reset=1; #10;
//reset=1; #50;

//$finish;

//end
//endmodule


////test clkdiveder

//module clk_tb;
//reg clock_in; // input clock on FPGA
//wire clock_out; // output clock after dividing the input clock by divisor

//clk_div d1(clock_in,clock_out);

//always begin
//clock_in=0;#1;
//clock_in=1;#1;


//end
//endmodule