module d_ff(q,p,s,clk,res,pre);
	output reg q,p;
	input s,clk,res,pre;
		always @ (posedge clk)
		begin
	   if (res==1'b1)
		begin 
		q=1'b0;
		p=~q;
		end
		else if (pre==1'b1)
		begin 
		q=1'b1;
		p=~q;
		end
		else
		begin
		q=s;
		p=~q;
		end
		end
	endmodule
	
	module d_ff_tb;
	  wire q,p;
	  reg clk,s,res,pre;
	  d_ff i_d_ff1(q,p,s,clk,res,pre);
	  initial
	  begin
	  $monitor("At time %0t -  q=%b , p=%b,s=%b,clk=%b ",$time,q,p,s,clk);
	    s=1'b0;
	    clk=1'b1;
		  pre=1'b0;
	  res=1'b0;
	    end
	    always #1 clk=~clk;
	    always #7 s=~s;
		 always #7 res=~res;
	    initial #50 $finish;
	    endmodule 