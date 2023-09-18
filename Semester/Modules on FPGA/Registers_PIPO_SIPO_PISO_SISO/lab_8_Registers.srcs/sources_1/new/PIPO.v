`timescale 1ns / 1ps




module PIPO(
input [3:0] par_in,
input clk,
input clear,
output reg [3:0] par_out
);

always @(posedge clk) begin
    if(~clear)
        par_out<=0;
    else 
        par_out<=par_in;
end 
endmodule