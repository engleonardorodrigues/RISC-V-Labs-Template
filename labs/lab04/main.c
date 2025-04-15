#include<stdio.h>

extern void max_number(int* a, int* maximum_number);

int main(){

    int vetor[] = {1, 5, 7, 16, 2, 8, 3}, maximum_number;
    max_number(vetor, &maximum_number);

    printf("The maximum number of vetor is: %d\n", maximum_number);

    return 0;
}
