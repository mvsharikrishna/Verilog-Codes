module basic_gates_behav(input a_in,
                         input b_in,
                         output not_out,
                         output buf_out,
                         output and_out,
                         output or_out,
                         output nand_out,
                         output nor_out,
                         output xor_out,
                         output xnor_out);
  assign not_out = ~a_in;
  assign buf_out = a_in;
  assign and_out = a & b;
  assign or_out = a | b;
  assign nand_out = ~(a&b);
  assign nor_out = ~(a|b);
  assign xor_out = a^b;
  assign xnor_out = ~(a^b);
endmodule
