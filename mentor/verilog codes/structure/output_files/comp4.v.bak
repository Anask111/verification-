module comp4(x,y,z,a,b);
	output x,y,z;
	input [3:0]a,b;
	comp r1(x,y,z,a[0],b[0]);
	comp r2(x,y,z,a[1],b[1]);
	comp r3(x,y,z,a[2],b[2]);
	comp r4(x,y,z,a[3],b[3]);
	endmodule
	
	module comp4_tb;
	  wire x,y,z;
	  reg [3:0]a,b;
	  comp4 i_comp4(x,y,z,a,b);
	  initial
	  begin
	    a=4'b0000;
	    b=4'b0000;
	    end
	    always #5 a=$random;
	    always #10 b=$random;
	    always #300 $finish;
	    endmodule