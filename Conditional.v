module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] compare_rslt1;
    wire [7:0] compare_rslt2;

    assign compare_rslt1 = (a > b)? b : a;
    assign compare_rslt2 = (c > d)? d : c;
    assign min = (compare_rslt1 > compare_rslt2) ? compare_rslt2 : compare_rslt1;

endmodule
