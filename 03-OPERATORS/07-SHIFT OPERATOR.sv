// Code your testbench here
// or browse Examples
module shift_operator;
  
  logic [7:0]a;
  
  initial 
    begin
      
      a = 8'b11101110;
      
      $display("\n=====original value of a =====:%0b",a);
      
      $display("\n=====LEFT SHIFT OPERATOR=====");
      
      $display("\ta << 1:%0b",(a<<1));
      $display("\ta << 2:%0b",(a<<2));
      
      
      $display("\n=====RIGHT SHIFT OPERATOR=====");
      
      $display("a >> 1:%0b",(a>>1));
      $display("a >> 2:%0b",(a>>2));
      
      $display("=====ARITHMETIC LEFT SHIFT OPERATOR=====");
      
      $display("a <<< 1:%0b",(a<<<1));
      $display("a <<< 2:%0b",(a<<<2));
      
       
      $display("===== ARITHMETIC RIGHT SHIFT OPERATOR=====");
      
      $display("a >>> 1:%0b",(a>>>1));
      $display("a >>> 2:%0b",(a>>>2));
      
    end 
endmodule 
      
      
      
