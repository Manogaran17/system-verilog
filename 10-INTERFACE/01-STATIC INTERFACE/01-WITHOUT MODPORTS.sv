module half_addr(
    input  a,
    input  b,
    output so,
    output co
);

assign so=a^b;
assign co=a&b;
endmodule

module full_addr(fa_if inf);
wire s0,c0,c1;

half_addr HA1(
    .a(inf.a),
    .b(inf.b),
    .so(s0),
    .co(c0)
);

half_addr HA2(
    .a(s0),
    .b(inf.c),
    .so(inf.s_out),
    .co(c1)
);
assign inf.c_out=c0|c1;
endmodule

// Code your testbench here

`include "interface.sv"
module tb_top;

fa_if inf();
full_addr fa1(inf);

initial 
  begin
    $monitor("a=%0b b=%0b c=%0b sum=%0b carry=%0b",
              inf.a,
              inf.b,
              inf.c,
              inf.s_out,
              inf.c_out);

    inf.a = 0; inf.b = 0; inf.c = 0;
    #1;
    inf.a = 0; inf.b = 0; inf.c = 1;
    #1;
    inf.a = 0; inf.b = 1; inf.c = 0;
    #1;
    inf.a = 0; inf.b = 1; inf.c = 1;
    #1;
    inf.a = 1; inf.b = 0; inf.c = 0;
    #1;
    inf.a = 1; inf.b = 0; inf.c = 1;
    #1;
    inf.a = 1; inf.b = 1; inf.c = 0;
    #1;
    inf.a = 1; inf.b = 1; inf.c = 1;
    #1;
    $finish;
end
endmodule
// interface
interface fa_if;
    logic a;
    logic b;
    logic c;
    logic s_out;
    logic c_out;

endinterface

