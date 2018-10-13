section .data
	str1 db "Aryan Dixit",10,0	; db is for strings
	len equ $-str1			; calculate length of str1 N store in len

section .bss
	str2 resb 100

section .text
	global main

main:
	mov esi,str1			; esi is source register in array
	mov edi,str2			; edi is destination resgister in array
	mov ecx,len
	dec ecx
	add esi,ecx
	mov ecx,len

lp:	std
	lodsb
	cld
	stosb
	loop lp

	mov eax,4
	mov ebx,1
	mov ecx,str2
	mov edx,len
	int 80h
