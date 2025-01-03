module d_ff(q,p,s,clk);
	output reg q,p;
	input s,clk;
		always @ (posedge clk)
		begin
		if ({s}==1'b1)
		begin
		q=s;
		p=~q;
		end
		end
	endmodule
	
	module d_ff_tb;
	  wire q,p;
	  reg clk,s;
	  d_ff i_d_ff1(q,p,s,clk);
	  initial
	  begin
	  $monitor("At time %0t -  q=%b , p=%b,s=%b,clk=%b ",$time,q,p,s,clk);
	    s=1'b0;
	    clk=1'b1;
	    end
	    always #1 clk=~clk;
	    always #7 s=~s;
	    initial #50 $finish;
	    endmodule 