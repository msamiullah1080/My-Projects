`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2023 10:48:18 AM
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
reg clk;
wire [5:0] count;

counter UUT(clk, reset,count);

always begin
clk = 0;
#10;
clk = 1;
 #10;
end

initial begin
  reset=1;#10
#50  reset=0; #50;
$finish;
end

endmodule
