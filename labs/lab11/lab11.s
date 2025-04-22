.section .text

.global matrix_mult


matrix_mult:

    li t0, 4          # contador

loop:   

    li t6, 1

calc_matriz:
    

    beqz t0, finish   # vai para finish quando terminar o loop

    lw   t1, 0(a0)    # carrega primeiro valor da matriz A
    lw   t2, 0(a1)    # carrega primeiro valor da matriz B

    mul  t3, t1, t2   # multiplica o elemento da matriz A pelo elemento da matriz B e guarda em t3

    

    lw   t1, 4(a0)    # carrega primeiro valor da matriz A
    lw   t2, 8(a1)    # carrega primeiro valor da matriz B

    mul  t4, t1, t2   # multiplica o elemento da matriz A pelo elemento da matriz B e guarda em t4


    add  t5, t3, t4   # soma t3 + t4 e guarda em a2
    
    sw   t5, 0(a2)    # salva o resultado da multiplicação em t5
    
    addi t6, t6, 1    # avança o contador em um ciclo para ajustar endereço de a0

    addi a2, a2, 4    # avança o endereço de memória de a2   
    addi a1, a1, 4    # avança para próximo elemento da Matriz B

    addi t0, t0, -1   # decrementa t0 = t0 - 1

    beqz  t6, atualiza_a0 
    addi t6, t6, -1
    j    calc_matriz

atualiza_a0:
    addi a0, a0, 4    # avança para próximo elemento da Matriz A
    addi t6, t6, 0
    addi t6, t6, 1
    j    calc_matriz

finish:

ret
