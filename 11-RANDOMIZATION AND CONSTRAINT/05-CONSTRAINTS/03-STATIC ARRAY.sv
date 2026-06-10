// Code your testbench here
// or browse Examples

class packet;
  
  rand bit [7:0]data[4][4];
  
  constraint value_c {
    foreach(data[i,j])
      data[i][j]inside{[0:4]};
    
  }
  
  function void display();
    $display("-------------------------------");
    $display("data = %0p",data);
    endfunction 
  
endclass

module tb;
  packet pkt;
  initial 
    begin
      repeat(8)
        begin
          pkt = new();
          pkt.randomize();
          pkt.display();
        end 
    end 
endmodule 
// ======================OUTPUT===========================
-------------------------------
data = '{'{'h1, 'h4, 'h1, 'h3}, '{'h0, 'h0, 'h4, 'h0}, '{'h2, 'h2, 'h0, 'h0}, '{'h0, 'h0, 'h2, 'h0}} 
-------------------------------
data = '{'{'h0, 'h4, 'h1, 'h1}, '{'h3, 'h3, 'h1, 'h2}, '{'h0, 'h3, 'h2, 'h2}, '{'h0, 'h1, 'h0, 'h0}} 
-------------------------------
data = '{'{'h0, 'h2, 'h4, 'h3}, '{'h1, 'h2, 'h4, 'h2}, '{'h4, 'h4, 'h0, 'h2}, '{'h1, 'h2, 'h2, 'h3}} 
-------------------------------
data = '{'{'h0, 'h4, 'h3, 'h0}, '{'h3, 'h3, 'h2, 'h1}, '{'h0, 'h3, 'h0, 'h3}, '{'h1, 'h3, 'h0, 'h3}} 
-------------------------------
data = '{'{'h2, 'h2, 'h3, 'h0}, '{'h0, 'h2, 'h2, 'h3}, '{'h2, 'h4, 'h0, 'h1}, '{'h1, 'h1, 'h1, 'h3}} 
-------------------------------
data = '{'{'h3, 'h0, 'h2, 'h0}, '{'h2, 'h0, 'h0, 'h2}, '{'h4, 'h1, 'h3, 'h4}, '{'h0, 'h4, 'h4, 'h1}} 
-------------------------------
data = '{'{'h0, 'h1, 'h0, 'h0}, '{'h1, 'h0, 'h1, 'h0}, '{'h4, 'h3, 'h1, 'h3}, '{'h3, 'h0, 'h4, 'h1}} 
-------------------------------
data = '{'{'h1, 'h0, 'h0, 'h3}, '{'h1, 'h3, 'h1, 'h1}, '{'h2, 'h1, 'h0, 'h1}, '{'h2, 'h0, 'h3, 'h0}} 
           V C S   S i m u l a t i o n   R e p o r t
