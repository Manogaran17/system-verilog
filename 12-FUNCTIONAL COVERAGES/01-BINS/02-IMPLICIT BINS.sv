// Code your testbench here
// or browse Examples
class packet;
  rand bit [1:0]addr;
  rand bit [1:0]data;
  rand bit write;
endclass

module tb;
  packet p;
  covergroup cg;
    cp_addr:coverpoint p.addr;
    cp_data:coverpoint p.data;
    cp_write:coverpoint p.write;

  endgroup

  cg c1;

  initial 
    begin
    p =new();
    c1=new();
    repeat(22)
    begin
      void'(p.randomize());
      c1.sample();
      $display("addr=%0d data=%0d write=%0d coverage=%0.2f%%",p.addr,p.data,p.write,c1.get_coverage());         
    end
  end
endmodule
// =================================OUTPUT===================================================
addr=1 data=0 write=1 coverage=33.33%
addr=3 data=0 write=0 coverage=58.33%
addr=2 data=2 write=1 coverage=75.00%
addr=3 data=2 write=1 coverage=75.00%
addr=0 data=0 write=0 coverage=83.33%
addr=3 data=2 write=0 coverage=83.33%
addr=2 data=0 write=1 coverage=83.33%
addr=3 data=2 write=1 coverage=83.33%
addr=0 data=3 write=0 coverage=91.67%
addr=1 data=3 write=0 coverage=91.67%
addr=1 data=3 write=0 coverage=91.67%
addr=0 data=2 write=1 coverage=91.67%
addr=3 data=3 write=0 coverage=91.67%
addr=2 data=2 write=1 coverage=91.67%
addr=1 data=0 write=1 coverage=91.67%
addr=2 data=0 write=0 coverage=91.67%
addr=2 data=3 write=1 coverage=91.67%
addr=0 data=3 write=1 coverage=91.67%
addr=1 data=2 write=1 coverage=91.67%
addr=2 data=1 write=1 coverage=100.00%
addr=3 data=1 write=0 coverage=100.00%
addr=3 data=0 write=0 coverage=100.00%
           V C S   S i m u l a t i o n   R e p o r t 
