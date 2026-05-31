module unique_case;
  
  logic [9:0] marks;
  
  function void grade (input logic [9:0]marks);
    
    unique0 case(1)
      
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
====== unique case example =======
Grade A

Warning-[RT-MTOCMU0CS] More than one condition matches in statement
testbench.sv, 7
  Unique0 case statement inside unique_case.grade matches more than one 
  condition at time 0ns.
  
  Line numbers 9 and 12 match.

Grade C
FAIL
Grade B
