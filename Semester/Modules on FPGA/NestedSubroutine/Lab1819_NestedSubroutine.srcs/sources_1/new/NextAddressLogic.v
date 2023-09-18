`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2023 11:17:23 AM
// Design Name: 
// Module Name: NextAddressLogic
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


module NextAddressLogic(
input [2:0] addsel,
input jmpSel,
output reg pointEn,
output reg Up,
output reg stackEn,
output reg [1:0] MuxSel
);

always @(*) begin

    case(addsel)
    0: begin MuxSel=0; pointEn=0; Up=0; stackEn=0; end   //no operation
    1: begin MuxSel=3; pointEn=0; Up=0; stackEn=0; end  // unconditional jump
    2: begin                                            //conditional jump
        if(jmpSel)  begin MuxSel=3; pointEn=0; Up=0; stackEn=0; end
        else        begin MuxSel=0; pointEn=0; Up=0; stackEn=0; end
       end
       
    3: begin MuxSel=3; pointEn=1; Up=1; stackEn=1; end // subroutine call
    4: begin MuxSel=2; pointEn=0; Up=0; stackEn=0; end    //second address
    5: begin MuxSel=1; pointEn=1; Up=0; stackEn=0; end    //return address
    
    default:begin MuxSel=0; pointEn=0; Up=0; stackEn=0; end


endcase

end
endmodule
