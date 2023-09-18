`timescale 1ns / 1ps

module three_eight_Decoder_dataflow(

input [2:0] in,
output wire [7:0] out
);

assign out[0] = (in==0)? 1: 0;
assign out[1] = (in==1)? 1: 0;
assign out[2] = (in==2)? 1: 0;
assign out[3] = (in==3)? 1: 0;
assign out[4] = (in==4)? 1: 0;
assign out[5] = (in==5)? 1: 0;
assign out[6] = (in==6)? 1: 0;
assign out[7] = (in==7)? 1: 0;



endmodule



