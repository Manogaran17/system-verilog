module unique_case;
  
  logic [9:0] marks;
  
  function void grade (input logic [9:0]marks);
    
    unique case(1)
      
      (marks>=90&&marks<=100):
        $display("Grade A");
      
      (marks>=75):
        $display("Grade B");
      
      (marks>=50&&marks<75):
        $display("Grade C");
      
      (marks<40):
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

Warning-[RT-MTOCMUCS] More than one condition match in statement
testbench.sv, 7
  More than one condition matches are found in 'unique case' statement inside 
  unique_case.grade, at time 0ns.
  
  Line number 9 and 12 are overlapping.

Grade C
FAIL
Grade B

Warning-[RT-NCMUCS] No condition matches in statement
testbench.sv, 7
  No condition matches in 'unique case' statement. 'default' specification is 
  missing, inside unique_case.grade, at time 0ns.

           V C S   S i m u l a t i o n   R e p o r t 
