module compc(x,y,z,a,b);
	output reg x,y,z;
	input [1:0] a,b;
	always @(a,b)
	begin
		case({b,a})
	0000:begin x=0 ; y=0 ; z=0; end
	0001:begin x=0 ; y=1 ; z=0; end
	0010:begin x=0 ; y=1 ; z=0; end
	0011:begin x=0 ; y=1 ; z=0; end
	0100:begin x=1 ; y=0 ; z=0; end
	0101:begin x=0 ; y=0 ; z=1; end
	0110:begin x=0 ; y=1 ; z=0; end
	0111:begin x=0 ; y=1 ; z=0; end
	1000:begin x=1 ; y=0 ; z=0; end
	1001:begin x=1 ; y=0 ; z=0; end
	1010:begin x=0 ; y=0 ; z=1; end
	1011:begin x=0 ; y=1 ; z=0; end
	1100:begin x=1 ; y=0 ; z=0; end
	1101:begin x=1 ; y=0 ; z=0; end
	1110:begin x=1 ; y=0 ; z=0; end
	1111:begin x=0 ; y=0 ; z=1; end
	endcase
	end
	endmodule

module comp2_tb;
	  wire x,y,z;
	  reg [1:0] a,b;
	  compc i_comp2(x,y,z,a,b);
	  
	  initial
	  begin
	  $monitor("At time %0t -  x=%b, y=%b,z=%b ,a=%b, b=%b ",$time,x,y,z,a,b);
	    a[0]='b0;
		 
		 a[1]='b0;
		  
	    b[0]='b0;
		
	    b[1]='b0;
		 
	    end
		 
	    always #5 a[0] = ~a[0];
		
		 always #10 a[1] = ~a[1];
		 
	    always #15 b[0] = ~b[0];
		
	    always #20 b[1] = ~b[1];
	    always #300 $finish;
	    endmodule
	
