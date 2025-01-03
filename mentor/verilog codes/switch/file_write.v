// WRITING TO FILE  
 
module file_write; 
 
integer i,k ; 
integer j=1 ; 
reg [3:0] a,b; 
reg cin ; 
 
initial  
begin 
i = $fopen("input2.dat"); 
 
for (k=0; k<20;k=k+1) 
begin 
a = $random(j); 
b = $random(j); 
cin = $random(j); 
$fdisplay (i, "%4b %4b %b",a,b,cin); 
end 
$fclose(i); 
end 
endmodule 