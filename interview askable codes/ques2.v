module tb();
  real real_var;

  initial
    begin
      real_var = 44.1234;
      $display("%%f = %f",real_var);
    end
endmodule
