#include<stdio.h>

extern void func(int* vetor, int* maximum_number);

int vetor[] = {1, 5, 7, 16, 2, 8, 3}, maximum_number;

int main(){

    func(vetor, &maximum_number);
    printf("The maximum number of vetor is: %d", maximum_number);

    return 0;
}
