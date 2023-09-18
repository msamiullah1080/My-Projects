`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2023 04:33:28 PM
// Design Name: 
// Module Name: tb_decoder
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


module tb_decoder;
reg [2:0] in;
wire [7:0] out;

three_eight_Decoder_dataflow t1(in,out);

initial begin
in=0; #100;
in=1; #100;
in=4; #100;
in=6; #100;
$finish;
end
endmodule
