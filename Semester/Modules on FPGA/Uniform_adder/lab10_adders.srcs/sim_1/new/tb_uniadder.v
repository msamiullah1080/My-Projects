`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2023 03:32:14 PM
// Design Name: 
// Module Name: tb_uniadder
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


module tb_uniadder;
reg [11:0] A;
reg [11:0] B;
reg cin;
wire [11:0] Sum;
wire cout;

Top_Module uut(A,B,cin,Sum,cout);

initial begin

A=12'b111111111111; B=12'b111100001111; cin=1; #10;
A=12'b110011110000; B=12'b111111000111; cin=1; #10;
A=12'b010111110010; B=12'b111111001111; cin=1; #10;
$finish;

end


endmodule
