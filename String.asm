section .data
    First db "First String",0
    F_len equ $-First
    Second db "Second String",0
    S_len equ $-Second
section .bss
    Third resb F_len
    Fourth resb S_len
section .text
    global main
    extern puts
main:   
    mov esi,First
    mov edi,Second
    mov ecx,F_len
;rep 
std 
    movsb
    mov al,byte[esi]
    mov byte[edi],al
   ; push First
   ; call puts
   ; add esp,4
