// Code your testbench here

module unpacked_2darray;
  shortint data[4][4];
  int i,j;
  initial begin
    
    data='{'{13,24,35,54},
           '{54,65,75,86},
           '{51,62,73,84},
           '{54,65,76,87}};
    
    $display("----full array----");
    foreach(data[i,j])begin
      $display("data[%0d][%0d]==%0d(%b)",i,j,data[i][j],data[i][j]);
    end
    
    
    $display("----data>50----");
    foreach(data[i,j])begin
      if((data[i][j])>50)
        $display("data[%0d][%0d]==%0d(%b)",i,j,data[i][j],data[i][j]);
    end 
    
    $display("-----single element accessing-----");
    $display("data[3][4]=%0d",data[3][4]);
    $display("data[2][2]=%0d",data[1][2]);
    $display("data[3][3]=%0d",data[3][3]);
    
    $display("-----element updating-----");
    data[0][0]=88;
    data[1][1]=77;
    data[2][2]=99;
    
    $display("----full array after changes----");
    foreach(data[i,j])begin
      $display("data[%0d][%0d]==%0d(%b)",i,j,data[i][j],data[i][j]);
    end
    $display("----rows in the arrays----");
    foreach (data[i]) begin
      $write("Row %0d: ", i);
      foreach (data[i][j]) begin
        $write("%0d ", data[i][j]);
  end
  $display("");
end
    $display("---- All Columns ----");
    for(j=0;j<4;j++)begin
      $write("column %0d ",j);
      for(i=0;i<4;i++)begin
        $write("%0d ",data[i][j]);
      end 
      $display("");
    end
  end     
    endmodule 
          
    
  
