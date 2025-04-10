#include<stdio.h>

extern void count(int* a, int* result);

int main(){
    int op1 = 13 /*0b1101*/, result;

    count(&op1, &result);

    printf("The counter bits of %d is = %d\n", op1, result);

    return 0;
}