// Code your testbench here
// or browse Examples

class transaction;

  int addr;
  int data;

  function new(int a, int d);
    addr=a;
    data=d;
  endfunction

endclass

class write_transaction extends transaction;

  bit wr;

  function new(int a,int d, bit w);

    super.new(a,d);
    wr=w;

  endfunction

endclass

module tb;

  write_transaction tr;

  initial begin

    tr=new(10,20,1);

    $display("addr=%0d",tr.addr);
    $display("data=%0d",tr.data);
    $display("wr=%0d",tr.wr);

  end

endmodule

addr=10

data=20

wr=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.560 seconds;       Data structure size:   0.0Mb
Fri Jun  5 02:22:59 2026
Done
