module shiftreg(o,i,clk,res,pre);
	output  [7:0]o;
	input [7:0]i;
	 input clk,res,pre;
	wire w1,w2,w3,w4,w5,w6,w7,w8;

		d_ff s1(o[1], ,i[0],clk,res,pre);
		d_ff s2(o[2], ,i[1],clk,res,pre);
		d_ff s3(o[3], ,i[2],clk,res,pre);
		d_ff s4(o[4], ,i[3],clk,res,pre);
		d_ff s5(o[5], ,i[4],clk,res,pre);
		d_ff s6(o[6], ,i[5],clk,res,pre);
		d_ff s7(o[7], ,i[6],clk,res,pre);
		d_ff s8(o[0], ,i[7],clk,res,pre);
	endmodule
	
	module shiftreg_tb;
	  wire [7:0]o;
	  reg [7:0]i;
	  reg clk,res,pre;
	  shiftreg i_shiftreg1(o,i,clk,res,pre);
	  initial
	  begin
	  i=8'b00000000;
	  clk=1'b1;
	  pre=1'b1;
	  res=1'b0;
	  $monitor("At time %0t -  o=%b , i=%b,clk=%b ,res=%b,pre=%b",$time,o,i,clk,res,pre);
	    #2;
		 res=1'b1;
		  #2;
		 res=1'b0;
		 #2;
		  #2;
		 res=1'b1;
		  #2;
		 res=1'b0;
		 #2;
		  #2;
		 res=1'b1;
		  #2;
		 res=1'b0;
		 #2;
		 #2;
		 res=1'b1;
		  #2;
		 res=1'b0;
		 #2;
		  #2;
		 res=1'b1;
		  #2;
		 res=1'b0;
		 #2;
		  #2;
		 res=1'b1;
		  #2;
		 res=1'b0;
		 #2;
	    end
		 
	    always #1 clk=~clk;
	    always #7 i=$random;
	    initial #500 $finish;
	    endmodule 