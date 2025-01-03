module shift(y1,y2,right,left,i,clk);
output reg [7:0]y1,y2;
input [7:0]i;
input left,right,clk;
integer l;
always @(clk )
	begin
		if (right==1'b1 || clk==1)
		y1=i/2'b10;
		
		else if (left==1'b1 || clk==1)
		y2=i*2'b10;
		
	end
endmodule

module shift_tb;
	wire [7:0]y1,y2;
	reg [7:0]i;
	reg left,right,clk;
	  
	  shift i_shift2(y1,y2,right,left,i,clk);
	  
	  initial 
	  begin
	    $monitor("At time %0t - y1=%b, y2=%b,  right=%b ,  left=%b  , i=%b , clk=%b",$time,y1,y2,right,left,i,clk);
	  clk=1'b0;
	  left=1'b0;
		right=1'b0;
		#2
	   i=8'b00000100;
		end
		 initial #4 left =1'b1; 
		 initial #5 right =1'b1;
//	    initial #8 left =1'b0;
//		 initial #10 right =1'b0;
//		 initial #12 left =1'b1; 
//		 initial #15 right =1'b1;
//		 initial #16 left =1'b0;
//		 initial #20 right =1'b0;
 always #16 left = ~left;
 always #20 right =~right;
		 always #1 clk= ~clk;
	initial #3000 $finish;
	    endmodule
