`timescale 1ns / 1ps


module PC (
input reset,
input clk,
input Loop_end_inst,
input [4:0] LoopStartAddress,
output reg [4:0] count
);

//reg [4:0] count=0;

always @ (posedge clk) begin

if(reset==1) count <= 0 ;

else if(Loop_end_inst) count <= LoopStartAddress;

else if(count<31) count <= count + 1;

end

endmodule