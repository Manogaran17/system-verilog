// Code your testbench here
// or browse Examples

module string_methods;

  string s,s1,s2;
  
  real r;
  byte ch;
  int i;
  
  initial
    begin
      // initialization 
      s="system verilog";
      $display("\n original string s=%s",s);
      
      // length 
      $display("lenght=%0d",s.len());
      
      // case conversion 
      s1=s.tolower();
      $display("lowercase s1=%s",s1);
      
       // case conversion 
      s2=s.toupper();
      $display("uppercase s2=%s",s2);
      
      //substring
      $display("substring(0,5)=%s",s.substr(0,5));
      
      //compare
      i=s.compare("system verilog");
      $display("compare (same)=%0d",i);
      
      i=s.compare("systemVerilog");
      $display("compare(differnt)=%0d",i);
      
      // string ot int
      
      s="123";
      i=s.atoi();
      $display("\n string to int=%0d",i);
      
      //integer to string
      s1.itoa(i);
      $display("int to string(itoa)=%s",s1);
      
      //differnt base
      s="1A";
      i=s.atohex();
      $display("hex to int(atohex)=%0d",i);
      
      s="1010";
      i=s.atobin();
      $display("binary to int(atobin)=%0d",i);
      
      // real conversion 
      
      s="3.14";
      r=s.atoreal();
      $display("string to real=%0f",r);
      s1.realtoa(r);
      $display("real ro string=%s",s1);
      
      // character acess
      
      s="HELLO";
      ch=s.getc(1);
      $display("\n character at index 1=%c(ASCII=%0d)",ch,ch);
      
      // character modification
      s.putc(1,"A");
      $display("\n after putc=%s",s);
      
      // formatting 
      
      i=50;
      s=$sformatf("formatted value=%0d",i);
      $display("%s",s);
      
    end 
endmodule 
