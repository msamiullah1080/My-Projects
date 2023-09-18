`timescale 1ns / 1ps

// {nas [2:0], polarity, BCS [1:0], ba [4:0], architecture [4:0]}
module ROM(input [4:0] address, output reg [15:0] instruction);

reg [15:0] rom[31:0];

always@(*)
begin

    rom[0] = 0;
rom[1] = 1;
rom[2] = 2;
rom[3] = 16'b0010000010100011;
rom[4] = 4;// never show
rom[5] = 16'b0101000011100101;
rom[6] = 6;//never show
rom[7] = 16'b0100000000000111;
rom[8] = 16'b0110000110001000;
rom[9] = 9;
rom[10] = 10;
rom[11] = 16'b0010000111101011;
rom[12] = 12;
rom[13] = 13;
rom[14] = 16'b1010000000001110;
rom[15] = 15;
rom[16] = 16;
rom[17] = 17;
rom[18] = 18;
rom[19] = 19;
rom[20] = 20;
rom[21] = 21;
rom[22] = 22;
rom[23] = 23;
rom[24] = 24;
rom[25] = 25;
rom[26] = 26;
rom[27] = 27;
rom[28] = 28;
rom[29] = 29;
rom[30] = 30;
rom[31] = 31;

instruction = rom[address];
end

endmodule