`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 01:05:12 PM
// Design Name: 
// Module Name: tb_MUX
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


module tb_MUX;
reg [3:0] s;
reg [15:0] SW;
wire LED;

sixteentoone tdd1(s,SW,LED);

initial begin
s=0; SW=16'b0001000100010001; #100;
s=1; SW=16'b0010001000100010; #100;
s=15; SW=16'b1100001000100010; #100;
s=7; SW=16'b1000001000100010; #100;
$finish;

end
endmodule
