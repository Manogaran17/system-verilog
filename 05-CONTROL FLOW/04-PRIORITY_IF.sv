module unique0_if_ex;
  
  logic read;
  logic write;
  
  logic reset;
  
  logic [1:0] cmd_type;
  
  initial 
    begin
      
      read = 1;
      write = 0;
      reset = 0;
      
      priority if (read)
        cmd_type = 2'b01;
      
      else if (write)
      
      cmd_type = 2'b10;
      
      else if (reset)
        
        cmd_type = 2'b11;
      
      
      $display("==================starts from here=======================");
      $display("\t\ncase1 cmd_type = %b", cmd_type);
      
      
      
//       bus idle 
      
      read = 0;
      write = 0;
      reset = 0;
      
      
      priority if (read)
        cmd_type = 2'b01;
      
      else if (write)
      
      cmd_type = 2'b10;
      
      else if (reset)
        
        cmd_type = 2'b11;
      
      $display("\t\ncase2 cmd_type = %b", cmd_type);
      
      
       
      read = 0;
      write = 1;
      reset = 1;
      
      
      priority if  (read)
        cmd_type = 2'b01;
      
      else if (write)
      
      cmd_type = 2'b10;
      
      else if (reset)
        
        cmd_type = 2'b11;
      
      $display("case3 cmd_type = %b", cmd_type);
      
      $display("==================ends here=======================");
      
    end 
endmodule 
==================starts from here=======================
	
case1 cmd_type = 01

Warning-[RT-NCMPRIF] No condition matches in statement
testbench.sv, 41
  No condition matches in 'priority if' statement. 'else' statement is missing
  for the last 'else if' block, inside unique0_if_ex, at time 0ns.

	
case2 cmd_type = 01
case3 cmd_type = 10
==================ends here=======================
           V C S   S i m u l a t i o n   R e p o r t 
