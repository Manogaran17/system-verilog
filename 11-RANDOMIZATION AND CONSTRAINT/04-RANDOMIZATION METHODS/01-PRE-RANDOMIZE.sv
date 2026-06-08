// Code your testbench here
// or browse Examples
class generator;

  rand bit[3:0]value;
  int status;

  constraint c1{value inside{[5:12]};}

  function void pre_randomize();
    $display("Inside pre_randomize");
    status=0;
  endfunction
endclass

module tb;
  generator gen;
  initial
    begin
    gen=new();

    repeat(3)
      begin
      $display("\nCalling randomize...");
      gen.randomize();
      $display("value=%0d status=%0d",gen.value,gen.status);
    end
  end
endmodule

// ====================================OUTPUT===========================================
Calling randomize...
Inside pre_randomize
value=6 status=0

Calling randomize...
Inside pre_randomize
value=6 status=0

Calling randomize...
Inside pre_randomize
value=9 status=0
           V C S   S i m u l a t i o n   R e p o r t 
