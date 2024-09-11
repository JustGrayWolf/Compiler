PROGRAM logexpr(OUTPUT);
VAR
	i,j: INTEGER;

BEGIN
            i := 6;
       	j := 2;
	
	if (((i>1) and (i<5)) or ((j>5) and (i<10))) then
		Writeln('I between 1 to 5 or J between 5 to 10')
	else
		Writeln('i j not in range');
end.