module mux4 (y,a,b,c,d,s1,s2);
output reg y;
input a,b,c,d,s1,s2;
always @(s1,s2,a,b,c,d)
	begin
		case({s1,s2})
	2'b00:y=a ; 
	2'b01: y=b; 
	2'b10:y=c ; 
	2'b11: y=d; 
		endcase
			
	end
endmodule

module mux4_tb;
  reg s1,s2;
  reg a,b,c,d;
  wire y;
  mux4 i_mux4(y,a,b,c,d,s1,s2);
 
  initial
  begin
  $monitor("At time %0t - a=%b, b=%b ,c=%b, d=%b , y=%b,s1=%b,s2=%b ",$time,y,a,b,c,d,s1,s2);
  a =1'b1;
  b=1'b1;
  c =1'b1;
  d=1'b1;
  s1=1'b1;
  s2=1'b0;
end

   always #5 a=~a;
  always #10 b=~b;
 always #25 c=~c;
  always #30 d=~d;
   always #50 s1=~s1;
always #100 s2=~s2;

initial #2000 $finish;
endmodule
