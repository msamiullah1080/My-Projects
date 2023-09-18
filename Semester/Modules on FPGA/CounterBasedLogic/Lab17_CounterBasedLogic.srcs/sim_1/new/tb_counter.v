`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2023 06:38:15 PM
// Design Name: 
// Module Name: tb_counter
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


module tb_counter;

reg clk;
reg reset;
wire [3:0] count;
wire [7:0] instruction ;

LoadableCounter t1(clk,reset,count,instruction);

always begin
clk=0; #5;
clk=1; #5;
end

initial begin
reset=1; #10;
reset=0; #180;

$finish;

end
endmodule
