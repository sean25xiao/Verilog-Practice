module top_module(
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    fadder adder (.a(a[0]), .b(b[0]), .cin(cin), .cout(cout[0]), .sum(sum[0]));

    genvar i;
    generate
        for (i = 1; i < 3; i = i + 1) begin: adder_3bits
            fadder adder (.a(a[i]), .b(b[i]), .cin(cout[i-1]), .cout(cout[i]), .sum(sum[i]));
        end
    endgenerate

endmodule

module fadder(
    input a, b, cin,
    output cout, sum );

    always @ (*) begin
        {cout,sum} = a + b + cin;
    end

endmodule
