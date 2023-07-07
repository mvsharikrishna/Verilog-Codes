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
  always@(a,b)
    begin
      not_out = ~a_in;
      buf_out = a_in;
      and_out = a & b;
      or_out = a | b;
      nand_out = ~(a&b);
      nor_out = ~(a|b);
      xor_out = a^b;
      xnor_out = ~(a^b);
    end
endmodule
