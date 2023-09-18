`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2023 04:22:56 PM
// Design Name: 
// Module Name: ThreeBitMultiplier
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


module ThreeBitMul(
input start,
input clk,
input [2:0] multiplicand,
input [2:0] multiplier,
output reg [5:0] product,
output reg done
);

reg [2:0] temp1;
reg [5:0] accum=0, temp2;
reg [1:0] state=0;
reg [1:0] count=0;

always @(posedge clk) begin

    if(state==0 && start) begin
        state<=1;
        temp1 = multiplier;
        temp2 = multiplicand;
        
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
        
        if(count==3)
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
