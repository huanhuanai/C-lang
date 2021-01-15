#include <stdio.h>
struct student
{
	int x;
	char c;
}a;
int main()
{
	a.x = 3;
	a.c = 'a';
	fun(a);
	printf("%d, %c", a.x, a.c);
}
fun(struct student b)
{
	b.x = 20;
	b.c = 'y';
}
