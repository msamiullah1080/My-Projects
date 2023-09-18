`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2023 09:42:56 AM
// Design Name: 
// Module Name: Top_Module
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


//module Top_module(
//input [7:0] A,
//input [3:0] B,
////input clk,
//output [7:0] P);

//reg [7:0] P=0;
//integer i;

//always @(*) begin
    
//    for (i = 0; i < 4; i = i + 1) begin
//        if (B[i] == 1) P = P + (A << i);
//    end
//end

//endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module ShiftAddMultiplier(
    input [3:0] A,
    input [3:0] B,
    input clk,
    input load,
    output reg [7:0] Out
    );
    
    reg [3:0] Q;
    reg [7:0] X;
    reg [2:0] N;
    reg [7:0] P;
    
    reg [7:0] Out=0;
    
    always@(posedge clk) begin
        if (load) begin
            X <= {4'd0, A};
            Q <= B;
            N <= 4;
            P <= 0;
            end
        else if (N > 0) begin
            if (Q[0] == 1) P = P + X;
            X = X << 1;
            Q = Q >> 1;
            N = N -1;
            end
        else Out <= P;
            
    end
    
endmodule
