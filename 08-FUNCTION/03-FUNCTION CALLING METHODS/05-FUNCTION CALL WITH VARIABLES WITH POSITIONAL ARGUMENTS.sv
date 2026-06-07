// Code your testbench here
// or browse Examples
module tb;
  
   function int calculate_size(int header_size,int payload_size,int crc_size);
    int size;
    $display("\nEntered into Function");
     $display("header size=%0d",header_size);
     $display("payload size=%0d",payload_size);
     $display("CRC size=%0d",crc_size);

    size =header_size+payload_size+crc_size;
     $display("calculated size=%0d",size);
    return size;
  endfunction


  int total_size;
  initial
    begin
    total_size =calculate_size(.payload_size(128),.header_size(16),.crc_size(4));
    $display("--------------------------------");
    $display("returned from function");
    $display("total packet size=%0d",total_size);
    $display("--------------------------------");

  end
endmodule

// ====================================OUTPUT=============================================

Entered into Function
header size=16
payload size=128
CRC size=4
calculated size=148
--------------------------------
returned from function
total packet size=148
--------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
