// Code your testbench here
// or browse Examples

module if_else;
  
  logic [7:0]marks;
      
      
  function void mark(input logic[7:0]marks);
    begin
        
    unique if (marks >= 90 && marks <= 100)

    $display("Grade A");

    else if(marks >= 75 )

    $display("Grade B");

    else if(marks >= 50 && marks < 75)

    $display("Grade C");

    else

    $display("FAIL");
      
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
