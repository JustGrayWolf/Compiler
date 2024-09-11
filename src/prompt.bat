@cmd /k "path %path%;c:\masm32\bin&set include=c:\masm32\include&set lib=c:\masm32\lib"
@echo off
if .%1.==.. goto USAGE
ml /nologo /c /coff %1 && link /nologo /subsystem:console %~n1.obj && %~n1
goto END
:USAGE
echo usage: mkr program.asm
:END