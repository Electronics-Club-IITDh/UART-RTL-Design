`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2026 11:10:29 PM
// Design Name: 
// Module Name: seq_det
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


module seq_det(input clk,input reset,input in,output out );
reg out;

reg [1:0]state;

parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;



always@(posedge clk or posedge reset)
begin
        if(reset)begin
        state<=s0;
        out<=1'b0;
        end

else begin
case(state)
                    s0:begin
                         if(in)begin
                         state<=s1;
                         out<=1'b0;
                        end
                     else begin
                         state<=s0;
                         out<=1'b0;
                     end
                     end
               s1:   begin   if(in)begin
                         state<=s1;
                         out<=1'b0;
                        end
                     else begin
                         state<=s2;
                         out<=1'b0;
                     end
                     end
              s2:begin if(in)begin
                         state<=s3;
                         out<=1'b0;
                        end
                     else begin
                         state<=s2;
                         out<=1'b0;
                     end
                     end
               s3:begin if(in)begin
                         state<=s1;
                         out<=1'b0;
                        end
                     else begin
                         state<=s2;
                         out<=1'b0;
                    end
                     end      
endcase
end
end
endmodule
