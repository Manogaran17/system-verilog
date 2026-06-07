// Code your testbench here
// or browse Examples
module tb;

  int num1;
  int num2;
  int result;

  task add
  (
    input  int a,
    input  int b,
    output int sum
  );

    sum=a+b;
  endtask

  initial 
    begin
    num1=10;
    num2=20;
    add(num1,num2,result);
    $display("Number1 = %0d", num1);
    $display("Number2 = %0d", num2);
    $display("Result  = %0d", result);

  end
endmodule

// ====================output==================================
Number1 = 10
Number2 = 20
Result  = 30
           V C S   S i m u l a t i o n   R e p o r t 
