module greytobinc(b,g);
	output reg [3:0]b;
	input [3:0]g;
	always @(g) 
		begin
		case({g})
	4'b0000:begin b=4'b0000 ;  end
	4'b0001:begin b=4'b0001 ;  end
	4'b0010:begin b=4'b0011 ;  end
	4'b0011:begin b=4'b0010;  end
	4'b0100:begin b=4'b0100;  end
	4'b0101:begin b=4'b0101 ; end
	4'b0110:begin b=4'b0111;  end
	4'b0111:begin b=4'b0110;  end
	4'b1000:begin b=4'b1100 ; end
	4'b1001:begin b=4'b1101 ;  end
	4'b1010:begin b=4'b1110 ;  end
	4'b1011:begin b=4'b1111 ;  end
	4'b1100:begin b=4'b1000;  end
	4'b1101:begin b=4'b1001;  end
	4'b1110:begin b=4'b1010 ;  end
	4'b1111:begin b=4'b1011 ; end
	endcase
	end
endmodule
	
	module greytobinc_tb;
	  reg [3:0]g;
	  wire [3:0]b;
	  integer i;
	  greytobinc i_greytobinc(b,g);
	  initial
	  begin
	  $monitor("At time %0t - g=%b , b=%b ",$time,g,b);
	   g[3:0] = 4'b0000;
		 end
		initial
		begin 
			for (i=0;i<16; i=i+1)
			begin
			{g}=i;
			#5;
			end
		end
	    always #100 $finish;
  endmodule