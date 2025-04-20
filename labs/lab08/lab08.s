.section .text

.global fibonacci

# a0: Input N for fibonacci sequence
# a1: Output for Fibonacci sequence

fibonacci:

    li   t0, 0                # contador
#   li   t1, 6                # carrega N localmente para teste
    lw   t1, 0(a0)            # carrega N
    li   t2, 0                # valor inicial de t2
    li   t3, 1                # valor inicial de t3
    li   t4, 0                # variavel para comparação 

    sw   t2, 0(a1)            # salva primeiro valor da sequência fibonacci
    addi a1, a1, 4            # avança para a próxima posição da memória (4 bytes)

fibonacci_seq:

    beq  t0, t1, finish       # Se T0 e T1 forem iguais a sequencia fibonacci está concluida
    mv   t2, t3               # move o valor de t3 para t2
    mv   t3, t4               # move o valor de t4 para t3
    add  t4, t2, t3           # soma t2 + t3 e guarda em t4

    sw   t4, 0(a1)            # salva resultado de t4 em a1
    addi a1, a1, 4            # avança para a próxima posição da memória (4 bytes) 
    addi t0, t0, 1            # avança o contador em uma unidade
    j    fibonacci_seq        # retornar para loop for

finish:    

ret
