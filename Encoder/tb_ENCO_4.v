module tb_ENCO_4;
    reg [3:0] d;
    wire [1:0] y;
    integer i;

    ENCO_4 uut (
        .d(d),
        .y(y)
    );

    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            d = i;
            #10;
        end
        $finish;
    end
endmodule
