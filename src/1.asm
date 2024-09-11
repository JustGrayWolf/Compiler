TITLE SUM_ARRAY (SUM_ARRAY.asm)
include masm32rt.inc

.data
;System vairables
format$Char db "%c",0
format$String db "%s",0
format$Int db "%d",0
format$Float db "%f",0
out_real8 real8 ?
temp_real4 real4 ?
temp_sdword sdword ?

;Program vairables
var$_$i SDWORD ?
var$_$n SDWORD ?
arr$_$numbers DB 20000 DUP (?)
pStr$1 BYTE  "??????? ?????????? ?????????",0
pStr$2 BYTE  "??????? ????",0
pStr$3 BYTE  "??????? ?????",0

.code
start:

mov  EDX, OFFSET pStr$1
invoke crt_printf, addr format$String, EDX
invoke crt_printf, ADDR format$Char, 10
MOV EAX, var$_$n
MOV EBX, 0
CMP EAX, EBX
JLE @@lblCondTrue1
push 0
jmp @@lblCondFalse2

@@lblCondTrue1:
push 1

@@lblCondFalse2:
pop eax
cmp eax, 1
je @@syslbl_3
jmp @@syslbl_4

@@syslbl_3:
mov  EDX, OFFSET pStr$2
invoke crt_printf, addr format$String, EDX
invoke crt_printf, ADDR format$Char, 10
jmp @@syslbl_5

@@syslbl_4:
MOV EAX, var$_$n
MOV EBX, 5000
CMP EAX, EBX
JGE @@lblCondTrue6
push 0
jmp @@lblCondFalse7

@@lblCondTrue6:
push 1

@@lblCondFalse7:
pop eax
cmp eax, 1
je @@syslbl_8
jmp @@syslbl_9

@@syslbl_8:
mov  EDX, OFFSET pStr$3
invoke crt_printf, addr format$String, EDX
invoke crt_printf, ADDR format$Char, 10
jmp @@syslbl_10

@@syslbl_9:
mov	dword ptr [var$_$i], 1
sub	dword ptr [var$_$i],1

@@syslbl_11:
add	dword ptr [var$_$i],1


cmp	word ptr [var$_$i], 5
jl @@syslbl_11
mov	dword ptr [var$_$i], 5
add	dword ptr [var$_$i],1

@@syslbl_12:
sub	dword ptr [var$_$i],1


push eax
push ebx
mov eax, var$_$i
mov ebx, 1
sub eax, ebx
mov ebx, 4
mul ebx
mov ebx, offset arr$_$numbers
add eax, ebx
mov ebp, eax
pop ebx
pop eax
invoke crt_printf, addr format$Int, dword ptr [ebp]
invoke crt_printf, ADDR format$Char, 10

cmp	word ptr [var$_$i], 1
jg @@syslbl_12

@@syslbl_10:

@@syslbl_5:

invoke crt_printf, addr format$Char, 10
inkey "Press any key to exit..."
exit
end start
