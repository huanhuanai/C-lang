#include <stdio.h>
#include <stdlib.h>
int length();
int main()
{
	int len;
	char str[20];
	printf("请输入字符串:\n");
	scanf("%s", str);
	len = length(str);
	printf("字符串有 %d 个字符。", len);
}

int length(char *s)
{
	int i = 0;
	while (*s != '\0') {
		i++;
		s++;
	}
	return i;
}
