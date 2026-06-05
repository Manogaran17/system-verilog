// Code your testbench here
// or browse Examples
class transaction;

  int addr;

  function new(int addr);
    this.addr=addr;
  endfunction

endclass

module tb;

  transaction tr;

  initial
    begin
    tr=new(100);
    $display("addr=%0d",tr.addr);
  end

endmodule
// =============================================output==============================
addr=100
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.510 seconds;       Data structure size:   0.0Mb
Fri Jun  5 02:08:20 2026
Done
