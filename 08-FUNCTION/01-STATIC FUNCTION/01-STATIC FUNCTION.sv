// Code your testbench here
// or browse Examples

module tb;

  function void generate_packet(int pkt_size);

    int packet_count=0;
    int total_bytes =0;

    packet_count++;
    total_bytes += pkt_size;

    $display("--------------------------------");
    $display("Packet Count=%0d",packet_count);
    $display("Packet Size=%0d",pkt_size);
    $display("Total Bytes=%0d",total_bytes);
    $display("--------------------------------");

  endfunction

  initial 
    begin
    generate_packet(64);
    generate_packet(128);
    generate_packet(256);
    generate_packet(512);
  end

endmodule

--------------------------------
Packet Count=1
Packet Size=64
Total Bytes=64
--------------------------------
--------------------------------
Packet Count=2
Packet Size=128
Total Bytes=192
--------------------------------
--------------------------------
Packet Count=3
Packet Size=256
Total Bytes=448
--------------------------------
--------------------------------
Packet Count=4
Packet Size=512
Total Bytes=960
--------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
