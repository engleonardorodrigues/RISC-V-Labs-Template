.section .text

.global stack_func

stack_func:

    beqz   a1, PUSH          # verifica se a1 é igual a zero. Se sim vai para PUSH, se não vai para POP

POP:

    lw     t0, 0(sp)         # carrega o valor do topo da pilha (sp) para o t0
    addi   sp, sp, 4         # "sobe" 4 bytes da pilha
    sw     t0, 0(a2)         # salva o valor armazenado em t0 no argumento a2
ret                          # retorna para apresentar o resultado

PUSH:

    addi   sp, sp, -4        # "desce" 4bytes para inserir um elemento na pilha
    sw     a0, 0(sp)         # salva o dado armazenado em sp no argumento a0
ret                          # retorna para apresentar o resultado
