// Code your testbench here
// or browse Examples
module tb;

  function automatic int calc_crc(input int addr,input int data);                               
    int crc;
    crc=(addr^data)+8'hA3;
    return crc;
  endfunction

  task automatic send_packet(input int addr,input int data);               
    int crc;
    int packet;
    $display("\n==============================");
    $display("TASK:Sending Packet");
    $display("ADDR=%0d|DATA=%0d",addr,data);

    crc=calc_crc(addr,data); // calling a function from task
    packet={addr[7:0],data[7:0],crc[7:0]};

    $display("CRC=%0d",crc);
    $display("PACKET=%0h",packet);
    $display("==============================");
  endtask

  initial 
    begin
      send_packet(10,20); // calling a task 
    send_packet(25,40);
    send_packet(100,55);
  end
endmodule
// ===============================================OUTPUT=================================================

==============================
TASK:Sending Packet
ADDR=10|DATA=20
CRC=193
PACKET=a14c1
==============================

==============================
TASK:Sending Packet
ADDR=25|DATA=40
CRC=212
PACKET=1928d4
==============================

==============================
TASK:Sending Packet
ADDR=100|DATA=55
CRC=246
PACKET=6437f6
==============================
           V C S   S i m u l a t i o n   R e p o r t 
