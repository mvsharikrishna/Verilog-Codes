// Number format => <sign><size>'<base_format><number>
// For positive number <sign> is '+' (Not mandatory).
// For negative number <sign> is '-' (Mandatory)
// Note: j=-5'd5 (valid)	j=5'd-5	(Not valid) (Please be cautious about negative sign placement)
// if <size> field is not specified, default size is considered according to size of variable during declaration (Not 32 bits everytime).
// Number System	-	base_format	-	format_specifer
//	Binary			  -	b or B		  -	%b or %B
//	Octal			    -	o or O		  -	%o or %O
//	Decimal			  -	d or D		  -	%d or %D
//	Hexa Decimal	-	h or H		  -	%h or %H (Prints in small letters only both in case of %h or %H)

// EDA Playground Link: https://www.edaplayground.com/x/cY8X
module tb();
  
  reg [3:0]a;
  integer b,c,d,e;
  reg [6:0]f;
  integer g,h,i,j,k,l,m;
  
  initial
    begin			      // %b or %B							            |%o or %O		  |%d or %D		  |%h or %H
      a = 4'b1011;	// 1011								              |13				    |11				    |b
      b = 3'o6;		  // 00000000000000000000000000000110 |00000000006	|           6	|00000006
      c = 3'h7;		  // 00000000000000000000000000000111	|00000000007	|           7	|00000007
      d = 1'h7;		  // 00000000000000000000000000000001	|00000000001	|           1	|00000001
      e = 4'ha;		  // 00000000000000000000000000001010 |00000000012	|          10	|0000000a
      f = 'hA;		  // 0001010							            |012			    | 10			    |0a
      g = 'd5;		  // 00000000000000000000000000000101 |00000000005	|           5	|00000005
      h = +'d5;		  // 00000000000000000000000000000101 |00000000005	|           5	|00000005
      i = 5;		    // 00000000000000000000000000000101 |00000000005	|           5	|00000005
      j = -5'H5;	  // 11111111111111111111111111111011 |37777777773	|          -5	|fffffffb
      k = -'d5;		  // 11111111111111111111111111111011 |37777777773	|          -5	|fffffffb
      l = 8'haz;	  // 0000000000000000000000001010zzzz	|000000002Zz	|           Z	|000000az
      m = 8'hbx;	  // 0000000000000000000000001011xxxx	|000000002Xx	|           X	|000000bx
      $display("%b %o %d %h",a,a,a,a);
      $display("%B %O %d %h",b,b,b,b);
      $display("%b %o %D %h",c,c,c,c);
      $display("%b %o %d %H",d,d,d,d);
      $display("%b %o %d %h",e,e,e,e);
      $display("%b %o %d %h",f,f,f,f);
      $display("%b %o %d %h",g,g,g,g);
      $display("%b %o %d %h",h,h,h,h);
      $display("%b %o %d %h",i,i,i,i);
      $display("%b %o %d %H",j,j,j,j);
      $display("%b %o %d %H",k,k,k,k);
      $display("%b %o %d %h",l,l,l,l);
      $display("%b %o %d %h",m,m,m,m);
      $display("%b %o %d %H",'d5,'d5,'d5,'d5);   // 00000000000000000000000000000101 00000000005          5 00000005
      $display("%b %o %d %H",'b101,'o5,'d5,'h5); // 00000000000000000000000000000101 00000000005          5 00000005
    end
endmodule
