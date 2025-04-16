#include<stdio.h>

#define POP  0
#define PUSH 1

extern void stack_func(int data, int op, int* result);

int main(){
    
    // initial condition
    int result = 0;
    int data = 5;

    // Push in stack
    for (data = 0; data <= 5; data++){
            stack_func(data, PUSH, &result);
            printf("Push the %d, in the stack\n", data);
    }

    // Pop on stack
    for (data = 0; data < 5; data++){
            stack_func(data, POP, &result);
            printf("Pop the %d, on the stack\n", data);
    }

    return 0;
}
