module dl(q,s,clk);
	output logic q;
	input logic s,clk;
	wire w1,w2;
	wire r,p;
	not x1(r,s);
	
	nand x3(w1,s,clk);
	nand x4(w2,r,clk);
	nand x5(q,w1,p);
	nand x6(p,w2,q);
	endmodule
	
	module dl_tb;
	  logic q;
	  logic clk,s;
	  dl i_dl(q,s,clk);
	  initial
	  begin
	    s='b0;
	    clk='b0;
	    end
	    always #5 clk=~clk;
	    always #10 s=~s;
	    initial #500 $finish;
	    endmodule