class packet;

  rand int addr;
  rand int data;

  constraint addr_c {
    addr inside{[1:10]};
  }

  constraint data_c{
    data==addr*4;
  }

  
endclass

module tb;
  packet p;
  initial 
    begin
    p=new();
      repeat(10)
      begin
      void'(p.randomize());
      $display("---------------------------------");
      $display("addr=%0d data=%0d",p.addr,p.data);
    end
  end
endmodule

// ==========================OUTPUT==================================
---------------------------------
addr=3 data=12
---------------------------------
addr=6 data=24
---------------------------------
addr=4 data=16
---------------------------------
addr=4 data=16
---------------------------------
addr=2 data=8
---------------------------------
addr=6 data=24
---------------------------------
addr=1 data=4
---------------------------------
addr=3 data=12
---------------------------------
addr=4 data=16
---------------------------------
addr=9 data=36
           V C S   S i m u l a t i o n   R e p o r t 
