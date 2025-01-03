module Bidirectional_Register(YL,YR,A,clk);
	output YL,YR;
	reg [3:0]Y=0;
	reg [7:0]YL;
	reg [7:0]YR;
	reg [7:0]L=8'b00000001;
	reg [7:0]R=8'b00000001;
	input [7:0]A;
	input clk;
	always @(posedge clk)
	  begin

	  YR[7]=R[0];
	  YR[6]=R[7];
	  YR[5]=R[6];
	  YR[4]=R[5];
	  YR[3]=R[4];
	  YR[2]=R[3];
	  YR[1]=R[2];
	  YR[0]=R[1];
	  R=YR;
					YL[7]=L[6];
					YL[6]=L[5];
					YL[5]=L[4];
					YL[4]=L[3];
					YL[3]=L[2];
					YL[2]=L[1];
					YL[1]=L[0];
					YL[0]=L[7];
					L=YL;
	  end
endmodule


module Bidirectional_Register_tb();
	reg [7:0]A;
	reg clk;

	wire [7:0]YL;
	wire [7:0]YR;
	Bidirectional_Register i_Bidirectional_Register(YL,YR,A,clk);
	initial
	begin
	clk=1'b1;
	A=8'b00000001;
	end
	always #5 clk=~clk;
	initial #400 $finish;
endmodule