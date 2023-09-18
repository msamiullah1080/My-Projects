`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2023 03:09:12 PM
// Design Name: 
// Module Name: LoadableCounter
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


module LoadableCounter(
input clk,
input reset,
output reg [3:0] count,
output reg [7:0] instruction
    );

wire [7:0] ROM [15:0];
//reg [7:0] instruction ;
   
   
   generate
    // Assigning 4-bit values to all locations of the ROM using a for loop
    for (genvar i = 0; i < 16; i = i + 1) begin
      if(i==5) assign ROM[i] = 8'b11010000;
      else assign ROM[i] = i[7:0];
    end
  endgenerate

//

always@(posedge clk) begin
    
    if(reset) count=0;
    
    else begin
    instruction=ROM[count];
    
    if(instruction[7])
        count=count+(instruction[6:4]);
    
    else if (count<15) count=count+1;
    end
end 
endmodule
