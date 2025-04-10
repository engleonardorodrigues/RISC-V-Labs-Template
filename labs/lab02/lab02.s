.section .text

.global count

count:
   
    lw t0, 0(a0)          # Carrega 13 

loop:
    andi t1, t0, 1          
    beqz t1, next_bit       

    addi t1, a0, 1

next_bit:

    srai a0, a0, 1
    bnez a0, loop      
    # j    loop            
end:
    sw t1, 0(a1)
    ret              


       
