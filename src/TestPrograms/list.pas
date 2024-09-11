program List(output);

var n, k: integer;
    pI: ^integer;
begin
  n := 4;
  pI := @n;
  writeln('Адрес n ='  , pI); 
  writeln('n = ', pI^); 
  k := 4*(7 - pI^);     // k = 4*(7 - 4) = 12 
  pI^ := 4*(k - n);     // n = 4*(12 – 4) = 32
end.