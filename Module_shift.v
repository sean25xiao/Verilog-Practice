module top_module ( input clk, input d, output q );
    wire ff1_out;
    wire ff2_out;

    my_dff dff1 ( .clk(clk), .d(d), .q(ff1_out));
    my_dff dff2 ( .clk(clk), .d(ff1_out), .q(ff2_out));
    my_dff dff3 ( .clk(clk), .d(ff2_out), .q(q));

endmodule
