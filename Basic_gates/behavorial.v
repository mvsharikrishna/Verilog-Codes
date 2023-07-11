module basic_gates_behav(input a_in,
                         input b_in,
                         output reg not_out,
                         output reg buf_out,
                         output reg and_out,
                         output reg or_out,
                         output reg nand_out,
                         output reg nor_out,
                         output reg xor_out,
                         output reg xnor_out);
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
