.section .text

.global func

    .data
#vetor: 
#    .word 1, 5, 7, 16, 2, 8, 3    # declara o vetor de inteiros (cada um ocupa 4 bytes)
#    .text
#    .globl main
func:
    
    lw t0, 0(a0)       # (Parâmetro de entrada)
    #la t0, vetor
    li t3, 0            # Posição inicial do array
    li t4, 7            # Tamanho do array

for_loop:

    lw  t1, 0(t0)       # guarda o elemento atual do vetor em t1
 
 max:
    bge t3, t4, finish  # verifica se chegou ao final do vetor (t3 >= t4)
    lw  t2, 4(t0)       # guarda o próximo elemento do vetor em t2

    addi t0, t0, 4      # avança endereço
    addi t3, t3, 1      # incrementa a contador

    bge t1, t2, max     # se t1 for maior que t2 vai para max
    j    for_loop

finish:

    sw t1, 0(a0)
    ret
    