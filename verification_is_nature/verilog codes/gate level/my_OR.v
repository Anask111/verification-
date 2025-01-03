module my_OR(y,a,b);
output y;
input a,b;
or x1(y,a,b);
endmodule

module ORtb;
  wire y;
  reg a,b;
  my_OR A(y,a,b);
  initial
  begin
    $monitor("At time %0t - a=%b, b=%b, y=%b",$time,a,b,y);
    a='b0;b='b0;
    #5; a='b0;b='b1;
    #5;
    a='b0;b='bx;
    #5;
    a='b0;b='bz;
    #5;
    a='b1;b='b0;
    #5;
    a='b1;b='b1;
    #5;
    a='b1;b='bx;
    #5;
    a='b1;b='bz;
    #5;
    a='bx;b='b0;
    #5;
    a='bx;b='b1;
    #5;
    a='bx;b='bx;
    #5;
    a='bx;b='bz;
    #5;
    a='bz;b='b0;
    #5;
    a='bz;b='b1;
    #5;
    a='bz;b='bx;
    #5;
    a='bz;b='bz;
    #5 ;
end
  initial
    #2000 $finish;

endmodule