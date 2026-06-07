// Code your testbench here
// or browse Examples
module tb;

  function int packet_size(int header,int payload,int crc);

    int total;
    $display("--------------------------------");
    $display("Inside Function");
    $display("Header = %0d",header);
    $display("Payload = %0d",payload);
    $display("CRC= %0d",crc);

    total=header+payload+crc;

    $display("Total Size=%0d",total);
    $display("--------------------------------");

    return total;
  endfunction

  initial
    begin

      $display("\npacket1 size=%0d",packet_size(16,128,4));
      $display("\npacket2 size + 100=%0d",packet_size(16,256,4)+100);
      $display("\nDouble Packet Size=%0d",packet_size(16,64,4)*2);

    if(packet_size(16,32,4)>50)
      $display("\nPacket is Large");
    else
      $display("\nPacket is Small");
  end
endmodule
// =========================================OUTPUT====================================================
--------------------------------
Inside Function
Header = 16
Payload = 128
CRC= 4
Total Size=148
--------------------------------

packet1 size=148
--------------------------------
Inside Function
Header = 16
Payload = 256
CRC= 4
Total Size=276
--------------------------------

packet2 size + 100=376
--------------------------------
Inside Function
Header = 16
Payload = 64
CRC= 4
Total Size=84
--------------------------------

Double Packet Size=168
--------------------------------
Inside Function
Header = 16
Payload = 32
CRC= 4
Total Size=52
--------------------------------

Packet is Large
           V C S   S i m u l a t i o n   R e p o r t 
