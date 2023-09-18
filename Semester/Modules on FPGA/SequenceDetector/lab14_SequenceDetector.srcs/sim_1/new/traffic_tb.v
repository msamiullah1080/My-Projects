`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2023 04:51:25 PM
// Design Name: 
// Module Name: traffic_tb
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


module traffic_tb;

reg clk;
wire [2:0] St1;
wire [2:0] St2;  //[G,Y,R]

TrafficControl t1(clk,St1,St2);

always begin
clk=0; #5;
clk=1; #5;
end


initial begin
#100;

$finish;


end

endmodule
