// Code your testbench here
// or browse Examples

module if_else;
  
  logic [7:0]marks;
      
      
  function void mark(input logic[7:0]marks);
    begin
        
      if(marks >= 90)
        
        $display("\ngrade A");
      
      else if(marks>=75)
        
        $display("\ngrade B");
      
      else if(marks>=50)
        
        $display("\ngrade C");
      
      else
        
        $display("\nfail");
    end 
      endfunction 
  
  initial 
    begin
      $display("\n=========if_else example=========");
      
      marks = 98;
      mark(marks);
      
       marks = 65;
      mark(marks);
      
       marks = 34;
      mark(marks);
      
       marks = 67;
      mark(marks);
      
       marks = 89;
      mark(marks);
      
       marks = 78;
      mark(marks);
      
    end 
  
   
endmodule

=========if_else example=========

grade A

grade C

fail

grade C

grade B

grade B
           V C S   S i m u l a t i o n   R e p o r t 
