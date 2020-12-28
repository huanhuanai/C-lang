#include<stdio.h>
#include<stdlib.h>
int main()
{
	const char *s[] = {"man", "woman", "girl", "boy", "sister"};
	const char **q;
	for(int k = 0;k < 5; k++)
	{
		q = &s[k];
		printf("%s\n", *q);
	}
	return 0;
}
