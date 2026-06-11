class packet;

  rand bit [7:0] start_addr;
  rand bit [7:0] end_addr;
  rand bit [7:0] burst_len;
  
  constraint range_c {
    start_addr inside {[10:50]};
    end_addr inside {[20:40]};
  }
  constraint burst_c {
    burst_len inside {[1:10]};
  }

  constraint relation_c {
    start_addr < end_addr;
  }

  constraint conflict_c {
    start_addr > end_addr;
  }

  
  function void display();
    $display("--------------------------------");
    $display("START_ADDR = %0d",start_addr);
    $display("END_ADDR   = %0d",end_addr);
    $display("BURST_LEN  = %0d",burst_len);
    $display("--------------------------------");
  endfunction

  
endclass


module tb;
  packet p;
  initial 
    begin
    p=new();
    repeat(3)
      begin
        if(p.randomize())
          begin
            $display("Randomization Successful");
            p.display();
          end
        else
          begin
            $display("Randomization Failed");
          end
      end
  end
endmodule
// =======================output================================
Error-[CNST-CIF] Constraints inconsistency failure
testbench.sv, 56
  Constraints are inconsistent and cannot be solved.
  Please check the inconsistent constraints being printed above and rewrite 
  them.

Randomization Failed



           V C S   S i m u l a t i o n   R e p o r t 
