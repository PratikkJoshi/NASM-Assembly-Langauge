section .data
	res db "",10
        rec1 db "17001,Name1,M,SysPro",10,0
        rec2 db "17002,Name2,F,CN",10,0
	rec3 db "17003,Name3,M,AI",10,0
	rec4 db "17004,Name4,F,TCS",10,0
	rec5 db "17005,Name5,M,Algorithm",10,0

section .text
        global main

main:	mov eax,rec1
	push eax
	call ver
	mov eax,rec2
	push eax
	call ver
	mov eax,rec3
	push eax
	call ver
	mov eax,rec4
	push eax
	call ver
	mov eax,rec5
	push eax
	call ver
ver:    push ebp
        mov ebp,esp
        mov eax,[ebp+8]
        xor ecx,ecx
loop1:  cmp byte[eax],','
        je next
        inc eax
        jmp loop1
next:   inc eax
        xor esi,esi
        mov edi,res
label:  mov ebx,[eax]
        inc eax
        mov [edi],ebx
        inc edi
        inc esi
        cmp byte[eax],','
        jnz label
verify: inc eax
        cmp byte[eax],'M'
        je printr
        jmp exit
printr: mov eax,4
        mov ebx,1
        mov ecx,res
        mov edx,esi
	int 0x80
exit:   pop ebp
        ret
