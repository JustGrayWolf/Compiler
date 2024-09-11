program Decisions(output);

var
	i: Integer;

begin
	Write('Enter a number: ');
	Read(i);

	if i > 5 then
        	begin
		Write('5<');
		write(i);
		end


	else if i=5 then
        	begin
		Write('5=');
        	Write(i);
        	end


	else
        	begin
		Write('5>');
        	Write(i);
        	end;
end.