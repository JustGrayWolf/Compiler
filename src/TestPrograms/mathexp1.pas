program number(output);
var
        x, y, z : integer;
begin
        x := 5;
        y := x + 3;
		z := x + y * 2 + (y - x);
        writeln('Value of z: ',z);
end.
