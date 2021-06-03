section .text
    global _ft_write
    extern ___error	

_ft_write:
    mov rax, 0x2000004
    syscall ; we call write syscall
    jc _errno_set
    ret ; if not all is right

_errno_set:
    ; write syscall returns a negative value that that index the errno value but we should make it positive
    ;neg rax 
    ;mov rdi, rax ; we store the errno value temporary in rdi
    push rax
    call ___error ; get the errno pointer
    pop rdi
    mov [rax], rdi ; set the errno pointer with the write syscall return
    mov rax, -1 ; make our routine returns -1
    ret

