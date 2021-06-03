section .text
    global _ft_read
    extern ___error

_ft_read:
    mov rax, 0x2000003
    syscall ; we call read syscall
    jc      _errno_set
    ret ; if not all is right

_errno_set:
    ; read syscall returns a negative value that that index the errno value but we should make it positive
    push rax
    call ___error ; get the errno pointer
    pop rdi
    mov [rax], rdi ; set the errno pointer with the read syscall return
    mov rax, -1 ; make our routine returns -1
    ret

