#include<stdio.h>

extern void bin_to_dec(int* binary, int* decimal);

int main(){

    int binary = 0x1010101, decimal;

    sum(&binary, &decimal);

    printf("The binary number %d in decimal is: %d\n", binary, decimal);

    return 0;
}
