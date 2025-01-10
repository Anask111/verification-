module mod_10(o,clk,res,pre);
	output  [3:0]o;
	input clk,res,pre;
	wire w1,w2,w3,w4;
	wire o1,o2,o3,o4;
	
	   assign o1=(o[3]&w2 &w3& w4)|(w1&o[2]&o[1]&o[0]);
		assign o2=(o[2]& w4&w1)|(o[2]&w1&w3)|(w2&w1&o[1]&o[0]);
		assign o3=(w1&w3&o[0])|(w1&o[1]&w4);
		assign o4=(w1&w3& w4)|(w1&o[1]& w4)|(w2 &w3& w4);
	   d_ff a(o[0],w4,o4,clk,res,pre);
	   d_ff b(o[1],w3,o3,clk,res,pre);
		d_ff c(o[2],w2,o2,clk,res,pre);
		d_ff d(o[3],w1,o1,clk,res,pre);
		
	endmodule 
	module mod_10_tb;
	  wire [3:0]o;
	  reg res,pre,clk;
	  mod_10 i_mod_101(o,clk,res,pre);
	  initial
	  begin
	   res=1'b0;
	  #3;
	  res=1'b1;
	  #3;
	  res=1'b0;
	 
	 // pre=1'b1;
	 // #5;
	//  pre=1'b0;
	  $monitor("At time %0t -  o=%b ,clk=%b,res=%b ,pre=%b",$time,o,clk,res,pre);

	    end	
		initial  clk=1'b1; 
	    always #1 clk=~clk;
	    initial #500 $finish;
	    endmodule 