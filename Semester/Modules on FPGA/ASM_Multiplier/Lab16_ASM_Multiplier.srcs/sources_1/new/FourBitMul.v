`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2023 09:03:44 PM
// Design Name: 
// Module Name: FourBitMul
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


module FourBitMul(
input start,
input clk,
input [3:0] multiplicand, //address
input [3:0] multiplier,   //address
output reg [7:0] product,
output reg done
);

reg [3:0] temp1;
reg [7:0] accum=0, temp2;
reg [1:0] state=0;
reg [2:0] count=0;

reg [3:0] ROM [31:0];

//generate
//    // Assigning 4-bit values to all locations of the ROM using a for loop
//    for (genvar i = 0; i < 32; i = i + 1) begin
//      assign ROM[i] = i[3:0];
//end
//endgenerate

always @(posedge clk) begin
ROM[0]  = 4'b0000;
    ROM[1]  = 4'b0001;
    ROM[2]  = 4'b0010;
    ROM[3]  = 4'b0011;
    ROM[4]  = 4'b0100;
    ROM[5]  = 4'b0101;
    ROM[6]  = 4'b0110;
    ROM[7]  = 4'b0111;
    ROM[8]  = 4'b1000;
    ROM[9]  = 4'b1001;
    ROM[10] = 4'b1010;
    ROM[11] = 4'b1011;
    ROM[12] = 4'b1100;
    ROM[13] = 4'b1101;
    ROM[14] = 4'b1110;
    ROM[15] = 4'b1111;
    ROM[16] = 4'b0000;
    ROM[17] = 4'b0001;
    ROM[18] = 4'b0010;
    ROM[19] = 4'b0011;
    ROM[20] = 4'b0100;
    ROM[21] = 4'b0101;
    ROM[22] = 4'b0110;
    ROM[23] = 4'b0111;
    ROM[24] = 4'b1000;
    ROM[25] = 4'b1001;
    ROM[26] = 4'b1010;
    ROM[27] = 4'b1011;
    ROM[28] = 4'b1100;
    ROM[29] = 4'b1101;
    ROM[30] = 4'b1110;
    ROM[31] = 4'b1111;
    
    if(state==0 && start) begin
        state<=1;
        temp1 = ROM[multiplier];
        temp2 = ROM[multiplicand+16];
        
    end
    
    else if(state==1) begin
     if(temp1[0])
        accum <= accum + temp2; //add
        
        state<=2; 
     end
    
    else if(state==2) begin
        temp1 = temp1>>1;  //shift
        temp2 = temp2<<1; 
        count=count+1;
        
        if(count==4)
            state<=3;
        else state<=1;
    end
    
    else if(state==3) begin
        done=1;
        state<=0;
        product<=accum;
    end
    
end    
endmodule
