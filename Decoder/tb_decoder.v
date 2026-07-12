`timescale 1ns/1ps
module tb_decoder;
  reg [3:0] a;
  reg init;
  wire [15:0] y;
  decoder uut(.a(a), .init(init), .y(y));
  integer i;
  initial begin
    $monitor("init=%b a=%b y=%b", init, a, y);
    for (init = 0; init <= 1; init = init + 1) begin
      for (i = 0; i < 16; i = i + 1) begin
        a = i;
        #10;
      end
    end
    $finish;
  end
endmodule
