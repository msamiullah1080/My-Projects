`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 03:17:48 PM
// Design Name: 
// Module Name: sixteentoone
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


module sixteentoone(
input [3:0] s,
input [15:0] SW,
output wire LED
    );
    
wire [3:0] y;

fourtoone_MUX M1(s[1:0],SW[3:0],y[0]);
fourtoone_MUX M2(s[1:0],SW[7:4],y[1]);
fourtoone_MUX M3(s[1:0],SW[11:8],y[2]);
fourtoone_MUX M4(s[1:0],SW[15:12],y[3]);

fourtoone_MUX M5(s[3:2],y,LED);


endmodule
