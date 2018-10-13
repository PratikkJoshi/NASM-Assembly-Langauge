section .data

	msg db "%d",0
	msg1 db "%d",10,0
section .bss
	x resd 0
	n resd 0
section .text
	extern scanf,printf
	global main

main:
	push n
	push msg
	call scanf
	add esp,8

	mov esi,dword[n]
	mov ebx,x
pp:
	push ebx
	push msg
	call scanf
	add esp,4
	pop ebx
	add ebx,4
	dec esi
	cmp esi,0
	jnz pp

	mov esi,dword[n]
	mov ebx,x
qq:
	push dword[ebx]
	push msg1
	call printf
	add esp,8
	add ebx,4
	dec esi
	cmp esi,0
	jnz qq
	
