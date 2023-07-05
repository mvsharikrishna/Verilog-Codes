// Blocking and non blocking statements:
// Execution = Evaluation + assignment
// Event regions in verilog: Active region, Inactive region, Non Blocking Assignment (NBA) region, Postpone/Monitor region
// begin - end block: Executes stmts sequentially
// fork - join block: Executes stmts concurrently
// Blocking statements: Execution of statements will complete in Active region
// Non-Blocking statements: Evaluation => Active region, Assignment => NBA region

// EDA Playground Link: https://www.edaplayground.com/x/Natk
module tb();
  int a=10;
  int b=20;
  
/*  initial begin
    a = b;
    b = a;
    $display("a=%0d b=%0d",a,b);	// a=20 b=20
  end
*/
  
/*  initial begin
    a <= b;
    b <= a;
    $display("a=%0d b=%0d",a,b);	// a=10 b=20
  end
*/

/*initial fork
    a = b;
    b = a;
    $display("a=%0d b=%0d",a,b);	// a=20 b=20
	join
  */
/*  initial fork
    a <= b;
    b <= a;
    $display("a=%0d b=%0d",a,b);	// a=10 b=20
	join
*/
/*  initial begin
    $monitor("%0t a=%0d b=%0d",$time,a,b);
    #10 a <= b;
    #20 b <= 5;
    				//# 0 a=10 b=20
					//# 10 a=20 b=20
					//# 30 a=20 b=5
  end
*/  
  initial fork
    $monitor("%0t a=%0d b=%0d",$time,a,b);	// a=10 b=20
    #10 a <= b;
   #20 b <= 5;
   	// # 0 a=10 b=20
	//# 10 a=20 b=20
	//# 20 a=20 b=5 
  join
endmodule
