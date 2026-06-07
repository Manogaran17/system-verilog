// Code your testbench here
// or browse Examples

module tb;

  task automatic generate_packet
  (
    input int addr,
    input int data
  );
    int packet_size;
    packet_size=addr+data;
    #10;
    $display("--------------------------------");
    $display("ADDR        = %0d", addr);
    $display("DATA        = %0d", data);
    $display("PACKET SIZE = %0d", packet_size);
    $display("--------------------------------");
  endtask

  initial 
    begin
    fork
      generate_packet(10,20);
      generate_packet(100,200);
      generate_packet(1000,2000);
    join
  end
endmodule
// =====================OUTPUT==========================
--------------------------------
ADDR        = 10
DATA        = 20
PACKET SIZE = 30
--------------------------------
--------------------------------
ADDR        = 100
DATA        = 200
PACKET SIZE = 300
--------------------------------
--------------------------------
ADDR        = 1000
DATA        = 2000
PACKET SIZE = 3000
--------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
