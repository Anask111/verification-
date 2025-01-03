module comp1(x,y,z,a,b,e);
	output x,y,z;
	input a,b,e;
	wire w1,w2,w3;
	not s1(w1,a);
	not s2(w2,b);
	and s3(x,w1,b,e);
	and s4(y,w2,a,e);
	xnor s6(w3,a,b);
	and s5(z,w3,e);
	endmodule
	
	module comp1_tb;
	  wire x,y,z;
	  reg a,b,e;
	  comp1 i_comp1(x,y,z,a,b,e);
	  initial
	  begin
	    a='b0;
	    b='b0;
		 e='b1;
	    end
	    always #5 a=~a;
	    always #10 b=~b;
	    always #300 $finish;
	    endmodule