// Code your testbench here
// or browse Examples

module two_state_datatype;
  logic [7:0]a;
  reg [6:0]b;
  wire[3:0]c;
  real d;
  time e;
  integer f;

  
  initial 
    begin
      $display("default value of a=%b",a);
      $display("default value of b=%b",b);
      $display("default value of c=%b",c);
      $display("default value of d=%0f",d);
      $display("default value of e=%0t",e);
      $display("default value of f=%b",f);
    end 
  
initial 
    begin
  #20;
  a=8'hff;
  b=6'd34;
  c=4'd9;
  d=26.67;
  e=$time;
  f=64'hffffffffffffffff;

      $display("default value of a=%b",a);
      $display("default value of b=%b",b);
      $display("default value of c=%b",c);
      $display("default value of d=%0f",d);
      $display("default value of e=%0t",e);
      $display("default value of f=%b",f);
    end 
  
  
endmodule 
  
      
