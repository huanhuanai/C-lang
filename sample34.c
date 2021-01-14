#include <stdio.h>
void hello_world(void)
{
    printf("Hello, world!\n");
}
void three_hellos(void)
{
    for (int counter = 0; counter <= 3; counter++)
    {
        hello_world(); //调用此函数
    }
}
int main(void)
{
    three_hellos(); //调用此函数
}
