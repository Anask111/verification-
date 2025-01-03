module clkchange(y1,y2);
	output reg y1,y2;
	parameter ton=1,toff=1, mul=1,div=1,x=ton*mul/div,y=toff*mul/div;
    always 
	 begin 
	 y1=1'b1;
	 #x y1=1'b0;
	 #y;
	 end
	  always 
	 begin 
	 y2=1'b1;
	 #x y2=1'b0;
	 #y;
	 end
	endmodule
	
	module clkchange_tb;
	  wire x1,x2,w1,w2,r1,r2;
	  
	  clkchange #( 5,5,1,1) i_clkchange2(x1,x2);
	  clkchange #(5,5,1,2) i_clkchange6(w1,w2);
		 clkchange #(5,5,2,1) i_clkchange7(r1,r2);
		
	
	endmodule