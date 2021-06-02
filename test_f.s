section .data
helloworld:
    call _say_hi
    db "Hello world"

section .text
            global _start

_start:
    jmp helloworld

_say_hi:
    ;mov rbp, rsp 
    pop rsi
    mov rax, 0x2000004
    mov rdi, 1
    mov rdx, 0xa
    syscall
   
_exit:
    ; mov rax, 0x2000001
    ; mov rdi, 0
    ; syscall
    mov rax, 0
    ret

