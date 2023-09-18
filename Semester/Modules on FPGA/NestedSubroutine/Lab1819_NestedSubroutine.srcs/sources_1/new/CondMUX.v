`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2023 11:45:53 AM
// Design Name: 
// Module Name: CondMUX
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


module CondMUX(
input [1:0] cond,
input polarity,
output reg jmpSel
    );
reg bit;

always @(*) begin


    case(cond)
    0: bit=1;  //equality
    1: bit=0;  //greater less
    2: bit=1;  
    3: bit=0;
    endcase

jmpSel= polarity ^ bit;

end
endmodule
