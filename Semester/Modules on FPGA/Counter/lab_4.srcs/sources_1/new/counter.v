`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2023 10:04:30 AM
// Design Name: 
// Module Name: counter
// 
//////////////////////////////////////////////////////////////////////////////////


module counter(
input clk,
input reset,
output [5:0] count
    );
 reg [5:0] count;   
 
always @(posedge clk or posedge reset) begin
    if(reset)
        count<=0;
    
    //else if(count>=99)
     //   count<=0;
    
    else
        count=count+1;
end  
endmodule
