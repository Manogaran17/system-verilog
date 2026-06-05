// Code your testbench here
// or browse Examples

class home;  // define class 
  
//   class propreties 
    
  bit light;
  int fan;
  string switch;
  
//     class methods
  task open_electricity();
    switch = "ON";
    $display("switch is %s electricity is open",switch);
  endtask
  
endclass


module tb;
  
  home h1; 
  
  initial 
    begin
        
//       the object is created 

      h1 = new();  
      $display("_______________________________________________");
      
      $display("check wheather the object is created or not");
      if(h1==null)
        $display("object is not created");
      else
        begin
        $display("object is created");
        end 
       $display("_______________________________________________");
      
    end 
  
endmodule 
