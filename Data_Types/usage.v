module datatypes_usage();
  // declaration
  wire wire_var;
  reg reg_var;
  integer integer_var;
  string string_var;
  real real_var;
  assign wire_var = 1'b1;    // wire variables are used only in LHS in continuous assignment statements
  initial
    begin
      // initialisation
      reg_var = 1'b0;
      integer_var = 32'd23;
      string_var = "Hello World!";
      real_var = 42.123;
      $display("Initialisation values:$display: wire = %b reg = %b integer = %0d string = %s real = %f", wire_var, reg_var, integer_var, string_var, real_var);
      $strobe("Initialisation values:$strobe: wire = %b reg = %b integer = %0d string = %s real = %f", wire_var, reg_var, integer_var, string_var, real_var);
    end
endmodule

/*  Initialisation values:$display: wire = z reg = 0 integer = 23 string = Hello World! real = 42.123000
    Initialisation values:$strobe: wire = 1 reg = 0 integer = 23 string = Hello World! real = 42.123000 */
