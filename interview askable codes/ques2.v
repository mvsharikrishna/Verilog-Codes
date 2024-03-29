// EDA Playground Link: https://www.edaplayground.com/x/s4gd
module tb();
  real real_var;
  integer integer_var, integer_var1, integer_var2;
  reg [7:0]reg_a, reg_b;
  
  initial
    begin
      real_var = 44.6257;
      $display("%%d = %0d",real_var);
      $display("%%f = %f",real_var);
      $display("%%.1f = %.1f",real_var);
      $display("%%.2f = %.2f",real_var);
      $display("%%.3f = %.3f",real_var);
      $display("%%.8f = %.8f",real_var);
      
      integer_var = 23;
      $display("%%d = %d",integer_var);
      $display("%%0d = %0d",integer_var);
      $display("%%4d = %4d",integer_var);
      $display("%%9d = %9d",integer_var);
      $display("%%19d = %19d",integer_var);
      
      integer_var1 = -6'd3;
      integer_var2 = -6'sd3;
      $display("%b %b",integer_var1, integer_var2);
      
      reg_a = -6'd3;
      reg_b = -6'sd3;
      $display("%b %b", reg_a, reg_b);
    end
endmodule

/* Output:
# %d = 45
# %f = 44.625700
# %.1f = 44.6
# %.2f = 44.63
# %.3f = 44.626
# %.8f = 44.62570000
# %d =          23
# %0d = 23
# %4d =   23
# %9d =        23
# %19d =                  23
# 11111111111111111111111111111101 11111111111111111111111111111101
# 11111101 11111101
*/
