module or1(out,in1,in2);
output out;
input in1,in2;
supply1 power;
supply0 ground;
wire w1,t;

pmos p1(w1,power,in1);
pmos p2(t,w1,in2);
nmos n1(t,ground,in1);
nmos n3(t,ground,in2);
inv c(out,t);
endmodule

module or1_tb;
  wire out;
  reg  in1,in2;
  or1 or2(out,in1,in2);
  initial
  begin
    in1=1'b0;
    in2=1'b0;
  end
  always  #5 in1=~in1;
  always  #10 in2=~in2;
  initial #500 $finish;
endmodule 


