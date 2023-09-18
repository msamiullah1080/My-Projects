`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2023 12:43:23 PM
// Design Name: 
// Module Name: TopModule
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


module TopModule(
input reset,
input clk,
output [15:0] instruction,
output [4:0] address,
output [4:0] ProgC,
output [1:0] MuxSel
);

//wire [15:0] instruction;
wire retAdd;
//wire [1:0] MuxSel;
wire [3:0] top;
//wire [4:0] count;
wire jmpSel, pointerEn,Up, stackEn;

//
//assign count=0;


ROM R1(address,instruction);

NextAddressLogic L1( instruction[15:13], jmpSel, pointerEn, Up, stackEn, MuxSel);

CondMUX C1(instruction[11:10], instruction[12],jmpSel);

PC P1(reset,address,clk,ProgC);

SubroutineStack S1(clk, stackEn, ProgC, top, retAdd);

TopPointer T1(clk, pointerEn, Up, top);

AddressMUX A1(MuxSel,ProgC,retAdd,instruction[9:5],address);
    
endmodule
