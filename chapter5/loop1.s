.globl _start

.section .text
_start:
    movq $6, %rcx
    movq $2, %rsi
    movq $5, %rax
section:
    mulq %rsi
    decq %rcx
    jnz section
    # gets converted to jne
finish:
    movq %rax, %rdi
    movq $60, %rax
    syscall