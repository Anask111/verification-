module decoder8(y,p,q,r);
	output [7:0]y;
	input p,q,r;
	wire w;
	
	not v(w,r);
	decoder4	 d2(y[0],y[1],y[2],y[3],p,q,r);
	decoder4	 d1(y[7],y[6],y[5],y[4],p,q,w);
	
	
endmodule 

module decoder8_tb;
  wire [7:0]y;
  reg a,b,c;
  decoder8 i_decoder8(y,a,b,c);
  initial
  begin
  $monitor("At time %0t - , y=%b,a=%b, b=%b ,c=%b",$time,y,a,b,c);
  a='b0;
  b='b0;
   c='b0;
end
 always #5  a=~a;
 always #10 b=~b;
  always #20 c=~c;
  initial #200 $finish;
endmodule

  