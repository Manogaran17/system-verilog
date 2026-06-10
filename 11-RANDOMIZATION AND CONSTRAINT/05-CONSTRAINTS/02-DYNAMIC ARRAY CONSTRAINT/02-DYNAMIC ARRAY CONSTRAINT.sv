class packet;

  rand bit [7:0] data[];
  constraint size_c {
    data.size() inside {[5:8]};
  }
  
  constraint value_c {
    foreach(data[i])
      data[i] inside {[10:50]};
  }
  
  constraint order_c {
    foreach(data[i])
      if(i>0)
        data[i]>data[i-1];

  }

endclass

module tb;
  packet p;
  initial 
    begin
      p=new();
      repeat(5)
        begin
          p.randomize();
          $display("size=%d data=%0p", p.data.size,p.data);
        end 
    end 
endmodule 
// =====================OUTPUT===========================
size=          5 data='{'hc, 'h15, 'h18, 'h1f, 'h22} 
size=          5 data='{'hb, 'h16, 'h28, 'h29, 'h2e} 
size=          7 data='{'ha, 'h12, 'h15, 'h16, 'h17, 'h22, 'h24} 
size=          8 data='{'ha, 'hd, 'h16, 'h1b, 'h1c, 'h24, 'h28, 'h30} 
size=          5 data='{'h14, 'h1c, 'h1e, 'h26, 'h2a} 
           V C S   S i m u l a t i o n   R e p o r t 
