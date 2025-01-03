module and1(out,in1,in2);
output tri out;
input in1,in2;
supply1 power;
supply0 ground;
wire w1;
pmos p1(out,ground,in1);
pmos p2(out,ground,in2);
nmos n1(w1,power,in1);
nmos n3(out,w1,in2);
endmodule

module and1_tb;
  wire out;
  reg  in1,in2;
  and1 and2(out,in1,in2);
  initial
  begin
    in1=1'b0;
    in2=1'b0;
  end
  always  #5 in1=~in1;
  always  #10 in2=~in2;
  initial #500 $finish;
endmodule 

