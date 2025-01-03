module decoder(y1,y2,y3,y4,a,b);
	output y1,y2,y3,y4;
	input a,b;
	assign y1 = ~a&~b ;
	assign y2 = ~a&b ;
	assign y3 = a&~b ;
	assign y4 = a&b ;
endmodule

module decoder_tb;
  wire y1,y2,y3,y4;
  reg a,b;
  decoder i_decoder(y1,y2,y3,y4,a,b);
  initial
  begin
  $monitor("At time %0t - a=%b, b=%b, y1=%b , y2=%b , y3=%b,y4=%b ",$time,a,b,y1,y2,y3,y4);
  a='b1;
  b='b1;
end
 always #5  a=~a;
 always #10 b=~b;
  initial #200 $finish;
endmodule

  