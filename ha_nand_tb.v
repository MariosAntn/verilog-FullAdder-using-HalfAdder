module ha_nand_tb;
  reg A, B;
  wire S, C;
  ha_nand DUT(A, B, S, C);
  initial
  begin
    A = 0; B = 0;
    #10 A = 0; B = 1;
    #10 A = 1; B = 0;
    #10 A = 1; B = 1;
  end
endmodule