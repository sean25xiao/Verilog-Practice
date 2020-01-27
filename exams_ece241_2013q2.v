module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
);

    assign out_sop = (c & d) | (~a & ~b & c);
    assign out_pos = (c) & (~a | ~c | d) & (a | ~b | ~c | d);  // treat a b c d as 0, if it is 1, add ~

endmodule
