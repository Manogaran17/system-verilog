// Code your testbench here
// or browse Examples

module arithmetic_operators;
  
  int a=5,b=2;
  
  initial begin
    
    $display("\n=======Arithmetic operators=======");
    
   
    $display("a+b = %0d",a+b);
    
     
    $display("a-b = %0d",a-b);
    
     
    $display("a*b = %0d",a*b);
    
     
    $display("a/b = %0d",a/b);
    
    
    $display("a modulus b = %0d",a%b);
    
    
    $display("a**b = %0d",a**b);
    
  end 
endmodule 
   =======Arithmetic operators=======
a+b = 7
a-b = 3
a*b = 10
a/b = 2
a modulus b = 1
a**b = 25
           V C S   S i m u l a t i o n   R e p o r t 
