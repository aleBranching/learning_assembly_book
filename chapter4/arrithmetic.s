# .globl _start
# .section .text
# _start:
#  # Perform various arithmetic functions
#  movq $3, %rdi
#  movq %rdi, %rax
#  addq %rdi, %rax
#  mulq %rdi
#  movq $2, %rdi
#  addq %rdi, %rax
#  movq $4, %rdi
#  mulq %rdi
#  movq $10, %rsi
#  # Set the exit system call number
#  movq $60, %rax
#  # Perform the system call
#  syscall

.globl _start
.section .text
_start:
 movq $0, %rdi
 movq $0, %rbx
 movb $3, %bl
 movb $3, %bh
 addq %rbx, %rdi
 movq $60, %rax
 # syscall takes only lower 8 bits
 syscall