//module “parity” that calls 
//function “cal_parity”
module parity(parity,data);
input [7:0]data;
output parity;
reg parity;
always @ ( data)
/*invoke the function whenever 
data changes*/
begin
parity = cal_parity (data);
end

// define the function
function cal_parity;
input [7:0] data;
begin
/*use the implicit internal register 
cal_parity return the xor of all 
the bits*/
cal_parity = ^data ; 
end
endfunction
endmodule

module parity_test;
wire parity;
reg [7:0]data;
integer i;
parity parity_tb(parity,data);
initial
begin
$monitor("time=%0t  data=%b  |   parity=%b ",$time,data,parity);
end
initial
begin
for(i=0;i<256;i=i+1)
begin
 #1 data=i;
end
end
initial #500 $finish;
endmodule
