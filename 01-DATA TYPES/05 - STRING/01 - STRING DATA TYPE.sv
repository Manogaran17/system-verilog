// Code your testbench here
// or browse Examples
module string_sv;
 
  reg[0:15*8-1]s;
  bit[31:0]num;
  string s1;
  
  initial 
    begin
      
      $display("\n------verilog string---------");
      s="system verilog"; // 14 chrac
      $display("\nstring in verilog =%s",s);
      
      s="this is system verilog string program "; // 22 charc
      $display("string in verilog =%s",s);
      
      $display("\n------system verilog string--------");
      s1="hello this is manogaran";
      $display("string in system verilog =%s",s1);
      
      s1="this is system verilog string";
      $display("string in system verilog =%s",s1);
      
      // concatenation 
      s1={"hi"," ",s1};
      $display("string in system verilog =%s",s1);
      
      num=234;
      s1=num;
      
      $display("s1=%b(%0d)",s1,s1);
    end 
  endmodule 
      
      
      
  // Code your testbench here
// or browse Examples
module string_sv;
 
  reg[0:15*8-1]s;
  bit[31:0]num;
  string s1;
  
  initial 
    begin
      
      $display("\n------verilog string---------");
      s="system verilog"; // 14 chrac
      $display("\nstring in verilog =%s",s);
      
      s="this is system verilog string program "; // 22 charc
      $display("string in verilog =%s",s);
      
      $display("\n------system verilog string--------");
      s1="hello this is manogaran";
      $display("string in system verilog =%s",s1);
      
      s1="this is system verilog string";
      $display("string in system verilog =%s",s1);
      
      // concatenation 
      s1={"hi"," ",s1};
      $display("string in system verilog =%s",s1);
      
      num=234;
      s1=num;
      
      $display("s1=%b(%0d)",s1,s1);
    end 
  endmodule
