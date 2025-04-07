module sr_flipflop(output q, qbar, input s, r, clk);
  wire s_gated, r_gated, n1, n2;

  nand(s_gated, s, clk);      // Gating S with clock
  nand(r_gated, r, clk);      // Gating R with clock

  nand(n1, s_gated, qbar);    // Main latch part
  nand(n2, r_gated, n1);

  assign q = n1;
  assign qbar = n2;
endmodule
