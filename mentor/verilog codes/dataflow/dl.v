module dl(q,p,s,clk);
	output q,p;
	input s,clk;
	not x1(r,s);
	assign q = ~(~(clk & s) & p);
	assign p = ~(~(clk & ~s) &q );
	endmodule
	
	module dl_tb;
	  wire q,p;
	  reg clk,s;
	  dl i_dl(q,p,s,clk);
	  initial
	  begin
	  $monitor("At time %0t -  clk=%b , s=%b , p=%b,q=%b ",$time,q,p,s,clk);
	    s='b0;
	    clk='b0;
	    end
	    always #5 clk=~clk;
	    always #10 s=~s;
	    initial #500 $finish;
	    endmodule