module greytobin(b,g);
	output [3:0]b;
	input [3:0]g;
	assign b[0]=g[0];
	assign b[1]=g[1]^b[0];
	assign b[2]=g[2]^b[1];
	assign b[3]=g[3]^b[2];
endmodule
	
	module greytobin_tb;
	  reg [3:0]g;
	  wire [3:0]b;
	  greytobin i_greytobin(b,g);
	  initial
	  begin
	  $monitor("At time %0t - g=%b , b=%b ",$time,g,b);
	   g[3:0] = 4'b0000;
		 end
		always #5 g[0]=~g[0];
	  always #10 g[1]=~g[1];
	  always #15 g[2]=~g[2];
	   always #15 g[3]=~g[3];
	    always #100 $finish;
 endmodule