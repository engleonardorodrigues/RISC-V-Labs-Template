.section .text

.global max_number

####### Habilitar essas linhas para testar o asm sem o main #########
#    .data
#vetor: 
#    .word 1, 5, 7, 16, 2, 8, 3    # declara o vetor de inteiros (cada um ocupa 4 bytes)
#    .text
#    .globl main

max_number:
    
    mv t0, a0
#    la t0, vetor           # Habilitar para testar o vetor sem o main.c
    li t3, 0                # Posição inicial do array
    li t4, 7                # Tamanho do array

for_loop:

    lw   t1, 0(t0)           # guarda o elemento atual do vetor em t1

 max_loop:

    bge  t3, t4, finish      # verifica se chegou ao final do vetor (t3 >= t4)
    lw   t2, 4(t0)           # guarda o próximo elemento do vetor em t2

    addi t0, t0, 4          # avança endereço
    addi t3, t3, 1          # incrementa a contador

    bge  t1, t2, max_loop    # se t1 for maior que t2 vai para max
    j    for_loop

finish:

    sw   t1, 0(a1)           # salva o valor de t1 em a1
    ret
    