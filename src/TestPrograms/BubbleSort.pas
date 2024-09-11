program BUBBLE_SORT(input, output);
TYPE
   IntArray = array[1..5000] of integer;

VAR 
   i, j, n, c, c2, n1: integer;
   numbers : IntArray;

begin
   writeln('Input digit count');
   read(n);
n1 := n - 1;
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
i := 0;
 while (i <= n1) do
begin
    i := i + 1;
	j := i + 1;
	while (j <= n) do
	begin
		if numbers[i] < numbers[j] then
		begin
			c := numbers[i];
			numbers[i] := numbers[j];
numbers[j] := c;
		end;
		j := j + 1;
	end;

   end;
   i := 0;
writeln('sorted array:');
    while (i < n) do
begin
    i := i + 1;
   writeln(numbers[i]);
 end;
   end;
  end.