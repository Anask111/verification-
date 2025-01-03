module xor1(out,in1,in2);
output out;
input in1,in2;
wire w1,w2,w3;
 nand1 c1(w1,in1,in2);
  nand1 c2(w2,w1,in2);
   nand1 c3(w3,in1,w1);
    nand1  c4(out,w2,w3);
endmodule

module xor1_tb;
  wire out;
  reg  in1,in2;
  xor1 xor2(out,in1,in2);
  initial
  begin
    in1=1'b0;
    in2=1'b0;
  end
  always  #5 in1=~in1;
  always  #10 in2=~in2;
  initial #500 $finish;
endmodule 

