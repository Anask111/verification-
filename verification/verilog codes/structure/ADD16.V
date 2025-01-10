module ADD16 (s,co,A,B,ci);
input [15:0] A;
input [15:0] B;
input  ci;
output co;
output [15:0] s;
 wire [15:0] w;
 assign co=w[15];
FA c1(s[0],w[0],A[0],B[0],ci);
genvar i;
generate
for(i=1;i<16;i=i+1)
begin: geng
FA c2(s[i],w[i],A[i],B[i],w[i-1]);
end
endgenerate
endmodule



module ADD16_tb;
  wire [15:0] s;
  wire co;
  reg  [15:0] A,B;
  reg   ci;
  ADD16   i_ADD16 (s,co,A,B,ci);
  initial 
  begin
   $monitor("At time %0t :s=%b  , co=%b , A=%b , B=%b, ci=%b",$time,s,co,A,B,ci);
  A=16'b0000000000000000;
  B=16'b0000000000000000;
  ci=1'b1;
end
 always #5  A=$random;
 always #10 B=$random;
 always #15 ci=~ci; 
  initial #2000 $finish;
endmodule 