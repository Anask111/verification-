module ADD4(s,co,A,B,ci);
input [3:0] A,B;
input  ci;
output co;
output [3:0] s;
wire [3:0] w;
FA u1(s[0],w[0],A[0],B[0],ci);
FA u2(s[1],w[1],A[1],B[1],w[0]);
FA u3(s[2],w[2],A[2],B[2],w[1]);
FA u4(s[3],co,A[3],B[3],w[2]);
endmodule
module ADD4_tb;
  wire [3:0] s;
  wire co;
  reg  [3:0] A,B;
  reg   ci;
  ADD4 i_ADD4(s,co,A,B,ci);
  initial 
  begin
   $monitor("At time %0t - s=%b  , co=%b , A=%b , B=%b, ci=%b",$time,s,co,A,B,ci);
  A=4'b0000;
  B=4'b0000;
  ci=1'b1;
end
 always #5  A=$random;
 always #10 B=$random;
 always #15 ci=~ci; 
  initial #2000 $finish;
endmodule 