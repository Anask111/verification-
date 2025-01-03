module mux16 (y,a,s1,s2,s3,s4);
output y;
input [15:0]a;
input s1,s2,s3,s4;
wire w1,w2,w3,w4;
 mux4 q1(w1,a[0],a[1],a[2],a[3],s1,s2);
 mux4 q2(w2,a[5],a[6],a[7],a[4],s1,s2);
  mux4 q3(w3,a[8],a[9],a[10],a[11],s1,s2);
 mux4 q4(w4,a[12],a[13],a[14],a[15],s1,s2);
 mux4 q5(y,w1,w2,w3 ,w4 ,s3,s4);
endmodule


module mux16_tb;
  reg s1,s2,s3,s4;
  reg [7:0]a;
  wire y;
  mux16 i_mux16(y,a,s1,s2,s3,s4);
 
  initial
  begin
  $monitor("At time %0t -  y=%b , a=%b , s1=%b,s2=%b, s3=%b,s3=%b",$time,y,a,s1,s2,s3,s4);
  a =8'b00000000;
  s1 =1'b0;
  s2=1'b1;
  s3=1'b0;
   s4=1'b0;
end

//	always #1 a[0]=~a[0];
//	always #2 a[1]=~a[1];
//	always #4 a[2]=~a[2];
//	always #8 a[3]=~a[3];
//	always #16 a[4]=~a[4];
//	always #32 a[5]=~a[5];
//	always #64 a[6]=~a[6];
//	always #128 a[7]=~a[7];
	always #5 a=$random;
	always #40 s1=~s1;
	always #80 s2=~s2;
	always #160 s3=~s3;
		always #200 s4=~s4;
	initial #3200 $finish;

endmodule
