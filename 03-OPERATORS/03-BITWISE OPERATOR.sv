// Code your testbench here
// or browse Examples
module bitwise_always_comb;
  
  logic[7:0]a,b;
  logic[7:0] result_and;
  logic[7:0] result_or;
  logic[7:0] result_not;
  logic[7:0] result_nor;
  logic[7:0] result_xnor;
  logic[7:0] result_xor;
  logic[7:0] result_nand;
  
  always_comb
    begin
      
      result_and = a&b;
      result_or = a|b;
      result_not = ~a;
      result_nor = ~(a|b);
      result_xnor = ~(a^b);
      result_xor = a^b;
      result_nand  = ~(a&b);
      
    end 
  
  initial 
    begin
      
      a = 8'b10101010;
      b = 8'b11110111;
      
      #5;
      
      $display("AND = %b", result_and);
      $display("OR = %b", result_or);
      $display("NOT = %b", result_not);
      $display("NOR = %b", result_nor);
      $display("XNOR = %b", result_xnor);
      $display("XOR = %b", result_xor);
      $display("NAND = %b", result_nand);
      
    end 
endmodule 
      
      
