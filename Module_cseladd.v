module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum1;
    wire mux_sel;
    wire [15:0] mux_in1;
    wire [15:0] mux_in2;
    wire [15:0] mux_out;

    add16 add1   (.a(a[15:0]),  .b(b[15:0]),  .cin(0), .sum(sum1), .cout(mux_sel));
    add16 add2_0 (.a(a[31:16]), .b——(b[31:16]), .cin(0), .sum(mux_in1), .cout());
    add16 add2_1 (.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(mux_in2), .cout());
    assign mux_out = mux_sel ? mux_in2 : mux_in1;

    assign sum = {mux_out, sum1};

endmodule
