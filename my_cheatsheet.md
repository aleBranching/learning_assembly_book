this is a cheat sheet for me. Quick and dirty and not very readable by others
# Registers
%rcx : comparison, value used in loopq

%rax : Accumalator and where you put the exit code?

%rdx : remainder?

%rip : memory address of next instruction to execute pointer




mulq: a number can not be used as a source must be a memmory location or a registrer

decq : -1
incq : +1


comparison:
cmp[q/b/w/l] quad, byte, not less, more
    -if value and register value first. 
loopq: decrement then if not 0 jump
divq : remainder in %rdx
