module encoder8(y,i);
	output [2:0]y;
	input [7:0]i;
	wire [2:0] w1,w2,w3,w4,w5,w6,w7;
	assign    y  = i[7] == 1'b1 ? 3'b111 : w1 ;
	assign    w1 = i[6] == 1'b1 ? 3'b110 : w2 ;
	assign    w2 = i[5] == 1'b1 ? 3'b101 : w3 ;
	assign    w3 = i[4] == 1'b1 ? 3'b100 : w4 ;
	assign    w4 = i[3] == 1'b1 ? 3'b011 : w5 ;
	assign    w5 = i[2] == 1'b1 ? 3'b010 : w6 ;
	assign    w6 = i[1] == 1'b1 ? 3'b001 : w7 ;
	assign    w7 = i[0] == 1'b1 ? 3'b000 : 3'bxxx ;
	
endmodule
	
	
	module encoder8_tb;
	wire [2:0]y;
	reg [7:0]i;
	  encoder8 i_encoder8(y,i);
	  initial begin
	  $monitor("At time %0t -   i=%b  ,y=%b ",$time,i,y);
	  i = 8'b0000000;
	   end
	   always #1 i[0]= ~i[0];
	   always #2 i[1]= ~i[1];
	   always #4 i[2]= ~i[2];
	   always #8 i[3]= ~i[3];
	   always #16 i[4]= ~i[4];
	   always #32 i[5]= ~i[5];
	   always #64 i[6]= ~i[6];
	   always #128 i[7]= ~i[7];
		 initial #256 $finish;
	    endmodule