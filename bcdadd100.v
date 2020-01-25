module top_module(
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0] cout_internal;

    bcd_fadd bcdadd1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(cout_internal[0]), .sum(sum[3:0]));

    genvar i;
    generate
        for (i = 7; i < 400; i = i + 4) begin: bcdadd100
            bcd_fadd bcdadd (.a(a[i:(i-3)]), .b(b[i:(i-3)]), .cin(cout_internal[((i-3)/4)-1]), .cout(cout_internal[(i-3)/4]), .sum(sum[i:(i-3)]));
        end
    endgenerate

    assign cout = cout_internal[99];

endmodule
