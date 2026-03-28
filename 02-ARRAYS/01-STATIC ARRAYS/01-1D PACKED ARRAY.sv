
module array_1D;
  logic [7:0]data1;
  bit [7:0]data2;
  logic [0:7]data3;
  reg [7:0]data4;
  logic signed [7:0]data5;
  
  parameter n=8;
  logic[n-1:0]data6;
  logic[7:0]data7=8'hff;
  
  initial 
    begin
      data1=8'b10011001;
      data2=8'd45;
      data3=8'hab;
      data4=8'o56;
      data5=-6;
      data6=8'd67;
      
      $display("data1=%b",data1);
      $display("data2=%b",data2);
      $display("data3=%b",data3);
      $display("data4=%b",data4);
      $display("data5=%0d(%b)",data5,data5);
      $display("data6=%b",data6);
      $display("data7=%b",data7);
      
      $display("data1[6]=%b",data1[6]);  // 6th index bit 
      $display("data2[5:0]=%b",data2[5:0]); // slicing from [5:0]
      
      $display("data5[5:3]=%b",data5[5:3]); // slicing from [5:3]
      $display("data7[0]=%b",data7[0]); // 0th index bit 
    end 
endmodule 

output:
data1=10011001
data2=00101101
data3=10101011
data4=00101110
data5=-6(11111010)
data6=01000011
data7=11111111

data1[6]=0
data2[5:0]=101101
data5[5:3]=111
data7[0]=1
           V C S   S i m u l a t i o n   R e p o r t 
    
