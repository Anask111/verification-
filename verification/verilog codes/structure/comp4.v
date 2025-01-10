module comp4(x,y,z,a,b,e);
	output  x,y,z;
	input [3:0]a,b;
	input e;
	wire x1,x2,x3,x4;
	wire y1,y2,y3,y4;
	wire z1,z2,z3,z4;
	comp1 r1(x1,y1,z1,a[0],b[0],e);
	comp1 r2(x2,y2,z2,a[1],b[1],z1);
	comp1 r3(x3,y3,z3,a[2],b[2],z2);
	comp1 r4(x4,y4,z,a[3],b[3],z3);
	or r5(x,x1,x2,x3,x4);
	or r6(y,y1,y2,y3,y4);

	endmodule
	
	module comp4_tb;
	  wire x,y,z;
	  reg e;
	  reg [3:0]a,b;
	  comp4 i_comp4(x,y,z,a,b,e);
	  initial
	  begin
	    a=4'b0000;
	    b=4'b0000;
		 e=1'b1;
	    end
	    always #5 a=$random;
	    always #10 b=$random;
	    always #300 $finish;
	    endmodule