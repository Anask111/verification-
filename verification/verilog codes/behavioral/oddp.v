module oddp(x,a,b,c,d);
	output reg x;
	input a,b,c,d;
		always @(a,b,c,d)
	begin
	
		if ({a,b,c,d} == 0000)
		{x }= 1'b1;
		
		else if ({a,b,c,d} == 0001)
		{x }= 1'b1;
		
		else if ({a,b,c,d} == 0010)
		{x }= 1'b1 ;
		
		else if ({a,b,c,d} == 0011)
		{x }= 1'b0;
		
			else if ({a,b,c,d} == 0100)
		{x }= 1'b1;
		
		else if ({a,b,c,d} == 0101)
		{x }= 1'b0;
		
		else if ({b,a} == 0110)
		{x}= 1'b0 ;
		
		else if ({b,a} == 0111)
		{x }= 1'b0;
		
			else if ({b,a} == 1000)
		{x}= 1'b1;
		
		else if ({a,b,c,d} == 1001)
		{x }= 1'b0;
		
		else if ({a,b,c,d} == 1010)
		{x }= 3'b001 ;
		
		else if ({a,b,c,d} == 1011)
		{x }= 1'b1;
		
		else	if ({a,b,c,d} == 1100)
		{x }= 1'b0;
		
		else if ({a,b,c,d} == 1101)
		{x }= 1'b0;
		
		
		else if ({a,b,c,d} == 1111)
		{x }= 1'b0;
		
		else 
		{x} = 1'b1;
		
	end
	
endmodule
	
	module odd_tb;
	  wire x;
	  reg a,b,c,d;
	  oddp i_odd(x,a,b,c,d);
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