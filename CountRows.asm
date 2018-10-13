section .data
	s1 db "17101,NAME-1,M,MCA",10,0
	   db "17102,NAME-2,F,MCA",10,0
	   db "17103,NAME-3,M,MCA",10,0	
	   db "17104,NAME-4,F,MCA",10,0	
	   db "17105,NAME,M,MCA",-10
	msg db "No. Of Rows=%d",10,0
section .bss
section .text
	global main
	extern printf,scanf
main:
	xor ecx,ecx
	mov eax,s1
loop:	cmp byte[eax],0
	jz e
bck:	cmp byte[eax],-10
	jz end
	inc eax
	jmp loop
e: 	inc ecx
	jmp bck
end:	inc ecx
	push ecx
	push msg
	call printf
	add esp,8
