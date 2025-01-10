module FA (s,c,a,b,ci);
	output s,c ;
	input a,b,ci;
	wire w1,w2,w3;
	xor x1(s,a,b);
	and x3(w1,a,b);
	and x4(w2,ci,a);
	and x5(w3,ci,b);
	or  x6(c,w1,w2,w3);
endmodule

module FA_tb;
  wire s,c;
  reg  a,b,ci;
  FA i_FA(s,c,a,b,ci);
  initial 
  begin
  a='b1;
  b='b1;
  ci='b1;
end
 always #5  a=~a;
 always #10 b=~b;
 always #15 ci=~ci; 
  initial #200 $finish;
endmodule
