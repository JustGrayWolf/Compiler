program number(output);
var
    x, y, z : integer;
	a, b, c : real;
begin
	a := 5.5;
	b := 12.2-a;
	c := a-b * a+b;
	
	x := -15;
	y := (17+x) * (10-6);
	z := y div x + 15 * 2;
	c := c+ a*x + b/y;
		
		
    writeln('Value of z: ',z);
    writeln('Value of c: ',c);
end.
