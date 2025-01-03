module inv(out,in);
output out;
input in;
supply1 power;
supply0 ground;
nmos n1(out,ground,in);
pmos p1(out,power,in);
endmodule

module inv_tb;
  wire out;
  reg   in;
  inv inv1(out,in);
  initial
  begin
    in=1'b0;
  end
  always  #5 in=~in;
  initial #500 $finish;
endmodule 