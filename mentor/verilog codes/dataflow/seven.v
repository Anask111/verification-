module seven(a,b,c,d,e,f,g,A,B,C,D);
	output a,b,c,d,e,f,g;
	input A,B,C,D;
	assign a= (~A&~B&~C&~D | ~A&~B&C&~D | ~A&~B&C&D | ~A&B&~C&D | ~A&B&C&D | A&~B&~C&~D | A&~B&~C&D ) ;
	assign b=(~A&~B&~C&~D | ~A&~B&~C&D | ~A&~B&C&~D | ~A&~B&C&D | ~A&B&~C&~D |  ~A&B&C&D | A&~B&~C&~D | A&~B&~C&D );
	assign c=(~A&~B&~C&~D | ~A&~B&~C&D | ~A&B&~C&D | ~A&~B&C&D | ~A&B&~C&~D |  ~A&B&C&D | A&~B&~C&~D | A&~B&~C&D |~A&B&C&~D);
	assign d=(~A&~B&~C&~D | ~A&~B&C&~D | ~A&~B&C&D | ~A&B&~C&D | ~A&B&C&~D | A&~B&~C&~D ) ;
	assign e=(~A&~B&~C&~D | ~A&~B&C&~D | ~A&B&C&~D | A&~B&~C&~D ) ;
	assign f=(~A&~B&~C&~D | ~A&B&C&~D | A&~B&~C&~D | ~A&B&~C&~D | ~A&B&~C&D | A&~B&~C&D );
	assign g=(~A&~B&&~D | ~A&~B&C&D | A&~B&~C&~D | ~A&B&~C&~D | ~A&B&~C&D | A&~B&~C&D );   
	endmodule
	
	module seven_TB;
	  wire a,b,c,d,e,f,g;
	  reg A,B,C,D;
	  seven i_seven(a,b,c,d,e,f,g,A,B,C,D);
	  initial
	  begin
	  $monitor("At time %0t -  a=%b , b=%b ,c=%b, d=%b,e=%b ,f=%b , g=%b ,A=%b, B=%b,C=%b D=%b",$time,a,b,c,d,e,f,g,A,B,C,D);
	    A=1'b0;
	    B=1'b0;
	    C=1'b1;
		 D=1'b1;
	    end
	    always #1 A=~B;
		 always #2 B=~B;
		 always #4 C=~C;
		 always #8 D=~D;
		 initial #500 $finish;
	    endmodule