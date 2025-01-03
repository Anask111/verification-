module srl(q,p,r,s,clk);
	output q,p;
	input s,r,clk;
	assign q = ~(~(clk & s) & p);
	assign p = ~(~(clk & r) &q );
	endmodule
	
	module srl_tb;
	  wire q,p;
	  reg s,r,clk;
	  srl i_srl(q,p,r,s,clk);
	  initial
	  begin
	  $monitor("At time %0t -  clk=%b , s=%b ,r=%b, p=%b,q=%b ",$time,q,p,r,s,clk);
	    s=1'b0;
	    r=1'b0;
	    clk=1'b1;
	    end
	    always #50 clk=~clk;
	    always #10 s=~s;
		 always #15 r=~r;
	    initial #5000 $finish;
	    endmodule