module oddp(x,a,b,c,d);
	output x;
	input a,b,c,d;
	assign x = (a^b)^(c^d);
endmodule
	
	module oddp_tb;
	  wire x;
	  reg a,b,c,d;
	  oddp i_addp(x,a,b,c,d);
	  initial
	  begin
	  $monitor("At time %0t - a=%b, b=%b, c=%b , d=%b , x=%b ",$time,x,a,b,c,d);
	    a='b0;
	    b='b0;
		 c='b0;
	    d='b0;
	    end
	    always #5 a=~a;
	    always #10 b=~b;
		 always #15 c=~c;
	    always #20 d=~d;
	    always #300 $finish;
endmodule