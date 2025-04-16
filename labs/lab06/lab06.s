.section .text

.global stack_func

.data
    stack_data:     .word 1, 2, 3, 4    # elementos da pilha
    stack_op:       .word 1             # 1 = Push, 0 = Pop
#    result:         .space 4            # para guardar o resultado de t1

stack: 

#    .text
#    .globl main

main:

#    la, a0, stack_data  # usado para debugar o asm sem necessidade do main.c
#    la, a1, stack_op    # usado para debugar o asm sem necessidade do main.c
#    la, a2, result      # usado para debugar o asm sem necessidade do main.c

stack_func:
    
    li t0, 0        # contador do sistema
    mv t1, a0       # carrega todos os elementos da pilha
    lw t2, 0(a1)    # carrega função da pilha (Push ou Pop)
    addi a2, a0, 0  

finish:
    sw t1, 0(a2)       

    ret
