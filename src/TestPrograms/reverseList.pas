program REVERSE_LIST(input, output);
TYPE
   IntArray = array[1..5000] of integer;

VAR 
   i, n, c: integer;
   numbers : IntArray;

begin
   writeln('Input digit count');
   read(n);
   if (n <= 0) then writeln('less then allow')
   else if (n >= 5000) then writeln('too much')
   else
   begin
   i := 1;
   while (i <= n) do
begin
    read(c);
    numbers[i] := c;

    i := i + 1;
end;  
 while (i > 1) do
begin
    i := i - 1;
    writeln(numbers[i]);

   end;
   end;
end.