module equality_operator;
  
  logic [3:0]A,B,C;
  
  initial 
    begin
      A=4'b1100;
      B=4'b1010;
      C=4'b1100;
      
      $display("\n========logical equality with out x or z========");
      
      $display("is A is equal to B = %0b",A==B);
      $display("is A is equal to C = %0b",A==C);
      $display("is A is not equal to C = %0b",A!=C);
     
      A=4'b1100;
      B=4'b110X;
      C=4'b110z;
      
      $display("\n========logical equality with x or z========");
      
      $display("is A is equal to B = %0b",A==B);
      $display("is A is equal to C = %0b",A==C);
      $display("is A is not equal to C = %0b",A!=C);
      
      $display("\n========case equality with out x or z========");
      
      A=4'b1100;
      B=4'b1010;
      C=4'b1100;
   
      $display("is A is equal to B = %0b",A===B);
      $display("is A is equal to C = %0b",A===C);
      $display("is A is not equal to C = %0b",A!==C);
      
      $display("\n========case equality with x or z========");
      
      A=4'b110x;
      B=4'b110X;
      C=4'b110z;
       
      $display("is A is equal to B = %0b",A===B);
      $display("is A is equal to C = %0b",A===C);
      $display("is A is not equal to C = %0b",A!==C);
      
    end 
endmodule 
=========================================OUTPUT==============================================================
========logical equality with out x or z========
is A is equal to B = 0
is A is equal to C = 1
is A is not equal to C = 0

========logical equality with x or z========
is A is equal to B = x
is A is equal to C = x
is A is not equal to C = x

========case equality with out x or z========
is A is equal to B = 0
is A is equal to C = 1
is A is not equal to C = 0

========case equality with x or z========
is A is equal to B = 1
is A is equal to C = 0
is A is not equal to C = 1
           V C S   S i m u l a t i o n   R e p o r t 
