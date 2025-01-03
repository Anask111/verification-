module seven(a,b,c,d,e,f,g,A,B,C,D);
	output reg a,b,c,d,e,f,g;
	input A,B,C,D;
	always @(A,B,C,D)
		begin
		case({A,B,C,D})
	4'b0000:begin {a,b,c,d,e,f,g}=7'b1101111 ;  end
	4'b0001:begin {a,b,c,d,e,f,g}=7'b0100001 ;  end
	4'b0010:begin {a,b,c,d,e,f,g}=7'b1011011 ;  end
	4'b0011:begin {a,b,c,d,e,f,g}=7'b1110101;  end
	4'b0100:begin {a,b,c,d,e,f,g}=7'b0111100;  end
	4'b0101:begin {a,b,c,d,e,f,g}=7'b1110110 ; end
	4'b0110:begin {a,b,c,d,e,f,g}=7'b1110111;  end
	4'b0111:begin {a,b,c,d,e,f,g}=7'b1001100;  end
	4'b1000:begin {a,b,c,d,e,f,g}=7'b1111111 ; end
	4'b1001:begin {a,b,c,d,e,f,g}=7'b1111100;  end
	default : {a,b,c,d,e,f,g}=0000000;
	endcase
	end
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