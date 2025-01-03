// Define a module “operation” that contains a task “bitwise_oper”
module operation(AB_AND, AB_OR, AB_XOR,A, B);
input [7:0] A, B;
output AB_AND, AB_OR, AB_XOR;
reg [7:0] AB_AND, AB_OR, AB_XOR;
always @ ( A or B) // invoke the task whenever A or B changes
begin
bitwise_oper (AB_AND,AB_OR,AB_XOR,A,B);
end
task bitwise_oper; // define the task
output [7:0] ab_and, ab_or , ab_xor;
input [7:0] a, b;
begin
ab_and = a & b;
ab_or = a | b;
ab_xor = a ^ b;
end
endtask
endmodule 

module oper_tb;
   wire [7:0] AB_AND, AB_OR, AB_XOR;
   reg [7:0] A, B;
	operation operation_tb(AB_AND, AB_OR, AB_XOR,A, B);
	initial
	begin
	$monitor("time=%0t  a=%b  |   b=%b   |   and=%b   |   or=%b  |   xor=%b ",$time,A,B,AB_AND,AB_OR,AB_XOR);
	A=8'b00011111;
	B=8'b11100000;
	#10;
	A=8'b11011111;
	B=8'b00101100;
	
	end
	
	initial #50 $finish;
endmodule
