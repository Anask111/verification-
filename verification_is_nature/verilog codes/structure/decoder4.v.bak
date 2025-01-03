module decoder4(y1,y2,y3,y4,a,b);
	output reg y1,y2,y3,y4;
	input a,b;
		always @(a,b)
	begin
			if ({a,b}==2'b00)
			{y1,y2,y3,y4}=4'b1000;
			
			else if ({a,b}== 2'b01)
			{y1,y2,y3,y4}=4'b0100;
			
			else if ({a,b}== 2'b10)
			{y1,y2,y3,y4}=4'b0010; 
			
			else if ({a,b}== 2'b11)
			{y1,y2,y3,y4}=4'b0001; 
			
			
	end

endmodule

module decoder_tb;
  wire y1,y2,y3,y4;
  reg a,b;
  decoder i_decoder(y1,y2,y3,y4,a,b);
  initial
  begin
  $monitor("At time %0t - , y1=%b , y2=%b , y3=%b,y4=%b,a=%b, b=%b ",$time,y1,y2,y3,y4,a,b);
  a='b0;
  b='b0;
end
 always #5  a=~a;
 always #10 b=~b;
  initial #200 $finish;
endmodule

  