`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 01:00:09 PM
// Design Name: 
// Module Name: fourtoone_MUX
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


module fourtoone_MUX(
input [1:0] s,
input [3:0] SW,
output wire LED
    );
    
assign LED = (~s[0] & ~s[1] & SW[0]) | (s[0] & ~s[1] & SW[1]) |(~s[0] & s[1] & SW[2]) |(s[0] & s[1] & SW[3]); 


endmodule
