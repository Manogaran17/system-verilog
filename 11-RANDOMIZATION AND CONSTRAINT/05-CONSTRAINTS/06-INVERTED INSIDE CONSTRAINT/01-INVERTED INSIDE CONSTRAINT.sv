// Code your testbench here
// or browse Examples
class packet;
  randc bit[7:0] addr;
  randc bit[7:0] data;
  randc bit[7:0] burst_len;

  constraint addr_c {
    !(addr inside{[10:20]});
  }

  constraint data_c {
    !(data inside{[0:15],[100:110]});
  }

  constraint burst_c {
    !(burst_len inside{1,4,8,16});
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
// ======================OUTPUT=================================
-----------------------------------
addr      = 231
data      = 212
burst_len = 246
-----------------------------------
-----------------------------------
addr      = 34
data      = 87
burst_len = 254
-----------------------------------
-----------------------------------
addr      = 143
data      = 209
burst_len = 83
-----------------------------------
-----------------------------------
addr      = 153
data      = 120
burst_len = 81
-----------------------------------
-----------------------------------
addr      = 215
data      = 112
burst_len = 199
-----------------------------------
