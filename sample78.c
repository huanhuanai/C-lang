#include <stdio.h>
#include <stdlib.h>
struct man
{
    char name[20];
    int age;
} person[3] = {"li", 18, "wang", 25, "sun", 22};
int main()
{
    struct man *q, *p;
    int m = 0;
    p = person;
    for (int i = 0; i < 3; i++)
    {
        if (m < p->age)
        {
            m = p->age;
            q = p;
        }
        p++;
    }
    printf("%s %d\n", q->name, q->age);
    return 0;
}
