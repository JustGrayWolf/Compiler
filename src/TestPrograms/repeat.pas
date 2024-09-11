program testrepeat(output);
var
   j: Integer;
Begin
    j:=0;
    repeat
        begin
       	writeln('Step', j);
        j:=j+1;
        end
    until (j>5);
End.

