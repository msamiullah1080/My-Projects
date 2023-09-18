`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 10:49:28 AM
// Design Name: 
// Module Name: tb_decoder
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


module tb_decoder;
reg [3:0] w;
reg En;
wire [15:0] y;

fourtoeight_dec tb (w,En,y);

initial begin
    w=0;    En=0;   #100;
    w=4;    En=0;   #100;
    w=8;    En=0;   #100;
    w=14;    En=0;   #100;
    
    w=0;    En=1;   #100;
    w=4;    En=1;   #100;
    w=8;    En=1;   #100;
    w=14;    En=1;   #100;
    $finish;
end
endmodule
