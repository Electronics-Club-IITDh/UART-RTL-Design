`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 22:24:23
// Design Name: 
// Module Name: seq_1011
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


module seq_1011(
input clk, rst, in,
output reg out,
output reg [1:0] state
    );
    
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;
    
    always@(posedge clk or posedge rst) begin
        
        if (rst) begin
            state <= S0;
            out <= 1'b0;
        end
        
        else begin
        
        case (state)
            
            S0: begin
                if (in) begin
                    state <= S1;
                    out <= 1'b0;
                end
                else begin
                    state <= S0;
                    out <= 1'b0;
                end
            end
            
            S1: begin
                if (in) begin
                    state <= S1;
                    out <= 1'b0;
                end
                else begin
                    state <= S2;
                    out <= 1'b0;
                end
            end
            
            S2: begin
                if (in) begin
                    state <= S3;
                    out <= 1'b0;
                end
                else begin
                    state <= S0;
                    out <= 1'b0;
                end
            end
            
            S3: begin
                if (in) begin
                    state <= S1;
                    out <= 1'b1;
                end
                else begin
                    state <= S2;
                    out <= 1'b0;
                end
            end
            
        endcase
        
        end
        
    end
    
endmodule
