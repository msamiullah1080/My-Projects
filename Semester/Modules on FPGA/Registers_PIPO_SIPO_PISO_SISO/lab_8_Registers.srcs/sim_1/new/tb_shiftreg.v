`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 12:57:43 PM
// Design Name: 
// Module Name: tb_shiftreg
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


module tb_shiftreg;
reg serial_in;
reg clk;
reg reset;
wire [7:0] par_out;

SIPO sr1(serial_in,clk,reset,par_out);

always begin
clk=0; #5;
clk=1; #5;
end

initial begin
serial_in=1; reset=1; #10;
serial_in=0; reset=1; #10;
serial_in=0; reset=1; #10;
serial_in=0; reset=1; #10;
serial_in=0; reset=1; #10;
serial_in=0; reset=1; #10;
serial_in=0; reset=1; #10;
serial_in=0; reset=1; #10;
serial_in=0; reset=1; #10;
#200;
$finish;

end

endmodule
