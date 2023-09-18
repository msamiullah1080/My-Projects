`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2023 11:34:33 AM
// Design Name: 
// Module Name: TopTop
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


module TopTop(
input reset,
input clk,
output Loop_end_inst,
output Loop_end_flag,
output [15:0] instruction,
output [4:0] Loop_end_addr_reg,
output [4:0] Loop_counter_reg,
output Loop_end_addr_flag
);

wire [4:0] Loop_start_addr_reg, ProgramCounter;
//wire Loop_end_addr_flag;


ROMLoop R1(ProgramCounter, instruction);

PC P1(reset, clk, Loop_end_inst, Loop_start_addr_reg, ProgramCounter);

loop L1(clk,instruction,ProgramCounter, Loop_end_inst, Loop_end_flag, Loop_start_addr_reg,Loop_end_addr_reg,Loop_counter_reg,Loop_end_addr_flag);
    


endmodule