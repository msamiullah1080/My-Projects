`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2023 12:17:58 PM
// Design Name: 
// Module Name: TopPointer
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


module TopPointer(
input clk,
input En,
input Up,
output reg [3:0] top
);

reg top = 0;

always @(posedge clk) begin
 
 case({En,Up})
 
 2'b11: top <= top + 1;
 2'b10: top <= top - 1;
 
 endcase

end


endmodule
