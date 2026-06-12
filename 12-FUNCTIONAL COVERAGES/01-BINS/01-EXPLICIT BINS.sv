
class packet;
  rand bit[2:0]cmd;
endclass

module tb;
  packet p;
  covergroup cgrp;
    cp_cmd:coverpoint p.cmd{
      
      bins idle_cmd ={0};
      bins read_cmd ={1};
      bins write_cmd ={2};
      bins error_cmd ={7};
      
    }
    
  endgroup
  cgrp c1;
  initial 
    begin
      
      p=new();
      c1=new();
      repeat(10)
        begin
          p.randomize();
          c1.sample();     
          $display("cmd=%0d coverage=%0.2f%%",p.cmd,c1.get_coverage());
        end 
    end 
endmodule 
// =========================OUTPUT===============================================
cmd=1 coverage=25.00%
cmd=3 coverage=25.00%
cmd=2 coverage=50.00%
cmd=7 coverage=75.00%
cmd=0 coverage=100.00%
cmd=3 coverage=100.00%
cmd=2 coverage=100.00%
cmd=3 coverage=100.00%
cmd=0 coverage=100.00%
cmd=1 coverage=100.00%
           V C S   S i m u l a t i o n   R e p o r t
      
