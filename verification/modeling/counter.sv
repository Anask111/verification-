module counter (cout);

output reg  cout;

initial begin 

repeat(10) begin

cout=cout+1;

end
end
endmodule
