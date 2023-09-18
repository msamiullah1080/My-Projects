`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2023 10:38:16 AM
// Design Name: 
// Module Name: SixteenMultiplier
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


module SixteenMultiplier(
input [15:0] A,
input [15:0] B,
input clk,
output reg [31:0] P
    );
    
//reg Al, Ah, Bl, Bh;
reg [7:0] M1,M2;  // mux output
reg [15:0] PP1=0,PP2=0,PP3=0,PP4=0;
reg [1:0] selA=0;
//reg [31:0] P=0;

always @(posedge clk) begin
//Al=A[7:0];
//Ah=A[15:8];

//Bl=B[7:0];
//Bh=B[15:8];

M1= (selA[0]==0)? A[7:0]:A[15:8]; 
M2= (selA[1]==0)? B[7:0]:B[15:8]; 
 

case(selA)
    2'b00: PP1= M1*M2;
    2'b01: PP2= M1*M2;
    2'b10: PP3= M1*M2;
    2'b11: PP4= M1*M2;
    endcase
     

if(selA==3) selA=0;
else selA = selA + 1;

P = {PP4,16'b0}+{8'b0,(PP2+PP3),8'b0}+{16'b0,PP1};
end


endmodule
