`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 22:21:43
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


module seq_det(
input clk,rst,ip,
output reg op
    );
    
    
    parameter s0=2'b00;
    parameter s1=2'b01;
    parameter s2=2'b10;
    parameter s3=2'b11;
    
    reg [1:0]ps,ns;
    
always@(posedge clk or posedge rst )begin
    if(rst)begin
        ps<=s0;op=1'b0;
        end
    else 
        ps<=ns;
 end
    
always@(*)begin
    case(ps)
        s0:begin
                    if(ip)begin
                        ns<=s1;op=1'b0;
                        end
                    else begin
                    ns<=s0;op=1'b0;
                    end
             end
               
               
        s1:begin
                    if(ip)begin
                        ns<=s1;op=1'b0;
                        end
                    else begin
                        ns<=s2;op=1'b0;
                    end
            end
        s2:begin
                    if(ip)begin
                        ns<=s3;op=1'b0;
                        end
                    else begin
                        ns<=s0;op=1'b0;
                    end
               end
               
        s3:begin
                    if(ip)begin
                        ns<=s1;op=1'b1;
                        end
                    else begin
                        ns<=s2;op=1'b0;
                    end
           end
    endcase
    end
    
endmodule
