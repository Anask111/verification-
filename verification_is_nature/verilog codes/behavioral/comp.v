module comp(x,y,z,a,b);
	output reg x,y,z;
	input [1:0] a,b;
	always @(a,b)
	begin
		if ({b,a} == 4'b0000)
		{x,y,z }= 3'b000;
		
		else if ({b,a} == 4'b0001)
		{x,y,z }= 3'b100;
		
		else if ({b,a} == 4'b0010)
		{x,y,z }= 3'b100 ;
		
		else if ({b,a} == 4'b0011)
		{x,y,z }= 3'b100;
		
			else if ({b,a} == 4'b0100)
		{x,y,z }= 3'b010;
		
		else if ({b,a} == 4'b0101)
		{x,y,z }= 3'b001;
		
		else if ({b,a} == 4'b0110)
		{x,y,z }= 3'b010 ;
		
		else if ({b,a} == 4'b0111)
		{x,y,z }= 3'b010;
		
			else if ({b,a} == 4'b1000)
		{x,y,z }= 3'b100;
		
		else if ({b,a} == 4'b1001)
		{x,y,z }= 3'b100;
		
		else if ({b,a} == 4'b1010)
		{x,y,z }= 3'b001 ;
		
		else if ({b,a} == 4'b1011)
		{x,y,z }= 3'b001;
		
		else	if ({b,a} == 4'b1100)
		{x,y,z }= 3'b100;
		
		else if ({b,a} == 4'b1101)
		{x,y,z }= 3'b100;
		
		
		else if ({b,a} == 4'b1111)
		{x,y,z }= 3'b001;
		
		else 
		{x,y,z} = 3'b000;
		end
	endmodule
module comp_tb;
	  wire x,y,z;
	  reg [1:0] a,b;
	  comp i_comp(x,y,z,a,b);
	  initial
	  begin
	  $monitor("At time %0t -  x=%b, y=%b,z=%b ,a=%b, b=%b ",$time,x,y,z,a,b);
	    a[0]='b0;
	    b[0]='b0;
		   a[1]='b0;
	    b[1]='b0;
	    end
	    always #5 a[0]=~a[0];
	    always #10 b[0]=~b[0];
		 always #20 a[1]=~a[1];
	    always #40 b[1]=~b[1];
	    always #300 $finish;
	    endmodule
	
	
