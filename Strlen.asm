section .data
    First db "First String",0
    F_len equ $-First
    Second db "Second String",0
    S_len equ $-Second
    reslt1 db "Equal",0
    reslt2 db "Not Equal",0
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
rep cmpsb
    cmp ecx,0
    jz end
    push reslt2
    call puts
    add esp,4
    jmp exit
end:
    push reslt1
    call puts
    add esp,4
exit: