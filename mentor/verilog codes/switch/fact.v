
module fact(fact,data);
input [31:0]data;
output [31:0] fact;
reg [31:0] fact;
always @ ( data)
begin
fact = cal_fact (data);
end
function automatic integer cal_fact;
input [31:0] data;
integer  fact1=1;
integer i;
begin
i=data;
while (i>0)
begin
fact1=fact1*i;
i=i-1;
end
cal_fact=fact1;
end
endfunction
endmodule

module fact_test;
wire [31:0] fact;
reg [31:0]data;
integer i;
fact fact_tb(fact,data);
initial
begin
$monitor("time=%0t  fact=%d  |  data =%d ",$time,fact,data);
end
initial
begin
for(i=0;i<10;i=i+1)
begin
 #1 data=i;
end

end
always #50 data=$random;
initial #500 $finish;
endmodule
