.section .text

.global matrix_mult

matrix_mult:

    li t0, 2          # contador

loop:   
    #mv t1, a0
    lw t1, 0(a0)      # carrega primeiro valor da matriz A
    lw t2, 0(a1)      # carrega primeiro valor da matriz B
    
calc_matriz:

    beqz t0, finish   # vai para finish quando terminar o loop

#    li  t1, 1
#    li  t2, 5
#    mv a0, t1
#    mv a1, t2

    mul  t3, a0, a1   # multiplica o elemento da matriz A pelo elemento da matriz B e guarda em t3
    addi a0, a0, 4    # avança para próximo elemento da Matriz A
    addi a1, a1, 4    # avança para próximo elemento da Matriz B

#    li  t1, 2
#    li  t2, 7
#    mv a0, t1
#    mv a1, t2

    mul  t4, a0, a1   # multiplica o elemento da matriz A pelo elemento da matriz B e guarda em t4

    add  a2, t3, t4   # soma t3 + t4 e guarda em a2
    
    sw   t5, 0(a2)    # salva o resultado da multiplicação em t5

    addi a2, a2, 4    # avança o endereço de memória de a2   
    addi a0, a0, 4    # avança para próximo elemento da Matriz A
    addi a1, a1, 4    # avança para próximo elemento da Matriz B

    addi t0, t0, -1   # decrementa t0 = t0 - 1
    j    calc_matriz

finish:

ret
