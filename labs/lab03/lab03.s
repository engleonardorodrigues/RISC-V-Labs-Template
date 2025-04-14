.section .text
.global bin_to_dec

bin_to_dec:

    #li  t0, 0b1101      # Exemplo de número binário
    lw  t0, 0(a0)        # (Descomente para usar parâmetro de entrada)
    li  t1, 0x01         # máscara para pegar o bit menos significativo
    li  t4, 0            # resultado final
    li  t5, 0            # posição do bit (contador de potência)
    
loop:
    and  t2, t1, t0      # testa o bit menos significativo
    beqz t2, next_bit    # se bit == 0, vai direto para próximo bit

bit_um:
    li  t6, 1            # valor base 1
    sll t3, t6, t5       # t3 = 1 << t5  (faz 2^posição)
    add t4, t4, t3       # soma no acumulador

next_bit:
    srli t0, t0, 1       # desloca número para pegar o próximo bit
    addi t5, t5, 1       # avança a posição do bit
    bnez t0, loop        # se t0 volta para o loop

finish:
    sw t4, 0(a1)         # armazena resultado em memória
    ret
