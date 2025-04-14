#.section .text

#.global func

    .data
vetor: 
    .word 1, 5, 7, 16, 2, 8, 3    # declara o vetor de inteiros (cada um ocupa 4 bytes)
    .text
    .globl main
func:
    
    #lw t1, 0(a0)      # (Parâmetro de entrada)
    la t0, vetor
    li t0, 0         # Posição inicial do array
    li t3, 7         # Tamanho do array

for_loop:
     
    addi t2, t1, 0   # Se não chegou ao fim pega um elemento do vetor e guarda em t2 para futura comparação
    addi t0, t0, 4   # avança em 4 bytes para pegar o próximo elemento
    addi t3, t0, 0   # guarda o próximo elemento em t3
    beqz t1, finish  # verifica se o loop chegou ao fim (percorreu todo o vetor)
                     
comp_elements:       # faz a comparação entre os elementos do vetor

    ble t2, t3, next # verifica se t2 > t3
                   
    addi t3, t2, 0   # se t2 > t3 guarda t4
    j  for_loop                 # se não, passar para o próximo
next:

    addi t0, t0, 4   # avança em 4 bytes para pegar o próximo elemento
    j    for_loop
finish:
    sw  t4, 0(a1)    # salva maior número encontrado
    ret
