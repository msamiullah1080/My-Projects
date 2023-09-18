`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 11:13:31 AM
// Design Name: 
// Module Name: threetoeight_dec
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


module threetoeight_dec(
input [2:0] SW,
input En,
output [7:0] LED
    );

wire [1:0] en;

assign en[0]= ~SW[2] & En;
assign en[1]= SW[2] & En;

twotofour_decoder t1(SW[1:0],en[0],LED[3:0]);
twotofour_decoder t2(SW[1:0],en[1],LED[7:4]);


endmodule
