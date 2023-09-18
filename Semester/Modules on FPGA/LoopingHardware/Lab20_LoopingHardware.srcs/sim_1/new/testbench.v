`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2023 11:46:57 AM
// Design Name: 
// Module Name: testbench
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


module testbench;

reg reset;
reg clk;
wire Loop_end_inst;
wire Loop_end_flag;
wire [3:0] instruction;
wire [4:0] Loop_end_addr_reg;
wire [4:0] Loop_counter_reg;
wire Loop_end_addr_flag;


TopTop T1(reset, clk, Loop_end_inst, Loop_end_flag, instruction,Loop_end_addr_reg,Loop_counter_reg,Loop_end_addr_flag);

always begin 
clk=0; #5;
clk=1; #5;
end

initial begin
reset=1; #10;
reset=0; #400;

$finish;

end

endmodule
