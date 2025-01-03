module comp2(x,y,z,a,b,a1,b1);
	output x,y,z;
	input a,b,a1,b1;
	assign x = a1&~b1 | a&~b1&b | a1&a&b;
	assign y = (a~^b)&(a1~^b1);
	assign z = ~a1&b1 | ~a&b1&b | ~a1&a&~b;
endmodule
	
	module comp2_tb;
	  wire x,y,z;
	  reg a,b,a1,b1;
	  comp2 i_comp2(x,y,z,a,b,a1,b1);
	  initial
	  begin
	  $monitor("At time %0t - a=%b, b=%b, a1=%b , b1=%b , x=%b, y=%b,z=%b ",$time,x,y,z,a,b,a1,b1);
	    a='b0;
	    b='b0;
		  a1='b0;
	    b1='b0;
	    end
	    always #5 a=~a;
	    always #10 b=~b;
		 always #15 a1=~a1;
	    always #20 b1=~b1;
	    always #300 $finish;
endmodule