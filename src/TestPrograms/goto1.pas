program goto1(output);

label
        mylabel1;

var
        i: Integer;


begin

        i := 5;
        goto mylabel1;

        i :=6;

mylabel1:
        Writeln(i);


end.

