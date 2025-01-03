module decoder(y1,y2,y3,y4,a,b);
	output y1,y2,y3,y4;
	input a,b;
	wire w1,w2;
	not x1(w1,a);
	not x2(w2,b);
	and x3(y1,w1,w2);
	and x4(y2,w1,b);
	and x5(y3,a,w2);
	and x6(y4,a,b);
endmodule

module decoder_tb;
  wire y1,y2,y3,y4;
  reg a,b;
  decoder i_decoder(y1,y2,y3,y4,a,b);
  initial
  begin
  a='b1;
  b='b1;
end
 always #5  a=~a;
 always #10 b=~b;
  initial #200 $finish;
endmodule

  