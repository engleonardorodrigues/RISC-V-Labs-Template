#include <stdio.h>
#include <string.h>

void int_to_binary(int num, char *buffer, int size) {
    buffer[size - 1] = '\0'; // Termina a string
    for (int i = size - 2; i >= 0; i--) {
        buffer[i] = (num & 1) ? '1' : '0';
        num >>= 1;
    }
}

extern void bin_to_dec(int* binary, int* decimal);

int main(){
    int binary = 0b1011, decimal;
    char binStr[33];  // 32 bits + '\0'

    bin_to_dec(&binary, &decimal);

    int_to_binary(binary, binStr, 33);

    printf("O número binário %s em decimal é: %d\n", binStr, decimal);

    return 0;
}