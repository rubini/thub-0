#include <thub.h>

void main(void)
{
	unsigned long j = jiffies + HZ;

	puts("Here I am, I do nothing\n");

	/* flash PD5 -- no pwm by now */
#define BIT (1 << 5)
	regs[REG_DDRD]  |= BIT;
	regs[REG_PORTD] |= BIT;
	while (1) {
		while (time_after(j, jiffies))
			;
		regs[REG_PORTD] &= ~BIT;
		putc('0');
		j += HZ;
		while (time_after(j, jiffies))
			;
		regs[REG_PORTD] |= BIT;
		putc('1');
		j += HZ;
	}
}
