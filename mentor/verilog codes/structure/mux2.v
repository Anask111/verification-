module mux2 (y,a,b,s1);
output y;
input a,b,s1;
assign y = ( a&~s1 | b&s1) ;
endmodule

module mux_tb;
  reg S1;
  reg A,B;
  wire Y;
  mux2 i_mux2(Y ,A,B,S1);
 
  initial
  begin
  $monitor("At time %0t - a=%b, b=%b,  y=%b,s1=%b s2=%b",$time,A,B,Y,S1);
  A ='b0;
  B ='b0;

  S1='b0;

end

initial 
begin
  A=~A;
  B=~B;

  end 
   always #5 A=~A;
  always #10 B=~B;

   always #25 S1=~S1;


initial #2000 $finish;
endmodule
