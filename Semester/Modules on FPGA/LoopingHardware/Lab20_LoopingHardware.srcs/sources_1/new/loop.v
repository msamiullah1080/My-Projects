`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2023 11:00:11 AM
// Design Name: 
// Module Name: loop
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


module loop(
input clk,
input [15:0] instruction,
input [4:0] PC,
output reg Loop_end_inst,
output reg Loop_end_flag,
output reg [4:0] Loop_start_addr_reg,
output reg [4:0] Loop_end_addr_reg,
output reg [4:0] Loop_counter_reg,
output reg Loop_end_addr_flag
);
    
//reg [4:0] Loop_end_addr_reg, Loop_counter_reg;
//reg Loop_end_addr_flag, 
reg Loop_count_zero;

always @(posedge clk) begin

    if(instruction[15]) begin //loop en
        Loop_start_addr_reg <= PC + 1;
        Loop_end_addr_reg   <= instruction[13:9];
    end
end 

always@(*) begin 
    
    if(Loop_end_addr_flag | instruction[15]) begin
    
        case(instruction[14]) //loop inst
        0: Loop_counter_reg <= Loop_counter_reg-1;
        1: Loop_counter_reg <= instruction[8:4];
        endcase
    end

   
    Loop_count_zero <= ((Loop_counter_reg)==0) ? 1 : 0;
    
    Loop_end_addr_flag <= (PC == Loop_end_addr_reg) ? 1 : 0;
    
    Loop_end_flag <= (Loop_count_zero & Loop_end_addr_flag) ? 1 : 0;
    
    Loop_end_inst <= ((~Loop_count_zero) & Loop_end_addr_flag) ? 1 : 0;
end


endmodule
