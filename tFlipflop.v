module t_flipflop(output q, qbar, input t, clk);
  wire s, r;
  wire q_int, qbar_int;

  // T flip-flop: J = T, K = T
  wire j_gated, k_gated;

  nand(j_gated, t, clk, qbar_int);  // J input logic = T & CLK & Q̅
  nand(k_gated, t, clk, q_int);     // K input logic = T & CLK & Q

  // SR latch part
  nand(q_int, j_gated, qbar_int);
  nand(qbar_int, k_gated, q_int);

  assign q = q_int;
  assign qbar = qbar_int;
endmodule
