section .text
    global _ft_strcpy
;rdi = char *dest ; rsi = char *src
_ft_strcpy:
    xor rcx, rcx

_loop:
    cmp byte[rsi + rcx], 0
    je _return
    ; you can't give mov two memory addrs you need to use a 1 byte
    ;register as an intermediare
    mov dl, byte[rsi + rcx] 
    mov byte[rdi + rcx], dl
    inc rcx
    jmp _loop


_return:
    mov byte[rdi + rcx], 0
    mov rax, rdi
    ret
