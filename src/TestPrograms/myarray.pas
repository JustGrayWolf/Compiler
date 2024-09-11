program SUM_ARRAY(input, output);
TYPE
   IntArray = array[1..5] of integer;

VAR 
   i, sum: integer;
   numbers : IntArray;

begin
   sum := 0;
   numbers[1] := 4;
   numbers[2] := 1;
   numbers[3] := 2;
   numbers[4] := 3;
   numbers[5] := 6;

   for i := 1 to 5 do
       sum := sum + numbers[i];

   writeln('sum = ', sum);
      
   i :=4;
   writeln('5th Value= ', numbers[i+1]);
end.
