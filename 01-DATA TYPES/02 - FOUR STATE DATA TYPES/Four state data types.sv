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
 
  d=18446744073709551.615;
  e=$time;
  f=32'hffff;

      $display("value of a=%b",a);
      $display("value of b=%b",b);
      $display("value of c=%b",c);
      $display("value of d=%0f(%b)",d,d);
      $display("value of e=%0t(%b)",e,e);
      $display("value of f=%0d(%b)",f,f);
    end 
  
  
endmodule 
  
      
