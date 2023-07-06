module datatypes_usage();
  // declaration
  wire wire_var;
  reg reg_var;
  integer integer_var;
  reg [12*8:1]string_var1;
  reg [6*8:1]string_var2;
  reg [20*8:1]string_var3;
  real real_var;
  
  assign wire_var = 1'b1;    // wire variables are used only in LHS in continuous assignment statements
  
  initial
    begin
      // initialisation
      reg_var = 1'b0;
      integer_var = 32'd23;
      string_var1 = "Hello World!";
      string_var2 = "Hello World!";
      string_var3 = "Hello World!";
      real_var = 42.123;
      $display("Initialisation values:$display: wire = %b reg = %b integer = %0d string1 = %s string2 = %s string3 = %s real = %f", wire_var, reg_var, integer_var, string_var1, string_var2, string_var3, real_var);
      $strobe("Initialisation values:$strobe: wire = %b reg = %b integer = %0d string1 = %s string2 = %s string3 = %s real = %f", wire_var, reg_var, integer_var, string_var1, string_var2, string_var3, real_var);
    end
endmodule

/* Output:  
# Default values: wire = x reg = x integer = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx string1 =              string2 =        string3 =                      real = 0.000000 time = 0 real time = 0
# Initialised values: wire = 1 reg = 0 integer = 00000000000000000000000000010111 string1 = Hello World! string2 = World! string3 =         Hello World! real = 42.123000 time = 10 real time = 10
*/
