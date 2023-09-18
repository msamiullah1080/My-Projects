`timescale 1ns / 1ps

// {enable, loopinst, end [4:0], count [4:0], architecture [3:0]}
module ROMLoop(input [4:0] address, output reg [15:0] instruction);

reg [15:0] rom[31:0];

always@(*)
begin

rom[0] = 0;
rom[1] = 1;
rom[2] = 2;
rom[3] = 16'b1101000001001111;
rom[4] = 4;
rom[5] = 5;
rom[6] = 6;
rom[7] = 7;
rom[8] = 8;
rom[9] = 9;
rom[10] = 10;
rom[11] = 11;
rom[12] = 12;
rom[13] = 13;
rom[14] = 14;
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