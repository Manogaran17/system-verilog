// Code your design here

module adder #(parameter WIDTH = 8)(adder_if inf);
    assign inf.sum=inf.a+inf.b;
endmodule

// Code your testbench here
// or browse Examples

interface adder_if #(parameter WIDTH = 8);

    logic [WIDTH-1:0] a;
    logic [WIDTH-1:0] b;
    logic [WIDTH:0]sum;

endinterface

module tb;
    adder_if #(8) inf();
    adder #(8) dut(inf);
    initial
      begin
        inf.a=20;
        inf.b=10;
        #1;
        $display("a=%0d b=%0d sum=%0d",
                 inf.a,
                 inf.b,
                 inf.sum);
    end
endmodule
