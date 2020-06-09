module fa_nand(A, B, Ci, S, Co);
  input A, B, Ci;
  output S, Co;
  wire p1, p2, w1, w2, w3, w4;
  ha_nand SUM1(A, B, p1, w1), SUM2(p1, Ci, S, w2);
  nand g1(w3, w2, w2); 
  nand g2(w4, w1, w1);
  nand g3(Co, w3, w4);
endmodule
