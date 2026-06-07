// Code your testbench here
// or browse Examples
module tb;

  function void update_stats(ref int packet_count,ref int total_bytes, input int packet_size );
 
    $display("\nInside Function");
    $display("\nBefore Update");
    $display("packet_count=%0d",packet_count);
    $display("total_bytes=%0d",total_bytes);

    packet_count++;
    total_bytes += packet_size;
    $display("\nAfter Update");
    $display("packet_count=%0d",packet_count);
    $display("total_bytes=%0d",total_bytes);
  endfunction

  
  int packet_count;
  int total_bytes;

  initial 
    begin

    packet_count=0;
    total_bytes=0;

    update_stats(packet_count,total_bytes,64);
    update_stats(packet_count,total_bytes,128);
    update_stats(packet_count,total_bytes,256);
    $display("\nFinal Statistics");
    $display("packet_count=%0d",packet_count);
    $display("total_bytes =%0d",total_bytes);

  end
endmodule

// ====================================OUTPUT=============================================================
Inside Function

Before Update
packet_count=0
total_bytes=0

After Update
packet_count=1
total_bytes=64

Inside Function

Before Update
packet_count=1
total_bytes=64

After Update
packet_count=2
total_bytes=192

Inside Function

Before Update
packet_count=2
total_bytes=192

After Update
packet_count=3
total_bytes=448

Final Statistics
packet_count = 3
total_bytes  = 448
           V C S   S i m u l a t i o n   R e p o r t 
