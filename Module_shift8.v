module top_module (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);
    wire [7:0] ff1_out;
    wire [7:0] ff2_out;
    wire [7:0] ff3_out;

    my_dff8 dff1 ( .clk(clk), .d(d), .q(ff1_out));
    my_dff8 dff2 ( .clk(clk), .d(ff1_out), .q(ff2_out));
    my_dff8 dff3 ( .clk(clk), .d(ff2_out), .q(ff3_out));

    always @ (*)
        begin
            case (sel)
                2'b00: q <= d;
                2'b01: q <= ff1_out;
                2'b10: q <= ff2_out;
                2'b11: q <= ff3_out;
            endcase
        end

endmodule
