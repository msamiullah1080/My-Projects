`timescale 1ns / 1ps
// Create Date: 06/24/2023 10:50:19 PM
// Design Name: 
// Module Name: Top_Module

module Top_Module(
    input [3:0] A,
    input [3:0] B,
    output OV_S,
    output OV_U,
    output [6:0] seg,
    output [3:0] an
    );
    
    wire [3:0] Sum;
    assign an=4'b1110;
    
// instantiating the four bit adder and Seven Segment modules here

Four_bit_Adder U5(A,B,Sum,OV_S,OV_U);
Seven_Segment U6(Sum, seg, an);

endmodule
