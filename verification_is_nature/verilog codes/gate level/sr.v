module sr(q,p,s,r,clk);
	output q,p;
	input s,r,clk;
	wire w1,w2;
	and x3(w1,s,clk);
	nand x4(w2,r,clk);
	nand x5(q,w1,p);
	nand x6(p,w2,q);
	endmodule
	
	module sr_tb;
	  wire q,p;
	  reg clk,r,s;
	  sr i_sr(q,p,s,r,clk);
	  initial
	  begin
	    s='b0;
	    clk='b0;
		  r='b0;
	    end
	    always #5 clk=~clk;
	    always #10 s=~s;
		 always #20 r=~r;
	    initial #500 $finish;
	    endmodule