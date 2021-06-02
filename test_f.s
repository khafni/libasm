section .data
helloworld: db "Hello world", 0xa
helloworld_len: equ $-helloworld

section .text
            global _say_hi

_say_hi:
    ;mov rbp, rsp 
    mov rax, 0x2000004
    mov rdi, 1
    ; pop rsi
    mov rsi, helloworld
    mov rdx, helloworld_len
    syscall
   
_exit:
    ; mov rax, 0x2000001
    ; mov rdi, 0
    ; syscall
    mov rax, 0
    ret

