#include <stdio.h>

int add(int a, int b)
{
    return a + b;
}

int main(void)
{
    int a = 5;
    int b = 4;
    int c = add(a, b);
    printf("c = %d\n", c);
    return 0;
}