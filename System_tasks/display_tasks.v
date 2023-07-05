// System tasks -  Display tasks
// $write:   Prints the arguments for single time.
// $display: Prints the arguments for single time and also sets cursor to next line i.e., appends new line at ending.
// $monitor: Similar to $display but prints everytime there is change in arguments. it is recommended to use $monitor in seperate initial block in order to print all changes observed in arguments.
module tb();
  int a;
  int b;
  
  initial
    begin
      a=20;
      b=10;
      $write("This is line of $write, ");
      $write("This is continuation line of $write ");	// Prints in single line
      $display();										// new line is appended
      $display("This is first line of $display");		
      $display("This is second line of $display");		// Prints in two different lines
      // since this is end of this time stamp & a,b values are changed, so $monitor executes here for first time.
      #1;
      a = a+a;
      b <= b+b;
      $display("$display:#%0t a=%0d b=%0d",$time,a,b);	// blocking stmt execution completes at starting of time stamp
      $strobe("$strobe:#%0t a=%0d b=%0d",$time,a,b); // non blocking stmt execution completes at end of time stamp
      #1;
      $display("$display:#%0t a=%0d b=%0d",$time,a,b);	// In sucessive time stamp, $display prints the update values of non blocking stmts
      $strobe("$strobe:#%0t a=%0d b=%0d",$time,a,b);
      #1 a=5;
    end
  initial
    $monitor("$monitor:#%0t a=%0d b=%0d",$time,a,b);
  
endmodule

/* output:
# This is line of $write, This is continuation line of $write  
# This is first line of $display
# This is second line of $display
# $monitor:#0 a=20 b=10
# $display:#1 a=40 b=10
# $monitor:#1 a=40 b=20
# $strobe:#1 a=40 b=20
# $display:#2 a=40 b=20
# $strobe:#2 a=40 b=20
# $monitor:#3 a=5 b=20
*/
