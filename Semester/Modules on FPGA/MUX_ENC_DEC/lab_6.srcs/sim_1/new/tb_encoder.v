`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 12:45:36 PM
// Design Name: 
// Module Name: tb_encoder
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


module tb_encoder;
reg [3:0] SW;
wire [1:0] LED;

fourtotwo_enc f42(SW,LED);

initial begin
SW=4'b0001;#100;
SW=4'b0010;#100;
SW=4'b0100;#100;
SW=4'b1000;#100;

$finish;
end


endmodule
