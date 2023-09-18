`timescale 1ns / 1ps

module uniform_adder(
input [7:0] A,
input [7:0] B,
input cin,
output [7:0] Sum,
output cout
);

wire c0,c1;
wire s0,s1;


Four_bit_Adder FA1 ( A,B,0,c0,s0);
Four_bit_Adder FA2 ( A,B,1,c1,s1);

two_1_MUX M1( {c0,s0},{c1,s1},cin,{cout,Sum});



endmodule

