// Code your testbench here
// or browse Examples
module packed_struct;
  
  struct packed {
    int a;
    logic [7:0]b;
    bit [7:0]c;
    byte d;
  }data;
  
  initial 
    begin
      data.a=45;
      data.b=76;
      data.c=67;
      data.d=88;
      $display("value of a=%0d",data.a);
      $display("value of b=%0d",data.b);
      $display("value of c=%0d",data.c);
      $display("value of d=%0d",data.d);
    end 
endmodule 
