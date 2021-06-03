section .text
    global ft_strdup
    extern malloc
    extern ft_strlen
    extern ft_strcpy
    extern __errno_location



ft_strdup:
    jmp _get_str_len

_get_str_len:
    call ft_strlen ; we already have the str in rdi so we can pass it to strlen
    push rdi ; to persieve char* to use it later
    inc rax ; for the char* final \0

_allocate:
    mov rdi, rax ; copy rax content which is ths str length into rdi 
    call malloc ; pass the str len into malloc
    cmp rax, 0 ; if malloc fails
    je _errno_set

_copy:
    mov rdi, rax ; copy the allocated string into the first parameter
    pop rsi ; and filling the second parameter with the src string from the stack 
    call ft_strcpy
    ret

_errno_set:
    ret ; malloc sets errno itself since its a C function not a sys call