module basic_gates_gatelevel(input a_in,
                             input b_in,
                             output not_out,
                             output buf_out,
                             output and_out,
                             output or_out,
                             output nand_out,
                             output nor_out,
                             output xor_out,
                             output xnor_out);
  not   g1 (not_out, a_in);        // not  not_instantation(output, input);
  buf   g2 (buf_out, a_in);        // buf  buf_instantation(output, input);
  and   g3 (and_out, a_in, b_in);  // and  and_instantation(output, input1, input2);
  or    g4 (or_out, a_in, b_in);   // or   or_instantation(output, input1, input2);
  nand  g5 (nand_out, a_in, b_in); // nand nand_instantation(output, input1, input2);
  nor   g6 (nor_out, a_in, b_in);  // nor  nor_instantation(output, input1, input2);
  xor   g7 (xor_out, a_in, b_in);  // xor  xor_instantation(output, input1, input2);
  xnor  g8 (xnor_out, a_in, b_in); // xnor xnor_instantation(output, input1, input2);
endmodule
