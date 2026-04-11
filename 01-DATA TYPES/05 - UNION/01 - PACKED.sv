// Code your testbench here
// or browse Examples
module packed_union;
  
  typedef union packed{
    logic[31:0]data;
    
    logic[3:0][7:0]bytes;
    
    struct packed {
      logic[7:0]a;
      logic[7:0]b;
      logic[7:0]c;
      logic[7:0]d;
    } field;
  }uni;
  
  uni u;
  
  initial 
    begin
      
      $display("======packed union=======");
      
      u.data=32'hAABBCCDD;
      
      $display("data=%h",u.data);
      
      $display("bytes = %h %h %h %h",u.bytes[3],u.bytes[2],u.bytes[1],u.bytes[0]);
      
      $display("fields= a=%h b=%h c=%h d=%h ",u.field.a,u.field.b,u.field.c,u.field.d);
      
      // modify using another member 
      
      u.bytes[0]=8'hff;
      $display("after modification");
      $display("data=%h",u.data);
      
    end
endmodule 
