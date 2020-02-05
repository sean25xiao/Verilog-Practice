module top_module (
    input clk,
    input j,
    input k,
    output Q);

    always @ (posedge clk)
        begin
            case ({j,k})
                2'b00: Q <= Q;
                2'b01: Q <= 2'b00;
                2'b10: Q <= 2'b01;
                2'b11: Q <= ~Q;
                default: Q <= 2'b0;
            endcase
        end

endmodule
