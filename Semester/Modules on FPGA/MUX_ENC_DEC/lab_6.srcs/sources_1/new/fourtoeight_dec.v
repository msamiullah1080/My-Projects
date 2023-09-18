`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 11:53:02 AM
// Design Name: 
// Module Name: fourtoeight_dec
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


module fourtoeight_dec(
input [4:0] SW,
input En,
output [15:0] LED
    );
    
wire [3:0] en;

twotofour_decoder a1(SW[3:2],En,en[3:0]);
twotofour_decoder a2(SW[1:0],en[0],LED[3:0]);
twotofour_decoder a3(SW[1:0],en[1],LED[7:4]);
twotofour_decoder a4(SW[1:0],en[2],LED[11:8]);
twotofour_decoder a5(SW[1:0],en[3],LED[15:12]);

endmodule
