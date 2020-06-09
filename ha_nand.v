module ha_nand(A, B, S, C);
  input A, B;
  output S, C;
  wire w1, w2, w3;
  nand NAND1(w1, A, B);
  nand NAND2(w2, A, w1);
  nand NAND3(w3, B, w1);
  nand NAND4(S, w2, w3);
  nand NAND5(C, w1, w1);
endmodule
