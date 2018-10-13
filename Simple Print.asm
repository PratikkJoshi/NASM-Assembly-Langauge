section .data
	first db 'ABCD EFGH IJKL MNOP'
	second db 'HGFE DCBA'
	third dq 4.94
section .text
	global main
	extern puts
main:	push first
	call puts
	add esp,4
