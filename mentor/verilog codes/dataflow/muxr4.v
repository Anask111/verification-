module muxr4 (y,a,b,c,d,s1,s2);
output y;
input a,b,c,d,s1,s2;
assign y = ~s1 ? (~s2 ? a : b) : (s2 ? c : d);
endmodule

module muxr4_tb;
  reg s1,s2;
  reg a,b,c,d;
  wire y;
  muxr4 i_muxr4(y,a,b,c,d,s1,s2);
 
  initial
  begin
  $monitor("At time %0t - a=%b, b=%b ,c=%b, d=%b , y=%b,s1=%b,s2=%b ",$time,y,a,b,c,d,s1,s2);
  a ='b0;
  b='b0;
  c ='b0;
  d='b0;
  s1='b1;
  s2='b0;
end

   always #5 a=~a;
  always #10 b=~b;
 always #25 c=~c;
  always #30 d=~d;
   always #50 s1=~s1;
always #100 s2=~s2;

initial #2000 $finish;
endmodule
