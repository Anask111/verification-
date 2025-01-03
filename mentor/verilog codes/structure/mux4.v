module mux4 (y,a,b,c,d,s1,s2);
output y;
input a,b,c,d,s1,s2;
assign y = a&~s1&~s2 | b&~s1&s2 | c&~1&~s2 | d&s1&s2;
endmodule

module mux4_tb;
  reg S1,S2;
  reg A,B,C,D;
  wire Y;
  mux4 i_mux4(Y ,A,B,C,D,S1,S2);
 
  initial
  begin
  $monitor("At time %0t - a=%b, b=%b, C=%b , D=%b , y=%b,s1=%b s2=%b",$time,A,B,C,D,Y,S1,S2);
  A ='b0;
  B ='b0;
  C ='b0;
  D ='b0;
  S1='b0;
  S2='b0;
end
 
   always #5 A=~A;
  always #10 B=~B;
  always #15 C=~C;
  always #20 D=~D;
   always #25 S1=~S1;
  always #17 S2=~S2;

initial #2000 $finish;
endmodule
