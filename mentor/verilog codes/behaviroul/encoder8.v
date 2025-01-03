module encoder8(y,i);
	output reg [2:0]y;
	input  [7:0]i;
		always @(i)
	begin
			casex(i)
			8'b10000000: y=3'b000;
			8'bx1000000: y=3'b001;
			8'bxx100000: y=3'b010;
			8'bxxx10000: y=3'b011;
			8'bxxxx1000: y=3'b100;
			8'bxxxxx100: y=3'b101;
			8'bxxxxxx10: y=3'b110;
			8'bxxxxxxx1: y=3'b111;
			endcase
			
	end
	endmodule
	
	
		module encoder8_tb;
	wire [2:0]y;
	reg [7:0]i;
	  encoder8 i_encoder8(y,i);
	  initial begin
	  $monitor("At time %0t -   i=%b  ,y=%b ",$time,i,y);
	  i =8'b0000000;
	  #5;
	 i =8'b10000000;
	 #5;
		i =8'bx1000000;
		#5;
		i =8'bxx100000;
		#5;
		i =8'bxxx10000;
		#5;
		i =8'bxxxx1000;
		#5;
		i =8'bxxxxx100;
		#5;
		i =8'bxxxxxx10;
		#5;
		i = 8'bxxxxxxx1;
		#5;
	   end
	  // always #1 i[0]= ~i[0];
	   //always #2 i[1]= ~i[1];
	   //always #4 i[2]= ~i[2];
	   //always #8 i[3]= ~i[3];
	   //always #16 i[4]= ~i[4];
	   //always #32 i[5]= ~i[5];
	   //always #64 i[6]= ~i[6];
	   //always #128 i[7]= ~i[7];
		 initial #1000 $finish;
	    endmodule