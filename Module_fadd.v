module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire cout_from1;
    wire [15:0] sum1;
    wire [15:0] sum2;
    add16 adder1 (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum1), .cout(cout_from1));
    add16 adder2 (.a(a[31:16]), .b(b[31:16]), .cin(cout_from1), .sum(sum2), .cout());
    assign sum = {sum2, sum1};

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
// Full adder module here
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);

endmodule
