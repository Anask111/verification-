module compc(x,y,z,a,b);
	output reg x,y,z;
	input [1:0] a,b;
	always @(a,b)
	begin
		case({a,b})
	4'b0000:{x,y,z}=3'b001;
	4'b0001:{x,y,z}=3'b010;
	4'b0010:{x,y,z}=3'b010;
	4'b0011:{x,y,z}=3'b010;
	4'b0100:{x,y,z}=3'b100;
	4'b0110:{x,y,z}=3'b010;
	4'b0111:{x,y,z}=3'b010;
	4'b1000:{x,y,z}=3'b100;
	4'b1001:{x,y,z}=3'b100;
	4'b1010:{x,y,z}=3'b001;
	4'b1011:{x,y,z}=3'b010;
	4'b1100:{x,y,z}=3'b100;
	4'b1101:{x,y,z}=3'b100;
	4'b1110:{x,y,z}=3'b100;
	4'b1111:{x,y,z}=3'b001;
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
	
