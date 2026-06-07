// Code your testbench here
// or browse Examples

// Code your design here
module dff(
    input logic clk,
    input logic d,
    output logic q
);
    always_ff @(posedge clk)
        q<=d;
endmodule

interface dff_if;
  
    logic clk;
    logic d;
    logic q;

endinterface


class driver;
  
    virtual dff_if vif;
    function new(virtual dff_if vif);
        this.vif=vif;
    endfunction

    task run();
        vif.d=0;
        #10;
        vif.d=1;
        #10;
        vif.d=1;
        #10;
       vif.d=0;
        #10;
        vif.d=1;
        #10;
        vif.d=0;
        #10;
       vif.d=1;
        #10;
        vif.d=1;
        #10;
        vif.d=0;
        #10;
    endtask
endclass

module tb;

    dff_if inf();

    driver drv;

    dff dut(
        .clk(inf.clk),
        .d(inf.d),
        .q(inf.q)
    );

    initial
      begin
        drv = new(inf);
        drv.run();
       #150;
    $finish;
    end
    initial
      begin
        inf.clk = 0;
        forever #5 inf.clk=~inf.clk;
      
    end
  initial 
      begin
        $monitor("Time=%0t clk=%0b d=%0b q=%0b",
                  $time,
                  inf.clk,
                  inf.d,
                  inf.q);
    end
endmodule

