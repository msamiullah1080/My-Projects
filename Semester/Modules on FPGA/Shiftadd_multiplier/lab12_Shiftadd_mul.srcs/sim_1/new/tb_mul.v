`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2023 11:10:40 AM
// Design Name: 
// Module Name: tb_mul
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

//testbench shiftadd
//module tb_mul;
//reg [3:0] A;
//reg [3:0] B;
//reg clk;
//reg load;
//wire [7:0] Out;

//ShiftAddMultiplier t1(A,B,clk,load,Out);

//always begin 
//clk=0;#5;
//clk=1;#5;
//end

//initial begin
//A=5;B=2;load=1;#10;
//load =0;#100;

//$finish;
//end
//endmodule


//testbench arraymul
module tb_mul;
reg [3:0] A;
reg [3:0] B;
wire [7:0] P;


ArrayMultiplier t1(A,B,P);

initial begin
A=5;B=2;;#10;
A=10;B=12;;#10;
A=9;B=11;;#10;


$finish;
end
endmodule
