// Code your testbench here
// or browse Examples
module struct_packed;
  
  typedef struct packed {
    bit[3:0]id;
    bit[7:0]mark;
    bit[0:0]pass;
  }student;
  student s[3];
  
  bit[12:0]bus;
  
  initial 
    begin
      
      // initialization 
      
      s[1]='{id:3,mark:89,pass:1};
      
      s[1].id=4;
      s[1].mark=90;
      s[1].pass=1;
      
      s[2]='{5,78,1};
      
      // normal display 
      
      $display("student s[0]=%p",s[0]);
      
      // individual member access
      $display("\n----student details-----");
      $display("id=%0d",s[1].id);
      $display("mark=%0d",s[1].mark);
      $display("pass=%0d",s[1].pass);
      
      // by using for each 
      foreach(s[i])
        begin
          $display("\ns %0d:",i);
      $display("id=%0d",s[i].id);
      $display("mark=%0d",s[i].mark);
      $display("pass=%0d",s[i].pass);
        end 
      // struct to bus 
      
      bus=s[1];
      
      $display("\nbus=%b(%0d)",bus,bus);
      
    end 
  
endmodule 
      
      
