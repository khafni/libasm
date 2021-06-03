section .text
    global ft_strdup
    extern malloc
    extern ft_strlen
    extern ft_strcpy



ft_strdup:
    call ft_strlen 
    push rdi ; `
    inc rax
    mov rdi, rax
    call malloc
    mov rdi, rax
    pop rsi
    call ft_strcpy
    ret


