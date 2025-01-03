// READING FROM FILE  
 
module file_read; 
 
reg [3:0] a,b; 
reg cin ; 
wire [3:0]sum ; 
wire carry ; 
integer i,k ; 
reg [11:0] temp ; 
 
full4bitadder f1 (sum,carry,a,b,cin); 
 
initial  
begin 
for (k=0; k<20;k=k+1) 
begin 
$readmemb("input2.dat",temp); 
$display ("#### TEMP = input2.dat",temp);  
end 
$fclose (i) ; 
end 
endmodule 
 