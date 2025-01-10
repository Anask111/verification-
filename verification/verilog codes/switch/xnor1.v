module xnor1(out,in1,in2);
output out;
input in1,in2;
wire w1;
xor1 c2(w1,in1,in2);
 inv c1(out,w1);
endmodule

module xnor1_tb;
  wire out;
  reg  in1,in2;
  xnor1 xnor2(out,in1,in2);
  initial
  begin
    in1=1'b0;
    in2=1'b0;
  end
  always  #5 in1=~in1;
  always  #10 in2=~in2;
  initial #500 $finish;
endmodule 


