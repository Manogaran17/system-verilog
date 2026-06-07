// Code your testbench here
// or browse Examples

module tb;
  function automatic int calc_checksum(int data1,int data2,int data3);                  
    int checksum;
    checksum=data1+data2+data3;

    $display("------------------");
    $display("Data1=%0d",data1);
    $display("Data2=%0d",data2);
    $display("Data3=%0d",data3);
    $display("Checksum=%0d",checksum);
    $display("------------------");
    return checksum;
  endfunction

  initial begin
    calc_checksum(10,20,30);
    calc_checksum(1,2,3);
    calc_checksum(100,200,300);
  end
endmodule

// ================================================OUTPUT===============================================

------------------
Data1=10
Data2=20
Data3=30
Checksum=60
------------------
------------------
Data1=1
Data2=2
Data3=3
Checksum=6
------------------
------------------
Data1=100
Data2=200
Data3=300
Checksum=600
------------------
           
