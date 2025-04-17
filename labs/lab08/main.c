#include<stdio.h>

extern void func(int* N, int* Fibonacci_sequence);

int main(){

    int N = 6, Fibonacci_sequence;

    fibonacci(&N, &Fibonacci_sequence);
    printf("The Fibonacci Sequence for N = %d is: %d \n", N, Fibonacci_sequence);

    return 0;
}
