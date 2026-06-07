// Code your testbench here

module full_adder(fa_if.DUT inf);
    assign inf.sum=inf.a^inf.b^inf.cin;
    assign inf.cout=(inf.a&inf.b)|(inf.b&inf.cin)|(inf.cin & inf.a);
endmodule

interface fa_if;

    logic a;
    logic b;
    logic cin;

    logic sum;
    logic cout;

    modport DUT(
        input a,
        input b,
        input cin,
        output sum,
        output cout
    );

    modport TB(
        output a,
        output b,
        output cin,
        input sum,
        input cout
    );

endinterface


module tb;
    fa_if inf();
    full_adder dut(inf);

    initial 
      begin
        inf.a =0;
        inf.b=0;
        inf.cin=0;

        #10;
        $display("a=%0b b=%0b cin=%0b sum=%0b cout=%0b",inf.a,inf.b,inf.cin,inf.sum,inf.cout);

        inf.a=1;
        inf.b= 0;
        inf.cin =1;

        #10;
        $display("a=%0b b=%0b cin=%0b sum=%0b cout=%0b",inf.a,inf.b,inf.cin,inf.sum,inf.cout);
    end
endmodule
