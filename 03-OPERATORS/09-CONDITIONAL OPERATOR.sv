// Code your testbench here
// or browse Examples

module conditional_operator;
  
  logic [7:0] a,b;
  logic [7:0]max_value;
  logic [7:0]min_value;
  
  logic [7:0]result;
  
  initial 
    begin
      
      a = 8'd25;
      b = 8'd15;
      
      $display("======CONDITIONAL OPERATOR======");
      
      $display("\n vlaue of a :%0d",a);
      $display("\n vlaue of b :%0d",b);
     
      
      max_value = (a>b)?a:b;
      
      min_value = (a<b)?a:b;
      
      result = (a==b)?8'd1:8'd0;
      
      $display("\n-----CONDITIONAL RESULT --------");
      
      $display("\n maximmum value = %0d",max_value);
      
      $display("\n minimum value = %0d",min_value);
      
      $display(" a==b ? 1:0 = %0d",result);
      
    end 
endmodule 
