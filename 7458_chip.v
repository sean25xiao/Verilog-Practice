module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire p1y_1, p1y_2;
    wire p2y_1, p2y_2;
    
    assign p1y_1 = p1a & p1b & p1c;
    assign p1y_2 = p1d & p1e & p1f;
    assign p1y   = p1y_1 | p1y_2;
    
    assign p2y_1 = p2a & p2b;
    assign p2y_2 = p2c & p2d;
    assign p2y   = p2y_1 | p2y_2;

endmodule