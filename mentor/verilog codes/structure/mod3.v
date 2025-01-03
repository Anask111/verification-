module mod3(o,clk,res,pre);
	output [1:0]o;
	input clk,res,pre;
	wire w1,w2,w3;
//		d_ff s2(o[0],w1,o[1],clk,res,pre);
//		d_ff s3(o[1],w2,w3,clk,res,pre);
   //d_ff(q,qb,d,clk,res,pre);
	d_ff s2(o[0],w1,w3,clk,res,pre);
	d_ff s3(o[1],w2,o[0],clk,res,pre);
		and r (w3,w1,w2);
	endmodule 
	module mod3_tb;
	  wire [1:0]o;
	  
	  reg clk,res,pre;
	  mod3 i_mod31(o,clk,res,pre);
	  initial
	  begin
	  res=1'b0;
	  #3;
	  res=1'b1;
	  #3;
	  res=1'b0;
	 
	  //pre=1'b1;
//	  #5;
//	  pre=1'b0;
	 // $monitor("At time %0t -  o=%b ,clr=%b,clk=%b ,pre=%b",$time,o,clr,clk,pre);

	    end	
		initial  clk=1'b1; 
	    always #1 clk=~clk;
	    initial #500 $finish;
	    endmodule 