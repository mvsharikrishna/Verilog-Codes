module ques1;
integer a = 1'bx;
integer b = 1'bz;
initial
  begin
    repeat(a)
      $write("Hi");
    repeat(b)
      $write("Hi");
  end
endmodule

/* Output:
No ouput
*/
