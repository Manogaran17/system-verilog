// Code your testbench here
// or browse Examples

module logical_operator;
  
  logic[7:0] a,b,c,x,y,z,w;
  
  initial 
    begin
      
      a=8'b11101110;
      b=8'b11101001;
      c=8'bx;
      
      $display("\n====logical operator====");
      
      x = (a&&c);
      y = (a||b);
      z = (a||c);
      w = (!a);
      
      $display("\nlogical and a&&b:%0b",x);
      
      $display("\nlogical or1 a||b:%0b",y);
      
      $display("\nlogical or2 a||c:%0b",z);
      
      $display("\nlogical not !a:%0b",w);
      
    end 
endmodule 
