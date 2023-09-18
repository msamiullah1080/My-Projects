`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 10:40:32 AM
// Design Name: 
// Module Name: twotofour_decoder
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


module twotofour_decoder(
input [1:0] SW,
input En,
output reg [3:0] LED
);
    
always@(*) begin
    
    LED[0]= ~SW[0] & ~SW[1] & En;
    LED[1]= SW[0] & ~SW[1] & En;
    LED[2]= ~SW[0] & SW[1] & En;
    LED[3]= SW[0] & SW[1] & En;
    
    
end
endmodule
