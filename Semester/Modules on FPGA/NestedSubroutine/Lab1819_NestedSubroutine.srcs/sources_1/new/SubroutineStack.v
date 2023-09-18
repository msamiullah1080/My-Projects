`timescale 1ns / 1ps

module SubroutineStack(
input clk,
input En,
input PC,
input [3:0] top,
output reg [4:0] retAdd
);

reg [4:0]Register[15:0];


always@(posedge clk) begin
    
    if(En)
        Register[top] <= PC;
        
    retAdd <= Register[top-1];
end

endmodule
