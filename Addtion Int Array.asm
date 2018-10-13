section .data
        arr dd 10,24,39,7,48,-1
        msg db "addition is %d",10,0   ;10 for \n
section .bss
        sum resd 1
	four resd 1
section .text
        global main 
	extern printf
main:   mov dword[sum],0
	xor ecx,ecx
	mov dword[four],4
abc:	mov esi,arr
	mov eax,dword[four]
	mul ecx
	add esi,eax
	cmp dword[esi],-1
	jz pqr
	mov edx,dword[esi]
	add dword[sum],edx
	inc ecx
	jmp abc
pqr:	push dword[sum]
	push msg
	call printf
	add esp,8 
