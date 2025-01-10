module HAcase( s ,c, a, b);
	input a,b;
	output reg s,c ;

always @(a or b)
	begin
	case({b,a})
	00:begin c=0 ; s=0 ; end
	01:begin c=0 ; s=1 ; end
	10:begin c=0 ; s=1 ; end
	11:begin c=1 ; s=0 ; end
	endcase
		
	end
	
endmodule	

module  HAcase_tb;
 // wire clk='b0;
   reg A,B;
  wire S,C;
  HAcase i_HAcase(S,C,A,B);
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