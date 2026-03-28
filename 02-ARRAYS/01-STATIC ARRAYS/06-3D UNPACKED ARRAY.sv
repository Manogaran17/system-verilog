

module unpacked_3darray;
  
  shortint data[4][4][4]; // 64 elements
  int i,j,k;
  initial begin
    
    for(i=0;i<4;i++)begin
      for(j=0;j<4;j++)begin
        for(k=0;k<4;k++)begin
          data[i][j][k]=i*100+j*10+k;
        end 
      end 
    end 
    
    for(i=0;i<4;i++)begin
      $display("----block %0d----",   i);
      for(j=0;j<4;j++)begin
        for(k=0;k<4;k++)begin
          $write("%0d ",data[i][j][k]);
        end
        $display("");
        
      end 
    end 
  end 
endmodule 
      
      
          
  
