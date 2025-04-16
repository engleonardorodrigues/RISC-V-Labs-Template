#include<stdio.h>

#define POP  0
#define PUSH 1

extern void stack_func(int* arg, int* op, int* result);

int main(){
    
    // initial condition
    int result = 0;
    int arg = 0;

    stack_func(arg, PUSH, &result);
    printf("Push the %d, in the stack\n", arg);
/*
    // Push in stack
    for (arg = 0; arg <= 5; arg++){
            stack_func(arg, PUSH, &result);
            printf("Push the %d, in the stack\n", arg);
    }

    // Pop on stack
    for (arg = 0; arg <= 5; arg++){
            stack_func(arg, POP, &result);
            printf("Pop the %d, on the stack\n", arg);
    }
*/
    return 0;
}
