module jk_flipflop(output q, qbar, input j, k, clk);
  wire s, r;
  wire q_int, qbar_int;

  // Inputs gated with CLK and feedback
  wire j_gated, k_gated;

  nand(j_gated, j, clk, qbar_int);  // J input gated with CLK and Q̅ (for toggle)
  nand(k_gated, k, clk, q_int);     // K input gated with CLK and Q (for toggle)

  // SR latch logic
  nand(q_int, j_gated, qbar_int);
  nand(qbar_int, k_gated, q_int);

  assign q = q_int;
  assign qbar = qbar_int;
endmodule
