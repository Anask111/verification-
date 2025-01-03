module clk(y);
	output reg y;
	parameter ton=3 ,toff=5;
    always 
	 begin 
	 y=1'b1;
	 #ton y=1'b0;
	 #toff;
	 end
	endmodule
	
	module clk_tb;
	  wire y1,y2;
	  clk #(6,1 ) i_clk2(y1);
	  clk #(7,9 ) i_clk6(y2);
		
	    endmodule 