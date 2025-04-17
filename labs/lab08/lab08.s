.section .text

.global fibonacci

# a0: Input N for fibonacci sequence
# a1: Output for Fibonacci sequence

fibonacci:

    li t0, 0        # contador
    lw t1, 0(a0)    # carrega N

loop:
    beqz  t0, t1, finish    # Se T0 e T1 forem iguais a sequencia fibonacci está concluida
    
for_loop:

    add
    addi  t0, t0, 1         # atualiza contador

finish:    

    sw t2, 0(a1)     # salva o valor de T2 no argumento a1
ret
