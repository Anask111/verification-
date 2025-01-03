
module sumdif(diff,sum,bo,c,A,B,CIN,BIN);
input  A, B;
input CIN,BIN;
output reg  diff, sum;
output reg bo,c;

always @ ( A or B) 
begin
sumdif (diff,sum,bo,c,A,B,CIN,BIN);
end
task sumdif; 
 output   D, S;
output  Bo,C;
input  a, b;
input cin,bin;

begin
#5;
 S=a^b^cin;
C=a&b|cin&b|cin&a;
#5 ;
D=a^b^bin;
 Bo=~a&b|bin&b|bin&~a;
end
endtask
endmodule 

module sumdif_tb;
   reg  A, B;
  reg CIN,BIN; 
wire  diff, sum;
wire bo,c;

	sumdif sumdif_tb(diff,sum,bo,c,A,B,CIN,BIN);
	initial
	begin
	$monitor("time=%0t  diff=%d  |   bo=%d   |   sum=%d   |   c=%d  |   A=%d |   B=%d ",$time, diff,bo, sum,c,A, B);
	A=1'b1;
	B=1'b1;
	CIN=1'b0;
	BIN=1'b1;
	#10;
	A=1'b1;
	B=1'b0;
	CIN=1'b0;
	BIN=1'b1;
	end
	
	initial #50 $finish;
endmodule

