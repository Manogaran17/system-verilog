// Code your testbench here
// or browse Examples

module structure;
  
  typedef struct {
    string name;
    shortint rollno;
    int mark;
  }result;
  
  result student[3];
  
  initial 
    begin
      
      student[0].name="mano";
      student[0].rollno=29;
      student[0].mark=564;
      
      student[1].name="sakthi";
      student[1].rollno=38;
      student[1].mark=593;
      
      student[2]='{name:"ram",mark:573,rollno:27};
      
      $display("\n------student details----------");
      
      foreach(student[i])begin
        $display("\nstudents %0d:",i);
        $display("name=%s",student[i].name);
        $display("rollno=%0d",student[i].rollno);
        $display("mark=%0d",student[i].mark);
      end 
    
      $display("actual array=%p",student);
    end 
endmodule 
