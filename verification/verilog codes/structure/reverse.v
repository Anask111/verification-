
module reverse(reverse,data);
input [7:0]data;
output [7:0] reverse;
reg [7:0] reverse;
always @ ( data)
begin
reverse = cal_reverse (data);
end
function automatic reg [7:0] cal_reverse;
input [7:0] data;
reg [7:0] reverse1;
begin
reverse1[0]=data[7];
reverse1[1]=data[6];
reverse1[2]=data[5];
reverse1[3]=data[4];
reverse1[4]=data[3];
reverse1[5]=data[2];
reverse1[6]=data[1];
reverse1[7]=data[0];
cal_reverse=reverse1;
end
endfunction
endmodule

module reverse_test;
wire [7:0] reverse;
reg [7:0]data;
//integer i;
reverse reverse_tb(reverse,data);
initial
begin
$monitor("time=%0t  data=%b  |   reverse=%b ",$time,data,reverse);
end
initial
begin
data=8'b00000000;
//for(i=0;i<256;i=i+1)
//begin
// #1 data=i;
//end
end
always #5 data=$random;
initial #500 $finish;
endmodule
