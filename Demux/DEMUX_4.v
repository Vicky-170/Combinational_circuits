module DEMUX_4 (
    input d,
    input [1:0] sel,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
);
    always @(*) begin
        y0 = 1'b0;
        y1 = 1'b0;
        y2 = 1'b0;
        y3 = 1'b0;
        
        case (sel)
            2'b00: y0 = d;
            2'b01: y1 = d;
            2'b10: y2 = d;
            2'b11: y3 = d;
        endcase
    end
endmodule
