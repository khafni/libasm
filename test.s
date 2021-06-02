global start

section .data
    helloworld db "Hello world", 10, 0
    helloworld_len equ $-helloworld

section .text

start:
    xor rcx, rcx
    jmp _loop

_loop:
    cmp rcx, 20
    je _exit  
    mov rax, 0x2000004
    mov rdi, 1
    mov rsi, helloworld
    mov rdx, helloworld_len
    push rcx
    syscall
    pop rcx
    inc rcx
    jmp _loop
    
_exit:
    mov rax, 0x2000001
    mov rdi, 0
    syscall