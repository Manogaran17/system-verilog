class packet;

  rand bit [7:0] addr;
  rand bit [7:0] data;

  bit write;
  constraint addr_c {
    addr inside {[10:20]};
  }
  constraint data_c {
    data inside {[100:150]};
  }

  
  function void pre_randomize();
    $display("\nInside pre_randomize()");
    write = $urandom_range(0,1);
    
    if(write)
      $display("WRITE transaction selected");
    else
      $display("READ transaction selected");
  endfunction

  
  function void post_randomize();
    $display("Inside post_randomize()");
    if(write)
      data = data + 10;
  endfunction
endclass

module tb;
  packet p;
  initial 
    begin
    p=new();
    repeat(5)
      begin
        $display("\nCalling randomize()");
        void'(p.randomize());
        $display("WRITE = %0d",p.write);
        $display("ADDR  = %0d",p.addr);
        $display("DATA  = %0d",p.data);
      end
  end
endmodule
// ==================================OUTPUT===========================================
Calling randomize()

Inside pre_randomize()
READ transaction selected
Inside post_randomize()
WRITE = 0
ADDR  = 12
DATA  = 147

Calling randomize()

Inside pre_randomize()
WRITE transaction selected
Inside post_randomize()
WRITE = 1
ADDR  = 12
DATA  = 111

Calling randomize()

Inside pre_randomize()
READ transaction selected
Inside post_randomize()
WRITE = 0
ADDR  = 16
DATA  = 136

Calling randomize()

Inside pre_randomize()
WRITE transaction selected
Inside post_randomize()
WRITE = 1
ADDR  = 18
DATA  = 135

Calling randomize()

Inside pre_randomize()
WRITE transaction selected
Inside post_randomize()
WRITE = 1
ADDR  = 12
DATA  = 131
