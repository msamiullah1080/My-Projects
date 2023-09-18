`timescale 1ns / 1ps
// Create Date: 06/24/2023 10:49:11 PM
// Design Name: 
// Module Name: Four_bit_Adder

//module Four_bit_Adder(
//input [3:0] A,
//input [3:0] B,
//output reg [3:0] Sum,
//output reg OV,
//output reg OV_U
//);

//always @(*) begin
    
//    Sum = A + B;

//    OV = (A[3] & B[3] & ~Sum[3]) | (~A[3] & ~B[3] & Sum[3]);

//    OV_U = A[3] & B[3] & ~Sum[3];
//end
//endmodule

module Four_bit_Adder (  
input [N-1:0] a,  
input [N-1:0] b,  
input c_in,  
output reg c_out,  
output reg [N-1:0] sum
);  
 
parameter N = 4; 
always @ (a or b or c_in) begin  
    {c_out, sum} = a + b + c_in;  
  end  
endmodule
