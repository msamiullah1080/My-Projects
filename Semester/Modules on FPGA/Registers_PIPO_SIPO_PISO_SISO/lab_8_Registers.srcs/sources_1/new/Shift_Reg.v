`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 12:35:23 PM
// Design Name: 
// Module Name: Shift_Reg
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


module Shift_Reg(
input serial_in,
input clk,
input reset,
output serial_out

    );

wire q1,q2,q3,q4,q5,q6,q7;

DFF D1(serial_in,clk,reset,q1);
DFF D2(q1,clk,reset,q2);  
DFF D3(q2,clk,reset,q3);  
DFF D4(q3,clk,reset,q4);  
DFF D5(q4,clk,reset,q5);  
DFF D6(q5,clk,reset,q6);  
DFF D7(q6,clk,reset,q7);
DFF D8(q7,clk,reset,serial_out);       
    

endmodule
