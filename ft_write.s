section .text
    global ft_write
    extern	__errno_location

ft_write:
    mov rax, 1
    syscall ; we call write syscall
    cmp rax, 0 ; check if its return is negative
    jl _errno_set
    ret ; if not all is right

_errno_set:
    ; write syscall returns a negative value that that index the errno value but we should make it positive
    neg rax 
    mov rdi, rax ; we store the errno value temporary in rdi
    call __errno_location ; get the errno pointer
    mov [rax], rdi ; set the errno pointer with the write syscall return
    mov rax, -1 ; make our routine returns -1
    ret

