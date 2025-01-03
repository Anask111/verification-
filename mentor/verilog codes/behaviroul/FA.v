module FA (s,c,a,b,ci);
	output reg s,c ;
	input a,b,ci;
	
	always @ (a,b,ci)
	
		begin
		if ({a,b,ci} == 3'b000)
		{s,c}=2'b00;
		
		else if   ({a,b,ci} == 3'b001)
		{s,c}=2'b01;
		
		else if ({a,b,ci}== 3'b010)
		{s,c}=2'b10;
		
		else if ({a,b,ci} == 3'b011)
		{s,c}=2'b11;
		
	
		else if ({a,b,ci} == 3'b101)
		{s,c}=2'b11;
		
		else  if ({a,b,ci} == 3'b100)
		{s,c}=2'b10;
		
		else if ({a,b,ci} == 3'b110)
		{s,c}=2'b01;
		
		else if ({a,b,ci} == 3'b111)
		{s,c}=2'b11;
		
		else 
		{s,c}=2'b00;
	end
	
endmodule

module FA_tb;
  wire s,c;
  reg  a,b,ci;
  FA i_FA(s,c,a,b,ci);
  initial 
  begin
  a='b1;
  b='b1;
  ci='b1;
end
 always #5  a=~a;
 always #10 b=~b;
 always #15 ci=~ci; 
  initial #200 $finish;
endmodule
