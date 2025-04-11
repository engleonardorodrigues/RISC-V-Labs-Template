#.section .text

#.global bin_to_dec


# 1. Descobrir se o bit é 0 ou 1: t0
# 2. Se for 1 deve pular para a rotina (bit_um) e fazer:
#      - multiplicar o bit por 2 e armazenar esse valor em t3
#      - somar o valor atual com o armazenado
# 3. Se o bit for 0 pular para a verificação do próximo bit

bin_to_dec:
    
    li  t0, 0b1011
    #lw  t0, 0(a0)       # Carrega t0 com número binario ex: 10101
    li  t1, 0x01         # mascára
    li  t4, 0
    li  t6, 2 

loop:
    and  t2, t1, t0      # And entre t1 e t0 armazenando o resultado em t2
    beq  t2, t1, bit_um  # Se o bit for igual a 1 vai para rotina de bit um

bit_zero:

    srli t0, t0, 1       # desloca em um bit para a direita: t5 = t0 >> t1 (0x01)
    j    loop

bit_um:

    addi t5, t5, 1
    mul  t3, t6, t5       # multiplica o bit por 2
    add  t4, t4, t3      # soma o valor de t3 a t4 armazenando em t4
    srli t0, t0,  1      # desloca em um bit para a direita: t5 = t0 >> t1 (0x01)
    beqz t0, finish
    j    loop

finish:

    sw t4, 0(a1)          # Armazena o valor de t4 
    ret
