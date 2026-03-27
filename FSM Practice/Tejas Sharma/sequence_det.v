`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 22:56:45
// Design Name: 
// Module Name: sequence_tb
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


module sequence_1010 (input clk , rst , in , output reg out);

parameter s0 = 2'b00;
parameter s1 =2'b01;
parameter s2 =2'b10;
parameter s3=2'b11;

reg [1:0] state,nxt_state ;

always @(posedge clk or posedge rst) begin
           if (reset)
            state <= S0;
            else 
            state <= nxt_state;
    end

always @(*) 
    begin 
     case (state)
            S0: begin
                if (x) nxt_state = S1;
                else   nxt_state = S0;
                z = 0;
            end
      
            S1: begin
                if (x)nxt_state = S2;
                else nxt_state = S1; end
                
            S2: begin
                if(x)nxt_state = S3;
                else nxt_state= S0; end
                
            S3: begin
                if(x) nxt_state = S1;
                else nxt_state = S2;
                end
            endcase
            
    
    
    end
endmodule
