// Code your testbench here
// or browse Examples

interface dff_if;

    logic clk;
    logic d;
    logic q;

    modport DUT(
        input clk,
        input d,
        output q
    );

    modport DRV(
        output d,
        input clk,
        input q
    );

endinterface


class driver;

    virtual dff_if.DRV vif;
    function new(virtual dff_if.DRV vif);
        this.vif = vif;
    endfunction

    task run();
        vif.d = 0; #10;
        vif.d = 1; #10;
        vif.d = 1; #10;
        vif.d = 0; #10;
        vif.d = 1; #10;
        vif.d = 0; #10;
        vif.d = 1; #10;
        vif.d = 1; #10;
        vif.d = 0; #10;
    endtask

endclass


module tb;

    dff_if inf();
    driver drv;
    dff dut(inf);

    initial 
      begin
        drv=new(inf);
        drv.run();
        #150;
        $finish;
    end

    initial 
      begin
        inf.clk=0;
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

// Code your design here
module dff(dff_if.DUT inf);
    always_ff @(posedge inf.clk)
        inf.q<=inf.d;

endmodule
