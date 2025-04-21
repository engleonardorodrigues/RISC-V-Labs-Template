#include<stdio.h>

extern void matrix_mult(int* A, int* B, int* C);

int main(){

    #define N 2
    #define M 2

    int A [N][M] =
    {
        {1, 2},
        {3, 4}
    };

    int B [N][M] =
    {
        {5, 6},
        {7, 8}
    };

    int C [N][M];
     
    matrix_mult(&A, &B, C);

        // Matriz A
        printf("Matriz 1:\n");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < M; j++) {
                printf("%d ", A[i][j]);
            }
            printf("\n");
        }

        // Matriz B
        printf("\nMatriz 2:\n");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < M; j++) {
                printf("%d ", B[i][j]);
            }
            printf("\n");
        }

        //Matriz C
        printf("\nResultado:\n");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < M; j++) {
                printf("%d ", C[i][j]);
            }
            printf("\n");
        }

    return 0;
}
