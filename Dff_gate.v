module top_module (
    input clk,
    input in,
    output out);

    wire d;
    wire q;
    assign d = q ^ in;
    assign out = q;

    always @ (posedge clk)
        begin
            q <= d;
        end

endmodule
