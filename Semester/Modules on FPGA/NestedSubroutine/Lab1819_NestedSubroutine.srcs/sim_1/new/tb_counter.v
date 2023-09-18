`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2023 09:04:00 PM
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

reg reset;
reg [4:0] address;
reg clk;
wire [4:0] count;

always begin
clk=1; #5;
clk=0; #5;
end


PC p1(reset,address,clk,count);

initial begin
reset=1;#10;
reset=0; address=5;#20;

$finish;



end
endmodule
