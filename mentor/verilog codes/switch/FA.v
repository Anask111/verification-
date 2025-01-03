module FA(sum,co,a,b,cin);
output sum,co;
input a,b,cin;
wire w1,w2,w3;
 xor1 c1(w1,a,b);
  xor1 c2(sum,w1,cin);
   and1 c3(w2,cin,w1);
    and1  c4(w3,a,b);
     or1  c5(co,w2,w3);
endmodule

module FA_tb;
  wire co,sum;
  reg  a,b,cin;
  FA FA2(sum,co,a,b,cin);
  initial
  begin
    a=1'b0;
    b=1'b0;
     cin=1'b0;
     
  $monitor("At time %0t - sum=%b, co=%b , a=%b , b=%b,cin=%b ",$time,sum,co,a,b,cin);

  end
  always  #5 a=~a;
  always  #10 b=~b;
  always  #20 cin=~cin;
  initial #500 $finish;
endmodule 


