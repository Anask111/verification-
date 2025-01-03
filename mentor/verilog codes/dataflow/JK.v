module JK(q,p,j,k,clk,pre,re);
	output q,p;
	input  j,k,clk,pre,re;
	assign q = ~(~(clk & j & q) &(p&pre) );
	assign p = ~(~(clk & k & p) &(q&re) );
	endmodule
	
	module JK_tb;
	  wire q,p;
	  reg j,k,clk,pre,re;
	  JK i_JK(q,p,j,k,clk);
	  initial
	  begin
	  $monitor("At time %0t -  clk=%b , j=%b ,k=%b, p=%b,q=%b ,pre=%b,re=%b",$time,q,p,j,k,clk,pre,re);
	    j=1'b0;
	    k=1'b0;
	    clk=1'b1;
		 pre=1'b0;
		 re=1'b0;
	    end
	    always #1 clk=~clk;
	    always #2 j=~j;
		 always #4 k=~k;
		 always #32 re=~re;
		 always #60 pre=~pre;
	    initial #500 $finish;
	    endmodule