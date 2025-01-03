module mux (y,a,b,c,d,s1,s2);
output logic y;
input logic a,b,c,d,s1,s2;
assign y = a&~s1&~s2 | b&~s1&s2 | c&~1&~s2 | d&s1&s2;
endmodule

module mux_tb;
 logic S1,S2;
  logic [1:0] A;
    logic [1:0] B;
      logic [1:0] C; 
       logic [1:0] D;
  wire Y;
  mux i_mux(Y ,A,B,C,D,S1,S2);
 
  initial
  begin
  A ='b00;
  B ='b01;
  C ='b10;
  D ='b11;
  S1='b0;
  S2='b0;
end
 /*always #5 S1=~S1;
  always #10 S2=~S2;
always #20
initial 
begin
  A=~A;
  B=~B;
  C=~C;
  D=~D;
  end */
   always #5 S1=~S1;
  always #10 S2=~S2;
initial #200 $finish;
endmodule

