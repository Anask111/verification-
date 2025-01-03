module dlpre(q,p,s,ret,pre ,clk);
	output reg q,p;
	input s,clk,ret ,pre;
	always @ (posedge clk or negedge ret or negedge pre)
		begin
		 if ({ret}==1'b0)
				begin
				q<=1'b0;
				p<=~q;
				end
			
		else if({pre}==1'b0)
				begin
				q<=1'b1;
				p<=~q;
				end
		else 
			begin
			q<=s;
				p<=~q;
			end
		end	
	endmodule
	
	module dlpre_tb;
	  wire q,p;
	  reg s,clk,ret ,pre;
	  dlpre i_dlpre(q,p,s,ret,pre ,clk);
	  initial
	  begin
	  $monitor("At time %0t -  q=%b , p=%b,s=%b, ret=%b,pre=%b,clk=%b ",$time,q,p,s,ret,pre ,clk);
	    s=1'b0;
	    clk=1'b1;
		  ret=1'b0;
	    pre=1'b0;
	    end
	    always #1 clk=~clk;
	    always #7 s=~s;
		  always #20 ret=~ret;
	    always #43 pre=~pre;
	    initial #500 $finish;
	    endmodule