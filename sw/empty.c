#include <thub.h>

void main(void)
{
	puts("Here I am, I do nothing\n");

	/* flash PD5 -- no pwm by now */
#define BIT (1 << 5)
	regs[REG_DDRD]  |= BIT;
	while (1) {


		/* copy PD2 to PD5 */
		if (regs[REG_PIND] & 0x04)
			regs[REG_PORTD] &= ~BIT;
		else
			regs[REG_PORTD] |= BIT;
	}
}
