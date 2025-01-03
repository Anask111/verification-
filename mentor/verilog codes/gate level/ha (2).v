module HA (s,c,a,b);
	output s,c ;
	input a,b;
	xor x1(s,a,b);
	and x2(c,a,b);
endmodule