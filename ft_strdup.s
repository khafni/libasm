section .text
    global _ft_strdup
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy
    extern __errno_location



_ft_strdup:
    jmp _get_str_len

_get_str_len:
    call _ft_strlen ; we already have the str in rdi so we can pass it to strlen
    push rdi ; to persieve char* to use it later
    inc rax ; for the char* final \0

_allocate:
    mov rdi, rax ; copy rax content which is ths str length into rdi 
    call _malloc ; pass the str len into malloc
    cmp rax, 0 ; if malloc fails
    je _errno_set

_copy:
    mov rdi, rax ; copy the allocated string into the first parameter
    pop rsi ; and filling the second parameter with the src string from the stack 
    call _ft_strcpy
    ret

_errno_set:
    ret ; malloc sets errno itself since its a C function not a sys call