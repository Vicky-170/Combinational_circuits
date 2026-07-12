`timescale 1ns/1ps
module tb_mux_4;
  reg d0, d1, d2, d3;
  reg [1:0] sel;
  wire y;
  mux_4 uut(.d0(d0), .d1(d1), .d2(d2), .d3(d3), .sel(sel), .y(y));
  initial begin
    $monitor("sel=%b d0=%b d1=%b d2=%b d3=%b y=%b", sel, d0, d1, d2, d3, y);
    d0=0; d1=0; d2=0; d3=0;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;
    d0=1; d1=0; d2=0; d3=0;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;
    d0=0; d1=1; d2=0; d3=0;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;
    d0=0; d1=0; d2=1; d3=0;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;
    d0=0; d1=0; d2=0; d3=1;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;
    $finish;
  end
endmodule
