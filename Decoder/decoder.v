module decoder(input [3:0] a, input init, output reg [15:0] y);
  always @(*) begin
    y = 16'b0;
    if (init)
      y[a] = 1'b1;
  end
endmodule
