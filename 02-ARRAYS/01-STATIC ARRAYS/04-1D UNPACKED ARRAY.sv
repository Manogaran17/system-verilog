module unpacked_1Darray;
  shortint data[7:0];
  
  int i;
  
  initial begin
    
    for(i=0;i<8;i++)begin
      data[i]=i*250;
    end 
    
    $display("-----array elements-----");
    
    for(i=0;i<8;i++)begin
      $display("data[%0d]=%0d",i,data[i]);
    end     
    $display("-----array elements indexing-----");
    
    $display("data[0]=%0d(%b)",data[0],data[0]);
    $display("data[1]=%0d(%b)",data[1],data[1]);
    $display("data[2]=%0d(%b)",data[2],data[2]);
    $display("data[3]=%0d(%b)",data[3],data[3]);
    
    $display("-----array elements using foreach----");
    foreach(data[i])begin
      $display("data[%0d]=%0d(%b)",i,data[i],data[i]);
    end 
    
    $display("----data>1000-----");
    foreach(data[i])begin
      if(data[i]>1000)
        $display("data[%0d]=%0d(%b)",i,data[i],data[i]);
    end 
    
  end 
endmodule 
    
