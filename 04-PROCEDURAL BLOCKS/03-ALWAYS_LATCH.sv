// Code your testbench here
// or browse Example

module always_latch_example;
  
  logic[3:0]d;
  logic[3:0]q;
  logic en;
  
  always_latch
    begin
      if(en)
        q<=d;
    end 
  
  initial 
    begin
      
      $display("\n====always_latch EXAMPLE");
      
      en = 0;
      d=4'b0000;
      
      #5;
      
      en=1;
      d=4'b1010;
      
      #5;
      
      $display("\n Enable =%0b",en);
      $display("\td=%b",d);
      $display("\tq=%b",q);
      
      en=1;
      d=4'b1010;
      
      #5;
      
      $display("\n Enable =%0b",en);
      $display("\td=%b",d);
      $display("\tq=%b",q);
      
      en=0;
      d=4'b1111;
      
      #5;
      
      $display("\n Enable =%0b",en);
      $display("\td=%b",d);
      $display("\tq=%b",q);
      
      en=1;
      #5;
      
      $display("\n Enable =%0b",en);
      $display("\td=%b",d);
      $display("\tq=%b",q);
      
    end 
endmodule 

      //===================================================================================================

/*====always_latch EXAMPLE

 Enable =1
	d=1010
	q=1010

 Enable =1
	d=1010
	q=1010

 Enable =0
	d=1111
	q=1010

 Enable =1
	d=1111
	q=1111
           V C S   S i m u l a t i o n   R e p o r t */
