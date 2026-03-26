//detecting seq 1011
module seq_det(
input wire x,
input wire clk,
input wire rst,
output reg y
);

parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

reg [1:0] ps,ns;

	
	always @(posedge clk or posedge rst) begin
	if(rst)	ps=s0;
	end

	always @(*) begin
	case(ps)
		s0:begin ns=x?s1:s0;end	
		s1:begin ns=x?s1:s2;end
		s2:begin ns=x?s3:s0;end
		s3:begin ns=x?s1:s2;end
	default: ns=s0;
	endcase

	end

	always @(*)begin


		if(ps==s3)begin 
		y=1;
		end
		else begin
		y=0;
		end

	end
endmodule
