 module compr2(x,y,z,a,b);
	output x,y,z;
	input [1:0]a;
	input[1:0]b;
	assign x = a>b ;
	assign y = a===b ;
	assign z = a<b ;
endmodule
	
	module compr2_tb;
	  wire x,y,z;
	  reg [1:0]a;
	reg[1:0]b;
	  compr2 i_compr2(x,y,z,a,b);
	  initial
	  begin
	  $monitor("At time %0t - a=%b, b=%b, x=%b, y=%b,z=%b ",$time,x,y,z,a,b);
	    a[0]='b0;
	    b[0]='b0;
		  a[1]='b0;
	    b[1]='b0;
	    end
	    always #5 a[0]=~a[0];
	    always #10 b[0]=~b[0];
		 always #25 a[1]=~a[1];
	    always #50 b[1]=~b[1];
	    always #300 $finish;
endmodule