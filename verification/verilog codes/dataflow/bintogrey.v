module bintogrey(g,g1,g2,g3,b,b1,b2,b3);
	output g,g1,g2,g3;
	input b,b1,b2,b3;
	assign g = b ;
	assign g1= b1 ^ b;
	assign g2= b1 ^ b2;
	assign g3= b2 ^ b3;
endmodule
	
	module bintogrey_tb;
	  wire g,g1,g2,g3;
	  reg b,b1,b2,b3;
	  bintogrey i_bintogrey(g,g1,g2,g3,b,b1,b2,b3);
	  initial
	  begin
	  $monitor("At time %0t - g=%b, g1=%b, g2=%b , b1=%b , b=%b, b2=%b ,b3=%b,g3=%b",$time,g,g1,g2,g3,b,b1,b2,b3);
	   b = 'b0;
		b1 = 'b0;
		b2 = 'b0;
			b3 = 'b0;
	    end
	    always #5 b=~b;
	    always #20 b2=~b2;
	    always #15 b1=~b1;
		 always #25 b3=~b3;
	    always #100 $finish;
endmodule