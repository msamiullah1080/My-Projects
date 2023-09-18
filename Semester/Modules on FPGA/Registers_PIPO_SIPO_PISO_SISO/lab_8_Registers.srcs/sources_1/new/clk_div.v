`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 04:32:35 PM
// Design Name: 
// Module Name: clk_div
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


module clk_div(
input clock_in, // input clock on FPGA
output reg clock_out=0); // output clock after dividing the input clock by divisor

reg[26:0] counter=27'd0;
parameter DIVISOR = 27'd100000000;
// The frequency of the output clk_out
//  = The frequency of the input clk_in divided by DIVISOR
// For example: Fclk_in = 50Mhz, if you want to get 1Hz signal to blink LEDs
// You will modify the DIVISOR parameter value to 28'd50.000.000
// Then the frequency of the output clk_out = 50Mhz/50.000.000 = 1Hz

always @(posedge clock_in)
begin
 counter <= counter + 27'd1;
 if(counter>=(DIVISOR-1))
  counter <= 27'd0;
 clock_out <= (counter<DIVISOR/2)?1'b0:1'b1;
end
endmodule

