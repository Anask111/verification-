module muxr (y,a,b,s1);
output y;
input a,b,s1;
assign y = ~s1 ? a : b;
endmodule

module muxr_tb;
  reg s1;
  reg a,b;
  wire y;
  muxr i_muxr(y,a,b,s1);
 
  initial
  begin
  $monitor("At time %0t - a=%b, b=%b , y=%b,s1=%b ",$time,y,a,b,s1);
  a ='b0;
  b='b0;
 
  s1='b0;
 
end

   always #5 a=~a;
  always #10 b=~b;

   always #225 s1=~s1;


initial #2000 $finish;
endmodule
