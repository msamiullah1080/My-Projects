`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 12:23:53 PM
// Design Name: 
// Module Name: fourtotwo_enc
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


module fourtotwo_enc(
input [3:0] SW,
output wire [1:0] LED

    );
    
assign LED[0] = SW[3] | SW[1];
assign LED[1] = SW[3] | SW[2];

endmodule
