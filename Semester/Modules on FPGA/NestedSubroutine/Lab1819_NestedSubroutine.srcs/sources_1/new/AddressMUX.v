`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2023 11:40:43 AM
// Design Name: 
// Module Name: AddressMUX
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


module AddressMUX(
input [1:0] MuxSel,
input [4:0] count,
input [4:0] returnAdd,
input [4:0] branchAdd,
output reg [4:0] address
    );

reg second_address=0;

always@(*) begin

   case (MuxSel)
   0: address = count;
   1: address = returnAdd;
   2: address = second_address;
   3: address = branchAdd;
   default: address=0;
   endcase


end
endmodule
