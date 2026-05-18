// Code your testbench here
// or browse Examples

module concat_replication;
  
  logic[3:0]a;
  logic [1:0]b;
  
  logic [7:0] concat_out;
  logic [7:0] replication;
  logic [11:0] combined_out;
  
  initial 
    begin
      
      a = 4'b1010;
      b = 2'b11;
      
      // concatenation 
      
      concat_out = {a,b,2'b00};
      
      replication = {4{b}};
      
      // conationation + replication 
      
      combined_out = {{2{b}},a,4'b1111};
      
      $display("\n=======CONCATENATION=========");
      $display("\ta=%b",a);
      $display("\tb=%b",b);
      
      $display("\tconcatenation output = %b", concat_out);
      
      $display("\n======REPLICATION==========");
      
      $display("\treplication ouput = %b",replication);
      
      $display("\n======CONCATENATION + REPLICATION======== ");
      $display("\tcombined output =%b",combined_out);
      
      
    end 
endmodule 
      
