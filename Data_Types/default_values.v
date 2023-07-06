// Data Types in Verilog:
// Verilog supports mainly 4 data types: Nets, Registers, Real, Time

module datatypes_def_val();
  wire wire_var;
  reg reg_var;
  integer integer_var;
  reg [2*8:1]string_var;
  real real_var;
  time time_var;
  realtime realtime_var;

  initial
    begin
      // Priniting default values:
      $display("Default values: wire = %b reg = %b integer = %b string = %s real = %f time = %t", wire_var, reg_var, integer_var, string_var, real_var, time_var);
      // Default values: wire = z reg = x integer = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx string = xxxxxxxxxxxxxxxx real = 0.000000 time = 0
    end
endmodule

/* Size of datatypes:
  wire       => 1 bit    => unsigned
  reg        => 1 bit    => unsigned
  integer    => 32 bits  => signed
  time       => 32 bits  => unsigned
  real       => 64 bits  => signed
  real time  => 64 bits  => unsigned
*/
