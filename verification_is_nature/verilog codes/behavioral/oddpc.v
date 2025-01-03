module oddpc(x,a,b,c,d);
	output reg x;
	input a,b,c,d;
		always @(a,b,c,d)
	begin
		case({a,b,c,d})
	4'b0000:begin x=1'b0 ; end
	4'b0001:begin x=1'b1 ;  end
	4'b0010:begin x=1'b1 ;  end
	4'b0011:begin x=1'b0 ;  end
	4'b0100:begin x=1'b1 ; end
	4'b0101:begin x=1'b0 ;  end
	4'b0110:begin x=1'b0 ;  end
	4'b0111:begin x=1'b1 ; end
	4'b1000:begin x=1'b1 ;  end
	4'b1001:begin x=1'b0 ;  end
	4'b1010:begin x=1'b0 ;  end
	4'b1011:begin x=1'b1 ;  end
	4'b1100:begin x=1'b0 ;  end
	4'b1101:begin x=1'b1 ;  end
	4'b1110:begin x=1'b1 ; end
	4'b1111:begin x=1'b0 ;  end
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