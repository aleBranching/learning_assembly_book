.globl _start

.section .text
_start:
    movq $750000000, %rcx
    movq $2, %rdi
    movq $5, %rax
section:
    mulq %rdi
    loopq section
finish:
    movq %rax, %rdi
    movq $60, %rax
    syscall