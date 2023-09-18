`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2023 06:43:19 PM
// Design Name: 
// Module Name: MealyMachine
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


//module MealyMachine(
//input ain,
//input reset,
//input clk,
//output reg yout
//    );
//reg [3:0] count;
//reg yout=0;

//parameter S0=0, S1=1, S2=2, S3=3;
//reg state, nextstate;

//always @(posedge clk or posedge reset)
//if (reset) state <= S0;
//else state <= nextstate;

//always @(posedge clk) // always block to compute output
//begin

//case(state)
//    S0: if(ain) yout <= 0; else yout<= 0;
//    S1: if(ain) yout <= 0; else yout<= 0;
//    S2: if(ain) yout <= 1; else yout<= 0;
//    S3: if(ain) yout <= 0; else yout<= 1;
//endcase
//end

//always @(posedge clk)
//// always block to compute nextstate
//begin
//nextstate = S0;
//case(state) 
//    S0: if(ain) nextstate <= S1;
//    S1: if(ain) nextstate <= S2;
//    S2: if(ain) nextstate <= S3;
//    S3: if(ain) nextstate <= S1;

//endcase

//end

//endmodule


module MealyMachine(
input ain,
input reset,
input clk,
output reg yout,
output reg [3:0] count,
output reg [1:0] state
);

reg [3:0] count=0;

reg yout=1;

parameter S0=0, S1=1, S2=2, S3=3;
reg [1:0] state=S0, nextstate;

always @(posedge clk or posedge reset) begin
    if (reset) begin 
        state <= S0; 
        count<=0; 
        end
      else
        if(ain) count<=count+1;
    //if(count==4) count=1;
end

always @(state or ain) // always block to compute output
begin
    if(state==S0 || state==S3) yout<=1;
    else    yout<=0;

end

always @(posedge clk) begin // always block for state change
    
    
//if(~(count%3))
    case(count%3)
        0: if(ain) state<=S1;
        1: if(ain) state<=S2;
        2: if(ain) state<=S3;
    endcase
    
    
end

endmodule
