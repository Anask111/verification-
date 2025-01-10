module mux84 (y,a,s1,s2,s3);
output y;
input [7:0]a;
input s1,s2,s3;
wire w1,w2;
 mux4 q1(w1,a[0],a[1],a[2],a[3],s1,s2);
 mux4 q2(w2,a[5],a[6],a[7],a[4],s1,s2);
 mux4 q3(y,w1,w2, , ,1'b0,s3);
endmodule


module mux84_tb;
  reg s1,s2,s3;
  reg [7:0]a;
  wire y;
  mux84 i_mux84(y,a,s1,s2,s3);
 
  initial
  begin
  $monitor("At time %0t -  y=%b , a=%b , s1=%b,s2=%b s3=%b",$time,y,a,s1,s2,s3);
  a =8'b00000000;
  s1 =1'b0;
  s2=1'b1;
  s3=1'b0;
end

	always #1 a[0]=~a[0];
	always #2 a[1]=~a[1];
	always #4 a[2]=~a[2];
	always #8 a[3]=~a[3];
	always #16 a[4]=~a[4];
	always #32 a[5]=~a[5];
	always #64 a[6]=~a[6];
	always #128 a[7]=~a[7];
	
	always #400 s1=~s1;
	always #800 s2=~s2;
	always #1600 s3=~s3;
	initial #3200 $finish;

endmodule
