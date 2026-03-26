module seq_1011(
input clk,rst,in,
output out    );
reg out;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;
reg [1:0]s;
always@(posedge clk or posedge rst) begin
if(rst)begin
    s<=s0;
    out<=0;
else begin
if(s==s0)begin
    if(in==0)begin
        s<=s0;
        out<=0;
        end
    else begin
        s<=s1;
        out<=0;
        end
    end
else if(s==s1)begin
    if(in==0) begin
    s<=s2;
    out<=0;
    end
    else begin
    s<=s1;
    out<=0;
    end
    end
else if(s==s2)begin
    if(in==0) begin
    s<=s0;
    out<=0;
    end
    else begin
    s<=s3;
    out<=0;
    end
    end
else if(s==s3)begin
    if(in==0) begin
    s<=s2;
    out<=0;
    end
    else begin
    s<=s1;
    out<=1;
    end
    end
end
end
endmodule