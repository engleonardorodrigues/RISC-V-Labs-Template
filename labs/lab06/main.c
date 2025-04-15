#include<stdio.h>

#define POP  0
#define PUSH 1

extern void stack_func(int* a, int* op, int* result);

int main(){
    
    // initial condition
    int result = 0;
    int arg = 0;

    // Push in stack
    for (arg = 0; arg <= 5; arg++){
            stack_func(arg, PUSH, &result);
            print("Push the %d, in the stack\n", arg);
    }

    // Pop on stack
    for (arg = 0; arg <= 5; arg++){
            stack_func(arg, POP, &result);
            print("Pop the %d, on the stack\n", arg);
    }

    return 0;
}
