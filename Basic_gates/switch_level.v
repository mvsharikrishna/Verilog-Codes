module basic_gates_switch(input a_in,
                         input b_in,
                         output not_a_out,
                         output not_b_out,
                         output buf_out,
                         output and_out,
                         output or_out,
                         output nand_out,
                         output nor_out,
                         output xor_out,
                         output xnor_out);
  supply1 vdd;
  supply0 gnd;
  reg buf_w1, nand_w1, nor_w1, xor_w1, xor_w2, xor_w3, a_bar, b_bar;
  //not gate
  pmos p1a(not_a_out, a_in, vdd); 
  nmos n1a(not_a_out, a_in, gnd);

  pmos p1b(not_b_out, b_in, vdd);
  nmos n1b(not_b_out, b_in, gnd);

  //buffer gate
  pmos p2(buf_w1, a_in, vdd); 
  nmos n2(buf_w1, a_in, gnd);
  pmos p3(buf_out, buf_w1, vdd); 
  nmos n3(buf_out, buf_w1, gnd);

  // nand gate
  pmos p4(nand_out, a_in, vdd);
  pmos p5(nand_out, b_in, vdd);
  nmos n4(nand_w1, b_in, gnd);
  nmos n5(nand_out, a_in, nand_w1);

  // nor gate
  pmos p6(nor_w1, a_in, vdd);
  pmos p7(nor_out, b_in, nor_w1);
  nmos n6(nor_out, a_in, gnd);
  nmos n7(nor_out, b_in, gnd);

  // and gate
  pmos p8(and_out, nand_out, vdd);
  nmos n8(and_out, nand_out, gnd);
  
  // or gate
  pmos p9(or_out, nor_out, vdd);
  nmos n9(or_out, nor_out, gnd);

  // xor gate
  pmos p10(a_bar, a_in, vdd);
  nmos n10(a_bar, a_in, gnd);
  pmos p11(b_bar, b_in, vdd);
  nmos n11(b_bar, b_in, gnd);
  
  pmos p12(xor_w1, a_in, vdd);
  pmos p13(xor_w1, b_in, vdd);
  pmos p14(xor_out, a_bar, xor_w1);
  pmos p15(xor_out, b_bar, xor_w1);
  nmos n12(xor_w2, b_in, gnd);
  nmos n13(xor_out, a_in, xor_w2);
  nmos n14(xor_w3, b_bar, gnd);
  nmos n15(xor_out, a_bar, xor_w3);

  // xnor gate
  pmos p16(xnor_w1, a_in, vdd);
  pmos p17(xnor_w1, b_bar, vdd);
  pmos p18(xnor_out, a_bar, xnor_w1);
  pmos p19(xnor_out, b_in, xnor_w1);
  nmos n16(xnor_w2, b_bar, gnd);
  nmos n17(xnor_out, a_in, xnor_w2);
  nmos n18(xnor_w3, b_in, gnd);
  nmos n19(xnor_out, a_bar, xnor_w3);
endmodule
