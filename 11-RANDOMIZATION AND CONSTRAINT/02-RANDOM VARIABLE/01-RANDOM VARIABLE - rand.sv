// Code your testbench here
// or browse Examples
class packet;

  rand bit[31:0]addr;
  rand bit[31:0]data;
  rand bit[3:0]priority_1;
endclass

module tb;
  packet p;
  initial 
    begin
    p=new();
    $display("\n=====RAND MULTI-VARIABLE=====\n");
    repeat(5)
      begin
      p.randomize();
        $display("ADDR=%0d DATA=%0d PRIORITY=%0d",p.addr,p.data,p.priority_1);
    end
  end
endmodule
// ================================OUTPUT===================================
=====RAND MULTI-VARIABLE=====

ADDR=3910850489 DATA=2701757548 PRIORITY=7
ADDR=1637914715 DATA=1233360000 PRIORITY=10
ADDR=397247290 DATA=4017281622 PRIORITY=3
ADDR=3887389703 DATA=2859052370 PRIORITY=9
ADDR=2996161504 DATA=2842273100 PRIORITY=4
           V C S   S i m u l a t i o n   R e p o r t 
