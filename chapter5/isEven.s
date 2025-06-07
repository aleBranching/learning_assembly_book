.globl _start

.section .text
_start:
    movq $2, %rdi
    # number to test:
    movq $4, %rax
    divq %rdi
    cmpq $0, %rdx
    je even 
    jne odd
even:
    movq $0 , %rdi
    jmp finish
odd:
    movq $1 , %rdi
    jmp finish
finish:
    movq $60, %rax
    syscall