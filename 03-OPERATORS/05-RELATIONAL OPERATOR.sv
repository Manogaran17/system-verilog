// Code your testbench here
// or browse Examples

module relational_operator;
  
  logic[4:0]a;
  logic[4:0]b;
  
   logic equal;
   logic not_equal;
   logic grater_than;
   logic less_than;
   logic grater_equal_to;
   logic less_equal_to;
  
 initial 
   begin
     
     a = 5'd20;
     b = 5'd15;
     
     $display("\n========relational operator===========");
     
     equal = (a==b);
     not_equal = (a!=b);
     grater_than = (a>b);
     less_than = (a<b);
     grater_equal_to = (a>=b);
     less_equal_to = (a<=b);
     
     
     $display("\n\tvalue of a:%0d",a);
     $display("\n\tvalue of b:%0d",b);
     
     $display("\n a is equal to b:%0b",equal);
     $display(" a is not equal to b:%0b",not_equal);
     $display(" a is grater than b:%0b", grater_than);
     $display(" a is less than b:%0b",less_than);
     $display(" a is grater than or equal to b:%0b", grater_equal_to);
     $display(" a is less than or equal to b:%0b",less_equal_to);
     
   end 
endmodule 
