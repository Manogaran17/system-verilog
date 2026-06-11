class packet;

  rand bit [7:0] addr;

 static constraint addr_c {
    addr inside {[10:20]};
  }

endclass

module tb;

  packet p1,p2;

  initial 
    begin
    p1=new();
    p2=new();
    repeat(5) 
      begin
      void'(p1.randomize());
      void'(p2.randomize());
      
      $display("p1=%0d p2=%0d",p1.addr,p2.addr);
      $display(" ");
    end
    p1.addr_c.constraint_mode(0);
//     p2.addr_c.constraint_mode(0);
    $display("Constraint Disabled");
    repeat(5)
      begin
      void'(p1.randomize());
      void'(p2.randomize());
      $display("p1=%0d p2=%0d",p1.addr,p2.addr);
        $display(" ");
    end
  end
endmodule
// ===================output=====================
p1=12 p2=10
 
p1=12 p2=20
 
p1=16 p2=12
 
p1=18 p2=13
 
p1=12 p2=13
 
Constraint Disabled
p1=249 p2=139
 
p1=143 p2=61
 
p1=255 p2=181
 
p1=173 p2=99
 
p1=35 p2=8
