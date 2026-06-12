class packet;
  rand bit[1:0]state;
endclass


module tb;

  packet p;

  covergroup cg;

    cp_state:coverpoint p.state{

      bins t1=(0=>1);
      bins t2=(1=>2);
      bins t3=(2=>3);
    }

  endgroup

  cg c1;

  initial
    begin
    p=new();
    c1=new();

      repeat(17)
    begin
      void'(p.randomize());
      c1.sample();
      $display("state=%0d coverage=%0.2f%%", p.state, c1.get_coverage());
    end
  end
endmodule

// =============================OUTPUT====================================
Compiler version X-2025.06-SP1_Full64; Runtime version X-2025.06-SP1_Full64;  Jun 12 03:30 2026
state=1 coverage=0.00%
state=3 coverage=0.00%
state=2 coverage=0.00%
state=3 coverage=33.33%
state=0 coverage=33.33%
state=3 coverage=33.33%
state=2 coverage=33.33%
state=3 coverage=33.33%
state=0 coverage=33.33%
state=1 coverage=66.67%
state=1 coverage=66.67%
state=0 coverage=66.67%
state=3 coverage=66.67%
state=2 coverage=66.67%
state=1 coverage=66.67%
state=2 coverage=100.00%
state=2 coverage=100.00%
           V C S   S i m u l a t i o n   R e p o r t 
