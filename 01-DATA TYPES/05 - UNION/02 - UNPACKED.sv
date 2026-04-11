// Code your testbench here
// or browse Examples
module union_unpacked;
  
  typedef union{
    
    int i;
    logic[7:0]data;
    shortint data1;
    //string s;
  }uni;
  
  uni u;
  
  initial 
    begin
      
      $display("======displaying integer value=======");
      
      u.i=32'haabbccdd;
      $display("i = %0d",u.i);
      
      // integer value after modification 
      
      u.i[31:24]=8'hff;
      $display("after modification of int i=%0h",u.i);
     
      u.data=76;
      $display("data =%0d",u.data);
      
      $display("u=%p",u);
      
    end 
  
endmodule 
      
      
