// Code your testbench here
// or browse Examples

module always_comb_block;
  
  logic [3:0]a;
  logic [3:0]b;
  logic [1:0]sel;
  
  logic [3:0]y;
  
  function logic[4:0] alu_function;
    
    input logic[3:0]x;
    input logic [3:0]y;
    input logic [1:0]s;
    
    begin
      case(s)
        
          2'b00: alu_function = x+y;
          2'b01: alu_function = x-y;
          2'b10: alu_function = x&y;
          2'b11: alu_function = x|y;
        default : alu_function = 5'b00000;
      endcase
    end 
    
  endfunction
//======================================================================//  
  always_comb 
    begin
      
      y = alu_function(a,b,sel);
      
    end 
//========================================================================//
  initial 
    begin
      
      $display("\n=======always_comb example=====");
      
      a = 4'd12;
      b = 4'd5;
      
      
      sel = 2'b00;
      
      #5;
      
      $display("\nsel = %b ADDITION ",sel);
      
      $display("a=%0d(%0b)",a,a);
      $display("b=%0d(%0b)",b,b);
      
      $display("output y =%0d(%0b)",y,y);
      
       sel = 2'b01;
      
      #5;
      $display("\nsel = %b SUBTRACTION ",sel);
      
      $display("a=%0d(%0b)",a,a);
      $display("b=%0d(%0b)",b,b);
      
      $display("output y =%0d(%0b)",y,y);
      
      
       sel = 2'b10;
      
      #5;
      
      $display("\nsel = %b bitwise and  ",sel);
      
     $display("a=%0d(%0b)",a,a);
      $display("b=%0d(%0b)",b,b);
      
      $display("output y =%0d(%0b)",y,y);
      
      
       sel = 2'b11;
      
      #5;
      
      $display("\nsel = %b bitwise or  ",sel);
      
      $display("a=%0d(%0b)",a,a);
      $display("b=%0d(%0b)",b,b);
      
      $display("output y =%0d(%0b)",y,y);
      
    end 
  
endmodule 
      
     
  
