`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2023 04:10:59 PM
// Design Name: 
// Module Name: TrafficControl
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


module TrafficControl(
input clk,
output reg [2:0] St1, St2  //[G,Y,R]
);
    
reg [1:0] count=0;
reg [2:0] St1=0;
reg [2:0] St2=0;
reg [1:0] state=0;

always @ (posedge clk) begin

count=count+1;
if(state==0)begin
    St1=3'b001;
    St2=3'b100;
    
    if(count==2) begin
    state=1;
    count=0;end

    end

else if(state==1) begin
    
    if(count==1) begin
    state=2;
    count=0;end
    
    St1=3'b001;
    St2=3'b010;
    end

else if(state==2) begin
    
    if(count==2)begin
    state=3;
    count=0;end
    
    St1=3'b100;
    St2=3'b001;
    end


else if(state==3) begin
    
    if(count==1)begin
    state=0;
    count=0;end
    
    St1=3'b010;
    St2=3'b001;
    end



end
endmodule
