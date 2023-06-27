// Data Types in Verilog:
// Verilog supports mainly 4 data types: Nets, Registers, Strings, Real

module datatypes();
  wire wire_var;
  reg reg_var;
  integer integer_var;
  string string_var;
  real real_var;

  initial
    begin
      // Priniting default values:
      $display("Default values: wire = %b reg = %b integer = %b string = %s real = %b", wire_var, reg_var, integer_var, string_var, real_var);
      // Default values: wire = z reg = x integer = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx string =  real = 00000000000000000000000000000000
    end
endmodule
