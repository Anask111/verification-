module HA (s,c,a,b);
	output  s,c ;
	input  a,b;
	wire a,b;
	assign {c,s} = a+b ;
endmodule

module hadder_tb;
 // wire clk='b0;
   reg A,B;
  wire S,C;
  HA i_HA(S,C,A,B);
//  always #5 clk=~clk;
  initial
  begin
     $monitor("At time %0t - a=%b, b=%b, C=%b S=%b",$time,A,B,C,S);
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
    #5;
  end
 initial #300 $finish;
endmodule