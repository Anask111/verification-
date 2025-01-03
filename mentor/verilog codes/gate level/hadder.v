module hadder (s,c,a,b);
	output  s,c ;
	input  a,b;
	wire a,b;
	xor x1(s,a,b);
	and x2(c,a,b);
endmodule

module hadder_tb;
 // wire clk='b0;
   reg A,B;
  wire S,C;
  hadder i_hadder(S,C,A,B);
//  always #5 clk=~clk;
  initial
  begin
    A='b1;
    B='b1;
    #5;
    B='b0;
    #5;
    B='b1;
    #5;
    A='b0;
    #5;
    A='b1;
    $finish;
  end
endmodule