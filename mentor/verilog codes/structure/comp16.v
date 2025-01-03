module comp16(x,y,z,a,b,e);
	output [15:0] x,y,z;
	input [15:0]a,b;
	input e;
	wire x1,x2,x3,x4;
	wire y1,y2,y3,y4;
	wire z1,z2,z3,z4;
	comp4  t1(x1,y1,z1,a[3:0],b[3:0],e);
	comp4  t2(x2,y2,z2,a[7:4],b[7:4],z1);
	comp4  t3(x3,y3,z3,a[11:8],b[11:8],z2);
	comp4  t4(x4,y4,z,a[15:12],b[15:12],z3);
	or r5(x,x1,x2,x3,x4);
	or r6(y,y1,y2,y3,y4);

	endmodule
	
	module comp16_tb;
	  wire [15:0] x,y,z;
	  reg [15:0]a,b;
	  reg e;
	  comp16 i_comp16(x,y,z,a,b,e);
	  initial
	  begin
	    a=16'b0000;
	    b=16'b0000;
		 e=1'b1;
	    end
	    always #5 a=$random;
	    always #10 b=$random;
	    always #300 $finish;
	    endmodule