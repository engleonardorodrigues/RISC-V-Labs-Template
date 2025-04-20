#include<stdio.h>

extern void fibonacci(int* N, int* Fibonacci_sequence);

int main(){

    int N = 6;
    int Fibonacci_sequence[N];

    fibonacci(&N, Fibonacci_sequence);

        printf("The Fibonacci Sequence for N = %d is: ", N);

        for(int i = 0; i < N; i++)
        {
            printf("%d ", Fibonacci_sequence[i]);
        }

        printf("\n");

    return 0;
}
