module fa_nand_tb;
  reg A, B, Ci;
  wire S, Co;
  fa_nand DUT(A, B, Ci, S, Co);
  initial
  begin
    A = 0; B = 0; Ci = 0;
    #10 A = 0; B = 0; Ci = 1;
    #10 A = 0; B = 1; Ci = 0;
    #10 A = 0; B = 1; Ci = 1;
    #10 A = 1; B = 0; Ci = 0;
    #10 A = 1; B = 0; Ci = 1;
    #10 A = 1; B = 1; Ci = 0;
    #10 A = 1; B = 1; Ci = 1;
  end
endmodule
