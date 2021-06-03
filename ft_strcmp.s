section .text
global ft_strcmp

ft_strcmp:
    xor rcx, rcx ;iteration var

_loop:
    cmp BYTE[rdi + rcx], 0 ; check if we reached the null byte in the first string s1[rcx] == '\0' 
    je _return
    cmp BYTE[rsi + rcx], 0 ; check if we reached the null byte in the second string s1[rcx] == '\0' 
    je _return
    mov al, BYTE[rdi + rcx]
    ;check if the bytes we reached at both strings are not identical
    ; s1[rcx] != s2[rcx] 
    cmp BYTE[rsi + rcx], al
    ; if it is the case then go to the _return label
    jnz _return
    inc rcx
    jmp _loop


_return:
    xor rdx, rdx
    xor rax, rax
    movzx rdx, BYTE[rsi + rcx] ; movzx is used instead of mov because we are trying to copy 8 bits
    movzx rax, BYTE[rdi + rcx] ; to a 64 bits register so we need to zero extend that byte into 64 bits
    sub rax, rdx
    cmp rax, 0
    jl _less_t_0 
    jg _greater_t_0
    ret

_less_t_0:
    mov rax, -1
    ret

_greater_t_0:
    mov rax, 1
    ret