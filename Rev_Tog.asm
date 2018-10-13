section .data
	first db "sOurce sTrinG"
	len equ $-first
section .bss
	second resb len
section .text
	global main
	extern puts
main:	mov esi,first
	mov ecx,len
	mov edi,second
	xor eax,eax
	add esi,ecx
	dec esi
pqr:	std
	lodsb
	cld
	cmp al,32
	jz nxt
	cmp al,90
        jg next

	add al,32
	jmp nxt

next:
	sub al,32

nxt:	stosb
	loop pqr
	mov eax,4
	mov ebx,1
	mov ecx,second
	mov edx,len
	int 0x80
