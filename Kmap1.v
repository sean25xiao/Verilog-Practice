module top_module(
    input a,
    input b,
    input c,
    output out  );

    assign out = b | ((~b) & a) | ((~a) & (~b) & c);

endmodule
