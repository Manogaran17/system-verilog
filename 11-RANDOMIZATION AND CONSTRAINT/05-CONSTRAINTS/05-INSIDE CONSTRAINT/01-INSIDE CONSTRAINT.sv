// Code your testbench here
// or browse Examples
class packet;
  randc int addr;
  randc int data;
  randc int burst_len;

  constraint addr_c {
    addr inside{[10:20]};
  }

  constraint data_c {
    data inside{[0:15],[100:110]};
  }

  constraint burst_c {
    burst_len inside{1,4,8,16};
  }

  function void display();
    $display("-----------------------------------");
    $display("addr      = %0d",addr);
    $display("data      = %0d",data);
    $display("burst_len = %0d",burst_len);
    $display("-----------------------------------");
  endfunction

endclass

module tb;
  packet p;
  initial 
    begin
    p=new();
    repeat(5) begin
      if(p.randomize()) begin
        p.display();
      end
    end
  end
endmodule
// =====================OUTPUT===========================
-----------------------------------
addr      = 13
data      = 107
burst_len = 1
-----------------------------------
-----------------------------------
addr      = 14
data      = 13
burst_len = 16
-----------------------------------
-----------------------------------
addr      = 18
data      = 12
burst_len = 4
-----------------------------------
-----------------------------------
addr      = 19
data      = 100
burst_len = 8
-----------------------------------
-----------------------------------
addr      = 17
data      = 1
burst_len = 8
-----------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
