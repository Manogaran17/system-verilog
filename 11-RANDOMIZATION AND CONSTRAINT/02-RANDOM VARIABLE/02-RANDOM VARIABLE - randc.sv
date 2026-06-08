// Code your testbench here
// or browse Examples
class packet;
  randc bit[1:0]opcode;    
  randc bit[1:0]mode;       
  rand  bit[7:0]data;       
endclass


module tb;
  packet p;
  initial 
    begin
    p=new();
    $display("\n=====RANDC MULTI-VARIABLE=====\n");

    repeat(8)
      begin
      p.randomize();
      $display("OPCODE=%0d MODE=%0d DATA=%0d",p.opcode,p.mode,p.data);
    end
  end
endmodule
// ==================================output=======================================
=====RANDC MULTI-VARIABLE=====

OPCODE=3 MODE=2 DATA=167
OPCODE=1 MODE=0 DATA=66
OPCODE=0 MODE=1 DATA=26
OPCODE=2 MODE=3 DATA=89
OPCODE=2 MODE=2 DATA=100
OPCODE=0 MODE=3 DATA=241
OPCODE=1 MODE=0 DATA=123
OPCODE=3 MODE=1 DATA=49
           V C S   S i m u l a t i o n   R e p o r t 
