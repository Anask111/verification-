module fa (s,c,a,b,ci);
	output s,c ;
	input a,b,ci;
assign s = a ^ b ^ ci ;
assign s = a&b+b&ci+a&ci ;
endmodule

module fa_tb;
  wire s,c;
  reg  a,b,ci;
  fa i_fa(s,c,a,b,ci);
  initial 
  begin
$monitor("At time %0t - a=%b, b=%b, ci=%b ,c=%b.s=%b ",$time,a,b,ci,c,s);
  a='b1;
  b='b1;
  ci='b1;
end
 always #5  a=~a;
 always #10 b=~b;
 always #15 ci=~ci; 
  initial #200 $finish;
endmodule
