module top_module (
    input [7:0] in,
    output parity);

    assign parity = ^ in[7:0];
    //  We will use "even" parity, where the parity bit is just the XOR of all 8 data bits.

endmodule
