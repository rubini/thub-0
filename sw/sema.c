#include <thub.h>
#define ARRAY_SIZE(x) (sizeof(x)/sizeof(x[0]))

struct tl_time {
	int ticks;
	uint8_t v[3][3];
};
#define ON 24
#define RED {ON, 0, 0}
#define YEL {ON, ON, 0}
#define GRE {0, ON, 0}
#define OFF {0, 0, 0}

struct tl_time tl_loop[] = {
	{10*HZ, {GRE, OFF, OFF}},
	{ 2*HZ, {GRE, YEL, OFF}},
	{10*HZ, {OFF, OFF, RED}},
};


void main(void)
{
	unsigned long j;
	struct tl_time *t;
	int i;
	puts("Here I am, traffic lights\n");

	j = jiffies + 4;
	while (1)
		for (t = tl_loop, i = 0; i < ARRAY_SIZE(tl_loop); t++, i++) {
			while (time_after(j, jiffies))
				;
			neopix_rgb(t->v[0][0], t->v[0][1], t->v[0][2]);
			neopix_rgb(t->v[1][0], t->v[1][1], t->v[1][2]);
			neopix_rgb(t->v[2][0], t->v[2][1], t->v[2][2]);
			neopix_reset();
			j += t->ticks;
		}
}
