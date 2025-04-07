module d_latch(output q, qbar, input d, clk);
  wire s, r;

  nand(s, d, clk);      // S input
  nand(r, ~d, clk);     // R input

  nand(q, s, qbar);     // SR latch
  nand(qbar, r, q);
endmodule
