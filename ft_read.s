section .text
    global ft_read

ft_read:
    mov rax, 0
    syscall ; we call read syscall
    cmp rax, 0 ; check if its return is negative
    jl _errno_set
    ret ; if not all is right

_errno_set:
    ; read syscall returns a negative value that that index the errno value but we should make it positive
    neg rax 
    mov rdi, rax ; we store the errno value temporary in rdi
    call __errno_location ; get the errno pointer
    mov [rax], rdi ; set the errno pointer with the read syscall return
    mov rax, -1 ; make our routine returns -1
    ret

