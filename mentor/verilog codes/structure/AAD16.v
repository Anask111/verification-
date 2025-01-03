module AAD16(s,co,A,B,ci);
input [15:0] A,B;
input  ci;
output co;
output [15:0] s;
wire [3:0] w;
ADD4 u1  (  s[3:0], w[0]  ,A[3:0] ,  B[3:0],ci);
ADD4 u2   (  s[7:4]   ,w[1],   A [7:4]  , B[7:4]  ,w[0] );
ADD4 u3(s[11:8] ,w[2],  A[11:8] ,B[11:8] ,  w[1]   )   ; 
ADD4 u4(s[15:12] ,co,A[15:12] ,B[15:12] ,w[2]);
endmodule
module AAD16_tb;
  wire [15:0] s;
  wire co;
  reg  [15:0] A,B;
  reg   ci;
  AAD16 i_AAD16(s,co,A,B,ci);
  initial 
  begin
   $monitor("At time %0t - s=%b  , co=%b , A=%b , B=%b, ci=%b",$time,s,co,A,B,ci);
  A=16'b0000000000000000;
  B=16'b0000000000000000;
  ci=1'b1;
end
 always #5  A=$random;
 always #10 B=$random;
 always #15 ci=~ci; 
  initial #2000 $finish;
endmodule 