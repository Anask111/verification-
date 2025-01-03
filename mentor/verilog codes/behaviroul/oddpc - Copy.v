module oddpc(x,a,b,c,d);
	output reg x;
	input a,b,c,d;
		always @(a,b,c,d)
	begin
		case({a,b,c,d})
	0000:begin x=0 ; end
	0001:begin x=1 ;  end
	0010:begin x=1 ;  end
	0011:begin x=0 ;  end
	0100:begin x=1 ; end
	0101:begin x=0 ;  end
	0110:begin x=0 ;  end
	0111:begin x=1 ; end
	1000:begin x=1 ;  end
	1001:begin x=0 ;  end
	1010:begin x=0 ;  end
	1011:begin x=1 ;  end
	1100:begin x=0 ;  end
	1101:begin x=1 ;  end
	1110:begin x=1 ; end
	1111:begin x=0 ;  end
	endcase
	end
	
endmodule
	
	module oddp_tb;
	  wire x;
	  reg a,b,c,d;
	  oddpc i_addp(x,a,b,c,d);
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