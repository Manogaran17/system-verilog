// Code your testbench here
// or browse Examples

class generator;

  rand bit[3:0]value;
  int status;
  int double_value;

  constraint c1{value inside{[1:10]}; }

  function void post_randomize();
    $display("Inside post_randomize");
    status=1;
    double_value=value*2;
  endfunction
endclass

module tb;

  generator gen;
  initial 
    begin
    gen=new();
    repeat(3)
      begin
      gen.randomize();
      $display("value=%0d status=%0d double=%0d",gen.value,gen.status,gen.double_value);
    end
  end
endmodule
// ============================OUTPUT============================================
Inside post_randomize
value=3 status=1 double=6
Inside post_randomize
value=3 status=1 double=6
Inside post_randomize
value=7 status=1 double=14
           V C S   S i m u l a t i o n   R e p o r t 
