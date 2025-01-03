module decoderc(y1,y2,y3,y4,a,b);
	output reg y1,y2,y3,y4;
	input a,b;
		always @(a,b)
	begin
		case({a,b})
	2'b00: {y1,y2,y3,y4}=4'b1000; 
	2'b01:{y1,y2,y3,y4}=4'b0100; 
	2'b10:{y1,y2,y3,y4}=4'b0010; 
	2'b11:{y1,y2,y3,y4}=4'b0001; 
		endcase
			
	end

endmodule

module decoderc_tb;
  wire y1,y2,y3,y4;
  reg a,b;
  decoderc i_decoderc(y1,y2,y3,y4,a,b);
  initial
  begin
  $monitor("At time %0t -  y1=%b , y2=%b , y3=%b,y4=%b,a=%b, b=%b ",$time,y1,y2,y3,y4,a,b);
  a=1'b1;
  b=1'b1;
end
 always #5  a=~a;
 always #10 b=~b;
  initial #200 $finish;
endmodule

  