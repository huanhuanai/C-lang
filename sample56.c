#include <graphics.h>
int main()
{
	int driver, mode, i;
	float j = 1, k = 1;
	driver = VGA;
	mode = VGAHI;
	initgraph(&driver, &mode, "");
	setbkcolor(YELLOW);
	for (i = 0; i <= 25; i++) {
		setbkcolor(8);
		circle(310, 250, k);
		k = k + j;
		j = j + 0.3;
	}
	return 0;
}
