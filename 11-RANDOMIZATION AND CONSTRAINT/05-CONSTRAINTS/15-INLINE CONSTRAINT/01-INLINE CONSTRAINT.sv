// Code your testbench here
// or browse Examples
class transaction;

  rand bit [7:0] addr;
  rand bit [7:0] data;
  rand bit write;
  
  constraint default_c {
    addr inside {[0:100]};
    data inside {[0:200]};

  }

endclass

module tb;
  transaction t;
  initial 
    begin
    t=new();
    repeat(5)
      begin
        void'(t.randomize()with{
          write==1;
          addr inside{[50:60]};
          data>150;
        });
        $display("WRITE=%0d ADDR=%0d DATA=%0d",t.write,t.addr,t.data);
      end
  end
endmodule
// ========================OUTPUT==============================

WRITE=1 ADDR=59 DATA=182
WRITE=1 ADDR=53 DATA=152
WRITE=1 ADDR=56 DATA=157
WRITE=1 ADDR=52 DATA=161
WRITE=1 ADDR=51 DATA=173
           V C S   S i m u l a t i o n   R e p o r t 
