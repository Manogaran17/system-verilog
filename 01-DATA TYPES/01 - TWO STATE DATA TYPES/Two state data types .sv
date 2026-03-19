// Code your testbench here
// or browse Examples

module two_state_datatype;
  bit a;
  byte b;
  int c;
  shortint d;
  longint e;

  
  initial 
    begin
      $display("default value of a=%b",a);
      $display("default value of b=%0d(%b)",b,b);
      $display("default value of c=%0d(%b)",c,c);
      $display("default value of d=%0d(%b)",d,d);
      $display("default value of e=%0d(%b)",e,e);
    end 
  
    initial 
    begin
  #20;
  a=1'b1;
  b=8'hff;
  d=16'hffff;
  c=32'hffffffff;
  e=64'hffffffffffffffff;

      $display("value of a=%b",a);
      $display(" value of b=%0d(%b)",b,b);
      $display(" value of c=%0d(%b)",c,c);
      $display(" value of d=%0d(%b)",d,d);
      $display(" value of e=%0d(%b)",e,e);
    end 
  
  
endmodule 
  
      
