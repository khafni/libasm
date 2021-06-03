section .text
    global ft_strlen

ft_strlen:
    ;bitwise xor sets the rcx register as 0
    ;because xor any number with itself gives 0
    xor rcx, rcx

_loop:
    ;rdi is the first parameter of the func
    cmp byte[rdi + rcx], 0 ;check if the byte at the address rdi + rcx, contains the value 0
    je _exit ;if it is the case go to the label _exit
    inc rcx ; increment the register rcx by 1
    jmp _loop ; go to the start of the _loop label


_exit:
    mov rax, rcx ; copy the value in rcx to rax since a function returns rax value
    ret ;exit the subroutine/function