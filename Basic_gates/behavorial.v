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
// consider not_out = ~a, buf_out = a
  always@(a,b)
    begin
      case({a,b})
        0:  {not_out, buf_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out} = 8'b1000_1101;
        1:  {not_out, buf_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out} = 8'b1001_1010;
        2:  {not_out, buf_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out} = 8'b0101_1010;
        3:  {not_out, buf_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out} = 8'b0111_0001;
        default: {not_out, buf_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out} = 8'bxxxx_xxxx;
      endcase
    end
endmodule
