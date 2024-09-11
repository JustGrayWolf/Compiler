PROGRAM ifelse(OUTPUT);
VAR
	alpha: INTEGER;
	grade : char;
BEGIN

alpha :=91;

if (alpha >90) then
	grade :='A'
else if (alpha >80) then
	grade :='B'
else if (alpha >70) then
    grade :='C'

else if (alpha >60) then
    grade :='D'
else
    grade :='F';
writeln ('Result: ', grade);
	
END.
