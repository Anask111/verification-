module sum (a,b,y);
  input a, b;
  output y; //default wire
  
  assign y = a + b; //continuous asssignment where the LHS must be an wire
  
endmodule 