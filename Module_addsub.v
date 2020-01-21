module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] result
);
    wire [31:0] xor_out;
    wire [15:0] sum1;
    wire [15:0] sum2;
    wire adder1_cout;
    add16 add1 (.a(a[15:0]),  .b(xor_out[15:0]),  .cin(sub), .sum(sum1), .cout(adder1_cout));  // using xor gate to invert, use cin to add 1 to realize two's complement
    add16 add2 (.a(a[31:16]),  .b(xor_out[31:16]),  .cin(adder1_cout), .sum(sum2), .cout());
    assign xor_out = b ^ {32{sub}};
    assign result = {sum2, sum1};

endmodule
