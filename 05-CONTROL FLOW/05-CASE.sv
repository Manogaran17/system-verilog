module unique_case;
  
  logic [9:0] marks;
  
  function void grade (input logic [9:0]marks);
    
     case(1)
      
      (marks>=90&&marks<=100):
        $display("Grade A");
      
      (marks>=75):
        $display("Grade B");
      
      (marks>=50&&marks<75):
        $display("Grade C");
      
      (marks<50):
        $display("FAIL");
      
    endcase
      
      endfunction 
  
 initial begin

    $display("\n======= unique case example =======");

    marks = 98;
    grade(marks);

    marks = 65;
    grade(marks);

    marks = 34;
    grade(marks);

    marks = 89;
    grade(marks);
   
    marks = 42 ;
    grade(marks);

  end

endmodule     

======= unique case example =======
Grade A
Grade C
FAIL
Grade B
           V C S   S i m u l a t i o n   R e p o r t 
