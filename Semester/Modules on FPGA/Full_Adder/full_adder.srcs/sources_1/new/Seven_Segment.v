`timescale 1ns / 1ps

module Seven_Segment(
  input [3:0] num,
  output [6:0] Seg,
  output [3:0] an
);
  
  reg [6:0] Seg;
  wire [3:0] an;
//  assign an = 4'b0001;
  
  always @(*) begin
    case (num)
        4'b0000:    Seg = 7'b1000000; // 0
        4'b0001:    Seg = 7'b1111001; // 1
        4'b0010:    Seg = 7'b0100100; // 2
        4'b0011:    Seg = 7'b0110000; // 3
        4'b0100:    Seg = 7'b0011001; // 4
        4'b0101:    Seg = 7'b0010010; // 5
        4'b0110:    Seg = 7'b0000010; // 6
        4'b0111:    Seg = 7'b1111000; // 7
        4'b1000:    Seg = 7'b0000000; // 8
        4'b1001:    Seg = 7'b0001000; // 9
        4'b1010:    Seg = 7'b0000011; // 10 (A)
        4'b1011:    Seg = 7'b0000110; // 11 (B)
        4'b1100:    Seg = 7'b1000110; // 12 (C)
        4'b1101:    Seg = 7'b0100001; // 13 (D)
        4'b1110:    Seg = 7'b0000110; // 14 (E)
        4'b1111:    Seg = 7'b0001110; // 15 (F)
        
        default:    Seg = 7'b1111111; // Display blank if input is invalid

   endcase
  
  end
  
endmodule
