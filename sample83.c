#include <stdio.h>
int main(int argc, char *agrv[])
{
	long sum = 4, s = 4;
	int j;
	for (j = 2; j <= 8; j++) {
		printf("%d位数为奇数的个数%ld\n", j - 1, s);
		if (j <= 2) {
			s *= 7;
		}else {
			s *= 8;
		}
		sum += s;
	}
	printf("%d位数为奇数的个数%ld\n", j - 1, s);
	printf("奇数的总个数为:%ld\n", sum);
	return 0;
}
