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
      
      unique0 if (read)
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
      
      
      unique0 if (read)
        cmd_type = 2'b01;
      
      else if (write)
      
      cmd_type = 2'b10;
      
      else if (reset)
        
        cmd_type = 2'b11;
      
      $display("\t\ncase2 cmd_type = %b", cmd_type);
      
      read = 1;
      write = 1;
      reset = 0;
    
      unique0 if (read)
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
	
case2 cmd_type = 01

Warning-[RT-MTOCMU0IF] More than one condition match in statement
testbench.sv, 61
  Unique0 if statement inside unique0_if_ex matches more than one condition at
  time 0ns.
  
  Line number 61 and 64 match.

case3 cmd_type = 01
==================ends here=======================
           V C S   S i m u l a t i o n   R e p o r t 

