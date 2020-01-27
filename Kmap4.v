module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  );

    wire out_firsttwo;
    wire out_lasttwo;

    assign out_firsttwo = (~a & b & ~c & ~d) | (a & ~b & ~c & ~d) | (~a & ~b & ~c & d) | (a & b & ~c & d);
    assign out_lasttwo  = (~a & b & c & d) | (a & ~b & c & d) | (~a & ~b & c & ~d) | (a & b & c & ~d);
    assign out = out_firsttwo | out_lasttwo;

endmodule
