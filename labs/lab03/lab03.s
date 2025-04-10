.section .text

.global bin_to_dec

bin_to_dec:

    lw  t0, 0(a0)   // Carrega t0 com número binario ex: 10101
  # li  t1, 1

    andi t2, t0, 0
    beq  t2, 1, zero
    li   t1, 1

zero:




func:
    ret
