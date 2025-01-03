module decoder4(y1,y2,y3,y4,a,b,e);
	output reg y1,y2,y3,y4;
	input a,b,e;
		always @(a,b,e)
	begin
		if (e==1'b1)
		begin
				if ({a,b}==2'b00)
				{y1,y2,y3,y4}=4'b1000;
				
				else if ({a,b}== 2'b01)
				{y1,y2,y3,y4}=4'b0100;
				
				else if ({a,b}== 2'b10)
				{y1,y2,y3,y4}=4'b0010; 
				
				else if ({a,b}== 2'b11)
				{y1,y2,y3,y4}=4'b0001; 
				
				else if ({a,b}== 2'b11)
				{y1,y2,y3,y4}=4'b0001;
			end
			else 
			{y1,y2,y3,y4}=4'b0000;
			
	end

endmodule

module decoder_tb;
  wire y1,y2,y3,y4;
  reg a,b,e;
  decoder i_decoder(y1,y2,y3,y4,a,b,e);
  initial
  begin
  $monitor("At time %0t - , y1=%b , y2=%b , y3=%b,y4=%b,a=%b, b=%b ,e=%b",$time,y1,y2,y3,y4,a,b,e);
  a='b0;
  b='b0;
  e='b0;
end
 always #5  a=~a;
 always #10 b=~b;
 always #100 e=~e;
  initial #200 $finish;
endmodule

  