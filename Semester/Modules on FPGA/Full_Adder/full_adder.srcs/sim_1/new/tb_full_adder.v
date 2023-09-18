`timescale 1ns / 1ps
// Create Date: 06/25/2023 10:03:23 PM
// Design Name: 
// Module Name: tb_full_adder

module tb_full_adder;
  reg [3:0] A;
  reg [3:0] B;
  wire [3:0] Sum;
  wire OV_S;
  wire OV_U;

  Top_Module UUT(
    .A(A),
    .B(B),
    .OV_S(OV_S),
    .OV_U(OV_U),
    .Seg(Seg),
    .an(an)
  );

  initial begin
   
    A = 4'b0101;    B = 4'b0011;    #10;
    A = 4'b1111;    B = 4'b0001;    #10;
    A = 4'b1101;    B = 4'b0100;    #10;
    A = 4'b1111;    B = 4'b1111;    #10;

    $finish;
  end

endmodule



